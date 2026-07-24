  .intel_syntax noprefix
  .text
  .globl proc_interpret$2F1_α
proc_interpret$2F1_α:
#=======================================================================================================================
    .global proc_interpret$2F1_α
    .global proc_interpret$2F1_β
    .global proc_interpret$2F1_γ
    .global proc_interpret$2F1_ω
  sub rsp, 688
  mov [rsp + 664], rcx
  mov [rsp + 672], rdx
  mov [rsp + 680], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 592
  mov edx, 656
  call rt_jmp_frame_lexprep2@PLT
proc_interpret$2F1_α_body:
lea rax, [rip + xchain0_n11_β]
mov qword ptr [rbp + 592], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret$2F1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_interpret$2F1_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+496]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret$2F1_ω
 jmp proc_interpret$2F1_ω
 xchain0_n5_β:
 jmp proc_interpret$2F1_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n7_α
 xchain0_n7_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx13_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx13_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx13_3]
 lea rdx, [rip + .Lx13_4]
 jmp rax
.Lx13_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx13_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx13_2
.Lx13_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx13_2
.Lx13_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx13_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx13_2
.Lx13_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx13_2
.Lx13_1:
 call rt_faildescr@PLT
.Lx13_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n9_α
 xchain0_n9_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn17: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn17]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
 xchain0_n10_α:
# IR_CUT
 jmp xchain0_n12_α
# IR_SUSPEND yield+resume
 xchain0_n11_α:
 lea rax, [rip + xchain0_n11_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F1_γ
 xchain0_n11_β:
 jmp xchain0_n7_β
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n13_α
 xchain0_n13_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx24_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx24_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx24_3]
 lea rdx, [rip + .Lx24_4]
 jmp rax
.Lx24_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx24_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx24_2
.Lx24_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx24_2
.Lx24_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx24_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx24_2
.Lx24_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx24_2
.Lx24_1:
 call rt_faildescr@PLT
.Lx24_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "interpret/1"
proc_interpret$2F1_res:
add rsp, 8
pop rbp
proc_interpret$2F1_β:
jmp qword ptr [rbp + 592]
proc_interpret$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret$2F1_res]
push rax
mov rax, [rbp + 664]
mov rbp, [rbp + 680]
jmp rax
proc_interpret$2F1_ω:
mov rax, [rbp + 672]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
  .globl proc_interpret$2F2_α
proc_interpret$2F2_α:
#=======================================================================================================================
    .global proc_interpret$2F2_α
    .global proc_interpret$2F2_β
    .global proc_interpret$2F2_γ
    .global proc_interpret$2F2_ω
  sub rsp, 6320
  mov [rsp + 6296], rcx
  mov [rsp + 6304], rdx
  mov [rsp + 6312], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 6200], rsp
  mov rdi, rsp
  mov esi, 6176
  mov edx, 6288
  call rt_jmp_frame_lexprep2@PLT
proc_interpret$2F2_α_body:
lea rax, [rip + xchain25_n93_β]
mov qword ptr [rbp + 6176], rax
 xchain25_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n1_α
 xchain25_n0_β:
 jmp proc_interpret$2F2_ω
# IR_VAR_REF
 xchain25_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain25_n2_α
# IR_VAR_REF
 xchain25_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain25_n3_α
 xchain25_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# marshal arg1 = producer-box slot [zr+6144] -> [zr+6080]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n4_α
 xchain25_n3_β:
 jmp xchain25_n5_α
# IR_VAR_REF
 xchain25_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain25_n6_α
 xchain25_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5808]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5808]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n7_α
 xchain25_n5_β:
 jmp proc_interpret$2F2_ω
# IR_VAR_REF
 xchain25_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 jmp xchain25_n8_α
# IR_VAR_REF
 xchain25_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain25_n9_α
 xchain25_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5936]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+6016] -> [zr+5952]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 5960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5936]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n10_α
 xchain25_n8_β:
 jmp xchain25_n5_α
# IR_LIT_INTEGER
 xchain25_n9_α:
 mov qword ptr [rbp + 5728], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain25_n11_α
.Lx40_0:
 .quad 516
# IR_VAR_REF
 xchain25_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 jmp xchain25_n12_α
# IR_LIT_STRING
 xchain25_n11_α:
 mov qword ptr [rbp + 5760], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 5768], rax
 jmp xchain25_n13_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string ","
 xchain25_n12_α:
# BOX IR_CALL $tt_var(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5888] -> [zr+5856]
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5864], rax
  .section .rodata
  .Lrkfn45: .string "$tt_var"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn45]
 lea rsi, [rbp + 5856]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n14_α
 xchain25_n12_β:
 jmp xchain25_n5_α
 xchain25_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5648]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5760] -> [zr+5664]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 5632]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n15_α
 xchain25_n13_β:
 jmp xchain25_n16_α
 xchain25_n14_α:
# IR_CUT
 jmp xchain25_n17_α
# IR_VAR_REF
 xchain25_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain25_n18_α
# IR_VAR_REF
 xchain25_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain25_n19_α
 xchain25_n17_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp proc_interpret$2F2_ω
 xchain25_n17_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n18_α:
 mov qword ptr [rbp + 5584], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 5592], rax
 jmp xchain25_n20_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string ","
# IR_LIT_INTEGER
 xchain25_n19_α:
 mov qword ptr [rbp + 4464], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 4472], rax
 jmp xchain25_n21_α
.Lx54_0:
 .quad 516
# IR_VAR_REF
 xchain25_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain25_n22_α
# IR_LIT_STRING
 xchain25_n21_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain25_n23_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string ";"
# IR_VAR_REF
 xchain25_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain25_n24_α
 xchain25_n23_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4368]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4376], rax
# marshal arg1 = producer-box slot [zr+4464] -> [zr+4384]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4392], rax
# marshal arg2 = producer-box slot [zr+4496] -> [zr+4400]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 4408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 4368]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain25_n26_α
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n26_α
 xchain25_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5584] -> [zr+5520]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5528], rax
# marshal arg1 = producer-box slot [zr+5440] -> [zr+5536]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5544], rax
# marshal arg2 = producer-box slot [zr+5472] -> [zr+5552]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5552], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5520]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 cmp eax, 99
 je xchain25_n28_α
 jmp xchain25_n27_α
 xchain25_n24_β:
 jmp xchain25_n28_α
# IR_VAR_REF
 xchain25_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain25_n29_α
# IR_VAR_REF
 xchain25_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain25_n30_α
 xchain25_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5408] -> [zr+5360]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5368], rax
# marshal arg1 = producer-box slot [zr+5504] -> [zr+5376]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5360]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 cmp eax, 99
 je xchain25_n28_α
 jmp xchain25_n31_α
 xchain25_n27_β:
 jmp xchain25_n28_α
 xchain25_n28_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4544]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4544]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n16_α
 xchain25_n28_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n29_α:
 mov qword ptr [rbp + 4320], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 4328], rax
 jmp xchain25_n32_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string ";"
# IR_LIT_INTEGER
 xchain25_n30_α:
 mov qword ptr [rbp + 3648], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 3656], rax
 jmp xchain25_n33_α
.Lx69_0:
 .quad 516
# IR_VAR_REF
 xchain25_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain25_n34_α
# IR_VAR_REF
 xchain25_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain25_n35_α
# IR_LIT_STRING
 xchain25_n33_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain25_n36_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "->"
# IR_VAR_REF
 xchain25_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 jmp xchain25_n37_α
# IR_VAR_REF
 xchain25_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain25_n38_α
 xchain25_n36_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3616] -> [zr+3552]
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3552], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3560], rax
# marshal arg1 = producer-box slot [zr+3648] -> [zr+3568]
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3576], rax
# marshal arg2 = producer-box slot [zr+3680] -> [zr+3584]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3552]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 cmp eax, 99
 je xchain25_n40_α
 jmp xchain25_n39_α
 xchain25_n36_β:
 jmp xchain25_n40_α
 xchain25_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5232]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5240], rax
# marshal arg1 = producer-box slot [zr+5312] -> [zr+5248]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 cmp eax, 99
 je xchain25_n28_α
 jmp xchain25_n41_α
 xchain25_n37_β:
 jmp xchain25_n28_α
 xchain25_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4320] -> [zr+4256]
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 4264], rax
# marshal arg1 = producer-box slot [zr+4176] -> [zr+4272]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4280], rax
# marshal arg2 = producer-box slot [zr+4208] -> [zr+4288]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4256]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je xchain25_n43_α
 jmp xchain25_n42_α
 xchain25_n38_β:
 jmp xchain25_n43_α
# IR_VAR_REF
 xchain25_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain25_n44_α
# IR_VAR_REF
 xchain25_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain25_n45_α
 xchain25_n41_α:
# IR_CUT
 jmp xchain25_n46_α
 xchain25_n42_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4144] -> [zr+4096]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4104], rax
# marshal arg1 = producer-box slot [zr+4240] -> [zr+4112]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4096]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 cmp eax, 99
 je xchain25_n43_α
 jmp xchain25_n47_α
 xchain25_n42_β:
 jmp xchain25_n43_α
 xchain25_n43_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3728]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3728]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n26_α
 xchain25_n43_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n44_α:
 mov qword ptr [rbp + 3504], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain25_n48_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "->"
# IR_LIT_INTEGER
 xchain25_n45_α:
 mov qword ptr [rbp + 2688], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain25_n49_α
.Lx90_0:
 .quad 260
# IR_VAR_REF
 xchain25_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain25_n50_α
# IR_VAR_REF
 xchain25_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain25_n51_α
# IR_VAR_REF
 xchain25_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain25_n52_α
# IR_LIT_STRING
 xchain25_n49_α:
 mov qword ptr [rbp + 2720], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain25_n53_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "\\+"
# IR_VAR_REF
 xchain25_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6272]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 jmp xchain25_n54_α
# IR_VAR_REF
 xchain25_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain25_n55_α
# IR_VAR_REF
 xchain25_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain25_n56_α
 xchain25_n53_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2592]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2608]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2616], rax
# marshal arg2 = producer-box slot [zr+2720] -> [zr+2624]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain25_n58_α
 jmp xchain25_n57_α
 xchain25_n53_β:
 jmp xchain25_n58_α
 xchain25_n54_α:
 mov qword ptr [rbp + 5120], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5152]
 mov rdx, qword ptr [rbp + 5160]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5184]
 mov rdx, qword ptr [rbp + 5192]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx106_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx106_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx106_3]
 lea rdx, [rip + .Lx106_4]
 jmp rax
.Lx106_3:
 mov qword ptr [rbp + 5128], rsp
 mov rax, qword ptr [rbp + 5120]
 test rax, rax
 jne .Lx106_5
 mov qword ptr [rbp + 5120], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx106_2
.Lx106_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx106_2
.Lx106_4:
 mov rax, qword ptr [rbp + 5120]
 test rax, rax
 jne .Lx106_6
 mov qword ptr [rbp + 5120], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx106_2
.Lx106_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx106_2
.Lx106_1:
 call rt_faildescr@PLT
.Lx106_2:
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n59_α
 xchain25_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 5128]
 jmp qword ptr [rsp]
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "interpret/2"
 xchain25_n55_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3968]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+4048] -> [zr+3984]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain25_n43_α
 jmp xchain25_n60_α
 xchain25_n55_β:
 jmp xchain25_n43_α
 xchain25_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3504] -> [zr+3440]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3448], rax
# marshal arg1 = producer-box slot [zr+3360] -> [zr+3456]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3464], rax
# marshal arg2 = producer-box slot [zr+3392] -> [zr+3472]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp eax, 99
 je xchain25_n62_α
 jmp xchain25_n61_α
 xchain25_n56_β:
 jmp xchain25_n62_α
# IR_VAR_REF
 xchain25_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain25_n63_α
# IR_VAR_REF
 xchain25_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain25_n64_α
# IR_VAR_REF
 xchain25_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6272]
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain25_n65_α
 xchain25_n60_α:
# IR_CUT
 jmp xchain25_n66_α
 xchain25_n61_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3280]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3288], rax
# marshal arg1 = producer-box slot [zr+3424] -> [zr+3296]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3280]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain25_n62_α
 jmp xchain25_n67_α
 xchain25_n61_β:
 jmp xchain25_n62_α
 xchain25_n62_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2768]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2768]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n40_α
 xchain25_n62_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n63_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain25_n68_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "\\+"
# IR_LIT_STRING
 xchain25_n64_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain25_n69_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "?"
 xchain25_n65_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+5008]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 5016], rax
  .section .rodata
  .Lrkfn121: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn121]
 lea rsi, [rbp + 5008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je xchain25_n71_α
 jmp xchain25_n70_α
 xchain25_n65_β:
 jmp xchain25_n71_α
# IR_VAR_REF
 xchain25_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain25_n72_α
# IR_VAR_REF
 xchain25_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain25_n73_α
# IR_VAR_REF
 xchain25_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain25_n74_α
 xchain25_n69_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1728]
 mov rsi, qword ptr [rip + .Lx128_2]
 jmp .Lx128_3
.Lx128_2:
 .quad .Lx128_2_s
.Lx128_2_s:
 .string "?"
.Lx128_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain25_n76_α
 jmp xchain25_n75_α
 xchain25_n69_β:
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain25_n77_α
# IR_VAR_REF
 xchain25_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain25_n78_α
# IR_VAR_REF
 xchain25_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain25_n79_α
# IR_VAR_REF
 xchain25_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain25_n80_α
 xchain25_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2496]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2512]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2496]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain25_n82_α
 jmp xchain25_n81_α
 xchain25_n74_β:
 jmp xchain25_n82_α
# IR_VAR_REF
 xchain25_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain25_n83_α
 xchain25_n76_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1552]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n84_α
 xchain25_n76_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n77_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain25_n85_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string ","
# IR_VAR_REF
 xchain25_n78_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain25_n86_α
# IR_VAR_REF
 xchain25_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain25_n87_α
 xchain25_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3152]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3168]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain25_n62_α
 jmp xchain25_n88_α
 xchain25_n80_β:
 jmp xchain25_n62_α
 xchain25_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2368]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2384]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain25_n82_α
 jmp xchain25_n89_α
 xchain25_n81_β:
 jmp xchain25_n82_α
 xchain25_n82_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1856]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n58_α
 xchain25_n82_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n83_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain25_n90_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "true"
# IR_VAR_REF
 xchain25_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain25_n91_α
# IR_VAR_REF
 xchain25_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6272]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain25_n92_α
 xchain25_n86_α:
 mov qword ptr [rbp + 4896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4928]
 mov rdx, qword ptr [rbp + 4936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4960]
 mov rdx, qword ptr [rbp + 4968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx155_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx155_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx155_3]
 lea rdx, [rip + .Lx155_4]
 jmp rax
.Lx155_3:
 mov qword ptr [rbp + 4904], rsp
 mov rax, qword ptr [rbp + 4896]
 test rax, rax
 jne .Lx155_5
 mov qword ptr [rbp + 4896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx155_2
.Lx155_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx155_2
.Lx155_4:
 mov rax, qword ptr [rbp + 4896]
 test rax, rax
 jne .Lx155_6
 mov qword ptr [rbp + 4896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx155_2
.Lx155_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx155_2
.Lx155_1:
 call rt_faildescr@PLT
.Lx155_2:
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 cmp eax, 99
 je xchain25_n54_β
 jmp xchain25_n93_α
 xchain25_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4904]
 jmp qword ptr [rsp]
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "interpret/2"
 xchain25_n87_α:
 mov qword ptr [rbp + 3824], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3856]
 mov rdx, qword ptr [rbp + 3864]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx157_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx157_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx157_3]
 lea rdx, [rip + .Lx157_4]
 jmp rax
.Lx157_3:
 mov qword ptr [rbp + 3832], rsp
 mov rax, qword ptr [rbp + 3824]
 test rax, rax
 jne .Lx157_5
 mov qword ptr [rbp + 3824], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx157_2
.Lx157_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx157_2
.Lx157_4:
 mov rax, qword ptr [rbp + 3824]
 test rax, rax
 jne .Lx157_6
 mov qword ptr [rbp + 3824], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx157_2
.Lx157_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx157_2
.Lx157_1:
 call rt_faildescr@PLT
.Lx157_2:
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n94_α
 xchain25_n87_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3832]
 jmp qword ptr [rsp]
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "interpret_disjunction/3"
 xchain25_n88_α:
# IR_CUT
 jmp xchain25_n95_α
# IR_VAR_REF
 xchain25_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain25_n96_α
 xchain25_n90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1600]
 mov rsi, qword ptr [rip + .Lx161_2]
 jmp .Lx161_3
.Lx161_2:
 .quad .Lx161_2_s
.Lx161_2_s:
 .string "true"
.Lx161_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain25_n76_α
 jmp xchain25_n97_α
 xchain25_n90_β:
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain25_n98_α
# IR_VAR_REF
 xchain25_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain25_n99_α
# IR_SUSPEND yield+resume
 xchain25_n93_α:
 lea rax, [rip + xchain25_n93_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n93_β:
 jmp xchain25_n54_β
# IR_SUSPEND yield+resume
 xchain25_n94_α:
 lea rax, [rip + xchain25_n94_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n94_β:
 jmp xchain25_n87_β
# IR_LIT_STRING
 xchain25_n95_α:
 mov qword ptr [rbp + 3040], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 3048], rax
 jmp xchain25_n100_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "->"
# IR_VAR_REF
 xchain25_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain25_n101_α
 xchain25_n97_α:
# IR_CUT
 jmp xchain25_n102_α
 xchain25_n98_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1424]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain25_n104_α
 jmp xchain25_n103_α
 xchain25_n98_β:
 jmp xchain25_n104_α
 xchain25_n99_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4752]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+4672] -> [zr+4768]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4776], rax
# marshal arg2 = producer-box slot [zr+4704] -> [zr+4784]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je xchain25_n54_β
 jmp xchain25_n105_α
 xchain25_n99_β:
 jmp xchain25_n54_β
# IR_VAR_REF
 xchain25_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain25_n106_α
 xchain25_n101_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2240]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2256]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain25_n82_α
 jmp xchain25_n107_α
 xchain25_n101_β:
 jmp xchain25_n82_α
# IR_SUSPEND yield+resume
 xchain25_n102_α:
 lea rax, [rip + xchain25_n102_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n102_β:
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain25_n108_α
 xchain25_n104_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n109_α
 xchain25_n104_β:
 jmp proc_interpret$2F2_ω
 xchain25_n105_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4592]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4600], rax
# marshal arg1 = producer-box slot [zr+4736] -> [zr+4608]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain25_n54_β
 jmp xchain25_n93_α
 xchain25_n105_β:
 jmp xchain25_n54_β
# IR_VAR_REF
 xchain25_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain25_n110_α
 xchain25_n107_α:
# IR_CUT
 jmp xchain25_n111_α
# IR_VAR_REF
 xchain25_n108_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain25_n112_α
# IR_VAR_REF
 xchain25_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain25_n113_α
 xchain25_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2976]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+2896] -> [zr+2992]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 3000], rax
# marshal arg2 = producer-box slot [zr+2928] -> [zr+3008]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n114_α
 xchain25_n110_β:
 jmp xchain25_n17_α
# IR_LIT_STRING
 xchain25_n111_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain25_n115_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "->"
 xchain25_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain25_n104_α
 jmp xchain25_n116_α
 xchain25_n112_β:
 jmp xchain25_n104_α
# IR_VAR_REF
 xchain25_n113_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain25_n117_α
# IR_LIT_STRING
 xchain25_n114_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain25_n118_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "fail"
# IR_VAR_REF
 xchain25_n115_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain25_n119_α
# IR_VAR_REF
 xchain25_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain25_n120_α
 xchain25_n117_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain25_n122_α
 jmp xchain25_n121_α
 xchain25_n117_β:
 jmp xchain25_n122_α
# IR_VAR_REF
 xchain25_n118_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain25_n123_α
# IR_LIT_STRING
 xchain25_n119_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain25_n124_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "fail"
 xchain25_n120_α:
# BOX IR_CALL $tt_number(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn207: .string "$tt_number"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain25_n104_α
 jmp xchain25_n125_α
 xchain25_n120_β:
 jmp xchain25_n104_α
# IR_VAR_REF
 xchain25_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain25_n126_α
 xchain25_n122_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n127_α
 xchain25_n122_β:
 jmp proc_interpret$2F2_ω
 xchain25_n123_α:
 mov qword ptr [rbp + 2864], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3104]
 mov rdx, qword ptr [rbp + 3112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx212_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx212_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx212_3]
 lea rdx, [rip + .Lx212_4]
 jmp rax
.Lx212_3:
 mov qword ptr [rbp + 2872], rsp
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx212_5
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx212_2
.Lx212_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx212_2
.Lx212_4:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx212_6
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx212_2
.Lx212_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx212_2
.Lx212_1:
 call rt_faildescr@PLT
.Lx212_2:
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n128_α
 xchain25_n123_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2872]
 jmp qword ptr [rsp]
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "interpret_disjunction/3"
 xchain25_n124_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+2080]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 2088], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+2096]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n129_α
 xchain25_n124_β:
 jmp xchain25_n17_α
 xchain25_n125_α:
# IR_CUT
 jmp xchain25_n17_α
# IR_VAR_REF
 xchain25_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain25_n130_α
# IR_VAR_REF
 xchain25_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain25_n131_α
# IR_SUSPEND yield+resume
 xchain25_n128_α:
 lea rax, [rip + xchain25_n128_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n128_β:
 jmp xchain25_n123_β
# IR_LIT_STRING
 xchain25_n129_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain25_n132_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "true"
 xchain25_n130_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain25_n122_α
 jmp xchain25_n133_α
 xchain25_n130_β:
 jmp xchain25_n122_α
# IR_VAR_REF
 xchain25_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain25_n134_α
# IR_VAR_REF
 xchain25_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6256]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain25_n135_α
# IR_VAR_REF
 xchain25_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain25_n136_α
 xchain25_n134_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n137_α
 xchain25_n134_β:
 jmp xchain25_n17_α
 xchain25_n135_α:
 mov qword ptr [rbp + 1952], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2192]
 mov rdx, qword ptr [rbp + 2200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx231_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx231_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx231_3]
 lea rdx, [rip + .Lx231_4]
 jmp rax
.Lx231_3:
 mov qword ptr [rbp + 1960], rsp
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx231_5
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx231_2
.Lx231_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx231_2
.Lx231_4:
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx231_6
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx231_2
.Lx231_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx231_2
.Lx231_1:
 call rt_faildescr@PLT
.Lx231_2:
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n138_α
 xchain25_n135_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1960]
 jmp qword ptr [rsp]
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "interpret_disjunction/3"
 xchain25_n136_α:
 mov qword ptr [rbp + 832], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx233_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx233_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx233_3]
 lea rdx, [rip + .Lx233_4]
 jmp rax
.Lx233_3:
 mov qword ptr [rbp + 840], rsp
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx233_5
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx233_2
.Lx233_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx233_2
.Lx233_4:
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx233_6
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx233_2
.Lx233_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx233_2
.Lx233_1:
 call rt_faildescr@PLT
.Lx233_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain25_n122_α
 jmp xchain25_n139_α
 xchain25_n136_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 840]
 jmp qword ptr [rsp]
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "is_built_in/1"
# IR_VAR_REF
 xchain25_n137_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain25_n140_α
# IR_SUSPEND yield+resume
 xchain25_n138_α:
 lea rax, [rip + xchain25_n138_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n138_β:
 jmp xchain25_n135_β
 xchain25_n139_α:
# IR_CUT
 jmp xchain25_n141_α
# IR_VAR_REF
 xchain25_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6240]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain25_n142_α
# IR_VAR_REF
 xchain25_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain25_n143_α
 xchain25_n142_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n144_α
 xchain25_n142_β:
 jmp xchain25_n17_α
 xchain25_n143_α:
 mov qword ptr [rbp + 736], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx245_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx245_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx245_3]
 lea rdx, [rip + .Lx245_4]
 jmp rax
.Lx245_3:
 mov qword ptr [rbp + 744], rsp
 mov rax, qword ptr [rbp + 736]
 test rax, rax
 jne .Lx245_5
 mov qword ptr [rbp + 736], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx245_2
.Lx245_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx245_2
.Lx245_4:
 mov rax, qword ptr [rbp + 736]
 test rax, rax
 jne .Lx245_6
 mov qword ptr [rbp + 736], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx245_2
.Lx245_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx245_2
.Lx245_1:
 call rt_faildescr@PLT
.Lx245_2:
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n145_α
 xchain25_n143_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 744]
 jmp qword ptr [rsp]
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "interpret_built_in/1"
# IR_VAR_REF
 xchain25_n144_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6224]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain25_n146_α
# IR_SUSPEND yield+resume
 xchain25_n145_α:
 lea rax, [rip + xchain25_n145_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n145_β:
 jmp xchain25_n143_β
# IR_VAR_REF
 xchain25_n146_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain25_n147_α
 xchain25_n147_α:
 mov qword ptr [rbp + 304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx253_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx253_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx253_3]
 lea rdx, [rip + .Lx253_4]
 jmp rax
.Lx253_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx253_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx253_2
.Lx253_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx253_2
.Lx253_4:
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx253_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx253_2
.Lx253_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx253_2
.Lx253_1:
 call rt_faildescr@PLT
.Lx253_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n148_α
 xchain25_n147_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "define/2"
# IR_VAR_REF
 xchain25_n148_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6208]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain25_n149_α
 xchain25_n149_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx257_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx257_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx257_3]
 lea rdx, [rip + .Lx257_4]
 jmp rax
.Lx257_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx257_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx257_2
.Lx257_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx257_2
.Lx257_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx257_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx257_2
.Lx257_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx257_2
.Lx257_1:
 call rt_faildescr@PLT
.Lx257_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain25_n147_β
 jmp xchain25_n150_α
 xchain25_n149_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain25_n150_α:
 lea rax, [rip + xchain25_n150_β]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n150_β:
 jmp xchain25_n149_β
proc_interpret$2F2_res:
add rsp, 8
pop rbp
proc_interpret$2F2_β:
jmp qword ptr [rbp + 6176]
proc_interpret$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret$2F2_res]
push rax
mov rax, [rbp + 6296]
mov rbp, [rbp + 6312]
jmp rax
proc_interpret$2F2_ω:
mov rax, [rbp + 6304]
lea rsp, [rbp + 6320]
mov rbp, [rbp + 6312]
jmp rax
  .globl proc_is_built_in$2F1_α
proc_is_built_in$2F1_α:
#=======================================================================================================================
    .global proc_is_built_in$2F1_α
    .global proc_is_built_in$2F1_β
    .global proc_is_built_in$2F1_γ
    .global proc_is_built_in$2F1_ω
  sub rsp, 864
  mov [rsp + 840], rcx
  mov [rsp + 848], rdx
  mov [rsp + 856], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 768
  mov edx, 832
  call rt_jmp_frame_lexprep2@PLT
proc_is_built_in$2F1_α_body:
lea rax, [rip + xchain260_n4_β]
mov qword ptr [rbp + 768], rax
 xchain260_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_is_built_in$2F1_ω
 jmp xchain260_n1_α
 xchain260_n0_β:
 jmp proc_is_built_in$2F1_ω
# IR_VAR_REF
 xchain260_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain260_n2_α
# IR_LIT_STRING
 xchain260_n2_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain260_n3_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "true"
 xchain260_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 656]
 mov rsi, qword ptr [rip + .Lx265_2]
 jmp .Lx265_3
.Lx265_2:
 .quad .Lx265_2_s
.Lx265_2_s:
 .string "true"
.Lx265_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain260_n5_α
 jmp xchain260_n4_α
 xchain260_n3_β:
 jmp xchain260_n5_α
# IR_SUSPEND yield+resume
 xchain260_n4_α:
 lea rax, [rip + xchain260_n4_β]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$2F1_γ
 xchain260_n4_β:
 jmp xchain260_n5_α
 xchain260_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+608]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_is_built_in$2F1_ω
 jmp xchain260_n6_α
 xchain260_n5_β:
 jmp proc_is_built_in$2F1_ω
# IR_VAR_REF
 xchain260_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain260_n7_α
# IR_LIT_INTEGER
 xchain260_n7_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain260_n8_α
.Lx271_0:
 .quad 516
# IR_LIT_STRING
 xchain260_n8_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain260_n9_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "=<"
 xchain260_n9_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+464]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain260_n11_α
 jmp xchain260_n10_α
 xchain260_n9_β:
 jmp xchain260_n11_α
# IR_VAR_REF
 xchain260_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain260_n12_α
 xchain260_n11_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_is_built_in$2F1_ω
 jmp proc_is_built_in$2F1_ω
 xchain260_n11_β:
 jmp proc_is_built_in$2F1_ω
# IR_LIT_STRING
 xchain260_n12_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain260_n13_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "=<"
# IR_VAR_REF
 xchain260_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain260_n14_α
# IR_VAR_REF
 xchain260_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain260_n15_α
 xchain260_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+336]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 344], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+352]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain260_n11_α
 jmp xchain260_n16_α
 xchain260_n15_β:
 jmp xchain260_n11_α
 xchain260_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+176]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain260_n11_α
 jmp xchain260_n17_α
 xchain260_n16_β:
 jmp xchain260_n11_α
# IR_SUSPEND yield+resume
 xchain260_n17_α:
 lea rax, [rip + xchain260_n17_β]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$2F1_γ
 xchain260_n17_β:
 jmp xchain260_n11_α
proc_is_built_in$2F1_res:
add rsp, 8
pop rbp
proc_is_built_in$2F1_β:
jmp qword ptr [rbp + 768]
proc_is_built_in$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_is_built_in$2F1_res]
push rax
mov rax, [rbp + 840]
mov rbp, [rbp + 856]
jmp rax
proc_is_built_in$2F1_ω:
mov rax, [rbp + 848]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
  .globl proc_meta_qsort$2F0_α
proc_meta_qsort$2F0_α:
#=======================================================================================================================
    .global proc_meta_qsort$2F0_α
    .global proc_meta_qsort$2F0_β
    .global proc_meta_qsort$2F0_γ
    .global proc_meta_qsort$2F0_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 248], rsp
  mov rdi, rsp
  mov esi, 224
  mov edx, 256
  call rt_jmp_frame_lexprep2@PLT
proc_meta_qsort$2F0_α_body:
lea rax, [rip + xchain286_n3_β]
mov qword ptr [rbp + 224], rax
 xchain286_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_meta_qsort$2F0_ω
 jmp xchain286_n1_α
 xchain286_n0_β:
 jmp proc_meta_qsort$2F0_ω
# IR_LIT_STRING
 xchain286_n1_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain286_n2_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "qsort"
 xchain286_n2_α:
 mov qword ptr [rbp + 160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx290_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx290_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx290_3]
 lea rdx, [rip + .Lx290_4]
 jmp rax
.Lx290_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx290_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx290_2
.Lx290_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx290_2
.Lx290_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx290_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx290_2
.Lx290_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx290_2
.Lx290_1:
 call rt_faildescr@PLT
.Lx290_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain286_n4_α
 jmp xchain286_n3_α
 xchain286_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain286_n3_α:
 lea rax, [rip + xchain286_n3_β]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_meta_qsort$2F0_γ
 xchain286_n3_β:
 jmp xchain286_n2_β
 xchain286_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_meta_qsort$2F0_ω
 jmp proc_meta_qsort$2F0_ω
 xchain286_n4_β:
 jmp proc_meta_qsort$2F0_ω
proc_meta_qsort$2F0_res:
add rsp, 8
pop rbp
proc_meta_qsort$2F0_β:
jmp qword ptr [rbp + 224]
proc_meta_qsort$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_meta_qsort$2F0_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_meta_qsort$2F0_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_define$2F2_α
proc_define$2F2_α:
#=======================================================================================================================
    .global proc_define$2F2_α
    .global proc_define$2F2_β
    .global proc_define$2F2_γ
    .global proc_define$2F2_ω
  sub rsp, 14176
  mov [rsp + 14152], rcx
  mov [rsp + 14160], rdx
  mov [rsp + 14168], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 14024], rsp
  mov rdi, rsp
  mov esi, 14000
  mov edx, 14144
  call rt_jmp_frame_lexprep2@PLT
proc_define$2F2_α_body:
lea rax, [rip + xchain294_n78_β]
mov qword ptr [rbp + 14000], rax
 xchain294_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n1_α
 xchain294_n0_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13936], rax
 mov qword ptr [rbp + 13944], rdx
 jmp xchain294_n2_α
# IR_LIT_STRING
 xchain294_n2_α:
 mov qword ptr [rbp + 13968], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 13976], rax
 jmp xchain294_n3_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "qsort"
 xchain294_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13936] -> [zr+13888]
 mov rax, qword ptr [rbp + 13936]
 mov qword ptr [rbp + 13888], rax
 mov rax, qword ptr [rbp + 13944]
 mov qword ptr [rbp + 13896], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 13888]
 mov rsi, qword ptr [rip + .Lx299_2]
 jmp .Lx299_3
.Lx299_2:
 .quad .Lx299_2_s
.Lx299_2_s:
 .string "qsort"
.Lx299_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 13872], rax
 mov qword ptr [rbp + 13880], rdx
 cmp eax, 99
 je xchain294_n5_α
 jmp xchain294_n4_α
 xchain294_n3_β:
 jmp xchain294_n5_α
# IR_VAR_REF
 xchain294_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain294_n6_α
 xchain294_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6320]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6320], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6320]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n7_α
 xchain294_n5_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n6_α:
 mov qword ptr [rbp + 13840], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 13848], rax
 jmp xchain294_n8_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain294_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 jmp xchain294_n9_α
# IR_LIT_STRING
 xchain294_n8_α:
 mov qword ptr [rbp + 13648], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 13656], rax
 jmp xchain294_n10_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n9_α:
 mov qword ptr [rbp + 6240], 6
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 6248], rax
 jmp xchain294_n11_α
.Lx307_0:
 .quad 772
# IR_LIT_INTEGER
 xchain294_n10_α:
 mov qword ptr [rbp + 13536], 6
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 13544], rax
 jmp xchain294_n12_α
.Lx308_0:
 .quad 27
# IR_LIT_STRING
 xchain294_n11_α:
 mov qword ptr [rbp + 6272], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 6280], rax
 jmp xchain294_n13_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain294_n12_α:
 mov qword ptr [rbp + 13504], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 13512], rax
 jmp xchain294_n14_α
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "."
 xchain294_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6208] -> [zr+6144]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 6152], rax
# marshal arg1 = producer-box slot [zr+6240] -> [zr+6160]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6160], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6168], rax
# marshal arg2 = producer-box slot [zr+6272] -> [zr+6176]
 mov rax, qword ptr [rbp + 6272]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 6280]
 mov qword ptr [rbp + 6184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 6144]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 cmp eax, 99
 je xchain294_n16_α
 jmp xchain294_n15_α
 xchain294_n13_β:
 jmp xchain294_n16_α
# IR_LIT_INTEGER
 xchain294_n14_α:
 mov qword ptr [rbp + 13392], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 13400], rax
 jmp xchain294_n17_α
.Lx312_0:
 .quad 74
# IR_VAR_REF
 xchain294_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain294_n18_α
# IR_VAR_REF
 xchain294_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain294_n19_α
# IR_LIT_STRING
 xchain294_n17_α:
 mov qword ptr [rbp + 13360], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 13368], rax
 jmp xchain294_n20_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n18_α:
 mov qword ptr [rbp + 6096], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 6104], rax
 jmp xchain294_n21_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain294_n19_α:
 mov qword ptr [rbp + 4368], 6
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 4376], rax
 jmp xchain294_n22_α
.Lx319_0:
 .quad 772
# IR_LIT_INTEGER
 xchain294_n20_α:
 mov qword ptr [rbp + 13248], 6
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 13256], rax
 jmp xchain294_n23_α
.Lx320_0:
 .quad 17
# IR_LIT_STRING
 xchain294_n21_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain294_n24_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n22_α:
 mov qword ptr [rbp + 4400], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain294_n25_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain294_n23_α:
 mov qword ptr [rbp + 13216], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 13224], rax
 jmp xchain294_n26_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain294_n27_α
 xchain294_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4272]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4280], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4288]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4296], rax
# marshal arg2 = producer-box slot [zr+4400] -> [zr+4304]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 4272]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 cmp eax, 99
 je xchain294_n29_α
 jmp xchain294_n28_α
 xchain294_n25_β:
 jmp xchain294_n29_α
# IR_LIT_INTEGER
 xchain294_n26_α:
 mov qword ptr [rbp + 13104], 6
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 13112], rax
 jmp xchain294_n30_α
.Lx327_0:
 .quad 33
# IR_VAR_REF
 xchain294_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14048]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain294_n31_α
# IR_VAR_REF
 xchain294_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain294_n32_α
# IR_VAR_REF
 xchain294_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain294_n33_α
# IR_LIT_STRING
 xchain294_n30_α:
 mov qword ptr [rbp + 13072], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 13080], rax
 jmp xchain294_n34_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "."
 xchain294_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5904] -> [zr+5840]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 5848], rax
# marshal arg1 = producer-box slot [zr+5792] -> [zr+5856]
 mov rax, qword ptr [rbp + 5792]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5800]
 mov qword ptr [rbp + 5864], rax
# marshal arg2 = producer-box slot [zr+5760] -> [zr+5872]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n35_α
 xchain294_n31_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n32_α:
 mov qword ptr [rbp + 4224], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 4232], rax
 jmp xchain294_n36_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain294_n33_α:
 mov qword ptr [rbp + 3696], 6
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain294_n37_α
.Lx337_0:
 .quad 1028
# IR_LIT_INTEGER
 xchain294_n34_α:
 mov qword ptr [rbp + 12960], 6
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [rbp + 12968], rax
 jmp xchain294_n38_α
.Lx338_0:
 .quad 94
# IR_VAR_REF
 xchain294_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain294_n39_α
# IR_LIT_STRING
 xchain294_n36_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain294_n40_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain294_n37_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain294_n41_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n38_α:
 mov qword ptr [rbp + 12928], 1
 mov rax, qword ptr [rip + .Lx343_0]
 mov qword ptr [rbp + 12936], rax
 jmp xchain294_n42_α
.Lx343_0:
 .quad .Lx343_0_s
.Lx343_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14080]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain294_n43_α
# IR_VAR_REF
 xchain294_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain294_n44_α
 xchain294_n41_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3664] -> [zr+3600]
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3608], rax
# marshal arg1 = producer-box slot [zr+3696] -> [zr+3616]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3624], rax
# marshal arg2 = producer-box slot [zr+3728] -> [zr+3632]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je xchain294_n46_α
 jmp xchain294_n45_α
 xchain294_n41_β:
 jmp xchain294_n46_α
# IR_LIT_INTEGER
 xchain294_n42_α:
 mov qword ptr [rbp + 12816], 6
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [rbp + 12824], rax
 jmp xchain294_n47_α
.Lx349_0:
 .quad 18
 xchain294_n43_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6096] -> [zr+6016]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6024], rax
# marshal arg1 = producer-box slot [zr+5824] -> [zr+6032]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 6032], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 6040], rax
# marshal arg2 = producer-box slot [zr+5936] -> [zr+6048]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 6048], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 6056], rax
# marshal arg3 = producer-box slot [zr+5968] -> [zr+6064]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 6072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6016]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n48_α
 xchain294_n43_β:
 jmp xchain294_n49_α
# IR_VAR_REF
 xchain294_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain294_n50_α
# IR_VAR_REF
 xchain294_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain294_n51_α
# IR_VAR_REF
 xchain294_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain294_n52_α
# IR_LIT_STRING
 xchain294_n47_α:
 mov qword ptr [rbp + 12784], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [rbp + 12792], rax
 jmp xchain294_n53_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "."
 xchain294_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5728] -> [zr+5680]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5688], rax
# marshal arg1 = producer-box slot [zr+6000] -> [zr+5696]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5696], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5680]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5664], rax
 mov qword ptr [rbp + 5672], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n54_α
 xchain294_n48_β:
 jmp xchain294_n49_α
 xchain294_n49_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4448]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4448]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n16_α
 xchain294_n49_β:
 jmp proc_define$2F2_ω
 xchain294_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4144]
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4152], rax
# marshal arg1 = producer-box slot [zr+4032] -> [zr+4160]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 4168], rax
# marshal arg2 = producer-box slot [zr+4064] -> [zr+4176]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4184], rax
# marshal arg3 = producer-box slot [zr+4096] -> [zr+4192]
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4144]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 cmp eax, 99
 je xchain294_n56_α
 jmp xchain294_n55_α
 xchain294_n50_β:
 jmp xchain294_n56_α
# IR_LIT_STRING
 xchain294_n51_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain294_n57_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "partition"
# IR_LIT_INTEGER
 xchain294_n52_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain294_n58_α
.Lx362_0:
 .quad 1028
# IR_LIT_INTEGER
 xchain294_n53_α:
 mov qword ptr [rbp + 12672], 6
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 12680], rax
 jmp xchain294_n59_α
.Lx363_0:
 .quad 46
# IR_VAR_REF
 xchain294_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain294_n60_α
 xchain294_n55_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4000] -> [zr+3952]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 3952], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 3960], rax
# marshal arg1 = producer-box slot [zr+4128] -> [zr+3968]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 3976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3952]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je xchain294_n56_α
 jmp xchain294_n61_α
 xchain294_n55_β:
 jmp xchain294_n56_α
 xchain294_n56_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3776]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3776]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n29_α
 xchain294_n56_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n57_α:
 mov qword ptr [rbp + 3168], 1
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [rbp + 3176], rax
 jmp xchain294_n62_α
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n58_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain294_n63_α
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n59_α:
 mov qword ptr [rbp + 12640], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 12648], rax
 jmp xchain294_n64_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n60_α:
 mov qword ptr [rbp + 5632], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 5640], rax
 jmp xchain294_n65_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string ","
# IR_VAR_REF
 xchain294_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain294_n66_α
# IR_VAR_REF
 xchain294_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain294_n67_α
 xchain294_n63_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1936]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1944], rax
# marshal arg2 = producer-box slot [zr+2048] -> [zr+1952]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain294_n69_α
 jmp xchain294_n68_α
 xchain294_n63_β:
 jmp xchain294_n69_α
# IR_LIT_INTEGER
 xchain294_n64_α:
 mov qword ptr [rbp + 12528], 6
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [rbp + 12536], rax
 jmp xchain294_n70_α
.Lx377_0:
 .quad 83
# IR_LIT_STRING
 xchain294_n65_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain294_n71_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n66_α:
 mov qword ptr [rbp + 3904], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain294_n72_α
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "true"
# IR_VAR_REF
 xchain294_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14048]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain294_n73_α
# IR_VAR_REF
 xchain294_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain294_n74_α
# IR_VAR_REF
 xchain294_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain294_n75_α
# IR_LIT_STRING
 xchain294_n70_α:
 mov qword ptr [rbp + 12496], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 12504], rax
 jmp xchain294_n76_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14048]
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 jmp xchain294_n77_α
 xchain294_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3824]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3824]
 mov rsi, qword ptr [rip + .Lx389_2]
 jmp .Lx389_3
.Lx389_2:
 .quad .Lx389_2_s
.Lx389_2_s:
 .string "true"
.Lx389_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain294_n56_α
 jmp xchain294_n78_α
 xchain294_n72_β:
 jmp xchain294_n56_α
 xchain294_n73_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3104]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3112], rax
# marshal arg1 = producer-box slot [zr+3056] -> [zr+3120]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3128], rax
# marshal arg2 = producer-box slot [zr+3024] -> [zr+3136]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 3144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n79_α
 xchain294_n73_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n74_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain294_n80_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "partition"
# IR_LIT_INTEGER
 xchain294_n75_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain294_n81_α
.Lx392_0:
 .quad 1028
# IR_LIT_INTEGER
 xchain294_n76_α:
 mov qword ptr [rbp + 12384], 6
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 12392], rax
 jmp xchain294_n82_α
.Lx393_0:
 .quad 65
# IR_VAR_REF
 xchain294_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain294_n83_α
# IR_SUSPEND yield+resume
 xchain294_n78_α:
 lea rax, [rip + xchain294_n78_β]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n78_β:
 jmp xchain294_n56_α
# IR_VAR_REF
 xchain294_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain294_n84_α
# IR_LIT_STRING
 xchain294_n80_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain294_n85_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n81_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain294_n86_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n82_α:
 mov qword ptr [rbp + 12352], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [rbp + 12360], rax
 jmp xchain294_n87_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14096]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain294_n88_α
# IR_LIT_STRING
 xchain294_n84_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain294_n89_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain294_n90_α
 xchain294_n86_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+688]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+704]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n91_α
 xchain294_n86_β:
 jmp xchain294_n92_α
# IR_LIT_INTEGER
 xchain294_n87_α:
 mov qword ptr [rbp + 12240], 6
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [rbp + 12248], rax
 jmp xchain294_n93_α
.Lx409_0:
 .quad 2
# IR_VAR_REF
 xchain294_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14112]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain294_n94_α
# IR_VAR_REF
 xchain294_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain294_n95_α
# IR_VAR_REF
 xchain294_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14048]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain294_n96_α
# IR_VAR_REF
 xchain294_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain294_n97_α
 xchain294_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp proc_define$2F2_ω
 xchain294_n92_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n93_α:
 mov qword ptr [rbp + 12208], 1
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 12216], rax
 jmp xchain294_n98_α
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "."
 xchain294_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4720]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4728], rax
# marshal arg1 = producer-box slot [zr+4576] -> [zr+4736]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4744], rax
# marshal arg2 = producer-box slot [zr+4608] -> [zr+4752]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4760], rax
# marshal arg3 = producer-box slot [zr+4640] -> [zr+4768]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4776], rax
# marshal arg4 = producer-box slot [zr+4672] -> [zr+4784]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4720]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n99_α
 xchain294_n94_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14080]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain294_n100_α
 xchain294_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1440]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1448], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1456]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n101_α
 xchain294_n96_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n97_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain294_n102_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "partition"
# IR_LIT_INTEGER
 xchain294_n98_α:
 mov qword ptr [rbp + 12096], 6
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [rbp + 12104], rax
 jmp xchain294_n103_α
.Lx425_0:
 .quad 32
# IR_LIT_STRING
 xchain294_n99_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain294_n104_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string ","
 xchain294_n100_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3376] -> [zr+3312]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3320], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3328]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3336], rax
# marshal arg2 = producer-box slot [zr+3232] -> [zr+3344]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n105_α
 xchain294_n100_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n101_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain294_n106_α
# IR_LIT_STRING
 xchain294_n102_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain294_n107_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain294_n103_α:
 mov qword ptr [rbp + 12064], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 12072], rax
 jmp xchain294_n108_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n104_α:
 mov qword ptr [rbp + 5040], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 5048], rax
 jmp xchain294_n109_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain294_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14096]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain294_n110_α
# IR_VAR_REF
 xchain294_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14080]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain294_n111_α
# IR_VAR_REF
 xchain294_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain294_n112_α
# IR_LIT_INTEGER
 xchain294_n108_α:
 mov qword ptr [rbp + 11952], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 11960], rax
 jmp xchain294_n113_α
.Lx439_0:
 .quad 53
# IR_VAR_REF
 xchain294_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14112]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain294_n114_α
 xchain294_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3456]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3464], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+3472]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3480], rax
# marshal arg2 = producer-box slot [zr+3200] -> [zr+3488]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3496], rax
# marshal arg3 = producer-box slot [zr+3296] -> [zr+3504]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3512], rax
# marshal arg4 = producer-box slot [zr+3408] -> [zr+3520]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3456]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n115_α
 xchain294_n110_β:
 jmp xchain294_n116_α
# IR_LIT_STRING
 xchain294_n111_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain294_n117_α
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n112_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain294_n118_α
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain294_n113_α:
 mov qword ptr [rbp + 11920], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [rbp + 11928], rax
 jmp xchain294_n119_α
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n114_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14128]
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain294_n120_α
 xchain294_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2992] -> [zr+2944]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2952], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+2960]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 2968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2944]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n121_α
 xchain294_n115_β:
 jmp xchain294_n116_α
 xchain294_n116_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2096]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2096]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n46_α
 xchain294_n116_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain294_n122_α
# IR_LIT_STRING
 xchain294_n118_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain294_n123_α
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain294_n119_α:
 mov qword ptr [rbp + 11808], 6
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 11816], rax
 jmp xchain294_n124_α
.Lx453_0:
 .quad 28
# IR_VAR_REF
 xchain294_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14080]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain294_n125_α
# IR_VAR_REF
 xchain294_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain294_n126_α
# IR_VAR_REF
 xchain294_n122_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14096]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain294_n127_α
 xchain294_n123_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+528]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+544]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+560]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 568], rax
# marshal arg3 = producer-box slot [zr+448] -> [zr+576]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 584], rax
# marshal arg4 = producer-box slot [zr+480] -> [zr+592]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n128_α
 xchain294_n123_β:
 jmp xchain294_n92_α
# IR_LIT_STRING
 xchain294_n124_α:
 mov qword ptr [rbp + 11776], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 11784], rax
 jmp xchain294_n129_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "."
 xchain294_n125_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+4960]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 4968], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+4976]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4984], rax
# marshal arg2 = producer-box slot [zr+4880] -> [zr+4992]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5000], rax
# marshal arg3 = producer-box slot [zr+4912] -> [zr+5008]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 5016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4960]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n130_α
 xchain294_n125_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n126_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain294_n131_α
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string ","
 xchain294_n127_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1664]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1680]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1688], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1696]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n132_α
 xchain294_n127_β:
 jmp proc_define$2F2_ω
 xchain294_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+320]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n133_α
 xchain294_n128_β:
 jmp xchain294_n92_α
# IR_LIT_INTEGER
 xchain294_n129_α:
 mov qword ptr [rbp + 11664], 6
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 11672], rax
 jmp xchain294_n134_α
.Lx466_0:
 .quad 85
# IR_LIT_STRING
 xchain294_n130_α:
 mov qword ptr [rbp + 5408], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain294_n135_α
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain294_n131_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain294_n136_α
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "=<"
 xchain294_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1776]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1792]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1800], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+1808]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1816], rax
# marshal arg3 = producer-box slot [zr+1552] -> [zr+1824]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1832], rax
# marshal arg4 = producer-box slot [zr+1648] -> [zr+1840]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n137_α
 xchain294_n132_β:
 jmp xchain294_n138_α
# IR_VAR_REF
 xchain294_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain294_n139_α
# IR_LIT_STRING
 xchain294_n134_α:
 mov qword ptr [rbp + 11632], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 11640], rax
 jmp xchain294_n140_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14096]
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 jmp xchain294_n141_α
# IR_VAR_REF
 xchain294_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain294_n142_α
 xchain294_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1280]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n143_α
 xchain294_n137_β:
 jmp xchain294_n138_α
 xchain294_n138_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+848]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n69_α
 xchain294_n138_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n139_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain294_n144_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "true"
# IR_LIT_INTEGER
 xchain294_n140_α:
 mov qword ptr [rbp + 11520], 6
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 11528], rax
 jmp xchain294_n145_α
.Lx480_0:
 .quad 99
# IR_VAR_REF
 xchain294_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain294_n146_α
# IR_VAR_REF
 xchain294_n142_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain294_n147_α
# IR_VAR_REF
 xchain294_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain294_n148_α
 xchain294_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx487_2]
 jmp .Lx487_3
.Lx487_2:
 .quad .Lx487_2_s
.Lx487_2_s:
 .string "true"
.Lx487_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n149_α
 xchain294_n144_β:
 jmp xchain294_n92_α
# IR_LIT_STRING
 xchain294_n145_α:
 mov qword ptr [rbp + 11488], 1
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [rbp + 11496], rax
 jmp xchain294_n150_α
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n146_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain294_n151_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "."
 xchain294_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2320]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2328], rax
# marshal arg2 = producer-box slot [zr+2256] -> [zr+2336]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n152_α
 xchain294_n147_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n148_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain294_n153_α
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "partition"
# IR_SUSPEND yield+resume
 xchain294_n149_α:
 lea rax, [rip + xchain294_n149_β]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n149_β:
 jmp xchain294_n92_α
# IR_LIT_INTEGER
 xchain294_n150_α:
 mov qword ptr [rbp + 11376], 6
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 11384], rax
 jmp xchain294_n154_α
.Lx494_0:
 .quad 47
# IR_VAR_REF
 xchain294_n151_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 jmp xchain294_n155_α
# IR_LIT_STRING
 xchain294_n152_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain294_n156_α
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string ","
# IR_VAR_REF
 xchain294_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14048]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain294_n157_α
# IR_LIT_STRING
 xchain294_n154_α:
 mov qword ptr [rbp + 11344], 1
 mov rax, qword ptr [rip + .Lx500_0]
 mov qword ptr [rbp + 11352], rax
 jmp xchain294_n158_α
.Lx500_0:
 .quad .Lx500_0_s
.Lx500_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n155_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14128]
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 jmp xchain294_n159_α
# IR_LIT_STRING
 xchain294_n156_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx503_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain294_n160_α
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "?"
# IR_VAR_REF
 xchain294_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain294_n161_α
# IR_LIT_INTEGER
 xchain294_n158_α:
 mov qword ptr [rbp + 11232], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 11240], rax
 jmp xchain294_n162_α
.Lx506_0:
 .quad 28
 xchain294_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5216]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5224], rax
# marshal arg1 = producer-box slot [zr+5168] -> [zr+5232]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5240], rax
# marshal arg2 = producer-box slot [zr+5136] -> [zr+5248]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5216]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n163_α
 xchain294_n159_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n160_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain294_n164_α
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "partition"
# IR_VAR_REF
 xchain294_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14080]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain294_n165_α
# IR_LIT_STRING
 xchain294_n162_α:
 mov qword ptr [rbp + 11200], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 11208], rax
 jmp xchain294_n166_α
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "."
 xchain294_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5408] -> [zr+5328]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5336], rax
# marshal arg1 = producer-box slot [zr+5072] -> [zr+5344]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5352], rax
# marshal arg2 = producer-box slot [zr+5104] -> [zr+5360]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5368], rax
# marshal arg3 = producer-box slot [zr+5200] -> [zr+5376]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5328]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n167_α
 xchain294_n163_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14048]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain294_n168_α
# IR_VAR_REF
 xchain294_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14096]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain294_n169_α
# IR_LIT_INTEGER
 xchain294_n166_α:
 mov qword ptr [rbp + 11088], 6
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [rbp + 11096], rax
 jmp xchain294_n170_α
.Lx517_0:
 .quad 82
 xchain294_n167_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5456]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5464], rax
# marshal arg1 = producer-box slot [zr+4944] -> [zr+5472]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 5480], rax
# marshal arg2 = producer-box slot [zr+5312] -> [zr+5488]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n171_α
 xchain294_n167_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n168_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14064]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain294_n172_α
 xchain294_n169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1120]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1136]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1152]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1160], rax
# marshal arg3 = producer-box slot [zr+1040] -> [zr+1168]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1176], rax
# marshal arg4 = producer-box slot [zr+1072] -> [zr+1184]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n173_α
 xchain294_n169_β:
 jmp xchain294_n138_α
# IR_LIT_STRING
 xchain294_n170_α:
 mov qword ptr [rbp + 11056], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [rbp + 11064], rax
 jmp xchain294_n174_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "."
 xchain294_n171_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5632] -> [zr+5568]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5576], rax
# marshal arg1 = producer-box slot [zr+4704] -> [zr+5584]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 5584], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 5592], rax
# marshal arg2 = producer-box slot [zr+5440] -> [zr+5600]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n175_α
 xchain294_n171_β:
 jmp xchain294_n49_α
# IR_VAR_REF
 xchain294_n172_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14080]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain294_n176_α
 xchain294_n173_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+912]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n177_α
 xchain294_n173_β:
 jmp xchain294_n138_α
# IR_LIT_INTEGER
 xchain294_n174_α:
 mov qword ptr [rbp + 10944], 6
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 10952], rax
 jmp xchain294_n178_α
.Lx527_0:
 .quad 6
 xchain294_n175_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4544] -> [zr+4496]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4504], rax
# marshal arg1 = producer-box slot [zr+5552] -> [zr+4512]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 4520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4496]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n179_α
 xchain294_n175_β:
 jmp xchain294_n49_α
# IR_VAR_REF
 xchain294_n176_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14096]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain294_n180_α
# IR_SUSPEND yield+resume
 xchain294_n177_α:
 lea rax, [rip + xchain294_n177_β]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n177_β:
 jmp xchain294_n138_α
# IR_LIT_STRING
 xchain294_n178_α:
 mov qword ptr [rbp + 10912], 1
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [rbp + 10920], rax
 jmp xchain294_n181_α
.Lx533_0:
 .quad .Lx533_0_s
.Lx533_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain294_n179_α:
 lea rax, [rip + xchain294_n179_β]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n179_β:
 jmp xchain294_n49_α
 xchain294_n180_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2576]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2584], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2592]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2600], rax
# marshal arg2 = producer-box slot [zr+2464] -> [zr+2608]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2616], rax
# marshal arg3 = producer-box slot [zr+2496] -> [zr+2624]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2632], rax
# marshal arg4 = producer-box slot [zr+2528] -> [zr+2640]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2576]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n182_α
 xchain294_n180_β:
 jmp proc_define$2F2_ω
# IR_LIT_INTEGER
 xchain294_n181_α:
 mov qword ptr [rbp + 10800], 6
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain294_n183_α
.Lx537_0:
 .quad 11
 xchain294_n182_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2736]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2744], rax
# marshal arg2 = producer-box slot [zr+2560] -> [zr+2752]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n184_α
 xchain294_n182_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n183_α:
 mov qword ptr [rbp + 10768], 1
 mov rax, qword ptr [rip + .Lx539_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain294_n185_α
.Lx539_0:
 .quad .Lx539_0_s
.Lx539_0_s:
 .string "."
 xchain294_n184_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2832]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2848]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2856], rax
# marshal arg2 = producer-box slot [zr+2704] -> [zr+2864]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n186_α
 xchain294_n184_β:
 jmp xchain294_n116_α
# IR_LIT_INTEGER
 xchain294_n185_α:
 mov qword ptr [rbp + 10656], 6
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 10664], rax
 jmp xchain294_n187_α
.Lx541_0:
 .quad 55
 xchain294_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2144]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2160]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n188_α
 xchain294_n186_β:
 jmp xchain294_n116_α
# IR_LIT_STRING
 xchain294_n187_α:
 mov qword ptr [rbp + 10624], 1
 mov rax, qword ptr [rip + .Lx543_0]
 mov qword ptr [rbp + 10632], rax
 jmp xchain294_n189_α
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain294_n188_α:
 lea rax, [rip + xchain294_n188_β]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n188_β:
 jmp xchain294_n116_α
# IR_LIT_INTEGER
 xchain294_n189_α:
 mov qword ptr [rbp + 10512], 6
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 10520], rax
 jmp xchain294_n190_α
.Lx546_0:
 .quad 29
# IR_LIT_STRING
 xchain294_n190_α:
 mov qword ptr [rbp + 10480], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 10488], rax
 jmp xchain294_n191_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n191_α:
 mov qword ptr [rbp + 10368], 6
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 10376], rax
 jmp xchain294_n192_α
.Lx548_0:
 .quad 39
# IR_LIT_STRING
 xchain294_n192_α:
 mov qword ptr [rbp + 10336], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain294_n193_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n193_α:
 mov qword ptr [rbp + 10224], 6
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 10232], rax
 jmp xchain294_n194_α
.Lx550_0:
 .quad 81
# IR_LIT_STRING
 xchain294_n194_α:
 mov qword ptr [rbp + 10192], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain294_n195_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n195_α:
 mov qword ptr [rbp + 10080], 6
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [rbp + 10088], rax
 jmp xchain294_n196_α
.Lx552_0:
 .quad 90
# IR_LIT_STRING
 xchain294_n196_α:
 mov qword ptr [rbp + 10048], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 10056], rax
 jmp xchain294_n197_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n197_α:
 mov qword ptr [rbp + 9936], 6
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain294_n198_α
.Lx554_0:
 .quad 37
# IR_LIT_STRING
 xchain294_n198_α:
 mov qword ptr [rbp + 9904], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 9912], rax
 jmp xchain294_n199_α
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n199_α:
 mov qword ptr [rbp + 9792], 6
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 9800], rax
 jmp xchain294_n200_α
.Lx556_0:
 .quad 10
# IR_LIT_STRING
 xchain294_n200_α:
 mov qword ptr [rbp + 9760], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 9768], rax
 jmp xchain294_n201_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n201_α:
 mov qword ptr [rbp + 9648], 6
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [rbp + 9656], rax
 jmp xchain294_n202_α
.Lx558_0:
 .quad 0
# IR_LIT_STRING
 xchain294_n202_α:
 mov qword ptr [rbp + 9616], 1
 mov rax, qword ptr [rip + .Lx559_0]
 mov qword ptr [rbp + 9624], rax
 jmp xchain294_n203_α
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n203_α:
 mov qword ptr [rbp + 9504], 6
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 9512], rax
 jmp xchain294_n204_α
.Lx560_0:
 .quad 66
# IR_LIT_STRING
 xchain294_n204_α:
 mov qword ptr [rbp + 9472], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain294_n205_α
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n205_α:
 mov qword ptr [rbp + 9360], 6
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 9368], rax
 jmp xchain294_n206_α
.Lx562_0:
 .quad 51
# IR_LIT_STRING
 xchain294_n206_α:
 mov qword ptr [rbp + 9328], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [rbp + 9336], rax
 jmp xchain294_n207_α
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n207_α:
 mov qword ptr [rbp + 9216], 6
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 9224], rax
 jmp xchain294_n208_α
.Lx564_0:
 .quad 7
# IR_LIT_STRING
 xchain294_n208_α:
 mov qword ptr [rbp + 9184], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 9192], rax
 jmp xchain294_n209_α
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n209_α:
 mov qword ptr [rbp + 9072], 6
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 9080], rax
 jmp xchain294_n210_α
.Lx566_0:
 .quad 21
# IR_LIT_STRING
 xchain294_n210_α:
 mov qword ptr [rbp + 9040], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 9048], rax
 jmp xchain294_n211_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n211_α:
 mov qword ptr [rbp + 8928], 6
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 8936], rax
 jmp xchain294_n212_α
.Lx568_0:
 .quad 85
# IR_LIT_STRING
 xchain294_n212_α:
 mov qword ptr [rbp + 8896], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 8904], rax
 jmp xchain294_n213_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n213_α:
 mov qword ptr [rbp + 8784], 6
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 8792], rax
 jmp xchain294_n214_α
.Lx570_0:
 .quad 27
# IR_LIT_STRING
 xchain294_n214_α:
 mov qword ptr [rbp + 8752], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 8760], rax
 jmp xchain294_n215_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n215_α:
 mov qword ptr [rbp + 8640], 6
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 8648], rax
 jmp xchain294_n216_α
.Lx572_0:
 .quad 31
# IR_LIT_STRING
 xchain294_n216_α:
 mov qword ptr [rbp + 8608], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 8616], rax
 jmp xchain294_n217_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n217_α:
 mov qword ptr [rbp + 8496], 6
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 8504], rax
 jmp xchain294_n218_α
.Lx574_0:
 .quad 63
# IR_LIT_STRING
 xchain294_n218_α:
 mov qword ptr [rbp + 8464], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 8472], rax
 jmp xchain294_n219_α
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n219_α:
 mov qword ptr [rbp + 8352], 6
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [rbp + 8360], rax
 jmp xchain294_n220_α
.Lx576_0:
 .quad 75
# IR_LIT_STRING
 xchain294_n220_α:
 mov qword ptr [rbp + 8320], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 8328], rax
 jmp xchain294_n221_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n221_α:
 mov qword ptr [rbp + 8208], 6
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 8216], rax
 jmp xchain294_n222_α
.Lx578_0:
 .quad 4
# IR_LIT_STRING
 xchain294_n222_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain294_n223_α
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n223_α:
 mov qword ptr [rbp + 8064], 6
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 8072], rax
 jmp xchain294_n224_α
.Lx580_0:
 .quad 95
# IR_LIT_STRING
 xchain294_n224_α:
 mov qword ptr [rbp + 8032], 1
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 8040], rax
 jmp xchain294_n225_α
.Lx581_0:
 .quad .Lx581_0_s
.Lx581_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n225_α:
 mov qword ptr [rbp + 7920], 6
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 7928], rax
 jmp xchain294_n226_α
.Lx582_0:
 .quad 99
# IR_LIT_STRING
 xchain294_n226_α:
 mov qword ptr [rbp + 7888], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 7896], rax
 jmp xchain294_n227_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n227_α:
 mov qword ptr [rbp + 7776], 6
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 7784], rax
 jmp xchain294_n228_α
.Lx584_0:
 .quad 11
# IR_LIT_STRING
 xchain294_n228_α:
 mov qword ptr [rbp + 7744], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 7752], rax
 jmp xchain294_n229_α
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n229_α:
 mov qword ptr [rbp + 7632], 6
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 7640], rax
 jmp xchain294_n230_α
.Lx586_0:
 .quad 28
# IR_LIT_STRING
 xchain294_n230_α:
 mov qword ptr [rbp + 7600], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [rbp + 7608], rax
 jmp xchain294_n231_α
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n231_α:
 mov qword ptr [rbp + 7488], 6
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 7496], rax
 jmp xchain294_n232_α
.Lx588_0:
 .quad 61
# IR_LIT_STRING
 xchain294_n232_α:
 mov qword ptr [rbp + 7456], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 7464], rax
 jmp xchain294_n233_α
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n233_α:
 mov qword ptr [rbp + 7344], 6
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [rbp + 7352], rax
 jmp xchain294_n234_α
.Lx590_0:
 .quad 74
# IR_LIT_STRING
 xchain294_n234_α:
 mov qword ptr [rbp + 7312], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain294_n235_α
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n235_α:
 mov qword ptr [rbp + 7200], 6
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain294_n236_α
.Lx592_0:
 .quad 18
# IR_LIT_STRING
 xchain294_n236_α:
 mov qword ptr [rbp + 7168], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 7176], rax
 jmp xchain294_n237_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n237_α:
 mov qword ptr [rbp + 7056], 6
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 7064], rax
 jmp xchain294_n238_α
.Lx594_0:
 .quad 92
# IR_LIT_STRING
 xchain294_n238_α:
 mov qword ptr [rbp + 7024], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [rbp + 7032], rax
 jmp xchain294_n239_α
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n239_α:
 mov qword ptr [rbp + 6912], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 6920], rax
 jmp xchain294_n240_α
.Lx596_0:
 .quad 40
# IR_LIT_STRING
 xchain294_n240_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain294_n241_α
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n241_α:
 mov qword ptr [rbp + 6768], 6
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain294_n242_α
.Lx598_0:
 .quad 53
# IR_LIT_STRING
 xchain294_n242_α:
 mov qword ptr [rbp + 6736], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 6744], rax
 jmp xchain294_n243_α
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n243_α:
 mov qword ptr [rbp + 6624], 6
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 6632], rax
 jmp xchain294_n244_α
.Lx600_0:
 .quad 59
# IR_LIT_STRING
 xchain294_n244_α:
 mov qword ptr [rbp + 6592], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 6600], rax
 jmp xchain294_n245_α
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n245_α:
 mov qword ptr [rbp + 6480], 6
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain294_n246_α
.Lx602_0:
 .quad 8
# IR_LIT_STRING
 xchain294_n246_α:
 mov qword ptr [rbp + 6448], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [rbp + 6456], rax
 jmp xchain294_n247_α
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "[]"
 xchain294_n247_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6592] -> [zr+6528]
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6536], rax
# marshal arg1 = producer-box slot [zr+6480] -> [zr+6544]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6552], rax
# marshal arg2 = producer-box slot [zr+6448] -> [zr+6560]
 mov rax, qword ptr [rbp + 6448]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6456]
 mov qword ptr [rbp + 6568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n248_α
 xchain294_n247_β:
 jmp proc_define$2F2_ω
 xchain294_n248_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6672]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6680], rax
# marshal arg1 = producer-box slot [zr+6624] -> [zr+6688]
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 6688], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 6696], rax
# marshal arg2 = producer-box slot [zr+6512] -> [zr+6704]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n249_α
 xchain294_n248_β:
 jmp proc_define$2F2_ω
 xchain294_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6880] -> [zr+6816]
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 6824], rax
# marshal arg1 = producer-box slot [zr+6768] -> [zr+6832]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6840], rax
# marshal arg2 = producer-box slot [zr+6656] -> [zr+6848]
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 6848], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 6856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6816]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n250_α
 xchain294_n249_β:
 jmp proc_define$2F2_ω
 xchain294_n250_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7024] -> [zr+6960]
 mov rax, qword ptr [rbp + 7024]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 7032]
 mov qword ptr [rbp + 6968], rax
# marshal arg1 = producer-box slot [zr+6912] -> [zr+6976]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6976], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6984], rax
# marshal arg2 = producer-box slot [zr+6800] -> [zr+6992]
 mov rax, qword ptr [rbp + 6800]
 mov qword ptr [rbp + 6992], rax
 mov rax, qword ptr [rbp + 6808]
 mov qword ptr [rbp + 7000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n251_α
 xchain294_n250_β:
 jmp proc_define$2F2_ω
 xchain294_n251_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7168] -> [zr+7104]
 mov rax, qword ptr [rbp + 7168]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7176]
 mov qword ptr [rbp + 7112], rax
# marshal arg1 = producer-box slot [zr+7056] -> [zr+7120]
 mov rax, qword ptr [rbp + 7056]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 7064]
 mov qword ptr [rbp + 7128], rax
# marshal arg2 = producer-box slot [zr+6944] -> [zr+7136]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 7136], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 7144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n252_α
 xchain294_n251_β:
 jmp proc_define$2F2_ω
 xchain294_n252_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7312] -> [zr+7248]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7248], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7256], rax
# marshal arg1 = producer-box slot [zr+7200] -> [zr+7264]
 mov rax, qword ptr [rbp + 7200]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7208]
 mov qword ptr [rbp + 7272], rax
# marshal arg2 = producer-box slot [zr+7088] -> [zr+7280]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n253_α
 xchain294_n252_β:
 jmp proc_define$2F2_ω
 xchain294_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7456] -> [zr+7392]
 mov rax, qword ptr [rbp + 7456]
 mov qword ptr [rbp + 7392], rax
 mov rax, qword ptr [rbp + 7464]
 mov qword ptr [rbp + 7400], rax
# marshal arg1 = producer-box slot [zr+7344] -> [zr+7408]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7408], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7416], rax
# marshal arg2 = producer-box slot [zr+7232] -> [zr+7424]
 mov rax, qword ptr [rbp + 7232]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 7240]
 mov qword ptr [rbp + 7432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7392]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7376], rax
 mov qword ptr [rbp + 7384], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n254_α
 xchain294_n253_β:
 jmp proc_define$2F2_ω
 xchain294_n254_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7600] -> [zr+7536]
 mov rax, qword ptr [rbp + 7600]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7608]
 mov qword ptr [rbp + 7544], rax
# marshal arg1 = producer-box slot [zr+7488] -> [zr+7552]
 mov rax, qword ptr [rbp + 7488]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7496]
 mov qword ptr [rbp + 7560], rax
# marshal arg2 = producer-box slot [zr+7376] -> [zr+7568]
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [rbp + 7568], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [rbp + 7576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7536]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n255_α
 xchain294_n254_β:
 jmp proc_define$2F2_ω
 xchain294_n255_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7680]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7688], rax
# marshal arg1 = producer-box slot [zr+7632] -> [zr+7696]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7704], rax
# marshal arg2 = producer-box slot [zr+7520] -> [zr+7712]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7680]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7664], rax
 mov qword ptr [rbp + 7672], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n256_α
 xchain294_n255_β:
 jmp proc_define$2F2_ω
 xchain294_n256_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7888] -> [zr+7824]
 mov rax, qword ptr [rbp + 7888]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7896]
 mov qword ptr [rbp + 7832], rax
# marshal arg1 = producer-box slot [zr+7776] -> [zr+7840]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7848], rax
# marshal arg2 = producer-box slot [zr+7664] -> [zr+7856]
 mov rax, qword ptr [rbp + 7664]
 mov qword ptr [rbp + 7856], rax
 mov rax, qword ptr [rbp + 7672]
 mov qword ptr [rbp + 7864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7824]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n257_α
 xchain294_n256_β:
 jmp proc_define$2F2_ω
 xchain294_n257_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8032] -> [zr+7968]
 mov rax, qword ptr [rbp + 8032]
 mov qword ptr [rbp + 7968], rax
 mov rax, qword ptr [rbp + 8040]
 mov qword ptr [rbp + 7976], rax
# marshal arg1 = producer-box slot [zr+7920] -> [zr+7984]
 mov rax, qword ptr [rbp + 7920]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 7928]
 mov qword ptr [rbp + 7992], rax
# marshal arg2 = producer-box slot [zr+7808] -> [zr+8000]
 mov rax, qword ptr [rbp + 7808]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 7816]
 mov qword ptr [rbp + 8008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7968]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n258_α
 xchain294_n257_β:
 jmp proc_define$2F2_ω
 xchain294_n258_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8176] -> [zr+8112]
 mov rax, qword ptr [rbp + 8176]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8184]
 mov qword ptr [rbp + 8120], rax
# marshal arg1 = producer-box slot [zr+8064] -> [zr+8128]
 mov rax, qword ptr [rbp + 8064]
 mov qword ptr [rbp + 8128], rax
 mov rax, qword ptr [rbp + 8072]
 mov qword ptr [rbp + 8136], rax
# marshal arg2 = producer-box slot [zr+7952] -> [zr+8144]
 mov rax, qword ptr [rbp + 7952]
 mov qword ptr [rbp + 8144], rax
 mov rax, qword ptr [rbp + 7960]
 mov qword ptr [rbp + 8152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n259_α
 xchain294_n258_β:
 jmp proc_define$2F2_ω
 xchain294_n259_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8320] -> [zr+8256]
 mov rax, qword ptr [rbp + 8320]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 8328]
 mov qword ptr [rbp + 8264], rax
# marshal arg1 = producer-box slot [zr+8208] -> [zr+8272]
 mov rax, qword ptr [rbp + 8208]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8216]
 mov qword ptr [rbp + 8280], rax
# marshal arg2 = producer-box slot [zr+8096] -> [zr+8288]
 mov rax, qword ptr [rbp + 8096]
 mov qword ptr [rbp + 8288], rax
 mov rax, qword ptr [rbp + 8104]
 mov qword ptr [rbp + 8296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8256]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n260_α
 xchain294_n259_β:
 jmp proc_define$2F2_ω
 xchain294_n260_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8464] -> [zr+8400]
 mov rax, qword ptr [rbp + 8464]
 mov qword ptr [rbp + 8400], rax
 mov rax, qword ptr [rbp + 8472]
 mov qword ptr [rbp + 8408], rax
# marshal arg1 = producer-box slot [zr+8352] -> [zr+8416]
 mov rax, qword ptr [rbp + 8352]
 mov qword ptr [rbp + 8416], rax
 mov rax, qword ptr [rbp + 8360]
 mov qword ptr [rbp + 8424], rax
# marshal arg2 = producer-box slot [zr+8240] -> [zr+8432]
 mov rax, qword ptr [rbp + 8240]
 mov qword ptr [rbp + 8432], rax
 mov rax, qword ptr [rbp + 8248]
 mov qword ptr [rbp + 8440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n261_α
 xchain294_n260_β:
 jmp proc_define$2F2_ω
 xchain294_n261_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8608] -> [zr+8544]
 mov rax, qword ptr [rbp + 8608]
 mov qword ptr [rbp + 8544], rax
 mov rax, qword ptr [rbp + 8616]
 mov qword ptr [rbp + 8552], rax
# marshal arg1 = producer-box slot [zr+8496] -> [zr+8560]
 mov rax, qword ptr [rbp + 8496]
 mov qword ptr [rbp + 8560], rax
 mov rax, qword ptr [rbp + 8504]
 mov qword ptr [rbp + 8568], rax
# marshal arg2 = producer-box slot [zr+8384] -> [zr+8576]
 mov rax, qword ptr [rbp + 8384]
 mov qword ptr [rbp + 8576], rax
 mov rax, qword ptr [rbp + 8392]
 mov qword ptr [rbp + 8584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8528], rax
 mov qword ptr [rbp + 8536], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n262_α
 xchain294_n261_β:
 jmp proc_define$2F2_ω
 xchain294_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8752] -> [zr+8688]
 mov rax, qword ptr [rbp + 8752]
 mov qword ptr [rbp + 8688], rax
 mov rax, qword ptr [rbp + 8760]
 mov qword ptr [rbp + 8696], rax
# marshal arg1 = producer-box slot [zr+8640] -> [zr+8704]
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8704], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8712], rax
# marshal arg2 = producer-box slot [zr+8528] -> [zr+8720]
 mov rax, qword ptr [rbp + 8528]
 mov qword ptr [rbp + 8720], rax
 mov rax, qword ptr [rbp + 8536]
 mov qword ptr [rbp + 8728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n263_α
 xchain294_n262_β:
 jmp proc_define$2F2_ω
 xchain294_n263_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8896] -> [zr+8832]
 mov rax, qword ptr [rbp + 8896]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8904]
 mov qword ptr [rbp + 8840], rax
# marshal arg1 = producer-box slot [zr+8784] -> [zr+8848]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8848], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8856], rax
# marshal arg2 = producer-box slot [zr+8672] -> [zr+8864]
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8864], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n264_α
 xchain294_n263_β:
 jmp proc_define$2F2_ω
 xchain294_n264_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9040] -> [zr+8976]
 mov rax, qword ptr [rbp + 9040]
 mov qword ptr [rbp + 8976], rax
 mov rax, qword ptr [rbp + 9048]
 mov qword ptr [rbp + 8984], rax
# marshal arg1 = producer-box slot [zr+8928] -> [zr+8992]
 mov rax, qword ptr [rbp + 8928]
 mov qword ptr [rbp + 8992], rax
 mov rax, qword ptr [rbp + 8936]
 mov qword ptr [rbp + 9000], rax
# marshal arg2 = producer-box slot [zr+8816] -> [zr+9008]
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 9008], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 9016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n265_α
 xchain294_n264_β:
 jmp proc_define$2F2_ω
 xchain294_n265_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9184] -> [zr+9120]
 mov rax, qword ptr [rbp + 9184]
 mov qword ptr [rbp + 9120], rax
 mov rax, qword ptr [rbp + 9192]
 mov qword ptr [rbp + 9128], rax
# marshal arg1 = producer-box slot [zr+9072] -> [zr+9136]
 mov rax, qword ptr [rbp + 9072]
 mov qword ptr [rbp + 9136], rax
 mov rax, qword ptr [rbp + 9080]
 mov qword ptr [rbp + 9144], rax
# marshal arg2 = producer-box slot [zr+8960] -> [zr+9152]
 mov rax, qword ptr [rbp + 8960]
 mov qword ptr [rbp + 9152], rax
 mov rax, qword ptr [rbp + 8968]
 mov qword ptr [rbp + 9160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9120]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9104], rax
 mov qword ptr [rbp + 9112], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n266_α
 xchain294_n265_β:
 jmp proc_define$2F2_ω
 xchain294_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9328] -> [zr+9264]
 mov rax, qword ptr [rbp + 9328]
 mov qword ptr [rbp + 9264], rax
 mov rax, qword ptr [rbp + 9336]
 mov qword ptr [rbp + 9272], rax
# marshal arg1 = producer-box slot [zr+9216] -> [zr+9280]
 mov rax, qword ptr [rbp + 9216]
 mov qword ptr [rbp + 9280], rax
 mov rax, qword ptr [rbp + 9224]
 mov qword ptr [rbp + 9288], rax
# marshal arg2 = producer-box slot [zr+9104] -> [zr+9296]
 mov rax, qword ptr [rbp + 9104]
 mov qword ptr [rbp + 9296], rax
 mov rax, qword ptr [rbp + 9112]
 mov qword ptr [rbp + 9304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9264]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n267_α
 xchain294_n266_β:
 jmp proc_define$2F2_ω
 xchain294_n267_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9472] -> [zr+9408]
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 9408], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 9416], rax
# marshal arg1 = producer-box slot [zr+9360] -> [zr+9424]
 mov rax, qword ptr [rbp + 9360]
 mov qword ptr [rbp + 9424], rax
 mov rax, qword ptr [rbp + 9368]
 mov qword ptr [rbp + 9432], rax
# marshal arg2 = producer-box slot [zr+9248] -> [zr+9440]
 mov rax, qword ptr [rbp + 9248]
 mov qword ptr [rbp + 9440], rax
 mov rax, qword ptr [rbp + 9256]
 mov qword ptr [rbp + 9448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n268_α
 xchain294_n267_β:
 jmp proc_define$2F2_ω
 xchain294_n268_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9616] -> [zr+9552]
 mov rax, qword ptr [rbp + 9616]
 mov qword ptr [rbp + 9552], rax
 mov rax, qword ptr [rbp + 9624]
 mov qword ptr [rbp + 9560], rax
# marshal arg1 = producer-box slot [zr+9504] -> [zr+9568]
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 9576], rax
# marshal arg2 = producer-box slot [zr+9392] -> [zr+9584]
 mov rax, qword ptr [rbp + 9392]
 mov qword ptr [rbp + 9584], rax
 mov rax, qword ptr [rbp + 9400]
 mov qword ptr [rbp + 9592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9552]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9536], rax
 mov qword ptr [rbp + 9544], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n269_α
 xchain294_n268_β:
 jmp proc_define$2F2_ω
 xchain294_n269_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9760] -> [zr+9696]
 mov rax, qword ptr [rbp + 9760]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 9768]
 mov qword ptr [rbp + 9704], rax
# marshal arg1 = producer-box slot [zr+9648] -> [zr+9712]
 mov rax, qword ptr [rbp + 9648]
 mov qword ptr [rbp + 9712], rax
 mov rax, qword ptr [rbp + 9656]
 mov qword ptr [rbp + 9720], rax
# marshal arg2 = producer-box slot [zr+9536] -> [zr+9728]
 mov rax, qword ptr [rbp + 9536]
 mov qword ptr [rbp + 9728], rax
 mov rax, qword ptr [rbp + 9544]
 mov qword ptr [rbp + 9736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9696]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n270_α
 xchain294_n269_β:
 jmp proc_define$2F2_ω
 xchain294_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9904] -> [zr+9840]
 mov rax, qword ptr [rbp + 9904]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 9912]
 mov qword ptr [rbp + 9848], rax
# marshal arg1 = producer-box slot [zr+9792] -> [zr+9856]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9856], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9864], rax
# marshal arg2 = producer-box slot [zr+9680] -> [zr+9872]
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9872], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9824], rax
 mov qword ptr [rbp + 9832], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n271_α
 xchain294_n270_β:
 jmp proc_define$2F2_ω
 xchain294_n271_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10048] -> [zr+9984]
 mov rax, qword ptr [rbp + 10048]
 mov qword ptr [rbp + 9984], rax
 mov rax, qword ptr [rbp + 10056]
 mov qword ptr [rbp + 9992], rax
# marshal arg1 = producer-box slot [zr+9936] -> [zr+10000]
 mov rax, qword ptr [rbp + 9936]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 9944]
 mov qword ptr [rbp + 10008], rax
# marshal arg2 = producer-box slot [zr+9824] -> [zr+10016]
 mov rax, qword ptr [rbp + 9824]
 mov qword ptr [rbp + 10016], rax
 mov rax, qword ptr [rbp + 9832]
 mov qword ptr [rbp + 10024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n272_α
 xchain294_n271_β:
 jmp proc_define$2F2_ω
 xchain294_n272_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10192] -> [zr+10128]
 mov rax, qword ptr [rbp + 10192]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10200]
 mov qword ptr [rbp + 10136], rax
# marshal arg1 = producer-box slot [zr+10080] -> [zr+10144]
 mov rax, qword ptr [rbp + 10080]
 mov qword ptr [rbp + 10144], rax
 mov rax, qword ptr [rbp + 10088]
 mov qword ptr [rbp + 10152], rax
# marshal arg2 = producer-box slot [zr+9968] -> [zr+10160]
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 10160], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 10168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n273_α
 xchain294_n272_β:
 jmp proc_define$2F2_ω
 xchain294_n273_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10336] -> [zr+10272]
 mov rax, qword ptr [rbp + 10336]
 mov qword ptr [rbp + 10272], rax
 mov rax, qword ptr [rbp + 10344]
 mov qword ptr [rbp + 10280], rax
# marshal arg1 = producer-box slot [zr+10224] -> [zr+10288]
 mov rax, qword ptr [rbp + 10224]
 mov qword ptr [rbp + 10288], rax
 mov rax, qword ptr [rbp + 10232]
 mov qword ptr [rbp + 10296], rax
# marshal arg2 = producer-box slot [zr+10112] -> [zr+10304]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 10304], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 10312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n274_α
 xchain294_n273_β:
 jmp proc_define$2F2_ω
 xchain294_n274_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10480] -> [zr+10416]
 mov rax, qword ptr [rbp + 10480]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 10488]
 mov qword ptr [rbp + 10424], rax
# marshal arg1 = producer-box slot [zr+10368] -> [zr+10432]
 mov rax, qword ptr [rbp + 10368]
 mov qword ptr [rbp + 10432], rax
 mov rax, qword ptr [rbp + 10376]
 mov qword ptr [rbp + 10440], rax
# marshal arg2 = producer-box slot [zr+10256] -> [zr+10448]
 mov rax, qword ptr [rbp + 10256]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 10264]
 mov qword ptr [rbp + 10456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10400], rax
 mov qword ptr [rbp + 10408], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n275_α
 xchain294_n274_β:
 jmp proc_define$2F2_ω
 xchain294_n275_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10624] -> [zr+10560]
 mov rax, qword ptr [rbp + 10624]
 mov qword ptr [rbp + 10560], rax
 mov rax, qword ptr [rbp + 10632]
 mov qword ptr [rbp + 10568], rax
# marshal arg1 = producer-box slot [zr+10512] -> [zr+10576]
 mov rax, qword ptr [rbp + 10512]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 10520]
 mov qword ptr [rbp + 10584], rax
# marshal arg2 = producer-box slot [zr+10400] -> [zr+10592]
 mov rax, qword ptr [rbp + 10400]
 mov qword ptr [rbp + 10592], rax
 mov rax, qword ptr [rbp + 10408]
 mov qword ptr [rbp + 10600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n276_α
 xchain294_n275_β:
 jmp proc_define$2F2_ω
 xchain294_n276_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10768] -> [zr+10704]
 mov rax, qword ptr [rbp + 10768]
 mov qword ptr [rbp + 10704], rax
 mov rax, qword ptr [rbp + 10776]
 mov qword ptr [rbp + 10712], rax
# marshal arg1 = producer-box slot [zr+10656] -> [zr+10720]
 mov rax, qword ptr [rbp + 10656]
 mov qword ptr [rbp + 10720], rax
 mov rax, qword ptr [rbp + 10664]
 mov qword ptr [rbp + 10728], rax
# marshal arg2 = producer-box slot [zr+10544] -> [zr+10736]
 mov rax, qword ptr [rbp + 10544]
 mov qword ptr [rbp + 10736], rax
 mov rax, qword ptr [rbp + 10552]
 mov qword ptr [rbp + 10744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10704]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10688], rax
 mov qword ptr [rbp + 10696], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n277_α
 xchain294_n276_β:
 jmp proc_define$2F2_ω
 xchain294_n277_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10912] -> [zr+10848]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10848], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10856], rax
# marshal arg1 = producer-box slot [zr+10800] -> [zr+10864]
 mov rax, qword ptr [rbp + 10800]
 mov qword ptr [rbp + 10864], rax
 mov rax, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 10872], rax
# marshal arg2 = producer-box slot [zr+10688] -> [zr+10880]
 mov rax, qword ptr [rbp + 10688]
 mov qword ptr [rbp + 10880], rax
 mov rax, qword ptr [rbp + 10696]
 mov qword ptr [rbp + 10888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10832], rax
 mov qword ptr [rbp + 10840], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n278_α
 xchain294_n277_β:
 jmp proc_define$2F2_ω
 xchain294_n278_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11056] -> [zr+10992]
 mov rax, qword ptr [rbp + 11056]
 mov qword ptr [rbp + 10992], rax
 mov rax, qword ptr [rbp + 11064]
 mov qword ptr [rbp + 11000], rax
# marshal arg1 = producer-box slot [zr+10944] -> [zr+11008]
 mov rax, qword ptr [rbp + 10944]
 mov qword ptr [rbp + 11008], rax
 mov rax, qword ptr [rbp + 10952]
 mov qword ptr [rbp + 11016], rax
# marshal arg2 = producer-box slot [zr+10832] -> [zr+11024]
 mov rax, qword ptr [rbp + 10832]
 mov qword ptr [rbp + 11024], rax
 mov rax, qword ptr [rbp + 10840]
 mov qword ptr [rbp + 11032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10976], rax
 mov qword ptr [rbp + 10984], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n279_α
 xchain294_n278_β:
 jmp proc_define$2F2_ω
 xchain294_n279_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11200] -> [zr+11136]
 mov rax, qword ptr [rbp + 11200]
 mov qword ptr [rbp + 11136], rax
 mov rax, qword ptr [rbp + 11208]
 mov qword ptr [rbp + 11144], rax
# marshal arg1 = producer-box slot [zr+11088] -> [zr+11152]
 mov rax, qword ptr [rbp + 11088]
 mov qword ptr [rbp + 11152], rax
 mov rax, qword ptr [rbp + 11096]
 mov qword ptr [rbp + 11160], rax
# marshal arg2 = producer-box slot [zr+10976] -> [zr+11168]
 mov rax, qword ptr [rbp + 10976]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 10984]
 mov qword ptr [rbp + 11176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11120], rax
 mov qword ptr [rbp + 11128], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n280_α
 xchain294_n279_β:
 jmp proc_define$2F2_ω
 xchain294_n280_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11344] -> [zr+11280]
 mov rax, qword ptr [rbp + 11344]
 mov qword ptr [rbp + 11280], rax
 mov rax, qword ptr [rbp + 11352]
 mov qword ptr [rbp + 11288], rax
# marshal arg1 = producer-box slot [zr+11232] -> [zr+11296]
 mov rax, qword ptr [rbp + 11232]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11240]
 mov qword ptr [rbp + 11304], rax
# marshal arg2 = producer-box slot [zr+11120] -> [zr+11312]
 mov rax, qword ptr [rbp + 11120]
 mov qword ptr [rbp + 11312], rax
 mov rax, qword ptr [rbp + 11128]
 mov qword ptr [rbp + 11320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n281_α
 xchain294_n280_β:
 jmp proc_define$2F2_ω
 xchain294_n281_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11488] -> [zr+11424]
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 11424], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 11432], rax
# marshal arg1 = producer-box slot [zr+11376] -> [zr+11440]
 mov rax, qword ptr [rbp + 11376]
 mov qword ptr [rbp + 11440], rax
 mov rax, qword ptr [rbp + 11384]
 mov qword ptr [rbp + 11448], rax
# marshal arg2 = producer-box slot [zr+11264] -> [zr+11456]
 mov rax, qword ptr [rbp + 11264]
 mov qword ptr [rbp + 11456], rax
 mov rax, qword ptr [rbp + 11272]
 mov qword ptr [rbp + 11464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11408], rax
 mov qword ptr [rbp + 11416], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n282_α
 xchain294_n281_β:
 jmp proc_define$2F2_ω
 xchain294_n282_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11632] -> [zr+11568]
 mov rax, qword ptr [rbp + 11632]
 mov qword ptr [rbp + 11568], rax
 mov rax, qword ptr [rbp + 11640]
 mov qword ptr [rbp + 11576], rax
# marshal arg1 = producer-box slot [zr+11520] -> [zr+11584]
 mov rax, qword ptr [rbp + 11520]
 mov qword ptr [rbp + 11584], rax
 mov rax, qword ptr [rbp + 11528]
 mov qword ptr [rbp + 11592], rax
# marshal arg2 = producer-box slot [zr+11408] -> [zr+11600]
 mov rax, qword ptr [rbp + 11408]
 mov qword ptr [rbp + 11600], rax
 mov rax, qword ptr [rbp + 11416]
 mov qword ptr [rbp + 11608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11552], rax
 mov qword ptr [rbp + 11560], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n283_α
 xchain294_n282_β:
 jmp proc_define$2F2_ω
 xchain294_n283_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11776] -> [zr+11712]
 mov rax, qword ptr [rbp + 11776]
 mov qword ptr [rbp + 11712], rax
 mov rax, qword ptr [rbp + 11784]
 mov qword ptr [rbp + 11720], rax
# marshal arg1 = producer-box slot [zr+11664] -> [zr+11728]
 mov rax, qword ptr [rbp + 11664]
 mov qword ptr [rbp + 11728], rax
 mov rax, qword ptr [rbp + 11672]
 mov qword ptr [rbp + 11736], rax
# marshal arg2 = producer-box slot [zr+11552] -> [zr+11744]
 mov rax, qword ptr [rbp + 11552]
 mov qword ptr [rbp + 11744], rax
 mov rax, qword ptr [rbp + 11560]
 mov qword ptr [rbp + 11752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11712]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11696], rax
 mov qword ptr [rbp + 11704], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n284_α
 xchain294_n283_β:
 jmp proc_define$2F2_ω
 xchain294_n284_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11920] -> [zr+11856]
 mov rax, qword ptr [rbp + 11920]
 mov qword ptr [rbp + 11856], rax
 mov rax, qword ptr [rbp + 11928]
 mov qword ptr [rbp + 11864], rax
# marshal arg1 = producer-box slot [zr+11808] -> [zr+11872]
 mov rax, qword ptr [rbp + 11808]
 mov qword ptr [rbp + 11872], rax
 mov rax, qword ptr [rbp + 11816]
 mov qword ptr [rbp + 11880], rax
# marshal arg2 = producer-box slot [zr+11696] -> [zr+11888]
 mov rax, qword ptr [rbp + 11696]
 mov qword ptr [rbp + 11888], rax
 mov rax, qword ptr [rbp + 11704]
 mov qword ptr [rbp + 11896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11856]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11840], rax
 mov qword ptr [rbp + 11848], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n285_α
 xchain294_n284_β:
 jmp proc_define$2F2_ω
 xchain294_n285_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12064] -> [zr+12000]
 mov rax, qword ptr [rbp + 12064]
 mov qword ptr [rbp + 12000], rax
 mov rax, qword ptr [rbp + 12072]
 mov qword ptr [rbp + 12008], rax
# marshal arg1 = producer-box slot [zr+11952] -> [zr+12016]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 12016], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 12024], rax
# marshal arg2 = producer-box slot [zr+11840] -> [zr+12032]
 mov rax, qword ptr [rbp + 11840]
 mov qword ptr [rbp + 12032], rax
 mov rax, qword ptr [rbp + 11848]
 mov qword ptr [rbp + 12040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12000]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11984], rax
 mov qword ptr [rbp + 11992], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n286_α
 xchain294_n285_β:
 jmp proc_define$2F2_ω
 xchain294_n286_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12208] -> [zr+12144]
 mov rax, qword ptr [rbp + 12208]
 mov qword ptr [rbp + 12144], rax
 mov rax, qword ptr [rbp + 12216]
 mov qword ptr [rbp + 12152], rax
# marshal arg1 = producer-box slot [zr+12096] -> [zr+12160]
 mov rax, qword ptr [rbp + 12096]
 mov qword ptr [rbp + 12160], rax
 mov rax, qword ptr [rbp + 12104]
 mov qword ptr [rbp + 12168], rax
# marshal arg2 = producer-box slot [zr+11984] -> [zr+12176]
 mov rax, qword ptr [rbp + 11984]
 mov qword ptr [rbp + 12176], rax
 mov rax, qword ptr [rbp + 11992]
 mov qword ptr [rbp + 12184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12144]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12128], rax
 mov qword ptr [rbp + 12136], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n287_α
 xchain294_n286_β:
 jmp proc_define$2F2_ω
 xchain294_n287_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12352] -> [zr+12288]
 mov rax, qword ptr [rbp + 12352]
 mov qword ptr [rbp + 12288], rax
 mov rax, qword ptr [rbp + 12360]
 mov qword ptr [rbp + 12296], rax
# marshal arg1 = producer-box slot [zr+12240] -> [zr+12304]
 mov rax, qword ptr [rbp + 12240]
 mov qword ptr [rbp + 12304], rax
 mov rax, qword ptr [rbp + 12248]
 mov qword ptr [rbp + 12312], rax
# marshal arg2 = producer-box slot [zr+12128] -> [zr+12320]
 mov rax, qword ptr [rbp + 12128]
 mov qword ptr [rbp + 12320], rax
 mov rax, qword ptr [rbp + 12136]
 mov qword ptr [rbp + 12328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12272], rax
 mov qword ptr [rbp + 12280], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n288_α
 xchain294_n287_β:
 jmp proc_define$2F2_ω
 xchain294_n288_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12496] -> [zr+12432]
 mov rax, qword ptr [rbp + 12496]
 mov qword ptr [rbp + 12432], rax
 mov rax, qword ptr [rbp + 12504]
 mov qword ptr [rbp + 12440], rax
# marshal arg1 = producer-box slot [zr+12384] -> [zr+12448]
 mov rax, qword ptr [rbp + 12384]
 mov qword ptr [rbp + 12448], rax
 mov rax, qword ptr [rbp + 12392]
 mov qword ptr [rbp + 12456], rax
# marshal arg2 = producer-box slot [zr+12272] -> [zr+12464]
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [rbp + 12464], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [rbp + 12472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12416], rax
 mov qword ptr [rbp + 12424], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n289_α
 xchain294_n288_β:
 jmp proc_define$2F2_ω
 xchain294_n289_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12640] -> [zr+12576]
 mov rax, qword ptr [rbp + 12640]
 mov qword ptr [rbp + 12576], rax
 mov rax, qword ptr [rbp + 12648]
 mov qword ptr [rbp + 12584], rax
# marshal arg1 = producer-box slot [zr+12528] -> [zr+12592]
 mov rax, qword ptr [rbp + 12528]
 mov qword ptr [rbp + 12592], rax
 mov rax, qword ptr [rbp + 12536]
 mov qword ptr [rbp + 12600], rax
# marshal arg2 = producer-box slot [zr+12416] -> [zr+12608]
 mov rax, qword ptr [rbp + 12416]
 mov qword ptr [rbp + 12608], rax
 mov rax, qword ptr [rbp + 12424]
 mov qword ptr [rbp + 12616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12560], rax
 mov qword ptr [rbp + 12568], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n290_α
 xchain294_n289_β:
 jmp proc_define$2F2_ω
 xchain294_n290_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12784] -> [zr+12720]
 mov rax, qword ptr [rbp + 12784]
 mov qword ptr [rbp + 12720], rax
 mov rax, qword ptr [rbp + 12792]
 mov qword ptr [rbp + 12728], rax
# marshal arg1 = producer-box slot [zr+12672] -> [zr+12736]
 mov rax, qword ptr [rbp + 12672]
 mov qword ptr [rbp + 12736], rax
 mov rax, qword ptr [rbp + 12680]
 mov qword ptr [rbp + 12744], rax
# marshal arg2 = producer-box slot [zr+12560] -> [zr+12752]
 mov rax, qword ptr [rbp + 12560]
 mov qword ptr [rbp + 12752], rax
 mov rax, qword ptr [rbp + 12568]
 mov qword ptr [rbp + 12760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12704], rax
 mov qword ptr [rbp + 12712], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n291_α
 xchain294_n290_β:
 jmp proc_define$2F2_ω
 xchain294_n291_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12928] -> [zr+12864]
 mov rax, qword ptr [rbp + 12928]
 mov qword ptr [rbp + 12864], rax
 mov rax, qword ptr [rbp + 12936]
 mov qword ptr [rbp + 12872], rax
# marshal arg1 = producer-box slot [zr+12816] -> [zr+12880]
 mov rax, qword ptr [rbp + 12816]
 mov qword ptr [rbp + 12880], rax
 mov rax, qword ptr [rbp + 12824]
 mov qword ptr [rbp + 12888], rax
# marshal arg2 = producer-box slot [zr+12704] -> [zr+12896]
 mov rax, qword ptr [rbp + 12704]
 mov qword ptr [rbp + 12896], rax
 mov rax, qword ptr [rbp + 12712]
 mov qword ptr [rbp + 12904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12848], rax
 mov qword ptr [rbp + 12856], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n292_α
 xchain294_n291_β:
 jmp proc_define$2F2_ω
 xchain294_n292_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13072] -> [zr+13008]
 mov rax, qword ptr [rbp + 13072]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 13080]
 mov qword ptr [rbp + 13016], rax
# marshal arg1 = producer-box slot [zr+12960] -> [zr+13024]
 mov rax, qword ptr [rbp + 12960]
 mov qword ptr [rbp + 13024], rax
 mov rax, qword ptr [rbp + 12968]
 mov qword ptr [rbp + 13032], rax
# marshal arg2 = producer-box slot [zr+12848] -> [zr+13040]
 mov rax, qword ptr [rbp + 12848]
 mov qword ptr [rbp + 13040], rax
 mov rax, qword ptr [rbp + 12856]
 mov qword ptr [rbp + 13048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12992], rax
 mov qword ptr [rbp + 13000], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n293_α
 xchain294_n292_β:
 jmp proc_define$2F2_ω
 xchain294_n293_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13216] -> [zr+13152]
 mov rax, qword ptr [rbp + 13216]
 mov qword ptr [rbp + 13152], rax
 mov rax, qword ptr [rbp + 13224]
 mov qword ptr [rbp + 13160], rax
# marshal arg1 = producer-box slot [zr+13104] -> [zr+13168]
 mov rax, qword ptr [rbp + 13104]
 mov qword ptr [rbp + 13168], rax
 mov rax, qword ptr [rbp + 13112]
 mov qword ptr [rbp + 13176], rax
# marshal arg2 = producer-box slot [zr+12992] -> [zr+13184]
 mov rax, qword ptr [rbp + 12992]
 mov qword ptr [rbp + 13184], rax
 mov rax, qword ptr [rbp + 13000]
 mov qword ptr [rbp + 13192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13136], rax
 mov qword ptr [rbp + 13144], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n294_α
 xchain294_n293_β:
 jmp proc_define$2F2_ω
 xchain294_n294_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13360] -> [zr+13296]
 mov rax, qword ptr [rbp + 13360]
 mov qword ptr [rbp + 13296], rax
 mov rax, qword ptr [rbp + 13368]
 mov qword ptr [rbp + 13304], rax
# marshal arg1 = producer-box slot [zr+13248] -> [zr+13312]
 mov rax, qword ptr [rbp + 13248]
 mov qword ptr [rbp + 13312], rax
 mov rax, qword ptr [rbp + 13256]
 mov qword ptr [rbp + 13320], rax
# marshal arg2 = producer-box slot [zr+13136] -> [zr+13328]
 mov rax, qword ptr [rbp + 13136]
 mov qword ptr [rbp + 13328], rax
 mov rax, qword ptr [rbp + 13144]
 mov qword ptr [rbp + 13336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13280], rax
 mov qword ptr [rbp + 13288], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n295_α
 xchain294_n294_β:
 jmp proc_define$2F2_ω
 xchain294_n295_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13504] -> [zr+13440]
 mov rax, qword ptr [rbp + 13504]
 mov qword ptr [rbp + 13440], rax
 mov rax, qword ptr [rbp + 13512]
 mov qword ptr [rbp + 13448], rax
# marshal arg1 = producer-box slot [zr+13392] -> [zr+13456]
 mov rax, qword ptr [rbp + 13392]
 mov qword ptr [rbp + 13456], rax
 mov rax, qword ptr [rbp + 13400]
 mov qword ptr [rbp + 13464], rax
# marshal arg2 = producer-box slot [zr+13280] -> [zr+13472]
 mov rax, qword ptr [rbp + 13280]
 mov qword ptr [rbp + 13472], rax
 mov rax, qword ptr [rbp + 13288]
 mov qword ptr [rbp + 13480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13424], rax
 mov qword ptr [rbp + 13432], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n296_α
 xchain294_n295_β:
 jmp proc_define$2F2_ω
 xchain294_n296_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13648] -> [zr+13584]
 mov rax, qword ptr [rbp + 13648]
 mov qword ptr [rbp + 13584], rax
 mov rax, qword ptr [rbp + 13656]
 mov qword ptr [rbp + 13592], rax
# marshal arg1 = producer-box slot [zr+13536] -> [zr+13600]
 mov rax, qword ptr [rbp + 13536]
 mov qword ptr [rbp + 13600], rax
 mov rax, qword ptr [rbp + 13544]
 mov qword ptr [rbp + 13608], rax
# marshal arg2 = producer-box slot [zr+13424] -> [zr+13616]
 mov rax, qword ptr [rbp + 13424]
 mov qword ptr [rbp + 13616], rax
 mov rax, qword ptr [rbp + 13432]
 mov qword ptr [rbp + 13624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13568], rax
 mov qword ptr [rbp + 13576], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n297_α
 xchain294_n296_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n297_α:
 mov rax, 4294967305
 lea rdx, [rbp + 14032]
 mov qword ptr [rbp + 13680], rax
 mov qword ptr [rbp + 13688], rdx
 jmp xchain294_n298_α
# IR_LIT_STRING
 xchain294_n298_α:
 mov qword ptr [rbp + 13712], 1
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 13720], rax
 jmp xchain294_n299_α
.Lx656_0:
 .quad .Lx656_0_s
.Lx656_0_s:
 .string "[]"
 xchain294_n299_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13840] -> [zr+13760]
 mov rax, qword ptr [rbp + 13840]
 mov qword ptr [rbp + 13760], rax
 mov rax, qword ptr [rbp + 13848]
 mov qword ptr [rbp + 13768], rax
# marshal arg1 = producer-box slot [zr+13568] -> [zr+13776]
 mov rax, qword ptr [rbp + 13568]
 mov qword ptr [rbp + 13776], rax
 mov rax, qword ptr [rbp + 13576]
 mov qword ptr [rbp + 13784], rax
# marshal arg2 = producer-box slot [zr+13680] -> [zr+13792]
 mov rax, qword ptr [rbp + 13680]
 mov qword ptr [rbp + 13792], rax
 mov rax, qword ptr [rbp + 13688]
 mov qword ptr [rbp + 13800], rax
# marshal arg3 = producer-box slot [zr+13712] -> [zr+13808]
 mov rax, qword ptr [rbp + 13712]
 mov qword ptr [rbp + 13808], rax
 mov rax, qword ptr [rbp + 13720]
 mov qword ptr [rbp + 13816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13760]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13744], rax
 mov qword ptr [rbp + 13752], rdx
 cmp eax, 99
 je xchain294_n5_α
 jmp xchain294_n300_α
 xchain294_n299_β:
 jmp xchain294_n5_α
 xchain294_n300_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6368]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6376], rax
# marshal arg1 = producer-box slot [zr+13744] -> [zr+6384]
 mov rax, qword ptr [rbp + 13744]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 13752]
 mov qword ptr [rbp + 6392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain294_n5_α
 jmp xchain294_n301_α
 xchain294_n300_β:
 jmp xchain294_n5_α
# IR_SUSPEND yield+resume
 xchain294_n301_α:
 lea rax, [rip + xchain294_n301_β]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n301_β:
 jmp xchain294_n5_α
proc_define$2F2_res:
add rsp, 8
pop rbp
proc_define$2F2_β:
jmp qword ptr [rbp + 14000]
proc_define$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_define$2F2_res]
push rax
mov rax, [rbp + 14152]
mov rbp, [rbp + 14168]
jmp rax
proc_define$2F2_ω:
mov rax, [rbp + 14160]
lea rsp, [rbp + 14176]
mov rbp, [rbp + 14168]
jmp rax
  .globl proc_interpret_built_in$2F1_α
proc_interpret_built_in$2F1_α:
#=======================================================================================================================
    .global proc_interpret_built_in$2F1_α
    .global proc_interpret_built_in$2F1_β
    .global proc_interpret_built_in$2F1_γ
    .global proc_interpret_built_in$2F1_ω
  sub rsp, 992
  mov [rsp + 968], rcx
  mov [rsp + 976], rdx
  mov [rsp + 984], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 896
  mov edx, 960
  call rt_jmp_frame_lexprep2@PLT
proc_interpret_built_in$2F1_α_body:
lea rax, [rip + xchain661_n4_β]
mov qword ptr [rbp + 896], rax
 xchain661_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret_built_in$2F1_ω
 jmp xchain661_n1_α
 xchain661_n0_β:
 jmp proc_interpret_built_in$2F1_ω
# IR_VAR_REF
 xchain661_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain661_n2_α
# IR_LIT_STRING
 xchain661_n2_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx665_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain661_n3_α
.Lx665_0:
 .quad .Lx665_0_s
.Lx665_0_s:
 .string "true"
 xchain661_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 784]
 mov rsi, qword ptr [rip + .Lx666_2]
 jmp .Lx666_3
.Lx666_2:
 .quad .Lx666_2_s
.Lx666_2_s:
 .string "true"
.Lx666_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain661_n5_α
 jmp xchain661_n4_α
 xchain661_n3_β:
 jmp xchain661_n5_α
# IR_SUSPEND yield+resume
 xchain661_n4_α:
 lea rax, [rip + xchain661_n4_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$2F1_γ
 xchain661_n4_β:
 jmp xchain661_n5_α
 xchain661_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+736]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_interpret_built_in$2F1_ω
 jmp xchain661_n6_α
 xchain661_n5_β:
 jmp proc_interpret_built_in$2F1_ω
# IR_VAR_REF
 xchain661_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain661_n7_α
# IR_LIT_INTEGER
 xchain661_n7_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx672_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain661_n8_α
.Lx672_0:
 .quad 516
# IR_LIT_STRING
 xchain661_n8_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx673_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain661_n9_α
.Lx673_0:
 .quad .Lx673_0_s
.Lx673_0_s:
 .string "=<"
 xchain661_n9_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+576]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+592]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n10_α
 xchain661_n9_β:
 jmp xchain661_n11_α
# IR_VAR_REF
 xchain661_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain661_n12_α
 xchain661_n11_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_built_in$2F1_ω
 jmp proc_interpret_built_in$2F1_ω
 xchain661_n11_β:
 jmp proc_interpret_built_in$2F1_ω
# IR_LIT_STRING
 xchain661_n12_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx678_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain661_n13_α
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "=<"
# IR_VAR_REF
 xchain661_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain661_n14_α
# IR_VAR_REF
 xchain661_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain661_n15_α
 xchain661_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+464]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+480]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n16_α
 xchain661_n15_β:
 jmp xchain661_n11_α
 xchain661_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+304]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n17_α
 xchain661_n16_β:
 jmp xchain661_n11_α
# IR_VAR
 xchain661_n17_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 216], rax
 jmp xchain661_n18_α
# IR_VAR
 xchain661_n18_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 248], rax
 jmp xchain661_n19_α
 xchain661_n19_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n20_α
 xchain661_n19_β:
 jmp xchain661_n11_α
# IR_SUSPEND yield+resume
 xchain661_n20_α:
 lea rax, [rip + xchain661_n20_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$2F1_γ
 xchain661_n20_β:
 jmp xchain661_n11_α
proc_interpret_built_in$2F1_res:
add rsp, 8
pop rbp
proc_interpret_built_in$2F1_β:
jmp qword ptr [rbp + 896]
proc_interpret_built_in$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret_built_in$2F1_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_interpret_built_in$2F1_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
jmp rax
  .globl proc_interpret_disjunction$2F3_α
proc_interpret_disjunction$2F3_α:
#=======================================================================================================================
    .global proc_interpret_disjunction$2F3_α
    .global proc_interpret_disjunction$2F3_β
    .global proc_interpret_disjunction$2F3_γ
    .global proc_interpret_disjunction$2F3_ω
  sub rsp, 3744
  mov [rsp + 3720], rcx
  mov [rsp + 3728], rdx
  mov [rsp + 3736], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3592], rsp
  mov rdi, rsp
  mov esi, 3568
  mov edx, 3712
  call rt_jmp_frame_lexprep2@PLT
proc_interpret_disjunction$2F3_α_body:
lea rax, [rip + xchain692_n63_β]
mov qword ptr [rbp + 3568], rax
 xchain692_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n1_α
 xchain692_n0_β:
 jmp proc_interpret_disjunction$2F3_ω
# IR_VAR_REF
 xchain692_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain692_n2_α
# IR_LIT_INTEGER
 xchain692_n2_α:
 mov qword ptr [rbp + 3504], 6
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain692_n3_α
.Lx696_0:
 .quad 516
# IR_LIT_STRING
 xchain692_n3_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx697_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain692_n4_α
.Lx697_0:
 .quad .Lx697_0_s
.Lx697_0_s:
 .string "->"
 xchain692_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3408]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3416], rax
# marshal arg1 = producer-box slot [zr+3504] -> [zr+3424]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3432], rax
# marshal arg2 = producer-box slot [zr+3536] -> [zr+3440]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3408]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain692_n6_α
 jmp xchain692_n5_α
 xchain692_n4_β:
 jmp xchain692_n6_α
# IR_VAR_REF
 xchain692_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain692_n7_α
# IR_VAR_REF
 xchain692_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain692_n8_α
# IR_LIT_STRING
 xchain692_n7_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx703_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain692_n9_α
.Lx703_0:
 .quad .Lx703_0_s
.Lx703_0_s:
 .string "->"
# IR_LIT_INTEGER
 xchain692_n8_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx704_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain692_n10_α
.Lx704_0:
 .quad 516
# IR_VAR_REF
 xchain692_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain692_n11_α
# IR_LIT_STRING
 xchain692_n10_α:
 mov qword ptr [rbp + 2144], 1
 mov rax, qword ptr [rip + .Lx707_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain692_n12_α
.Lx707_0:
 .quad .Lx707_0_s
.Lx707_0_s:
 .string "->"
# IR_VAR_REF
 xchain692_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain692_n13_α
 xchain692_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2032]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2040], rax
# marshal arg2 = producer-box slot [zr+2144] -> [zr+2048]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain692_n15_α
 jmp xchain692_n14_α
 xchain692_n12_β:
 jmp xchain692_n15_α
 xchain692_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3296]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3304], rax
# marshal arg1 = producer-box slot [zr+3216] -> [zr+3312]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3320], rax
# marshal arg2 = producer-box slot [zr+3248] -> [zr+3328]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n16_α
 xchain692_n13_β:
 jmp xchain692_n17_α
# IR_VAR_REF
 xchain692_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain692_n18_α
# IR_VAR_REF
 xchain692_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain692_n19_α
 xchain692_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3184] -> [zr+3136]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3144], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3152]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n20_α
 xchain692_n16_β:
 jmp xchain692_n17_α
 xchain692_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2192]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n6_α
 xchain692_n17_β:
 jmp proc_interpret_disjunction$2F3_ω
# IR_LIT_STRING
 xchain692_n18_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx718_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain692_n21_α
.Lx718_0:
 .quad .Lx718_0_s
.Lx718_0_s:
 .string "->"
# IR_VAR_REF
 xchain692_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain692_n22_α
# IR_VAR_REF
 xchain692_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain692_n23_α
# IR_VAR_REF
 xchain692_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain692_n24_α
 xchain692_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n25_α
 xchain692_n22_β:
 jmp xchain692_n26_α
# IR_VAR_REF
 xchain692_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3696]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain692_n27_α
# IR_VAR_REF
 xchain692_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain692_n28_α
# IR_VAR_REF
 xchain692_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain692_n29_α
 xchain692_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n30_α
 xchain692_n26_β:
 jmp proc_interpret_disjunction$2F3_ω
 xchain692_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+3008]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3016], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+3024]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n31_α
 xchain692_n27_β:
 jmp xchain692_n17_α
 xchain692_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1920]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1928], rax
# marshal arg2 = producer-box slot [zr+1856] -> [zr+1936]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n32_α
 xchain692_n28_β:
 jmp xchain692_n33_α
# IR_VAR_REF
 xchain692_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain692_n34_α
# IR_VAR_REF
 xchain692_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain692_n35_α
# IR_VAR_REF
 xchain692_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain692_n36_α
 xchain692_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1760]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n37_α
 xchain692_n32_β:
 jmp xchain692_n33_α
 xchain692_n33_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1296]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n15_α
 xchain692_n33_β:
 jmp proc_interpret_disjunction$2F3_ω
 xchain692_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n38_α
 xchain692_n34_β:
 jmp xchain692_n26_α
# IR_VAR_REF
 xchain692_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain692_n39_α
# IR_VAR_REF
 xchain692_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain692_n40_α
# IR_VAR_REF
 xchain692_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain692_n41_α
# IR_VAR_REF
 xchain692_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain692_n42_α
 xchain692_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n43_α
 xchain692_n39_β:
 jmp xchain692_n44_α
 xchain692_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2880]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2888], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2896]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2880]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n45_α
 xchain692_n40_β:
 jmp xchain692_n17_α
# IR_VAR_REF
 xchain692_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain692_n46_α
# IR_VAR_REF
 xchain692_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain692_n47_α
# IR_VAR_REF
 xchain692_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain692_n48_α
 xchain692_n44_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp proc_interpret_disjunction$2F3_ω
 xchain692_n44_β:
 jmp proc_interpret_disjunction$2F3_ω
# IR_VAR_REF
 xchain692_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain692_n49_α
 xchain692_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n50_α
 xchain692_n46_β:
 jmp xchain692_n33_α
 xchain692_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n51_α
 xchain692_n47_β:
 jmp xchain692_n26_α
# IR_VAR_REF
 xchain692_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain692_n52_α
# IR_VAR_REF
 xchain692_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3680]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain692_n53_α
# IR_VAR_REF
 xchain692_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain692_n54_α
# IR_VAR_REF
 xchain692_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain692_n55_α
 xchain692_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n56_α
 xchain692_n52_β:
 jmp xchain692_n44_α
 xchain692_n53_α:
 mov qword ptr [rbp + 2768], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2832]
 mov rdx, qword ptr [rbp + 2840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx775_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx775_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx775_3]
 lea rdx, [rip + .Lx775_4]
 jmp rax
.Lx775_3:
 mov qword ptr [rbp + 2776], rsp
 mov rax, qword ptr [rbp + 2768]
 test rax, rax
 jne .Lx775_5
 mov qword ptr [rbp + 2768], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx775_2
.Lx775_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx775_2
.Lx775_4:
 mov rax, qword ptr [rbp + 2768]
 test rax, rax
 jne .Lx775_6
 mov qword ptr [rbp + 2768], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx775_2
.Lx775_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx775_2
.Lx775_1:
 call rt_faildescr@PLT
.Lx775_2:
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n57_α
 xchain692_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2776]
 jmp qword ptr [rsp]
.Lx775_0:
 .quad .Lx775_0_s
.Lx775_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain692_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain692_n58_α
# IR_VAR_REF
 xchain692_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain692_n59_α
# IR_VAR_REF
 xchain692_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain692_n60_α
 xchain692_n57_α:
# IR_CUT
 jmp xchain692_n61_α
 xchain692_n58_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n62_α
 xchain692_n58_β:
 jmp xchain692_n33_α
 xchain692_n59_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx785_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx785_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx785_3]
 lea rdx, [rip + .Lx785_4]
 jmp rax
.Lx785_3:
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx785_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx785_2
.Lx785_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx785_2
.Lx785_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx785_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx785_2
.Lx785_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx785_2
.Lx785_1:
 call rt_faildescr@PLT
.Lx785_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n63_α
 xchain692_n59_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx785_0:
 .quad .Lx785_0_s
.Lx785_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain692_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain692_n64_α
# IR_VAR_REF
 xchain692_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3680]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain692_n65_α
 xchain692_n62_α:
# IR_CUT
 jmp xchain692_n66_α
# IR_SUSPEND yield+resume
 xchain692_n63_α:
 lea rax, [rip + xchain692_n63_β]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n63_β:
 jmp xchain692_n59_β
 xchain692_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n67_α
 xchain692_n64_β:
 jmp xchain692_n44_α
 xchain692_n65_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2656]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2664], rax
  .section .rodata
  .Lrkfn795: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn795]
 lea rsi, [rbp + 2656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain692_n69_α
 jmp xchain692_n68_α
 xchain692_n65_β:
 jmp xchain692_n69_α
# IR_VAR_REF
 xchain692_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain692_n70_α
# IR_VAR_REF
 xchain692_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain692_n71_α
# IR_VAR_REF
 xchain692_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain692_n72_α
# IR_VAR_REF
 xchain692_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain692_n73_α
# IR_VAR_REF
 xchain692_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain692_n74_α
# IR_VAR_REF
 xchain692_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain692_n75_α
# IR_LIT_STRING
 xchain692_n72_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx808_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain692_n76_α
.Lx808_0:
 .quad .Lx808_0_s
.Lx808_0_s:
 .string "->"
# IR_VAR_REF
 xchain692_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain692_n77_α
 xchain692_n74_α:
 mov qword ptr [rbp + 1376], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx812_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx812_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx812_3]
 lea rdx, [rip + .Lx812_4]
 jmp rax
.Lx812_3:
 mov qword ptr [rbp + 1384], rsp
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx812_5
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx812_2
.Lx812_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx812_2
.Lx812_4:
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx812_6
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx812_2
.Lx812_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx812_2
.Lx812_1:
 call rt_faildescr@PLT
.Lx812_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n78_α
 xchain692_n74_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1384]
 jmp qword ptr [rsp]
.Lx812_0:
 .quad .Lx812_0_s
.Lx812_0_s:
 .string "interpret/2"
 xchain692_n75_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx814_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx814_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx814_3]
 lea rdx, [rip + .Lx814_4]
 jmp rax
.Lx814_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx814_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx814_2
.Lx814_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx814_2
.Lx814_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx814_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx814_2
.Lx814_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx814_2
.Lx814_1:
 call rt_faildescr@PLT
.Lx814_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n79_α
 xchain692_n75_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx814_0:
 .quad .Lx814_0_s
.Lx814_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain692_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3680]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain692_n80_α
 xchain692_n77_α:
 mov qword ptr [rbp + 2544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2576]
 mov rdx, qword ptr [rbp + 2584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx818_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx818_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx818_3]
 lea rdx, [rip + .Lx818_4]
 jmp rax
.Lx818_3:
 mov qword ptr [rbp + 2552], rsp
 mov rax, qword ptr [rbp + 2544]
 test rax, rax
 jne .Lx818_5
 mov qword ptr [rbp + 2544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx818_2
.Lx818_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx818_2
.Lx818_4:
 mov rax, qword ptr [rbp + 2544]
 test rax, rax
 jne .Lx818_6
 mov qword ptr [rbp + 2544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx818_2
.Lx818_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx818_2
.Lx818_1:
 call rt_faildescr@PLT
.Lx818_2:
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n81_α
 xchain692_n77_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2552]
 jmp qword ptr [rsp]
.Lx818_0:
 .quad .Lx818_0_s
.Lx818_0_s:
 .string "interpret/2"
# IR_SUSPEND yield+resume
 xchain692_n78_α:
 lea rax, [rip + xchain692_n78_β]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n78_β:
 jmp xchain692_n74_β
# IR_SUSPEND yield+resume
 xchain692_n79_α:
 lea rax, [rip + xchain692_n79_β]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n79_β:
 jmp xchain692_n75_β
# IR_VAR_REF
 xchain692_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain692_n82_α
# IR_SUSPEND yield+resume
 xchain692_n81_α:
 lea rax, [rip + xchain692_n81_β]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n81_β:
 jmp xchain692_n17_α
 xchain692_n82_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2400]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2408], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2416]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2424], rax
# marshal arg2 = producer-box slot [zr+2352] -> [zr+2432]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n83_α
 xchain692_n82_β:
 jmp xchain692_n44_α
 xchain692_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2240]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2256]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n81_α
 xchain692_n83_β:
 jmp xchain692_n44_α
proc_interpret_disjunction$2F3_res:
add rsp, 8
pop rbp
proc_interpret_disjunction$2F3_β:
jmp qword ptr [rbp + 3568]
proc_interpret_disjunction$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret_disjunction$2F3_res]
push rax
mov rax, [rbp + 3720]
mov rbp, [rbp + 3736]
jmp rax
proc_interpret_disjunction$2F3_ω:
mov rax, [rbp + 3728]
lea rsp, [rbp + 3744]
mov rbp, [rbp + 3736]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_interpret$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 656
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_interpret$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 6288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "is_built_in/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_is_built_in$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "meta_qsort/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_meta_qsort$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "define/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_define$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 14144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "interpret_built_in/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_interpret_built_in$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "interpret_disjunction/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_interpret_disjunction$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3712
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
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
  mov qword ptr [rsp + 424], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain829_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain829_n1_α
 xchain829_n0_β:
 jmp main_ω
 xchain829_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx832_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx832_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx832_3]
 lea rdx, [rip + .Lx832_4]
 jmp rax
.Lx832_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx832_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx832_2
.Lx832_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx832_2
.Lx832_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx832_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx832_2
.Lx832_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx832_2
.Lx832_1:
 call rt_faildescr@PLT
.Lx832_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain829_n3_α
 jmp xchain829_n2_α
 xchain829_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx832_0:
 .quad .Lx832_0_s
.Lx832_0_s:
 .string "meta_qsort/0"
# IR_LIT_STRING
 xchain829_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx833_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain829_n4_α
.Lx833_0:
 .quad .Lx833_0_s
.Lx833_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain829_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx834_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain829_n5_α
.Lx834_0:
 .quad .Lx834_0_s
.Lx834_0_s:
 .string "failed"
 xchain829_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn836: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn836]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain829_n7_α
 jmp xchain829_n6_α
 xchain829_n4_β:
 jmp xchain829_n7_α
 xchain829_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn838: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn838]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain829_n7_α
 jmp xchain829_n6_α
 xchain829_n5_β:
 jmp xchain829_n7_α
# IR_LIT_STRING
 xchain829_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx839_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain829_n8_α
.Lx839_0:
 .quad .Lx839_0_s
.Lx839_0_s:
 .string ""
 xchain829_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain829_n7_β:
 jmp main_ω
 xchain829_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn842: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn842]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain829_n7_α
 jmp xchain829_n9_α
 xchain829_n8_β:
 jmp xchain829_n7_α
# IR_MOVE_LABEL
 xchain829_n9_α:
 lea rax, [rip + xchain829_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain829_n10_α:
 jmp qword ptr [rbp + 32]
 xchain829_n10_β:
 jmp main_ω
main_β:
jmp xchain829_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 424]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 424]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
