  .intel_syntax noprefix
  .text
  .globl proc_interpret$1_α
proc_interpret$1_α:
#=======================================================================================================================
    .global proc_interpret$1_α
    .global proc_interpret$1_β
    .global proc_interpret$1_γ
    .global proc_interpret$1_ω
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
proc_interpret$1_α_body:
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
 je proc_interpret$1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_interpret$1_ω
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
 je proc_interpret$1_ω
 jmp proc_interpret$1_ω
 xchain0_n5_β:
 jmp proc_interpret$1_ω
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
 jmp proc_interpret$1_γ
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
proc_interpret$1_res:
add rsp, 8
pop rbp
proc_interpret$1_β:
jmp qword ptr [rbp + 592]
proc_interpret$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret$1_res]
push rax
mov rax, [rbp + 664]
mov rbp, [rbp + 680]
jmp rax
proc_interpret$1_ω:
mov rax, [rbp + 672]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
  .globl proc_interpret$2_α
proc_interpret$2_α:
#=======================================================================================================================
    .global proc_interpret$2_α
    .global proc_interpret$2_β
    .global proc_interpret$2_γ
    .global proc_interpret$2_ω
  sub rsp, 5616
  mov [rsp + 5592], rcx
  mov [rsp + 5600], rdx
  mov [rsp + 5608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 5496], rsp
  mov rdi, rsp
  mov esi, 5472
  mov edx, 5584
  call rt_jmp_frame_lexprep2@PLT
proc_interpret$2_α_body:
lea rax, [rip + xchain25_n55_β]
mov qword ptr [rbp + 5472], rax
 xchain25_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain25_n1_α
 xchain25_n0_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain25_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain25_n2_α
# IR_VAR_REF
 xchain25_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain25_n3_α
 xchain25_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5408] -> [zr+5360]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5368], rax
# marshal arg1 = producer-box slot [zr+5440] -> [zr+5376]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5360]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n4_α
 xchain25_n3_β:
 jmp xchain25_n5_α
# IR_VAR_REF
 xchain25_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain25_n6_α
 xchain25_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5104]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5104]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain25_n7_α
 xchain25_n5_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain25_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 jmp xchain25_n8_α
# IR_VAR_REF
 xchain25_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain25_n9_α
 xchain25_n8_α:
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
 je xchain25_n5_α
 jmp xchain25_n10_α
 xchain25_n8_β:
 jmp xchain25_n5_α
# IR_LIT_STRING
 xchain25_n9_α:
 mov qword ptr [rbp + 5056], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 5064], rax
 jmp xchain25_n11_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string ","
# IR_VAR_REF
 xchain25_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 jmp xchain25_n12_α
# IR_VAR_REF
 xchain25_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain25_n13_α
 xchain25_n12_α:
# BOX IR_CALL $tt_var(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5152]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn46: .string "$tt_var"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 5152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n14_α
 xchain25_n12_β:
 jmp xchain25_n5_α
# IR_VAR_REF
 xchain25_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain25_n15_α
 xchain25_n14_α:
# IR_CUT
 jmp xchain25_n16_α
 xchain25_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5056] -> [zr+4992]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5000], rax
# marshal arg1 = producer-box slot [zr+4912] -> [zr+5008]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 5016], rax
# marshal arg2 = producer-box slot [zr+4944] -> [zr+5024]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 5032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je xchain25_n18_α
 jmp xchain25_n17_α
 xchain25_n15_β:
 jmp xchain25_n18_α
 xchain25_n16_α:
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
 je proc_interpret$2_ω
 jmp proc_interpret$2_ω
 xchain25_n16_β:
 jmp proc_interpret$2_ω
 xchain25_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4880] -> [zr+4832]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 4840], rax
# marshal arg1 = producer-box slot [zr+4976] -> [zr+4848]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4848], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 cmp eax, 99
 je xchain25_n18_α
 jmp xchain25_n19_α
 xchain25_n17_β:
 jmp xchain25_n18_α
 xchain25_n18_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4016]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4016]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain25_n20_α
 xchain25_n18_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain25_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain25_n21_α
# IR_VAR_REF
 xchain25_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain25_n22_α
# IR_VAR_REF
 xchain25_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain25_n23_α
# IR_LIT_STRING
 xchain25_n22_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain25_n24_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string ";"
 xchain25_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4752] -> [zr+4704]
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 4712], rax
# marshal arg1 = producer-box slot [zr+4784] -> [zr+4720]
 mov rax, qword ptr [rbp + 4784]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 4728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4704]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain25_n18_α
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n18_α
# IR_VAR_REF
 xchain25_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain25_n26_α
 xchain25_n25_α:
# IR_CUT
 jmp xchain25_n27_α
# IR_VAR_REF
 xchain25_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain25_n28_α
# IR_VAR_REF
 xchain25_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 jmp xchain25_n29_α
 xchain25_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3904]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3912], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+3920]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3928], rax
# marshal arg2 = producer-box slot [zr+3856] -> [zr+3936]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je xchain25_n31_α
 jmp xchain25_n30_α
 xchain25_n28_β:
 jmp xchain25_n31_α
# IR_VAR_REF
 xchain25_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5568]
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain25_n32_α
 xchain25_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3744]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3752], rax
# marshal arg1 = producer-box slot [zr+3888] -> [zr+3760]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 cmp eax, 99
 je xchain25_n31_α
 jmp xchain25_n33_α
 xchain25_n30_β:
 jmp xchain25_n31_α
 xchain25_n31_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3376]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3376]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain25_n34_α
 xchain25_n31_β:
 jmp proc_interpret$2_ω
 xchain25_n32_α:
 mov qword ptr [rbp + 4592], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4624]
 mov rdx, qword ptr [rbp + 4632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx75_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx75_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx75_3]
 lea rdx, [rip + .Lx75_4]
 jmp rax
.Lx75_3:
 mov qword ptr [rbp + 4600], rsp
 mov rax, qword ptr [rbp + 4592]
 test rax, rax
 jne .Lx75_5
 mov qword ptr [rbp + 4592], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx75_2
.Lx75_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx75_2
.Lx75_4:
 mov rax, qword ptr [rbp + 4592]
 test rax, rax
 jne .Lx75_6
 mov qword ptr [rbp + 4592], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx75_2
.Lx75_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx75_2
.Lx75_1:
 call rt_faildescr@PLT
.Lx75_2:
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n35_α
 xchain25_n32_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4600]
 jmp qword ptr [rsp]
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain25_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain25_n36_α
# IR_VAR_REF
 xchain25_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain25_n37_α
# IR_VAR_REF
 xchain25_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5568]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain25_n38_α
# IR_VAR_REF
 xchain25_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain25_n39_α
# IR_LIT_STRING
 xchain25_n37_α:
 mov qword ptr [rbp + 3328], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 3336], rax
 jmp xchain25_n40_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "->"
 xchain25_n38_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4512] -> [zr+4480]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4488], rax
  .section .rodata
  .Lrkfn86: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 4480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je xchain25_n42_α
 jmp xchain25_n41_α
 xchain25_n38_β:
 jmp xchain25_n42_α
 xchain25_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3664] -> [zr+3616]
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3624], rax
# marshal arg1 = producer-box slot [zr+3696] -> [zr+3632]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3616]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain25_n31_α
 jmp xchain25_n43_α
 xchain25_n39_β:
 jmp xchain25_n31_α
# IR_VAR_REF
 xchain25_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain25_n44_α
# IR_VAR_REF
 xchain25_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain25_n45_α
# IR_VAR_REF
 xchain25_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain25_n46_α
 xchain25_n43_α:
# IR_CUT
 jmp xchain25_n47_α
# IR_VAR_REF
 xchain25_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain25_n48_α
# IR_LIT_STRING
 xchain25_n45_α:
 mov qword ptr [rbp + 4288], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain25_n49_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string ","
# IR_VAR_REF
 xchain25_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain25_n50_α
# IR_VAR_REF
 xchain25_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain25_n51_α
 xchain25_n48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3264]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3272], rax
# marshal arg1 = producer-box slot [zr+3184] -> [zr+3280]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3288], rax
# marshal arg2 = producer-box slot [zr+3216] -> [zr+3296]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3264]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain25_n53_α
 jmp xchain25_n52_α
 xchain25_n48_β:
 jmp xchain25_n53_α
# IR_VAR_REF
 xchain25_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5568]
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain25_n54_α
 xchain25_n50_α:
 mov qword ptr [rbp + 4368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4432]
 mov rdx, qword ptr [rbp + 4440]
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
 mov qword ptr [rbp + 4376], rsp
 mov rax, qword ptr [rbp + 4368]
 test rax, rax
 jne .Lx106_5
 mov qword ptr [rbp + 4368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx106_2
.Lx106_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx106_2
.Lx106_4:
 mov rax, qword ptr [rbp + 4368]
 test rax, rax
 jne .Lx106_6
 mov qword ptr [rbp + 4368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx106_2
.Lx106_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx106_2
.Lx106_1:
 call rt_faildescr@PLT
.Lx106_2:
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain25_n32_β
 jmp xchain25_n55_α
 xchain25_n50_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4376]
 jmp qword ptr [rsp]
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain25_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain25_n56_α
 xchain25_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3152] -> [zr+3104]
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3112], rax
# marshal arg1 = producer-box slot [zr+3248] -> [zr+3120]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je xchain25_n53_α
 jmp xchain25_n57_α
 xchain25_n52_β:
 jmp xchain25_n53_α
 xchain25_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2592]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain25_n58_α
 xchain25_n53_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain25_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain25_n59_α
# IR_SUSPEND yield+resume
 xchain25_n55_α:
 lea rax, [rip + xchain25_n55_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n55_β:
 jmp xchain25_n32_β
# IR_VAR_REF
 xchain25_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain25_n60_α
# IR_VAR_REF
 xchain25_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain25_n61_α
# IR_VAR_REF
 xchain25_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain25_n62_α
 xchain25_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4288] -> [zr+4224]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4232], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4240]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4240], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4248], rax
# marshal arg2 = producer-box slot [zr+4176] -> [zr+4256]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n63_α
 xchain25_n59_β:
 jmp xchain25_n16_α
 xchain25_n60_α:
 mov qword ptr [rbp + 3472], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3504]
 mov rdx, qword ptr [rbp + 3512]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx123_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx123_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx123_3]
 lea rdx, [rip + .Lx123_4]
 jmp rax
.Lx123_3:
 mov qword ptr [rbp + 3480], rsp
 mov rax, qword ptr [rbp + 3472]
 test rax, rax
 jne .Lx123_5
 mov qword ptr [rbp + 3472], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx123_2
.Lx123_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx123_2
.Lx123_4:
 mov rax, qword ptr [rbp + 3472]
 test rax, rax
 jne .Lx123_6
 mov qword ptr [rbp + 3472], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx123_2
.Lx123_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx123_2
.Lx123_1:
 call rt_faildescr@PLT
.Lx123_2:
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n64_α
 xchain25_n60_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3480]
 jmp qword ptr [rsp]
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "interpret_disjunction/3"
# IR_VAR_REF
 xchain25_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain25_n65_α
# IR_LIT_STRING
 xchain25_n62_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain25_n66_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "\\+"
 xchain25_n63_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4064]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4072], rax
# marshal arg1 = producer-box slot [zr+4208] -> [zr+4080]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n55_α
 xchain25_n63_β:
 jmp xchain25_n16_α
# IR_SUSPEND yield+resume
 xchain25_n64_α:
 lea rax, [rip + xchain25_n64_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n64_β:
 jmp xchain25_n60_β
 xchain25_n65_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2976]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+3056] -> [zr+2992]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain25_n53_α
 jmp xchain25_n67_α
 xchain25_n65_β:
 jmp xchain25_n53_α
# IR_VAR_REF
 xchain25_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain25_n68_α
 xchain25_n67_α:
# IR_CUT
 jmp xchain25_n69_α
 xchain25_n68_α:
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
 je xchain25_n71_α
 jmp xchain25_n70_α
 xchain25_n68_β:
 jmp xchain25_n71_α
# IR_LIT_STRING
 xchain25_n69_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain25_n72_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "->"
 xchain25_n70_α:
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
 je xchain25_n71_α
 jmp xchain25_n73_α
 xchain25_n70_β:
 jmp xchain25_n71_α
 xchain25_n71_α:
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
 je proc_interpret$2_ω
 jmp xchain25_n74_α
 xchain25_n71_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain25_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain25_n75_α
# IR_VAR_REF
 xchain25_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain25_n77_α
# IR_VAR_REF
 xchain25_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain25_n78_α
# IR_VAR_REF
 xchain25_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain25_n79_α
# IR_LIT_STRING
 xchain25_n77_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain25_n80_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "?"
 xchain25_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2800]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2808], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2816]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2824], rax
# marshal arg2 = producer-box slot [zr+2752] -> [zr+2832]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2800]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n81_α
 xchain25_n78_β:
 jmp xchain25_n16_α
 xchain25_n79_α:
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
 je xchain25_n71_α
 jmp xchain25_n82_α
 xchain25_n79_β:
 jmp xchain25_n71_α
 xchain25_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1728]
 mov rsi, qword ptr [rip + .Lx151_2]
 jmp .Lx151_3
.Lx151_2:
 .quad .Lx151_2_s
.Lx151_2_s:
 .string "?"
.Lx151_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain25_n84_α
 jmp xchain25_n83_α
 xchain25_n80_β:
 jmp xchain25_n84_α
# IR_LIT_STRING
 xchain25_n81_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain25_n85_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "fail"
 xchain25_n82_α:
# IR_CUT
 jmp xchain25_n86_α
# IR_VAR_REF
 xchain25_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain25_n87_α
 xchain25_n84_α:
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
 je proc_interpret$2_ω
 jmp xchain25_n88_α
 xchain25_n84_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain25_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain25_n89_α
# IR_LIT_STRING
 xchain25_n86_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain25_n90_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "->"
# IR_LIT_STRING
 xchain25_n87_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain25_n91_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "true"
# IR_VAR_REF
 xchain25_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain25_n92_α
 xchain25_n89_α:
 mov qword ptr [rbp + 2688], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2784]
 mov rdx, qword ptr [rbp + 2792]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx164_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx164_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx164_3]
 lea rdx, [rip + .Lx164_4]
 jmp rax
.Lx164_3:
 mov qword ptr [rbp + 2696], rsp
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx164_5
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx164_2
.Lx164_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx164_2
.Lx164_4:
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx164_6
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx164_2
.Lx164_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx164_2
.Lx164_1:
 call rt_faildescr@PLT
.Lx164_2:
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n93_α
 xchain25_n89_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2696]
 jmp qword ptr [rsp]
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "interpret_disjunction/3"
# IR_VAR_REF
 xchain25_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain25_n94_α
 xchain25_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1600]
 mov rsi, qword ptr [rip + .Lx167_2]
 jmp .Lx167_3
.Lx167_2:
 .quad .Lx167_2_s
.Lx167_2_s:
 .string "true"
.Lx167_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain25_n84_α
 jmp xchain25_n95_α
 xchain25_n91_β:
 jmp xchain25_n84_α
# IR_VAR_REF
 xchain25_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain25_n96_α
# IR_SUSPEND yield+resume
 xchain25_n93_α:
 lea rax, [rip + xchain25_n93_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n93_β:
 jmp xchain25_n89_β
# IR_LIT_STRING
 xchain25_n94_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain25_n97_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "fail"
 xchain25_n95_α:
# IR_CUT
 jmp xchain25_n98_α
 xchain25_n96_α:
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
 je xchain25_n100_α
 jmp xchain25_n99_α
 xchain25_n96_β:
 jmp xchain25_n100_α
 xchain25_n97_α:
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
 je xchain25_n16_α
 jmp xchain25_n101_α
 xchain25_n97_β:
 jmp xchain25_n16_α
# IR_SUSPEND yield+resume
 xchain25_n98_α:
 lea rax, [rip + xchain25_n98_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n98_β:
 jmp xchain25_n84_α
# IR_VAR_REF
 xchain25_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain25_n102_α
 xchain25_n100_α:
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
 je proc_interpret$2_ω
 jmp xchain25_n103_α
 xchain25_n100_β:
 jmp proc_interpret$2_ω
# IR_LIT_STRING
 xchain25_n101_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain25_n104_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "true"
# IR_VAR_REF
 xchain25_n102_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain25_n105_α
# IR_VAR_REF
 xchain25_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain25_n106_α
# IR_VAR_REF
 xchain25_n104_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5552]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain25_n107_α
 xchain25_n105_α:
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
 je xchain25_n100_α
 jmp xchain25_n108_α
 xchain25_n105_β:
 jmp xchain25_n100_α
# IR_VAR_REF
 xchain25_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain25_n109_α
 xchain25_n107_α:
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
 mov rdi, qword ptr [rip + .Lx192_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx192_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx192_3]
 lea rdx, [rip + .Lx192_4]
 jmp rax
.Lx192_3:
 mov qword ptr [rbp + 1960], rsp
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx192_5
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx192_2
.Lx192_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx192_2
.Lx192_4:
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx192_6
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx192_2
.Lx192_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx192_2
.Lx192_1:
 call rt_faildescr@PLT
.Lx192_2:
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n110_α
 xchain25_n107_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1960]
 jmp qword ptr [rsp]
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "interpret_disjunction/3"
# IR_VAR_REF
 xchain25_n108_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain25_n111_α
 xchain25_n109_α:
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
 je xchain25_n113_α
 jmp xchain25_n112_α
 xchain25_n109_β:
 jmp xchain25_n113_α
# IR_SUSPEND yield+resume
 xchain25_n110_α:
 lea rax, [rip + xchain25_n110_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n110_β:
 jmp xchain25_n107_β
 xchain25_n111_α:
# BOX IR_CALL $tt_number(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn199: .string "$tt_number"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn199]
 lea rsi, [rbp + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain25_n100_α
 jmp xchain25_n114_α
 xchain25_n111_β:
 jmp xchain25_n100_α
# IR_VAR_REF
 xchain25_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain25_n115_α
 xchain25_n113_α:
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
 je proc_interpret$2_ω
 jmp xchain25_n116_α
 xchain25_n113_β:
 jmp proc_interpret$2_ω
 xchain25_n114_α:
# IR_CUT
 jmp xchain25_n16_α
# IR_VAR_REF
 xchain25_n115_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain25_n117_α
# IR_VAR_REF
 xchain25_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain25_n118_α
 xchain25_n117_α:
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
 je xchain25_n113_α
 jmp xchain25_n119_α
 xchain25_n117_β:
 jmp xchain25_n113_α
# IR_VAR_REF
 xchain25_n118_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain25_n120_α
# IR_VAR_REF
 xchain25_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain25_n121_α
 xchain25_n120_α:
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
 je xchain25_n16_α
 jmp xchain25_n122_α
 xchain25_n120_β:
 jmp xchain25_n16_α
 xchain25_n121_α:
 mov qword ptr [rbp + 832], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx215_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx215_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx215_3]
 lea rdx, [rip + .Lx215_4]
 jmp rax
.Lx215_3:
 mov qword ptr [rbp + 840], rsp
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx215_5
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx215_2
.Lx215_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx215_2
.Lx215_4:
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx215_6
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx215_2
.Lx215_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx215_2
.Lx215_1:
 call rt_faildescr@PLT
.Lx215_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain25_n113_α
 jmp xchain25_n123_α
 xchain25_n121_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 840]
 jmp qword ptr [rsp]
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "is_built_in/1"
# IR_VAR_REF
 xchain25_n122_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain25_n124_α
 xchain25_n123_α:
# IR_CUT
 jmp xchain25_n125_α
# IR_VAR_REF
 xchain25_n124_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5536]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain25_n126_α
# IR_VAR_REF
 xchain25_n125_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain25_n127_α
 xchain25_n126_α:
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
 je xchain25_n16_α
 jmp xchain25_n128_α
 xchain25_n126_β:
 jmp xchain25_n16_α
 xchain25_n127_α:
 mov qword ptr [rbp + 736], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx225_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx225_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx225_3]
 lea rdx, [rip + .Lx225_4]
 jmp rax
.Lx225_3:
 mov qword ptr [rbp + 744], rsp
 mov rax, qword ptr [rbp + 736]
 test rax, rax
 jne .Lx225_5
 mov qword ptr [rbp + 736], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx225_2
.Lx225_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx225_2
.Lx225_4:
 mov rax, qword ptr [rbp + 736]
 test rax, rax
 jne .Lx225_6
 mov qword ptr [rbp + 736], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx225_2
.Lx225_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx225_2
.Lx225_1:
 call rt_faildescr@PLT
.Lx225_2:
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n129_α
 xchain25_n127_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 744]
 jmp qword ptr [rsp]
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "interpret_built_in/1"
# IR_VAR_REF
 xchain25_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5520]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain25_n130_α
# IR_SUSPEND yield+resume
 xchain25_n129_α:
 lea rax, [rip + xchain25_n129_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n129_β:
 jmp xchain25_n127_β
# IR_VAR_REF
 xchain25_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain25_n131_α
 xchain25_n131_α:
 mov qword ptr [rbp + 304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx233_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx233_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx233_3]
 lea rdx, [rip + .Lx233_4]
 jmp rax
.Lx233_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx233_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx233_2
.Lx233_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx233_2
.Lx233_4:
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx233_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx233_2
.Lx233_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx233_2
.Lx233_1:
 call rt_faildescr@PLT
.Lx233_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n132_α
 xchain25_n131_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "define/2"
# IR_VAR_REF
 xchain25_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5504]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain25_n133_α
 xchain25_n133_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx237_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx237_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx237_3]
 lea rdx, [rip + .Lx237_4]
 jmp rax
.Lx237_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx237_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx237_2
.Lx237_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx237_2
.Lx237_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx237_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx237_2
.Lx237_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx237_2
.Lx237_1:
 call rt_faildescr@PLT
.Lx237_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain25_n131_β
 jmp xchain25_n134_α
 xchain25_n133_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain25_n134_α:
 lea rax, [rip + xchain25_n134_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain25_n134_β:
 jmp xchain25_n133_β
proc_interpret$2_res:
add rsp, 8
pop rbp
proc_interpret$2_β:
jmp qword ptr [rbp + 5472]
proc_interpret$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret$2_res]
push rax
mov rax, [rbp + 5592]
mov rbp, [rbp + 5608]
jmp rax
proc_interpret$2_ω:
mov rax, [rbp + 5600]
lea rsp, [rbp + 5616]
mov rbp, [rbp + 5608]
jmp rax
  .globl proc_is_built_in$1_α
proc_is_built_in$1_α:
#=======================================================================================================================
    .global proc_is_built_in$1_α
    .global proc_is_built_in$1_β
    .global proc_is_built_in$1_γ
    .global proc_is_built_in$1_ω
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
proc_is_built_in$1_α_body:
lea rax, [rip + xchain240_n4_β]
mov qword ptr [rbp + 592], rax
 xchain240_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp xchain240_n1_α
 xchain240_n0_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain240_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain240_n2_α
# IR_LIT_STRING
 xchain240_n2_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain240_n3_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "true"
 xchain240_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 mov rsi, qword ptr [rip + .Lx245_2]
 jmp .Lx245_3
.Lx245_2:
 .quad .Lx245_2_s
.Lx245_2_s:
 .string "true"
.Lx245_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain240_n5_α
 jmp xchain240_n4_α
 xchain240_n3_β:
 jmp xchain240_n5_α
# IR_SUSPEND yield+resume
 xchain240_n4_α:
 lea rax, [rip + xchain240_n4_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$1_γ
 xchain240_n4_β:
 jmp xchain240_n5_α
 xchain240_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp xchain240_n6_α
 xchain240_n5_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain240_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain240_n7_α
# IR_LIT_STRING
 xchain240_n7_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain240_n8_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "=<"
# IR_VAR_REF
 xchain240_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain240_n9_α
# IR_VAR_REF
 xchain240_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain240_n10_α
 xchain240_n10_α:
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
 je xchain240_n12_α
 jmp xchain240_n11_α
 xchain240_n10_β:
 jmp xchain240_n12_α
 xchain240_n11_α:
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
 je xchain240_n12_α
 jmp xchain240_n13_α
 xchain240_n11_β:
 jmp xchain240_n12_α
 xchain240_n12_α:
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
 je proc_is_built_in$1_ω
 jmp proc_is_built_in$1_ω
 xchain240_n12_β:
 jmp proc_is_built_in$1_ω
# IR_SUSPEND yield+resume
 xchain240_n13_α:
 lea rax, [rip + xchain240_n13_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$1_γ
 xchain240_n13_β:
 jmp xchain240_n12_α
proc_is_built_in$1_res:
add rsp, 8
pop rbp
proc_is_built_in$1_β:
jmp qword ptr [rbp + 592]
proc_is_built_in$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_is_built_in$1_res]
push rax
mov rax, [rbp + 664]
mov rbp, [rbp + 680]
jmp rax
proc_is_built_in$1_ω:
mov rax, [rbp + 672]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
  .globl proc_meta_qsort$0_α
proc_meta_qsort$0_α:
#=======================================================================================================================
    .global proc_meta_qsort$0_α
    .global proc_meta_qsort$0_β
    .global proc_meta_qsort$0_γ
    .global proc_meta_qsort$0_ω
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
proc_meta_qsort$0_α_body:
lea rax, [rip + xchain261_n3_β]
mov qword ptr [rbp + 224], rax
 xchain261_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_meta_qsort$0_ω
 jmp xchain261_n1_α
 xchain261_n0_β:
 jmp proc_meta_qsort$0_ω
# IR_LIT_STRING
 xchain261_n1_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain261_n2_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "qsort"
 xchain261_n2_α:
 mov qword ptr [rbp + 160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx265_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx265_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx265_3]
 lea rdx, [rip + .Lx265_4]
 jmp rax
.Lx265_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx265_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx265_2
.Lx265_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx265_2
.Lx265_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx265_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx265_2
.Lx265_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx265_2
.Lx265_1:
 call rt_faildescr@PLT
.Lx265_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain261_n4_α
 jmp xchain261_n3_α
 xchain261_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain261_n3_α:
 lea rax, [rip + xchain261_n3_β]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_meta_qsort$0_γ
 xchain261_n3_β:
 jmp xchain261_n2_β
 xchain261_n4_α:
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
 je proc_meta_qsort$0_ω
 jmp proc_meta_qsort$0_ω
 xchain261_n4_β:
 jmp proc_meta_qsort$0_ω
proc_meta_qsort$0_res:
add rsp, 8
pop rbp
proc_meta_qsort$0_β:
jmp qword ptr [rbp + 224]
proc_meta_qsort$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_meta_qsort$0_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_meta_qsort$0_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_define$2_α
proc_define$2_α:
#=======================================================================================================================
    .global proc_define$2_α
    .global proc_define$2_β
    .global proc_define$2_γ
    .global proc_define$2_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 13144], rsp
  mov rdi, rsp
  mov esi, 13120
  mov edx, 13264
  call rt_jmp_frame_lexprep2@PLT
proc_define$2_α_body:
lea rax, [rip + xchain269_n63_β]
mov qword ptr [rbp + 13120], rax
 xchain269_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n1_α
 xchain269_n0_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain269_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13056], rax
 mov qword ptr [rbp + 13064], rdx
 jmp xchain269_n2_α
# IR_LIT_STRING
 xchain269_n2_α:
 mov qword ptr [rbp + 13088], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain269_n3_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "qsort"
 xchain269_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13056] -> [zr+13008]
 mov rax, qword ptr [rbp + 13056]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 13064]
 mov qword ptr [rbp + 13016], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 13008]
 mov rsi, qword ptr [rip + .Lx274_2]
 jmp .Lx274_3
.Lx274_2:
 .quad .Lx274_2_s
.Lx274_2_s:
 .string "qsort"
.Lx274_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 12992], rax
 mov qword ptr [rbp + 13000], rdx
 cmp eax, 99
 je xchain269_n5_α
 jmp xchain269_n4_α
 xchain269_n3_β:
 jmp xchain269_n5_α
# IR_VAR_REF
 xchain269_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain269_n6_α
 xchain269_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5440]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5440]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n7_α
 xchain269_n5_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n6_α:
 mov qword ptr [rbp + 12960], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 12968], rax
 jmp xchain269_n8_α
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain269_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain269_n9_α
# IR_LIT_STRING
 xchain269_n8_α:
 mov qword ptr [rbp + 12768], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 12776], rax
 jmp xchain269_n10_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n9_α:
 mov qword ptr [rbp + 5392], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 5400], rax
 jmp xchain269_n11_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain269_n10_α:
 mov qword ptr [rbp + 12656], 6
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 12664], rax
 jmp xchain269_n12_α
.Lx283_0:
 .quad 27
# IR_LIT_STRING
 xchain269_n11_α:
 mov qword ptr [rbp + 5200], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 5208], rax
 jmp xchain269_n13_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n12_α:
 mov qword ptr [rbp + 12624], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 12632], rax
 jmp xchain269_n14_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain269_n15_α
# IR_LIT_INTEGER
 xchain269_n14_α:
 mov qword ptr [rbp + 12512], 6
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 12520], rax
 jmp xchain269_n16_α
.Lx288_0:
 .quad 74
# IR_VAR_REF
 xchain269_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13168]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain269_n17_α
# IR_LIT_STRING
 xchain269_n16_α:
 mov qword ptr [rbp + 12480], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 12488], rax
 jmp xchain269_n18_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "."
 xchain269_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5136]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5144], rax
# marshal arg1 = producer-box slot [zr+5088] -> [zr+5152]
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 5160], rax
# marshal arg2 = producer-box slot [zr+5056] -> [zr+5168]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n19_α
 xchain269_n17_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain269_n18_α:
 mov qword ptr [rbp + 12368], 6
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain269_n20_α
.Lx293_0:
 .quad 17
# IR_VAR_REF
 xchain269_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 jmp xchain269_n21_α
# IR_LIT_STRING
 xchain269_n20_α:
 mov qword ptr [rbp + 12336], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 12344], rax
 jmp xchain269_n22_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13200]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 jmp xchain269_n23_α
# IR_LIT_INTEGER
 xchain269_n22_α:
 mov qword ptr [rbp + 12224], 6
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [rbp + 12232], rax
 jmp xchain269_n24_α
.Lx299_0:
 .quad 33
 xchain269_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5392] -> [zr+5312]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5312], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5320], rax
# marshal arg1 = producer-box slot [zr+5120] -> [zr+5328]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5336], rax
# marshal arg2 = producer-box slot [zr+5232] -> [zr+5344]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5352], rax
# marshal arg3 = producer-box slot [zr+5264] -> [zr+5360]
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 5368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5312]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 cmp eax, 99
 je xchain269_n26_α
 jmp xchain269_n25_α
 xchain269_n23_β:
 jmp xchain269_n26_α
# IR_LIT_STRING
 xchain269_n24_α:
 mov qword ptr [rbp + 12192], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [rbp + 12200], rax
 jmp xchain269_n27_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "."
 xchain269_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5024] -> [zr+4976]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4984], rax
# marshal arg1 = producer-box slot [zr+5296] -> [zr+4992]
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 5000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4976]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 cmp eax, 99
 je xchain269_n26_α
 jmp xchain269_n28_α
 xchain269_n25_β:
 jmp xchain269_n26_α
 xchain269_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3744]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3744]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n29_α
 xchain269_n26_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain269_n27_α:
 mov qword ptr [rbp + 12080], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 12088], rax
 jmp xchain269_n30_α
.Lx304_0:
 .quad 94
# IR_VAR_REF
 xchain269_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain269_n31_α
# IR_VAR_REF
 xchain269_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain269_n32_α
# IR_LIT_STRING
 xchain269_n30_α:
 mov qword ptr [rbp + 12048], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 12056], rax
 jmp xchain269_n33_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n31_α:
 mov qword ptr [rbp + 4928], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 4936], rax
 jmp xchain269_n34_α
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string ","
# IR_LIT_STRING
 xchain269_n32_α:
 mov qword ptr [rbp + 3696], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain269_n35_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain269_n33_α:
 mov qword ptr [rbp + 11936], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 11944], rax
 jmp xchain269_n36_α
.Lx312_0:
 .quad 18
# IR_LIT_STRING
 xchain269_n34_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain269_n37_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain269_n35_α:
 mov qword ptr [rbp + 3504], 1
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain269_n38_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain269_n36_α:
 mov qword ptr [rbp + 11904], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 11912], rax
 jmp xchain269_n39_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13168]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain269_n40_α
# IR_VAR_REF
 xchain269_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain269_n41_α
# IR_LIT_INTEGER
 xchain269_n39_α:
 mov qword ptr [rbp + 11792], 6
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 11800], rax
 jmp xchain269_n42_α
.Lx320_0:
 .quad 46
# IR_VAR_REF
 xchain269_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain269_n43_α
# IR_VAR_REF
 xchain269_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain269_n44_α
# IR_LIT_STRING
 xchain269_n42_α:
 mov qword ptr [rbp + 11760], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 11768], rax
 jmp xchain269_n45_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13216]
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain269_n46_α
 xchain269_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3616]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3624], rax
# marshal arg1 = producer-box slot [zr+3504] -> [zr+3632]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3640], rax
# marshal arg2 = producer-box slot [zr+3536] -> [zr+3648]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3656], rax
# marshal arg3 = producer-box slot [zr+3568] -> [zr+3664]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3616]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain269_n48_α
 jmp xchain269_n47_α
 xchain269_n44_β:
 jmp xchain269_n48_α
# IR_LIT_INTEGER
 xchain269_n45_α:
 mov qword ptr [rbp + 11648], 6
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 11656], rax
 jmp xchain269_n49_α
.Lx329_0:
 .quad 83
# IR_VAR_REF
 xchain269_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13232]
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 jmp xchain269_n50_α
 xchain269_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3424]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3432], rax
# marshal arg1 = producer-box slot [zr+3600] -> [zr+3440]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3424]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain269_n48_α
 jmp xchain269_n51_α
 xchain269_n47_β:
 jmp xchain269_n48_α
 xchain269_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3248]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3248]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n52_α
 xchain269_n48_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n49_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain269_n53_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "."
 xchain269_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4016]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4024], rax
# marshal arg1 = producer-box slot [zr+3872] -> [zr+4032]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 4040], rax
# marshal arg2 = producer-box slot [zr+3904] -> [zr+4048]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 4056], rax
# marshal arg3 = producer-box slot [zr+3936] -> [zr+4064]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4072], rax
# marshal arg4 = producer-box slot [zr+3968] -> [zr+4080]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4016]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n54_α
 xchain269_n50_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain269_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain269_n55_α
# IR_VAR_REF
 xchain269_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain269_n56_α
# IR_LIT_INTEGER
 xchain269_n53_α:
 mov qword ptr [rbp + 11504], 6
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain269_n57_α
.Lx340_0:
 .quad 65
# IR_LIT_STRING
 xchain269_n54_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain269_n58_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string ","
# IR_LIT_STRING
 xchain269_n55_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain269_n59_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "true"
# IR_LIT_STRING
 xchain269_n56_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx343_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain269_n60_α
.Lx343_0:
 .quad .Lx343_0_s
.Lx343_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain269_n57_α:
 mov qword ptr [rbp + 11472], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 11480], rax
 jmp xchain269_n61_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n58_α:
 mov qword ptr [rbp + 4336], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 4344], rax
 jmp xchain269_n62_α
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
 .string "qsort"
 xchain269_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3296]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3304], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3296]
 mov rsi, qword ptr [rip + .Lx346_2]
 jmp .Lx346_3
.Lx346_2:
 .quad .Lx346_2_s
.Lx346_2_s:
 .string "true"
.Lx346_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain269_n48_α
 jmp xchain269_n63_α
 xchain269_n59_β:
 jmp xchain269_n48_α
# IR_LIT_STRING
 xchain269_n60_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain269_n64_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n61_α:
 mov qword ptr [rbp + 11360], 6
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [rbp + 11368], rax
 jmp xchain269_n65_α
.Lx348_0:
 .quad 2
# IR_VAR_REF
 xchain269_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13232]
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain269_n66_α
# IR_SUSPEND yield+resume
 xchain269_n63_α:
 lea rax, [rip + xchain269_n63_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain269_n63_β:
 jmp xchain269_n48_α
# IR_VAR_REF
 xchain269_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain269_n67_α
# IR_LIT_STRING
 xchain269_n65_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain269_n68_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13248]
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain269_n69_α
# IR_VAR_REF
 xchain269_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13168]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain269_n70_α
# IR_LIT_INTEGER
 xchain269_n68_α:
 mov qword ptr [rbp + 11216], 6
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [rbp + 11224], rax
 jmp xchain269_n71_α
.Lx360_0:
 .quad 32
# IR_VAR_REF
 xchain269_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13200]
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain269_n72_α
 xchain269_n70_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2768]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2776], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2784]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n73_α
 xchain269_n70_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n71_α:
 mov qword ptr [rbp + 11184], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 11192], rax
 jmp xchain269_n74_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "."
 xchain269_n72_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4256]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4264], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4272]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4272], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4280], rax
# marshal arg2 = producer-box slot [zr+4176] -> [zr+4288]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4296], rax
# marshal arg3 = producer-box slot [zr+4208] -> [zr+4304]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4256]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n75_α
 xchain269_n72_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain269_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain269_n76_α
# IR_LIT_INTEGER
 xchain269_n74_α:
 mov qword ptr [rbp + 11072], 6
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain269_n77_α
.Lx368_0:
 .quad 53
# IR_LIT_STRING
 xchain269_n75_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain269_n78_α
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain269_n76_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain269_n79_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n77_α:
 mov qword ptr [rbp + 11040], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 11048], rax
 jmp xchain269_n80_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n78_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13216]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain269_n81_α
# IR_VAR_REF
 xchain269_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain269_n82_α
# IR_LIT_INTEGER
 xchain269_n80_α:
 mov qword ptr [rbp + 10928], 6
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 10936], rax
 jmp xchain269_n83_α
.Lx376_0:
 .quad 28
# IR_VAR_REF
 xchain269_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain269_n84_α
# IR_VAR_REF
 xchain269_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13200]
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain269_n85_α
# IR_LIT_STRING
 xchain269_n83_α:
 mov qword ptr [rbp + 10896], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 10904], rax
 jmp xchain269_n86_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n84_α:
 mov qword ptr [rbp + 4576], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain269_n87_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "."
 xchain269_n85_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2960]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2968], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2976]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2984], rax
# marshal arg2 = producer-box slot [zr+2880] -> [zr+2992]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 3000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n88_α
 xchain269_n85_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain269_n86_α:
 mov qword ptr [rbp + 10784], 6
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 10792], rax
 jmp xchain269_n89_α
.Lx384_0:
 .quad 85
# IR_VAR_REF
 xchain269_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain269_n90_α
# IR_VAR_REF
 xchain269_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13216]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain269_n91_α
# IR_LIT_STRING
 xchain269_n89_α:
 mov qword ptr [rbp + 10752], 1
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [rbp + 10760], rax
 jmp xchain269_n92_α
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13248]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain269_n93_α
 xchain269_n91_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3104]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3112], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+3120]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 3128], rax
# marshal arg2 = producer-box slot [zr+2848] -> [zr+3136]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 3144], rax
# marshal arg3 = producer-box slot [zr+2944] -> [zr+3152]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 3160], rax
# marshal arg4 = producer-box slot [zr+3056] -> [zr+3168]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3104]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je xchain269_n95_α
 jmp xchain269_n94_α
 xchain269_n91_β:
 jmp xchain269_n95_α
# IR_LIT_INTEGER
 xchain269_n92_α:
 mov qword ptr [rbp + 10640], 6
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain269_n96_α
.Lx393_0:
 .quad 99
 xchain269_n93_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4576] -> [zr+4512]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4520], rax
# marshal arg1 = producer-box slot [zr+4464] -> [zr+4528]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4536], rax
# marshal arg2 = producer-box slot [zr+4432] -> [zr+4544]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n97_α
 xchain269_n93_β:
 jmp proc_define$2_ω
 xchain269_n94_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2592]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+2608]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain269_n95_α
 jmp xchain269_n98_α
 xchain269_n94_β:
 jmp xchain269_n95_α
 xchain269_n95_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1744]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n99_α
 xchain269_n95_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n96_α:
 mov qword ptr [rbp + 10608], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [rbp + 10616], rax
 jmp xchain269_n100_α
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "."
 xchain269_n97_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4624]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4632], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4640]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4648], rax
# marshal arg2 = producer-box slot [zr+4400] -> [zr+4656]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4664], rax
# marshal arg3 = producer-box slot [zr+4496] -> [zr+4672]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 4680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4624]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n101_α
 xchain269_n97_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain269_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain269_n102_α
# IR_VAR_REF
 xchain269_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain269_n103_α
# IR_LIT_INTEGER
 xchain269_n100_α:
 mov qword ptr [rbp + 10496], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [rbp + 10504], rax
 jmp xchain269_n104_α
.Lx403_0:
 .quad 47
 xchain269_n101_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4752]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+4240] -> [zr+4768]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4776], rax
# marshal arg2 = producer-box slot [zr+4608] -> [zr+4784]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n105_α
 xchain269_n101_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n102_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain269_n106_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string ","
# IR_LIT_STRING
 xchain269_n103_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain269_n107_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain269_n104_α:
 mov qword ptr [rbp + 10464], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 10472], rax
 jmp xchain269_n108_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "."
 xchain269_n105_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4928] -> [zr+4864]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 4864], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 4872], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+4880]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 4888], rax
# marshal arg2 = producer-box slot [zr+4736] -> [zr+4896]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 cmp eax, 99
 je xchain269_n26_α
 jmp xchain269_n109_α
 xchain269_n105_β:
 jmp xchain269_n26_α
# IR_LIT_STRING
 xchain269_n106_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain269_n110_α
.Lx409_0:
 .quad .Lx409_0_s
.Lx409_0_s:
 .string "=<"
# IR_LIT_STRING
 xchain269_n107_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain269_n111_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n108_α:
 mov qword ptr [rbp + 10352], 6
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 10360], rax
 jmp xchain269_n112_α
.Lx411_0:
 .quad 28
 xchain269_n109_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3840] -> [zr+3792]
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3800], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+3808]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 3816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3792]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain269_n26_α
 jmp xchain269_n113_α
 xchain269_n109_β:
 jmp xchain269_n26_α
# IR_VAR_REF
 xchain269_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain269_n114_α
# IR_VAR_REF
 xchain269_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain269_n115_α
# IR_LIT_STRING
 xchain269_n112_α:
 mov qword ptr [rbp + 10320], 1
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 10328], rax
 jmp xchain269_n116_α
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain269_n113_α:
 lea rax, [rip + xchain269_n113_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain269_n113_β:
 jmp xchain269_n26_α
# IR_VAR_REF
 xchain269_n114_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain269_n117_α
# IR_VAR_REF
 xchain269_n115_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13168]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain269_n118_α
# IR_LIT_INTEGER
 xchain269_n116_α:
 mov qword ptr [rbp + 10208], 6
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 10216], rax
 jmp xchain269_n119_α
.Lx424_0:
 .quad 82
 xchain269_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1968]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1976], rax
# marshal arg2 = producer-box slot [zr+1904] -> [zr+1984]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n120_α
 xchain269_n117_β:
 jmp proc_define$2_ω
 xchain269_n118_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1264]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1272], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1280]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n121_α
 xchain269_n118_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n119_α:
 mov qword ptr [rbp + 10176], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [rbp + 10184], rax
 jmp xchain269_n122_α
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n120_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain269_n123_α
.Lx428_0:
 .quad .Lx428_0_s
.Lx428_0_s:
 .string ","
# IR_VAR_REF
 xchain269_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain269_n124_α
# IR_LIT_INTEGER
 xchain269_n122_α:
 mov qword ptr [rbp + 10064], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 10072], rax
 jmp xchain269_n125_α
.Lx431_0:
 .quad 6
# IR_LIT_STRING
 xchain269_n123_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain269_n126_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "?"
# IR_VAR_REF
 xchain269_n124_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13200]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain269_n127_α
# IR_LIT_STRING
 xchain269_n125_α:
 mov qword ptr [rbp + 10032], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 10040], rax
 jmp xchain269_n128_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "."
# IR_LIT_STRING
 xchain269_n126_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain269_n129_α
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain269_n127_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain269_n130_α
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n128_α:
 mov qword ptr [rbp + 9920], 6
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [rbp + 9928], rax
 jmp xchain269_n131_α
.Lx438_0:
 .quad 11
# IR_VAR_REF
 xchain269_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13168]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain269_n132_α
# IR_VAR_REF
 xchain269_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain269_n133_α
# IR_LIT_STRING
 xchain269_n131_α:
 mov qword ptr [rbp + 9888], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [rbp + 9896], rax
 jmp xchain269_n134_α
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain269_n135_α
# IR_VAR_REF
 xchain269_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13216]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain269_n136_α
# IR_LIT_INTEGER
 xchain269_n134_α:
 mov qword ptr [rbp + 9776], 6
 mov rax, qword ptr [rip + .Lx448_0]
 mov qword ptr [rbp + 9784], rax
 jmp xchain269_n137_α
.Lx448_0:
 .quad 55
# IR_VAR_REF
 xchain269_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13200]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain269_n138_α
 xchain269_n136_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1504]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1408] -> [zr+1520]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n139_α
 xchain269_n136_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n137_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain269_n140_α
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13216]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain269_n141_α
 xchain269_n139_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1600]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1616]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1624], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1632]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1640], rax
# marshal arg3 = producer-box slot [zr+1376] -> [zr+1648]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1656], rax
# marshal arg4 = producer-box slot [zr+1472] -> [zr+1664]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain269_n143_α
 jmp xchain269_n142_α
 xchain269_n139_β:
 jmp xchain269_n143_α
# IR_LIT_INTEGER
 xchain269_n140_α:
 mov qword ptr [rbp + 9632], 6
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 9640], rax
 jmp xchain269_n144_α
.Lx456_0:
 .quad 29
 xchain269_n141_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2224]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2232], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2240]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2248], rax
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2256]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2264], rax
# marshal arg3 = producer-box slot [zr+2144] -> [zr+2272]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2280], rax
# marshal arg4 = producer-box slot [zr+2176] -> [zr+2288]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2224]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n145_α
 xchain269_n141_β:
 jmp proc_define$2_ω
 xchain269_n142_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1104]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain269_n143_α
 jmp xchain269_n146_α
 xchain269_n142_β:
 jmp xchain269_n143_α
 xchain269_n143_α:
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
 je proc_define$2_ω
 jmp xchain269_n147_α
 xchain269_n143_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n144_α:
 mov qword ptr [rbp + 9600], 1
 mov rax, qword ptr [rip + .Lx460_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain269_n148_α
.Lx460_0:
 .quad .Lx460_0_s
.Lx460_0_s:
 .string "."
 xchain269_n145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2384]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2392], rax
# marshal arg2 = producer-box slot [zr+2208] -> [zr+2400]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n149_α
 xchain269_n145_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain269_n146_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain269_n150_α
# IR_VAR_REF
 xchain269_n147_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain269_n151_α
# IR_LIT_INTEGER
 xchain269_n148_α:
 mov qword ptr [rbp + 9488], 6
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 9496], rax
 jmp xchain269_n152_α
.Lx466_0:
 .quad 39
 xchain269_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2480]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+2496]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2504], rax
# marshal arg2 = producer-box slot [zr+2352] -> [zr+2512]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain269_n95_α
 jmp xchain269_n153_α
 xchain269_n149_β:
 jmp xchain269_n95_α
# IR_LIT_STRING
 xchain269_n150_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain269_n154_α
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain269_n151_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx469_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain269_n155_α
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain269_n152_α:
 mov qword ptr [rbp + 9456], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [rbp + 9464], rax
 jmp xchain269_n156_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "."
 xchain269_n153_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+1808]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain269_n95_α
 jmp xchain269_n157_α
 xchain269_n153_β:
 jmp xchain269_n95_α
# IR_VAR_REF
 xchain269_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13168]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain269_n158_α
# IR_LIT_STRING
 xchain269_n155_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain269_n159_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain269_n156_α:
 mov qword ptr [rbp + 9344], 6
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [rbp + 9352], rax
 jmp xchain269_n160_α
.Lx475_0:
 .quad 81
# IR_SUSPEND yield+resume
 xchain269_n157_α:
 lea rax, [rip + xchain269_n157_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain269_n157_β:
 jmp xchain269_n95_α
# IR_VAR_REF
 xchain269_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13184]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain269_n161_α
# IR_VAR_REF
 xchain269_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain269_n162_α
# IR_LIT_STRING
 xchain269_n160_α:
 mov qword ptr [rbp + 9312], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [rbp + 9320], rax
 jmp xchain269_n163_α
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "."
# IR_VAR_REF
 xchain269_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13200]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain269_n164_α
# IR_LIT_STRING
 xchain269_n162_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain269_n165_α
.Lx485_0:
 .quad .Lx485_0_s
.Lx485_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain269_n163_α:
 mov qword ptr [rbp + 9200], 6
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [rbp + 9208], rax
 jmp xchain269_n166_α
.Lx486_0:
 .quad 90
# IR_VAR_REF
 xchain269_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13216]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain269_n167_α
# IR_LIT_STRING
 xchain269_n165_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain269_n168_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain269_n166_α:
 mov qword ptr [rbp + 9168], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain269_n169_α
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "."
 xchain269_n167_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+944]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+960]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+832] -> [zr+976]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 984], rax
# marshal arg3 = producer-box slot [zr+864] -> [zr+992]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1000], rax
# marshal arg4 = producer-box slot [zr+896] -> [zr+1008]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain269_n143_α
 jmp xchain269_n170_α
 xchain269_n167_β:
 jmp xchain269_n143_α
 xchain269_n168_α:
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
 je xchain269_n172_α
 jmp xchain269_n171_α
 xchain269_n168_β:
 jmp xchain269_n172_α
# IR_LIT_INTEGER
 xchain269_n169_α:
 mov qword ptr [rbp + 9056], 6
 mov rax, qword ptr [rip + .Lx493_0]
 mov qword ptr [rbp + 9064], rax
 jmp xchain269_n173_α
.Lx493_0:
 .quad 37
 xchain269_n170_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+736]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain269_n143_α
 jmp xchain269_n174_α
 xchain269_n170_β:
 jmp xchain269_n143_α
 xchain269_n171_α:
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
 je xchain269_n172_α
 jmp xchain269_n175_α
 xchain269_n171_β:
 jmp xchain269_n172_α
 xchain269_n172_α:
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
 je proc_define$2_ω
 jmp proc_define$2_ω
 xchain269_n172_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain269_n173_α:
 mov qword ptr [rbp + 9024], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [rbp + 9032], rax
 jmp xchain269_n176_α
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain269_n174_α:
 lea rax, [rip + xchain269_n174_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain269_n174_β:
 jmp xchain269_n143_α
# IR_VAR_REF
 xchain269_n175_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain269_n177_α
# IR_LIT_INTEGER
 xchain269_n176_α:
 mov qword ptr [rbp + 8912], 6
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain269_n178_α
.Lx502_0:
 .quad 10
# IR_LIT_STRING
 xchain269_n177_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx503_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain269_n179_α
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "true"
# IR_LIT_STRING
 xchain269_n178_α:
 mov qword ptr [rbp + 8880], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [rbp + 8888], rax
 jmp xchain269_n180_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "."
 xchain269_n179_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx505_2]
 jmp .Lx505_3
.Lx505_2:
 .quad .Lx505_2_s
.Lx505_2_s:
 .string "true"
.Lx505_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain269_n172_α
 jmp xchain269_n181_α
 xchain269_n179_β:
 jmp xchain269_n172_α
# IR_LIT_INTEGER
 xchain269_n180_α:
 mov qword ptr [rbp + 8768], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 8776], rax
 jmp xchain269_n182_α
.Lx506_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain269_n181_α:
 lea rax, [rip + xchain269_n181_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain269_n181_β:
 jmp xchain269_n172_α
# IR_LIT_STRING
 xchain269_n182_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain269_n183_α
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n183_α:
 mov qword ptr [rbp + 8624], 6
 mov rax, qword ptr [rip + .Lx510_0]
 mov qword ptr [rbp + 8632], rax
 jmp xchain269_n184_α
.Lx510_0:
 .quad 66
# IR_LIT_STRING
 xchain269_n184_α:
 mov qword ptr [rbp + 8592], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 8600], rax
 jmp xchain269_n185_α
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n185_α:
 mov qword ptr [rbp + 8480], 6
 mov rax, qword ptr [rip + .Lx512_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain269_n186_α
.Lx512_0:
 .quad 51
# IR_LIT_STRING
 xchain269_n186_α:
 mov qword ptr [rbp + 8448], 1
 mov rax, qword ptr [rip + .Lx513_0]
 mov qword ptr [rbp + 8456], rax
 jmp xchain269_n187_α
.Lx513_0:
 .quad .Lx513_0_s
.Lx513_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n187_α:
 mov qword ptr [rbp + 8336], 6
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [rbp + 8344], rax
 jmp xchain269_n188_α
.Lx514_0:
 .quad 7
# IR_LIT_STRING
 xchain269_n188_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain269_n189_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n189_α:
 mov qword ptr [rbp + 8192], 6
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [rbp + 8200], rax
 jmp xchain269_n190_α
.Lx516_0:
 .quad 21
# IR_LIT_STRING
 xchain269_n190_α:
 mov qword ptr [rbp + 8160], 1
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [rbp + 8168], rax
 jmp xchain269_n191_α
.Lx517_0:
 .quad .Lx517_0_s
.Lx517_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n191_α:
 mov qword ptr [rbp + 8048], 6
 mov rax, qword ptr [rip + .Lx518_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain269_n192_α
.Lx518_0:
 .quad 85
# IR_LIT_STRING
 xchain269_n192_α:
 mov qword ptr [rbp + 8016], 1
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [rbp + 8024], rax
 jmp xchain269_n193_α
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n193_α:
 mov qword ptr [rbp + 7904], 6
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain269_n194_α
.Lx520_0:
 .quad 27
# IR_LIT_STRING
 xchain269_n194_α:
 mov qword ptr [rbp + 7872], 1
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 7880], rax
 jmp xchain269_n195_α
.Lx521_0:
 .quad .Lx521_0_s
.Lx521_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n195_α:
 mov qword ptr [rbp + 7760], 6
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [rbp + 7768], rax
 jmp xchain269_n196_α
.Lx522_0:
 .quad 31
# IR_LIT_STRING
 xchain269_n196_α:
 mov qword ptr [rbp + 7728], 1
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [rbp + 7736], rax
 jmp xchain269_n197_α
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n197_α:
 mov qword ptr [rbp + 7616], 6
 mov rax, qword ptr [rip + .Lx524_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain269_n198_α
.Lx524_0:
 .quad 63
# IR_LIT_STRING
 xchain269_n198_α:
 mov qword ptr [rbp + 7584], 1
 mov rax, qword ptr [rip + .Lx525_0]
 mov qword ptr [rbp + 7592], rax
 jmp xchain269_n199_α
.Lx525_0:
 .quad .Lx525_0_s
.Lx525_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n199_α:
 mov qword ptr [rbp + 7472], 6
 mov rax, qword ptr [rip + .Lx526_0]
 mov qword ptr [rbp + 7480], rax
 jmp xchain269_n200_α
.Lx526_0:
 .quad 75
# IR_LIT_STRING
 xchain269_n200_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain269_n201_α
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n201_α:
 mov qword ptr [rbp + 7328], 6
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [rbp + 7336], rax
 jmp xchain269_n202_α
.Lx528_0:
 .quad 4
# IR_LIT_STRING
 xchain269_n202_α:
 mov qword ptr [rbp + 7296], 1
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [rbp + 7304], rax
 jmp xchain269_n203_α
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n203_α:
 mov qword ptr [rbp + 7184], 6
 mov rax, qword ptr [rip + .Lx530_0]
 mov qword ptr [rbp + 7192], rax
 jmp xchain269_n204_α
.Lx530_0:
 .quad 95
# IR_LIT_STRING
 xchain269_n204_α:
 mov qword ptr [rbp + 7152], 1
 mov rax, qword ptr [rip + .Lx531_0]
 mov qword ptr [rbp + 7160], rax
 jmp xchain269_n205_α
.Lx531_0:
 .quad .Lx531_0_s
.Lx531_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n205_α:
 mov qword ptr [rbp + 7040], 6
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 7048], rax
 jmp xchain269_n206_α
.Lx532_0:
 .quad 99
# IR_LIT_STRING
 xchain269_n206_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain269_n207_α
.Lx533_0:
 .quad .Lx533_0_s
.Lx533_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n207_α:
 mov qword ptr [rbp + 6896], 6
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [rbp + 6904], rax
 jmp xchain269_n208_α
.Lx534_0:
 .quad 11
# IR_LIT_STRING
 xchain269_n208_α:
 mov qword ptr [rbp + 6864], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [rbp + 6872], rax
 jmp xchain269_n209_α
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n209_α:
 mov qword ptr [rbp + 6752], 6
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain269_n210_α
.Lx536_0:
 .quad 28
# IR_LIT_STRING
 xchain269_n210_α:
 mov qword ptr [rbp + 6720], 1
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 6728], rax
 jmp xchain269_n211_α
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n211_α:
 mov qword ptr [rbp + 6608], 6
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain269_n212_α
.Lx538_0:
 .quad 61
# IR_LIT_STRING
 xchain269_n212_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx539_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain269_n213_α
.Lx539_0:
 .quad .Lx539_0_s
.Lx539_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n213_α:
 mov qword ptr [rbp + 6464], 6
 mov rax, qword ptr [rip + .Lx540_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain269_n214_α
.Lx540_0:
 .quad 74
# IR_LIT_STRING
 xchain269_n214_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain269_n215_α
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n215_α:
 mov qword ptr [rbp + 6320], 6
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain269_n216_α
.Lx542_0:
 .quad 18
# IR_LIT_STRING
 xchain269_n216_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx543_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain269_n217_α
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n217_α:
 mov qword ptr [rbp + 6176], 6
 mov rax, qword ptr [rip + .Lx544_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain269_n218_α
.Lx544_0:
 .quad 92
# IR_LIT_STRING
 xchain269_n218_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain269_n219_α
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n219_α:
 mov qword ptr [rbp + 6032], 6
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain269_n220_α
.Lx546_0:
 .quad 40
# IR_LIT_STRING
 xchain269_n220_α:
 mov qword ptr [rbp + 6000], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 6008], rax
 jmp xchain269_n221_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n221_α:
 mov qword ptr [rbp + 5888], 6
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain269_n222_α
.Lx548_0:
 .quad 53
# IR_LIT_STRING
 xchain269_n222_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain269_n223_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n223_α:
 mov qword ptr [rbp + 5744], 6
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain269_n224_α
.Lx550_0:
 .quad 59
# IR_LIT_STRING
 xchain269_n224_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain269_n225_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain269_n225_α:
 mov qword ptr [rbp + 5600], 6
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [rbp + 5608], rax
 jmp xchain269_n226_α
.Lx552_0:
 .quad 8
# IR_LIT_STRING
 xchain269_n226_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain269_n227_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "[]"
 xchain269_n227_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5712] -> [zr+5648]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5656], rax
# marshal arg1 = producer-box slot [zr+5600] -> [zr+5664]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5672], rax
# marshal arg2 = producer-box slot [zr+5568] -> [zr+5680]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5648]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n228_α
 xchain269_n227_β:
 jmp proc_define$2_ω
 xchain269_n228_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5792]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5800], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5808]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5816], rax
# marshal arg2 = producer-box slot [zr+5632] -> [zr+5824]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5792]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n229_α
 xchain269_n228_β:
 jmp proc_define$2_ω
 xchain269_n229_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5952]
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5960], rax
# marshal arg2 = producer-box slot [zr+5776] -> [zr+5968]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5936]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n230_α
 xchain269_n229_β:
 jmp proc_define$2_ω
 xchain269_n230_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6144] -> [zr+6080]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6088], rax
# marshal arg1 = producer-box slot [zr+6032] -> [zr+6096]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 6104], rax
# marshal arg2 = producer-box slot [zr+5920] -> [zr+6112]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 6120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6080]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n231_α
 xchain269_n230_β:
 jmp proc_define$2_ω
 xchain269_n231_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6224]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6232], rax
# marshal arg1 = producer-box slot [zr+6176] -> [zr+6240]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6248], rax
# marshal arg2 = producer-box slot [zr+6064] -> [zr+6256]
 mov rax, qword ptr [rbp + 6064]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6072]
 mov qword ptr [rbp + 6264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n232_α
 xchain269_n231_β:
 jmp proc_define$2_ω
 xchain269_n232_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6368]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6376], rax
# marshal arg1 = producer-box slot [zr+6320] -> [zr+6384]
 mov rax, qword ptr [rbp + 6320]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6328]
 mov qword ptr [rbp + 6392], rax
# marshal arg2 = producer-box slot [zr+6208] -> [zr+6400]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 6408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n233_α
 xchain269_n232_β:
 jmp proc_define$2_ω
 xchain269_n233_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6512]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6520], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6528]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6536], rax
# marshal arg2 = producer-box slot [zr+6352] -> [zr+6544]
 mov rax, qword ptr [rbp + 6352]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6360]
 mov qword ptr [rbp + 6552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n234_α
 xchain269_n233_β:
 jmp proc_define$2_ω
 xchain269_n234_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6720] -> [zr+6656]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6664], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6672]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6680], rax
# marshal arg2 = producer-box slot [zr+6496] -> [zr+6688]
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 6688], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 6696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6656]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n235_α
 xchain269_n234_β:
 jmp proc_define$2_ω
 xchain269_n235_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6864] -> [zr+6800]
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6808], rax
# marshal arg1 = producer-box slot [zr+6752] -> [zr+6816]
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 6824], rax
# marshal arg2 = producer-box slot [zr+6640] -> [zr+6832]
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6800]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n236_α
 xchain269_n235_β:
 jmp proc_define$2_ω
 xchain269_n236_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7008] -> [zr+6944]
 mov rax, qword ptr [rbp + 7008]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 7016]
 mov qword ptr [rbp + 6952], rax
# marshal arg1 = producer-box slot [zr+6896] -> [zr+6960]
 mov rax, qword ptr [rbp + 6896]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 6904]
 mov qword ptr [rbp + 6968], rax
# marshal arg2 = producer-box slot [zr+6784] -> [zr+6976]
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 6976], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 6984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n237_α
 xchain269_n236_β:
 jmp proc_define$2_ω
 xchain269_n237_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7152] -> [zr+7088]
 mov rax, qword ptr [rbp + 7152]
 mov qword ptr [rbp + 7088], rax
 mov rax, qword ptr [rbp + 7160]
 mov qword ptr [rbp + 7096], rax
# marshal arg1 = producer-box slot [zr+7040] -> [zr+7104]
 mov rax, qword ptr [rbp + 7040]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7048]
 mov qword ptr [rbp + 7112], rax
# marshal arg2 = producer-box slot [zr+6928] -> [zr+7120]
 mov rax, qword ptr [rbp + 6928]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 6936]
 mov qword ptr [rbp + 7128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n238_α
 xchain269_n237_β:
 jmp proc_define$2_ω
 xchain269_n238_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7296] -> [zr+7232]
 mov rax, qword ptr [rbp + 7296]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7304]
 mov qword ptr [rbp + 7240], rax
# marshal arg1 = producer-box slot [zr+7184] -> [zr+7248]
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7248], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7256], rax
# marshal arg2 = producer-box slot [zr+7072] -> [zr+7264]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n239_α
 xchain269_n238_β:
 jmp proc_define$2_ω
 xchain269_n239_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7440] -> [zr+7376]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7384], rax
# marshal arg1 = producer-box slot [zr+7328] -> [zr+7392]
 mov rax, qword ptr [rbp + 7328]
 mov qword ptr [rbp + 7392], rax
 mov rax, qword ptr [rbp + 7336]
 mov qword ptr [rbp + 7400], rax
# marshal arg2 = producer-box slot [zr+7216] -> [zr+7408]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7408], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n240_α
 xchain269_n239_β:
 jmp proc_define$2_ω
 xchain269_n240_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7520]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7520], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7528], rax
# marshal arg1 = producer-box slot [zr+7472] -> [zr+7536]
 mov rax, qword ptr [rbp + 7472]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7480]
 mov qword ptr [rbp + 7544], rax
# marshal arg2 = producer-box slot [zr+7360] -> [zr+7552]
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7520]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n241_α
 xchain269_n240_β:
 jmp proc_define$2_ω
 xchain269_n241_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7728] -> [zr+7664]
 mov rax, qword ptr [rbp + 7728]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7736]
 mov qword ptr [rbp + 7672], rax
# marshal arg1 = producer-box slot [zr+7616] -> [zr+7680]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7688], rax
# marshal arg2 = producer-box slot [zr+7504] -> [zr+7696]
 mov rax, qword ptr [rbp + 7504]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7512]
 mov qword ptr [rbp + 7704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7664]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n242_α
 xchain269_n241_β:
 jmp proc_define$2_ω
 xchain269_n242_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7872] -> [zr+7808]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7808], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7816], rax
# marshal arg1 = producer-box slot [zr+7760] -> [zr+7824]
 mov rax, qword ptr [rbp + 7760]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7768]
 mov qword ptr [rbp + 7832], rax
# marshal arg2 = producer-box slot [zr+7648] -> [zr+7840]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7808]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n243_α
 xchain269_n242_β:
 jmp proc_define$2_ω
 xchain269_n243_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8016] -> [zr+7952]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 7952], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 7960], rax
# marshal arg1 = producer-box slot [zr+7904] -> [zr+7968]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 7968], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 7976], rax
# marshal arg2 = producer-box slot [zr+7792] -> [zr+7984]
 mov rax, qword ptr [rbp + 7792]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 7800]
 mov qword ptr [rbp + 7992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n244_α
 xchain269_n243_β:
 jmp proc_define$2_ω
 xchain269_n244_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8160] -> [zr+8096]
 mov rax, qword ptr [rbp + 8160]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8168]
 mov qword ptr [rbp + 8104], rax
# marshal arg1 = producer-box slot [zr+8048] -> [zr+8112]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 8120], rax
# marshal arg2 = producer-box slot [zr+7936] -> [zr+8128]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 8128], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 8136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8096]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n245_α
 xchain269_n244_β:
 jmp proc_define$2_ω
 xchain269_n245_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8304] -> [zr+8240]
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [rbp + 8240], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [rbp + 8248], rax
# marshal arg1 = producer-box slot [zr+8192] -> [zr+8256]
 mov rax, qword ptr [rbp + 8192]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 8200]
 mov qword ptr [rbp + 8264], rax
# marshal arg2 = producer-box slot [zr+8080] -> [zr+8272]
 mov rax, qword ptr [rbp + 8080]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8088]
 mov qword ptr [rbp + 8280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8240]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n246_α
 xchain269_n245_β:
 jmp proc_define$2_ω
 xchain269_n246_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8448] -> [zr+8384]
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 8392], rax
# marshal arg1 = producer-box slot [zr+8336] -> [zr+8400]
 mov rax, qword ptr [rbp + 8336]
 mov qword ptr [rbp + 8400], rax
 mov rax, qword ptr [rbp + 8344]
 mov qword ptr [rbp + 8408], rax
# marshal arg2 = producer-box slot [zr+8224] -> [zr+8416]
 mov rax, qword ptr [rbp + 8224]
 mov qword ptr [rbp + 8416], rax
 mov rax, qword ptr [rbp + 8232]
 mov qword ptr [rbp + 8424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8384]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8368], rax
 mov qword ptr [rbp + 8376], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n247_α
 xchain269_n246_β:
 jmp proc_define$2_ω
 xchain269_n247_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8592] -> [zr+8528]
 mov rax, qword ptr [rbp + 8592]
 mov qword ptr [rbp + 8528], rax
 mov rax, qword ptr [rbp + 8600]
 mov qword ptr [rbp + 8536], rax
# marshal arg1 = producer-box slot [zr+8480] -> [zr+8544]
 mov rax, qword ptr [rbp + 8480]
 mov qword ptr [rbp + 8544], rax
 mov rax, qword ptr [rbp + 8488]
 mov qword ptr [rbp + 8552], rax
# marshal arg2 = producer-box slot [zr+8368] -> [zr+8560]
 mov rax, qword ptr [rbp + 8368]
 mov qword ptr [rbp + 8560], rax
 mov rax, qword ptr [rbp + 8376]
 mov qword ptr [rbp + 8568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n248_α
 xchain269_n247_β:
 jmp proc_define$2_ω
 xchain269_n248_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8736] -> [zr+8672]
 mov rax, qword ptr [rbp + 8736]
 mov qword ptr [rbp + 8672], rax
 mov rax, qword ptr [rbp + 8744]
 mov qword ptr [rbp + 8680], rax
# marshal arg1 = producer-box slot [zr+8624] -> [zr+8688]
 mov rax, qword ptr [rbp + 8624]
 mov qword ptr [rbp + 8688], rax
 mov rax, qword ptr [rbp + 8632]
 mov qword ptr [rbp + 8696], rax
# marshal arg2 = producer-box slot [zr+8512] -> [zr+8704]
 mov rax, qword ptr [rbp + 8512]
 mov qword ptr [rbp + 8704], rax
 mov rax, qword ptr [rbp + 8520]
 mov qword ptr [rbp + 8712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8656], rax
 mov qword ptr [rbp + 8664], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n249_α
 xchain269_n248_β:
 jmp proc_define$2_ω
 xchain269_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8880] -> [zr+8816]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8816], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8824], rax
# marshal arg1 = producer-box slot [zr+8768] -> [zr+8832]
 mov rax, qword ptr [rbp + 8768]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8776]
 mov qword ptr [rbp + 8840], rax
# marshal arg2 = producer-box slot [zr+8656] -> [zr+8848]
 mov rax, qword ptr [rbp + 8656]
 mov qword ptr [rbp + 8848], rax
 mov rax, qword ptr [rbp + 8664]
 mov qword ptr [rbp + 8856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8816]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n250_α
 xchain269_n249_β:
 jmp proc_define$2_ω
 xchain269_n250_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9024] -> [zr+8960]
 mov rax, qword ptr [rbp + 9024]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 9032]
 mov qword ptr [rbp + 8968], rax
# marshal arg1 = producer-box slot [zr+8912] -> [zr+8976]
 mov rax, qword ptr [rbp + 8912]
 mov qword ptr [rbp + 8976], rax
 mov rax, qword ptr [rbp + 8920]
 mov qword ptr [rbp + 8984], rax
# marshal arg2 = producer-box slot [zr+8800] -> [zr+8992]
 mov rax, qword ptr [rbp + 8800]
 mov qword ptr [rbp + 8992], rax
 mov rax, qword ptr [rbp + 8808]
 mov qword ptr [rbp + 9000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n251_α
 xchain269_n250_β:
 jmp proc_define$2_ω
 xchain269_n251_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9168] -> [zr+9104]
 mov rax, qword ptr [rbp + 9168]
 mov qword ptr [rbp + 9104], rax
 mov rax, qword ptr [rbp + 9176]
 mov qword ptr [rbp + 9112], rax
# marshal arg1 = producer-box slot [zr+9056] -> [zr+9120]
 mov rax, qword ptr [rbp + 9056]
 mov qword ptr [rbp + 9120], rax
 mov rax, qword ptr [rbp + 9064]
 mov qword ptr [rbp + 9128], rax
# marshal arg2 = producer-box slot [zr+8944] -> [zr+9136]
 mov rax, qword ptr [rbp + 8944]
 mov qword ptr [rbp + 9136], rax
 mov rax, qword ptr [rbp + 8952]
 mov qword ptr [rbp + 9144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9088], rax
 mov qword ptr [rbp + 9096], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n252_α
 xchain269_n251_β:
 jmp proc_define$2_ω
 xchain269_n252_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9312] -> [zr+9248]
 mov rax, qword ptr [rbp + 9312]
 mov qword ptr [rbp + 9248], rax
 mov rax, qword ptr [rbp + 9320]
 mov qword ptr [rbp + 9256], rax
# marshal arg1 = producer-box slot [zr+9200] -> [zr+9264]
 mov rax, qword ptr [rbp + 9200]
 mov qword ptr [rbp + 9264], rax
 mov rax, qword ptr [rbp + 9208]
 mov qword ptr [rbp + 9272], rax
# marshal arg2 = producer-box slot [zr+9088] -> [zr+9280]
 mov rax, qword ptr [rbp + 9088]
 mov qword ptr [rbp + 9280], rax
 mov rax, qword ptr [rbp + 9096]
 mov qword ptr [rbp + 9288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n253_α
 xchain269_n252_β:
 jmp proc_define$2_ω
 xchain269_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9456] -> [zr+9392]
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 9392], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 9400], rax
# marshal arg1 = producer-box slot [zr+9344] -> [zr+9408]
 mov rax, qword ptr [rbp + 9344]
 mov qword ptr [rbp + 9408], rax
 mov rax, qword ptr [rbp + 9352]
 mov qword ptr [rbp + 9416], rax
# marshal arg2 = producer-box slot [zr+9232] -> [zr+9424]
 mov rax, qword ptr [rbp + 9232]
 mov qword ptr [rbp + 9424], rax
 mov rax, qword ptr [rbp + 9240]
 mov qword ptr [rbp + 9432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9392]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n254_α
 xchain269_n253_β:
 jmp proc_define$2_ω
 xchain269_n254_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9600] -> [zr+9536]
 mov rax, qword ptr [rbp + 9600]
 mov qword ptr [rbp + 9536], rax
 mov rax, qword ptr [rbp + 9608]
 mov qword ptr [rbp + 9544], rax
# marshal arg1 = producer-box slot [zr+9488] -> [zr+9552]
 mov rax, qword ptr [rbp + 9488]
 mov qword ptr [rbp + 9552], rax
 mov rax, qword ptr [rbp + 9496]
 mov qword ptr [rbp + 9560], rax
# marshal arg2 = producer-box slot [zr+9376] -> [zr+9568]
 mov rax, qword ptr [rbp + 9376]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9384]
 mov qword ptr [rbp + 9576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9536]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n255_α
 xchain269_n254_β:
 jmp proc_define$2_ω
 xchain269_n255_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9744] -> [zr+9680]
 mov rax, qword ptr [rbp + 9744]
 mov qword ptr [rbp + 9680], rax
 mov rax, qword ptr [rbp + 9752]
 mov qword ptr [rbp + 9688], rax
# marshal arg1 = producer-box slot [zr+9632] -> [zr+9696]
 mov rax, qword ptr [rbp + 9632]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 9640]
 mov qword ptr [rbp + 9704], rax
# marshal arg2 = producer-box slot [zr+9520] -> [zr+9712]
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 9712], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 9720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9680]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9664], rax
 mov qword ptr [rbp + 9672], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n256_α
 xchain269_n255_β:
 jmp proc_define$2_ω
 xchain269_n256_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9888] -> [zr+9824]
 mov rax, qword ptr [rbp + 9888]
 mov qword ptr [rbp + 9824], rax
 mov rax, qword ptr [rbp + 9896]
 mov qword ptr [rbp + 9832], rax
# marshal arg1 = producer-box slot [zr+9776] -> [zr+9840]
 mov rax, qword ptr [rbp + 9776]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 9784]
 mov qword ptr [rbp + 9848], rax
# marshal arg2 = producer-box slot [zr+9664] -> [zr+9856]
 mov rax, qword ptr [rbp + 9664]
 mov qword ptr [rbp + 9856], rax
 mov rax, qword ptr [rbp + 9672]
 mov qword ptr [rbp + 9864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9824]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n257_α
 xchain269_n256_β:
 jmp proc_define$2_ω
 xchain269_n257_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10032] -> [zr+9968]
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 9968], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 9976], rax
# marshal arg1 = producer-box slot [zr+9920] -> [zr+9984]
 mov rax, qword ptr [rbp + 9920]
 mov qword ptr [rbp + 9984], rax
 mov rax, qword ptr [rbp + 9928]
 mov qword ptr [rbp + 9992], rax
# marshal arg2 = producer-box slot [zr+9808] -> [zr+10000]
 mov rax, qword ptr [rbp + 9808]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 9816]
 mov qword ptr [rbp + 10008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9968]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n258_α
 xchain269_n257_β:
 jmp proc_define$2_ω
 xchain269_n258_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10176] -> [zr+10112]
 mov rax, qword ptr [rbp + 10176]
 mov qword ptr [rbp + 10112], rax
 mov rax, qword ptr [rbp + 10184]
 mov qword ptr [rbp + 10120], rax
# marshal arg1 = producer-box slot [zr+10064] -> [zr+10128]
 mov rax, qword ptr [rbp + 10064]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10072]
 mov qword ptr [rbp + 10136], rax
# marshal arg2 = producer-box slot [zr+9952] -> [zr+10144]
 mov rax, qword ptr [rbp + 9952]
 mov qword ptr [rbp + 10144], rax
 mov rax, qword ptr [rbp + 9960]
 mov qword ptr [rbp + 10152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n259_α
 xchain269_n258_β:
 jmp proc_define$2_ω
 xchain269_n259_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10320] -> [zr+10256]
 mov rax, qword ptr [rbp + 10320]
 mov qword ptr [rbp + 10256], rax
 mov rax, qword ptr [rbp + 10328]
 mov qword ptr [rbp + 10264], rax
# marshal arg1 = producer-box slot [zr+10208] -> [zr+10272]
 mov rax, qword ptr [rbp + 10208]
 mov qword ptr [rbp + 10272], rax
 mov rax, qword ptr [rbp + 10216]
 mov qword ptr [rbp + 10280], rax
# marshal arg2 = producer-box slot [zr+10096] -> [zr+10288]
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10288], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10256]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10240], rax
 mov qword ptr [rbp + 10248], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n260_α
 xchain269_n259_β:
 jmp proc_define$2_ω
 xchain269_n260_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10464] -> [zr+10400]
 mov rax, qword ptr [rbp + 10464]
 mov qword ptr [rbp + 10400], rax
 mov rax, qword ptr [rbp + 10472]
 mov qword ptr [rbp + 10408], rax
# marshal arg1 = producer-box slot [zr+10352] -> [zr+10416]
 mov rax, qword ptr [rbp + 10352]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 10360]
 mov qword ptr [rbp + 10424], rax
# marshal arg2 = producer-box slot [zr+10240] -> [zr+10432]
 mov rax, qword ptr [rbp + 10240]
 mov qword ptr [rbp + 10432], rax
 mov rax, qword ptr [rbp + 10248]
 mov qword ptr [rbp + 10440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n261_α
 xchain269_n260_β:
 jmp proc_define$2_ω
 xchain269_n261_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10608] -> [zr+10544]
 mov rax, qword ptr [rbp + 10608]
 mov qword ptr [rbp + 10544], rax
 mov rax, qword ptr [rbp + 10616]
 mov qword ptr [rbp + 10552], rax
# marshal arg1 = producer-box slot [zr+10496] -> [zr+10560]
 mov rax, qword ptr [rbp + 10496]
 mov qword ptr [rbp + 10560], rax
 mov rax, qword ptr [rbp + 10504]
 mov qword ptr [rbp + 10568], rax
# marshal arg2 = producer-box slot [zr+10384] -> [zr+10576]
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n262_α
 xchain269_n261_β:
 jmp proc_define$2_ω
 xchain269_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10752] -> [zr+10688]
 mov rax, qword ptr [rbp + 10752]
 mov qword ptr [rbp + 10688], rax
 mov rax, qword ptr [rbp + 10760]
 mov qword ptr [rbp + 10696], rax
# marshal arg1 = producer-box slot [zr+10640] -> [zr+10704]
 mov rax, qword ptr [rbp + 10640]
 mov qword ptr [rbp + 10704], rax
 mov rax, qword ptr [rbp + 10648]
 mov qword ptr [rbp + 10712], rax
# marshal arg2 = producer-box slot [zr+10528] -> [zr+10720]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10720], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n263_α
 xchain269_n262_β:
 jmp proc_define$2_ω
 xchain269_n263_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10896] -> [zr+10832]
 mov rax, qword ptr [rbp + 10896]
 mov qword ptr [rbp + 10832], rax
 mov rax, qword ptr [rbp + 10904]
 mov qword ptr [rbp + 10840], rax
# marshal arg1 = producer-box slot [zr+10784] -> [zr+10848]
 mov rax, qword ptr [rbp + 10784]
 mov qword ptr [rbp + 10848], rax
 mov rax, qword ptr [rbp + 10792]
 mov qword ptr [rbp + 10856], rax
# marshal arg2 = producer-box slot [zr+10672] -> [zr+10864]
 mov rax, qword ptr [rbp + 10672]
 mov qword ptr [rbp + 10864], rax
 mov rax, qword ptr [rbp + 10680]
 mov qword ptr [rbp + 10872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10816], rax
 mov qword ptr [rbp + 10824], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n264_α
 xchain269_n263_β:
 jmp proc_define$2_ω
 xchain269_n264_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11040] -> [zr+10976]
 mov rax, qword ptr [rbp + 11040]
 mov qword ptr [rbp + 10976], rax
 mov rax, qword ptr [rbp + 11048]
 mov qword ptr [rbp + 10984], rax
# marshal arg1 = producer-box slot [zr+10928] -> [zr+10992]
 mov rax, qword ptr [rbp + 10928]
 mov qword ptr [rbp + 10992], rax
 mov rax, qword ptr [rbp + 10936]
 mov qword ptr [rbp + 11000], rax
# marshal arg2 = producer-box slot [zr+10816] -> [zr+11008]
 mov rax, qword ptr [rbp + 10816]
 mov qword ptr [rbp + 11008], rax
 mov rax, qword ptr [rbp + 10824]
 mov qword ptr [rbp + 11016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n265_α
 xchain269_n264_β:
 jmp proc_define$2_ω
 xchain269_n265_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11184] -> [zr+11120]
 mov rax, qword ptr [rbp + 11184]
 mov qword ptr [rbp + 11120], rax
 mov rax, qword ptr [rbp + 11192]
 mov qword ptr [rbp + 11128], rax
# marshal arg1 = producer-box slot [zr+11072] -> [zr+11136]
 mov rax, qword ptr [rbp + 11072]
 mov qword ptr [rbp + 11136], rax
 mov rax, qword ptr [rbp + 11080]
 mov qword ptr [rbp + 11144], rax
# marshal arg2 = producer-box slot [zr+10960] -> [zr+11152]
 mov rax, qword ptr [rbp + 10960]
 mov qword ptr [rbp + 11152], rax
 mov rax, qword ptr [rbp + 10968]
 mov qword ptr [rbp + 11160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11120]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11104], rax
 mov qword ptr [rbp + 11112], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n266_α
 xchain269_n265_β:
 jmp proc_define$2_ω
 xchain269_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11328] -> [zr+11264]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11264], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11272], rax
# marshal arg1 = producer-box slot [zr+11216] -> [zr+11280]
 mov rax, qword ptr [rbp + 11216]
 mov qword ptr [rbp + 11280], rax
 mov rax, qword ptr [rbp + 11224]
 mov qword ptr [rbp + 11288], rax
# marshal arg2 = producer-box slot [zr+11104] -> [zr+11296]
 mov rax, qword ptr [rbp + 11104]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11112]
 mov qword ptr [rbp + 11304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11264]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11248], rax
 mov qword ptr [rbp + 11256], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n267_α
 xchain269_n266_β:
 jmp proc_define$2_ω
 xchain269_n267_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11472] -> [zr+11408]
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11408], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11416], rax
# marshal arg1 = producer-box slot [zr+11360] -> [zr+11424]
 mov rax, qword ptr [rbp + 11360]
 mov qword ptr [rbp + 11424], rax
 mov rax, qword ptr [rbp + 11368]
 mov qword ptr [rbp + 11432], rax
# marshal arg2 = producer-box slot [zr+11248] -> [zr+11440]
 mov rax, qword ptr [rbp + 11248]
 mov qword ptr [rbp + 11440], rax
 mov rax, qword ptr [rbp + 11256]
 mov qword ptr [rbp + 11448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11392], rax
 mov qword ptr [rbp + 11400], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n268_α
 xchain269_n267_β:
 jmp proc_define$2_ω
 xchain269_n268_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11616] -> [zr+11552]
 mov rax, qword ptr [rbp + 11616]
 mov qword ptr [rbp + 11552], rax
 mov rax, qword ptr [rbp + 11624]
 mov qword ptr [rbp + 11560], rax
# marshal arg1 = producer-box slot [zr+11504] -> [zr+11568]
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 11568], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 11576], rax
# marshal arg2 = producer-box slot [zr+11392] -> [zr+11584]
 mov rax, qword ptr [rbp + 11392]
 mov qword ptr [rbp + 11584], rax
 mov rax, qword ptr [rbp + 11400]
 mov qword ptr [rbp + 11592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11552]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n269_α
 xchain269_n268_β:
 jmp proc_define$2_ω
 xchain269_n269_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11760] -> [zr+11696]
 mov rax, qword ptr [rbp + 11760]
 mov qword ptr [rbp + 11696], rax
 mov rax, qword ptr [rbp + 11768]
 mov qword ptr [rbp + 11704], rax
# marshal arg1 = producer-box slot [zr+11648] -> [zr+11712]
 mov rax, qword ptr [rbp + 11648]
 mov qword ptr [rbp + 11712], rax
 mov rax, qword ptr [rbp + 11656]
 mov qword ptr [rbp + 11720], rax
# marshal arg2 = producer-box slot [zr+11536] -> [zr+11728]
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 11728], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 11736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11696]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n270_α
 xchain269_n269_β:
 jmp proc_define$2_ω
 xchain269_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11904] -> [zr+11840]
 mov rax, qword ptr [rbp + 11904]
 mov qword ptr [rbp + 11840], rax
 mov rax, qword ptr [rbp + 11912]
 mov qword ptr [rbp + 11848], rax
# marshal arg1 = producer-box slot [zr+11792] -> [zr+11856]
 mov rax, qword ptr [rbp + 11792]
 mov qword ptr [rbp + 11856], rax
 mov rax, qword ptr [rbp + 11800]
 mov qword ptr [rbp + 11864], rax
# marshal arg2 = producer-box slot [zr+11680] -> [zr+11872]
 mov rax, qword ptr [rbp + 11680]
 mov qword ptr [rbp + 11872], rax
 mov rax, qword ptr [rbp + 11688]
 mov qword ptr [rbp + 11880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11824], rax
 mov qword ptr [rbp + 11832], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n271_α
 xchain269_n270_β:
 jmp proc_define$2_ω
 xchain269_n271_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12048] -> [zr+11984]
 mov rax, qword ptr [rbp + 12048]
 mov qword ptr [rbp + 11984], rax
 mov rax, qword ptr [rbp + 12056]
 mov qword ptr [rbp + 11992], rax
# marshal arg1 = producer-box slot [zr+11936] -> [zr+12000]
 mov rax, qword ptr [rbp + 11936]
 mov qword ptr [rbp + 12000], rax
 mov rax, qword ptr [rbp + 11944]
 mov qword ptr [rbp + 12008], rax
# marshal arg2 = producer-box slot [zr+11824] -> [zr+12016]
 mov rax, qword ptr [rbp + 11824]
 mov qword ptr [rbp + 12016], rax
 mov rax, qword ptr [rbp + 11832]
 mov qword ptr [rbp + 12024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11968], rax
 mov qword ptr [rbp + 11976], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n272_α
 xchain269_n271_β:
 jmp proc_define$2_ω
 xchain269_n272_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12192] -> [zr+12128]
 mov rax, qword ptr [rbp + 12192]
 mov qword ptr [rbp + 12128], rax
 mov rax, qword ptr [rbp + 12200]
 mov qword ptr [rbp + 12136], rax
# marshal arg1 = producer-box slot [zr+12080] -> [zr+12144]
 mov rax, qword ptr [rbp + 12080]
 mov qword ptr [rbp + 12144], rax
 mov rax, qword ptr [rbp + 12088]
 mov qword ptr [rbp + 12152], rax
# marshal arg2 = producer-box slot [zr+11968] -> [zr+12160]
 mov rax, qword ptr [rbp + 11968]
 mov qword ptr [rbp + 12160], rax
 mov rax, qword ptr [rbp + 11976]
 mov qword ptr [rbp + 12168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12112], rax
 mov qword ptr [rbp + 12120], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n273_α
 xchain269_n272_β:
 jmp proc_define$2_ω
 xchain269_n273_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12336] -> [zr+12272]
 mov rax, qword ptr [rbp + 12336]
 mov qword ptr [rbp + 12272], rax
 mov rax, qword ptr [rbp + 12344]
 mov qword ptr [rbp + 12280], rax
# marshal arg1 = producer-box slot [zr+12224] -> [zr+12288]
 mov rax, qword ptr [rbp + 12224]
 mov qword ptr [rbp + 12288], rax
 mov rax, qword ptr [rbp + 12232]
 mov qword ptr [rbp + 12296], rax
# marshal arg2 = producer-box slot [zr+12112] -> [zr+12304]
 mov rax, qword ptr [rbp + 12112]
 mov qword ptr [rbp + 12304], rax
 mov rax, qword ptr [rbp + 12120]
 mov qword ptr [rbp + 12312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12256], rax
 mov qword ptr [rbp + 12264], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n274_α
 xchain269_n273_β:
 jmp proc_define$2_ω
 xchain269_n274_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12480] -> [zr+12416]
 mov rax, qword ptr [rbp + 12480]
 mov qword ptr [rbp + 12416], rax
 mov rax, qword ptr [rbp + 12488]
 mov qword ptr [rbp + 12424], rax
# marshal arg1 = producer-box slot [zr+12368] -> [zr+12432]
 mov rax, qword ptr [rbp + 12368]
 mov qword ptr [rbp + 12432], rax
 mov rax, qword ptr [rbp + 12376]
 mov qword ptr [rbp + 12440], rax
# marshal arg2 = producer-box slot [zr+12256] -> [zr+12448]
 mov rax, qword ptr [rbp + 12256]
 mov qword ptr [rbp + 12448], rax
 mov rax, qword ptr [rbp + 12264]
 mov qword ptr [rbp + 12456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12400], rax
 mov qword ptr [rbp + 12408], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n275_α
 xchain269_n274_β:
 jmp proc_define$2_ω
 xchain269_n275_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12624] -> [zr+12560]
 mov rax, qword ptr [rbp + 12624]
 mov qword ptr [rbp + 12560], rax
 mov rax, qword ptr [rbp + 12632]
 mov qword ptr [rbp + 12568], rax
# marshal arg1 = producer-box slot [zr+12512] -> [zr+12576]
 mov rax, qword ptr [rbp + 12512]
 mov qword ptr [rbp + 12576], rax
 mov rax, qword ptr [rbp + 12520]
 mov qword ptr [rbp + 12584], rax
# marshal arg2 = producer-box slot [zr+12400] -> [zr+12592]
 mov rax, qword ptr [rbp + 12400]
 mov qword ptr [rbp + 12592], rax
 mov rax, qword ptr [rbp + 12408]
 mov qword ptr [rbp + 12600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12544], rax
 mov qword ptr [rbp + 12552], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n276_α
 xchain269_n275_β:
 jmp proc_define$2_ω
 xchain269_n276_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12768] -> [zr+12704]
 mov rax, qword ptr [rbp + 12768]
 mov qword ptr [rbp + 12704], rax
 mov rax, qword ptr [rbp + 12776]
 mov qword ptr [rbp + 12712], rax
# marshal arg1 = producer-box slot [zr+12656] -> [zr+12720]
 mov rax, qword ptr [rbp + 12656]
 mov qword ptr [rbp + 12720], rax
 mov rax, qword ptr [rbp + 12664]
 mov qword ptr [rbp + 12728], rax
# marshal arg2 = producer-box slot [zr+12544] -> [zr+12736]
 mov rax, qword ptr [rbp + 12544]
 mov qword ptr [rbp + 12736], rax
 mov rax, qword ptr [rbp + 12552]
 mov qword ptr [rbp + 12744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12704]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12688], rax
 mov qword ptr [rbp + 12696], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain269_n277_α
 xchain269_n276_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain269_n277_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13152]
 mov qword ptr [rbp + 12800], rax
 mov qword ptr [rbp + 12808], rdx
 jmp xchain269_n278_α
# IR_LIT_STRING
 xchain269_n278_α:
 mov qword ptr [rbp + 12832], 1
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [rbp + 12840], rax
 jmp xchain269_n279_α
.Lx606_0:
 .quad .Lx606_0_s
.Lx606_0_s:
 .string "[]"
 xchain269_n279_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12960] -> [zr+12880]
 mov rax, qword ptr [rbp + 12960]
 mov qword ptr [rbp + 12880], rax
 mov rax, qword ptr [rbp + 12968]
 mov qword ptr [rbp + 12888], rax
# marshal arg1 = producer-box slot [zr+12688] -> [zr+12896]
 mov rax, qword ptr [rbp + 12688]
 mov qword ptr [rbp + 12896], rax
 mov rax, qword ptr [rbp + 12696]
 mov qword ptr [rbp + 12904], rax
# marshal arg2 = producer-box slot [zr+12800] -> [zr+12912]
 mov rax, qword ptr [rbp + 12800]
 mov qword ptr [rbp + 12912], rax
 mov rax, qword ptr [rbp + 12808]
 mov qword ptr [rbp + 12920], rax
# marshal arg3 = producer-box slot [zr+12832] -> [zr+12928]
 mov rax, qword ptr [rbp + 12832]
 mov qword ptr [rbp + 12928], rax
 mov rax, qword ptr [rbp + 12840]
 mov qword ptr [rbp + 12936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12880]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 cmp eax, 99
 je xchain269_n5_α
 jmp xchain269_n280_α
 xchain269_n279_β:
 jmp xchain269_n5_α
 xchain269_n280_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5536] -> [zr+5488]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+12864] -> [zr+5504]
 mov rax, qword ptr [rbp + 12864]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 12872]
 mov qword ptr [rbp + 5512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5488]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain269_n5_α
 jmp xchain269_n281_α
 xchain269_n280_β:
 jmp xchain269_n5_α
# IR_SUSPEND yield+resume
 xchain269_n281_α:
 lea rax, [rip + xchain269_n281_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain269_n281_β:
 jmp xchain269_n5_α
proc_define$2_res:
add rsp, 8
pop rbp
proc_define$2_β:
jmp qword ptr [rbp + 13120]
proc_define$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_define$2_res]
push rax
mov rax, [rbp + 13272]
mov rbp, [rbp + 13288]
jmp rax
proc_define$2_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_interpret_built_in$1_α
proc_interpret_built_in$1_α:
#=======================================================================================================================
    .global proc_interpret_built_in$1_α
    .global proc_interpret_built_in$1_β
    .global proc_interpret_built_in$1_γ
    .global proc_interpret_built_in$1_ω
  sub rsp, 816
  mov [rsp + 792], rcx
  mov [rsp + 800], rdx
  mov [rsp + 808], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 744], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 784
  call rt_jmp_frame_lexprep2@PLT
proc_interpret_built_in$1_α_body:
lea rax, [rip + xchain611_n4_β]
mov qword ptr [rbp + 720], rax
 xchain611_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp xchain611_n1_α
 xchain611_n0_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain611_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain611_n2_α
# IR_LIT_STRING
 xchain611_n2_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx615_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain611_n3_α
.Lx615_0:
 .quad .Lx615_0_s
.Lx615_0_s:
 .string "true"
 xchain611_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 608]
 mov rsi, qword ptr [rip + .Lx616_2]
 jmp .Lx616_3
.Lx616_2:
 .quad .Lx616_2_s
.Lx616_2_s:
 .string "true"
.Lx616_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain611_n5_α
 jmp xchain611_n4_α
 xchain611_n3_β:
 jmp xchain611_n5_α
# IR_SUSPEND yield+resume
 xchain611_n4_α:
 lea rax, [rip + xchain611_n4_β]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$1_γ
 xchain611_n4_β:
 jmp xchain611_n5_α
 xchain611_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+560]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp xchain611_n6_α
 xchain611_n5_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain611_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain611_n7_α
# IR_LIT_STRING
 xchain611_n7_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain611_n8_α
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "=<"
# IR_VAR_REF
 xchain611_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain611_n9_α
# IR_VAR_REF
 xchain611_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain611_n10_α
 xchain611_n10_α:
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
 je xchain611_n12_α
 jmp xchain611_n11_α
 xchain611_n10_β:
 jmp xchain611_n12_α
 xchain611_n11_α:
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
 je xchain611_n12_α
 jmp xchain611_n13_α
 xchain611_n11_β:
 jmp xchain611_n12_α
 xchain611_n12_α:
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
 je proc_interpret_built_in$1_ω
 jmp proc_interpret_built_in$1_ω
 xchain611_n12_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR
 xchain611_n13_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 216], rax
 jmp xchain611_n14_α
# IR_VAR
 xchain611_n14_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 248], rax
 jmp xchain611_n15_α
 xchain611_n15_α:
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
 je xchain611_n12_α
 jmp xchain611_n16_α
 xchain611_n15_β:
 jmp xchain611_n12_α
# IR_SUSPEND yield+resume
 xchain611_n16_α:
 lea rax, [rip + xchain611_n16_β]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$1_γ
 xchain611_n16_β:
 jmp xchain611_n12_α
proc_interpret_built_in$1_res:
add rsp, 8
pop rbp
proc_interpret_built_in$1_β:
jmp qword ptr [rbp + 720]
proc_interpret_built_in$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret_built_in$1_res]
push rax
mov rax, [rbp + 792]
mov rbp, [rbp + 808]
jmp rax
proc_interpret_built_in$1_ω:
mov rax, [rbp + 800]
lea rsp, [rbp + 816]
mov rbp, [rbp + 808]
jmp rax
  .globl proc_interpret_disjunction$3_α
proc_interpret_disjunction$3_α:
#=======================================================================================================================
    .global proc_interpret_disjunction$3_α
    .global proc_interpret_disjunction$3_β
    .global proc_interpret_disjunction$3_γ
    .global proc_interpret_disjunction$3_ω
  sub rsp, 3392
  mov [rsp + 3368], rcx
  mov [rsp + 3376], rdx
  mov [rsp + 3384], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3240], rsp
  mov rdi, rsp
  mov esi, 3216
  mov edx, 3360
  call rt_jmp_frame_lexprep2@PLT
proc_interpret_disjunction$3_α_body:
lea rax, [rip + xchain637_n59_β]
mov qword ptr [rbp + 3216], rax
 xchain637_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain637_n1_α
 xchain637_n0_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain637_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain637_n2_α
# IR_LIT_STRING
 xchain637_n2_α:
 mov qword ptr [rbp + 3184], 1
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain637_n3_α
.Lx641_0:
 .quad .Lx641_0_s
.Lx641_0_s:
 .string "->"
# IR_VAR_REF
 xchain637_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain637_n4_α
# IR_VAR_REF
 xchain637_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain637_n5_α
 xchain637_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3184] -> [zr+3120]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3128], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+3136]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3144], rax
# marshal arg2 = producer-box slot [zr+3072] -> [zr+3152]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain637_n7_α
 jmp xchain637_n6_α
 xchain637_n5_β:
 jmp xchain637_n7_α
 xchain637_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2960]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2968], rax
# marshal arg1 = producer-box slot [zr+3104] -> [zr+2976]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 2984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2960]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je xchain637_n7_α
 jmp xchain637_n8_α
 xchain637_n6_β:
 jmp xchain637_n7_α
 xchain637_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2016]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain637_n9_α
 xchain637_n7_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain637_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain637_n10_α
# IR_VAR_REF
 xchain637_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain637_n11_α
# IR_VAR_REF
 xchain637_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain637_n12_α
# IR_LIT_STRING
 xchain637_n11_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx655_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain637_n13_α
.Lx655_0:
 .quad .Lx655_0_s
.Lx655_0_s:
 .string "->"
 xchain637_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2848]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain637_n7_α
 jmp xchain637_n14_α
 xchain637_n12_β:
 jmp xchain637_n7_α
# IR_VAR_REF
 xchain637_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain637_n15_α
# IR_VAR_REF
 xchain637_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain637_n16_α
# IR_VAR_REF
 xchain637_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain637_n17_α
# IR_VAR_REF
 xchain637_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain637_n18_α
 xchain637_n17_α:
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
 je xchain637_n20_α
 jmp xchain637_n19_α
 xchain637_n17_β:
 jmp xchain637_n20_α
 xchain637_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain637_n7_α
 jmp xchain637_n21_α
 xchain637_n18_β:
 jmp xchain637_n7_α
 xchain637_n19_α:
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
 je xchain637_n20_α
 jmp xchain637_n22_α
 xchain637_n19_β:
 jmp xchain637_n20_α
 xchain637_n20_α:
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
 je proc_interpret_disjunction$3_ω
 jmp xchain637_n23_α
 xchain637_n20_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain637_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain637_n24_α
# IR_VAR_REF
 xchain637_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain637_n25_α
# IR_VAR_REF
 xchain637_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain637_n26_α
# IR_VAR_REF
 xchain637_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain637_n27_α
# IR_VAR_REF
 xchain637_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain637_n28_α
# IR_VAR_REF
 xchain637_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain637_n29_α
 xchain637_n27_α:
 mov qword ptr [rbp + 2592], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2624]
 mov rdx, qword ptr [rbp + 2632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2656]
 mov rdx, qword ptr [rbp + 2664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx682_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx682_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx682_3]
 lea rdx, [rip + .Lx682_4]
 jmp rax
.Lx682_3:
 mov qword ptr [rbp + 2600], rsp
 mov rax, qword ptr [rbp + 2592]
 test rax, rax
 jne .Lx682_5
 mov qword ptr [rbp + 2592], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx682_2
.Lx682_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx682_2
.Lx682_4:
 mov rax, qword ptr [rbp + 2592]
 test rax, rax
 jne .Lx682_6
 mov qword ptr [rbp + 2592], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx682_2
.Lx682_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx682_2
.Lx682_1:
 call rt_faildescr@PLT
.Lx682_2:
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain637_n7_α
 jmp xchain637_n30_α
 xchain637_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2600]
 jmp qword ptr [rsp]
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "interpret/2"
 xchain637_n28_α:
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
 je xchain637_n20_α
 jmp xchain637_n31_α
 xchain637_n28_β:
 jmp xchain637_n20_α
 xchain637_n29_α:
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
 je xchain637_n33_α
 jmp xchain637_n32_α
 xchain637_n29_β:
 jmp xchain637_n33_α
 xchain637_n30_α:
# IR_CUT
 jmp xchain637_n34_α
# IR_VAR_REF
 xchain637_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain637_n35_α
# IR_VAR_REF
 xchain637_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain637_n36_α
 xchain637_n33_α:
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
 je proc_interpret_disjunction$3_ω
 jmp xchain637_n37_α
 xchain637_n33_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain637_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain637_n38_α
# IR_VAR_REF
 xchain637_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain637_n39_α
# IR_VAR_REF
 xchain637_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain637_n40_α
# IR_VAR_REF
 xchain637_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain637_n41_α
 xchain637_n38_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2480]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2488], rax
  .section .rodata
  .Lrkfn700: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn700]
 lea rsi, [rbp + 2480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain637_n43_α
 jmp xchain637_n42_α
 xchain637_n38_β:
 jmp xchain637_n43_α
 xchain637_n39_α:
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
 je xchain637_n20_α
 jmp xchain637_n44_α
 xchain637_n39_β:
 jmp xchain637_n20_α
 xchain637_n40_α:
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
 je xchain637_n33_α
 jmp xchain637_n45_α
 xchain637_n40_β:
 jmp xchain637_n33_α
# IR_VAR_REF
 xchain637_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain637_n46_α
# IR_VAR_REF
 xchain637_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain637_n47_α
# IR_VAR_REF
 xchain637_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain637_n48_α
 xchain637_n44_α:
# IR_CUT
 jmp xchain637_n49_α
# IR_VAR_REF
 xchain637_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain637_n50_α
 xchain637_n46_α:
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
 je xchain637_n52_α
 jmp xchain637_n51_α
 xchain637_n46_β:
 jmp xchain637_n52_α
# IR_LIT_STRING
 xchain637_n47_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx713_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain637_n53_α
.Lx713_0:
 .quad .Lx713_0_s
.Lx713_0_s:
 .string "->"
# IR_VAR_REF
 xchain637_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain637_n54_α
# IR_VAR_REF
 xchain637_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain637_n55_α
# IR_VAR_REF
 xchain637_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain637_n56_α
# IR_VAR_REF
 xchain637_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain637_n57_α
 xchain637_n52_α:
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
 je proc_interpret_disjunction$3_ω
 jmp proc_interpret_disjunction$3_ω
 xchain637_n52_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain637_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain637_n58_α
 xchain637_n54_α:
 mov qword ptr [rbp + 2368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx726_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx726_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx726_3]
 lea rdx, [rip + .Lx726_4]
 jmp rax
.Lx726_3:
 mov qword ptr [rbp + 2376], rsp
 mov rax, qword ptr [rbp + 2368]
 test rax, rax
 jne .Lx726_5
 mov qword ptr [rbp + 2368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx726_2
.Lx726_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx726_2
.Lx726_4:
 mov rax, qword ptr [rbp + 2368]
 test rax, rax
 jne .Lx726_6
 mov qword ptr [rbp + 2368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx726_2
.Lx726_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx726_2
.Lx726_1:
 call rt_faildescr@PLT
.Lx726_2:
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain637_n52_α
 jmp xchain637_n59_α
 xchain637_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2376]
 jmp qword ptr [rsp]
.Lx726_0:
 .quad .Lx726_0_s
.Lx726_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain637_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain637_n60_α
 xchain637_n56_α:
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
 je xchain637_n33_α
 jmp xchain637_n61_α
 xchain637_n56_β:
 jmp xchain637_n33_α
# IR_VAR_REF
 xchain637_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain637_n62_α
# IR_VAR_REF
 xchain637_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain637_n63_α
# IR_SUSPEND yield+resume
 xchain637_n59_α:
 lea rax, [rip + xchain637_n59_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain637_n59_β:
 jmp xchain637_n7_α
 xchain637_n60_α:
 mov qword ptr [rbp + 1376], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx737_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx737_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx737_3]
 lea rdx, [rip + .Lx737_4]
 jmp rax
.Lx737_3:
 mov qword ptr [rbp + 1384], rsp
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx737_5
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx737_2
.Lx737_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx737_2
.Lx737_4:
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx737_6
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx737_2
.Lx737_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx737_2
.Lx737_1:
 call rt_faildescr@PLT
.Lx737_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain637_n52_α
 jmp xchain637_n64_α
 xchain637_n60_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1384]
 jmp qword ptr [rsp]
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain637_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain637_n65_α
 xchain637_n62_α:
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
 je xchain637_n52_α
 jmp xchain637_n66_α
 xchain637_n62_β:
 jmp xchain637_n52_α
 xchain637_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2224]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2232], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+2240]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2248], rax
# marshal arg2 = producer-box slot [zr+2176] -> [zr+2256]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain637_n52_α
 jmp xchain637_n67_α
 xchain637_n63_β:
 jmp xchain637_n52_α
# IR_SUSPEND yield+resume
 xchain637_n64_α:
 lea rax, [rip + xchain637_n64_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain637_n64_β:
 jmp xchain637_n60_β
# IR_VAR_REF
 xchain637_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain637_n68_α
# IR_VAR_REF
 xchain637_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain637_n69_α
 xchain637_n67_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2080]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain637_n52_α
 jmp xchain637_n59_α
 xchain637_n67_β:
 jmp xchain637_n52_α
 xchain637_n68_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx750_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx750_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx750_3]
 lea rdx, [rip + .Lx750_4]
 jmp rax
.Lx750_3:
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx750_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx750_2
.Lx750_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx750_2
.Lx750_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx750_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx750_2
.Lx750_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx750_2
.Lx750_1:
 call rt_faildescr@PLT
.Lx750_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain637_n33_α
 jmp xchain637_n70_α
 xchain637_n68_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx750_0:
 .quad .Lx750_0_s
.Lx750_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain637_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain637_n71_α
# IR_SUSPEND yield+resume
 xchain637_n70_α:
 lea rax, [rip + xchain637_n70_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain637_n70_β:
 jmp xchain637_n68_β
 xchain637_n71_α:
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
 je xchain637_n52_α
 jmp xchain637_n72_α
 xchain637_n71_β:
 jmp xchain637_n52_α
# IR_VAR_REF
 xchain637_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain637_n73_α
# IR_VAR_REF
 xchain637_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain637_n74_α
 xchain637_n74_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx761_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx761_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx761_3]
 lea rdx, [rip + .Lx761_4]
 jmp rax
.Lx761_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx761_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx761_2
.Lx761_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx761_2
.Lx761_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx761_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx761_2
.Lx761_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx761_2
.Lx761_1:
 call rt_faildescr@PLT
.Lx761_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain637_n52_α
 jmp xchain637_n75_α
 xchain637_n74_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx761_0:
 .quad .Lx761_0_s
.Lx761_0_s:
 .string "interpret/2"
# IR_SUSPEND yield+resume
 xchain637_n75_α:
 lea rax, [rip + xchain637_n75_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain637_n75_β:
 jmp xchain637_n74_β
proc_interpret_disjunction$3_res:
add rsp, 8
pop rbp
proc_interpret_disjunction$3_β:
jmp qword ptr [rbp + 3216]
proc_interpret_disjunction$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret_disjunction$3_res]
push rax
mov rax, [rbp + 3368]
mov rbp, [rbp + 3384]
jmp rax
proc_interpret_disjunction$3_ω:
mov rax, [rbp + 3376]
lea rsp, [rbp + 3392]
mov rbp, [rbp + 3384]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_interpret$1_α]
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
  lea rsi, [rip + proc_interpret$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 5584
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
  lea rsi, [rip + proc_is_built_in$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 656
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
  lea rsi, [rip + proc_meta_qsort$0_α]
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
  lea rsi, [rip + proc_define$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 13264
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
  lea rsi, [rip + proc_interpret_built_in$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 784
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
  lea rsi, [rip + proc_interpret_disjunction$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3360
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
 xchain764_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain764_n1_α
 xchain764_n0_β:
 jmp main_ω
 xchain764_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx767_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx767_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx767_3]
 lea rdx, [rip + .Lx767_4]
 jmp rax
.Lx767_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx767_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx767_2
.Lx767_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx767_2
.Lx767_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx767_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx767_2
.Lx767_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx767_2
.Lx767_1:
 call rt_faildescr@PLT
.Lx767_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain764_n3_α
 jmp xchain764_n2_α
 xchain764_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx767_0:
 .quad .Lx767_0_s
.Lx767_0_s:
 .string "meta_qsort/0"
# IR_LIT_STRING
 xchain764_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx768_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain764_n4_α
.Lx768_0:
 .quad .Lx768_0_s
.Lx768_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain764_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx769_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain764_n5_α
.Lx769_0:
 .quad .Lx769_0_s
.Lx769_0_s:
 .string "failed"
 xchain764_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn771: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn771]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain764_n7_α
 jmp xchain764_n6_α
 xchain764_n4_β:
 jmp xchain764_n7_α
 xchain764_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn773: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn773]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain764_n7_α
 jmp xchain764_n6_α
 xchain764_n5_β:
 jmp xchain764_n7_α
# IR_LIT_STRING
 xchain764_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx774_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain764_n8_α
.Lx774_0:
 .quad .Lx774_0_s
.Lx774_0_s:
 .string ""
 xchain764_n7_α:
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
 xchain764_n7_β:
 jmp main_ω
 xchain764_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn777: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn777]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain764_n7_α
 jmp xchain764_n9_α
 xchain764_n8_β:
 jmp xchain764_n7_α
# IR_MOVE_LABEL
 xchain764_n9_α:
 lea rax, [rip + xchain764_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain764_n10_α:
 jmp qword ptr [rbp + 32]
 xchain764_n10_β:
 jmp main_ω
main_β:
jmp xchain764_n10_α
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
