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
  mov rdi, rsp
  mov ecx, 656
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 656
  call rt_jmp_frame_lexprep@PLT
proc_interpret$1_α_body:
lea rax, [rip + xchain0_n11_β]
mov qword ptr [rbp + 592], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret$1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_interpret$1_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
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
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret$1_ω
 jmp proc_interpret$1_ω
 xchain0_n5_β:
 jmp proc_interpret$1_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [rbp + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
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
 mov rdi, qword ptr [rip + .Lx16_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx16_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx16_3]
 lea rdx, [rip + .Lx16_4]
 jmp rax
.Lx16_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx16_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx16_2
.Lx16_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx16_2
.Lx16_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx16_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx16_2
.Lx16_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx16_2
.Lx16_1:
 call rt_faildescr@PLT
.Lx16_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n11_α
 xchain0_n9_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn20: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn20]
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
 xchain0_n10_β:
 jmp xchain0_n11_α
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
 lea rdi, [rbp + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n5_α
 xchain0_n13_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx27_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx27_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx27_3]
 lea rdx, [rip + .Lx27_4]
 jmp rax
.Lx27_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx27_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx27_2
.Lx27_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx27_2
.Lx27_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx27_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx27_2
.Lx27_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx27_2
.Lx27_1:
 call rt_faildescr@PLT
.Lx27_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
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
  mov rdi, rsp
  mov ecx, 5584
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 5496], rsp
  mov rdi, rsp
  mov esi, 5584
  call rt_jmp_frame_lexprep@PLT
proc_interpret$2_α_body:
lea rax, [rip + xchain28_n55_β]
mov qword ptr [rbp + 5472], rax
 xchain28_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn30]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n1_α
 xchain28_n0_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain28_n2_α
 xchain28_n1_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n2_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain28_n3_α
 xchain28_n2_β:
 jmp xchain28_n5_α
 xchain28_n3_α:
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
  .section .rodata
  .Lrkfn36: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn36]
 lea rsi, [rbp + 5360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n4_α
 xchain28_n3_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain28_n6_α
 xchain28_n4_β:
 jmp xchain28_n5_α
 xchain28_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5104]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5112], rax
  .section .rodata
  .Lrkfn40: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn40]
 lea rsi, [rbp + 5104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n7_α
 xchain28_n5_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n6_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 jmp xchain28_n8_α
 xchain28_n6_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain28_n9_α
 xchain28_n7_β:
 jmp xchain28_n18_α
 xchain28_n8_α:
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
  .section .rodata
  .Lrkfn46: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 5232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n10_α
 xchain28_n8_β:
 jmp xchain28_n5_α
# IR_LIT_STRING
 xchain28_n9_α:
 mov qword ptr [rbp + 5056], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 5064], rax
 jmp xchain28_n11_α
 xchain28_n9_β:
 jmp proc_interpret$2_ω
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string ","
# IR_VAR_REF
 xchain28_n10_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 jmp xchain28_n12_α
 xchain28_n10_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n11_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain28_n13_α
 xchain28_n11_β:
 jmp proc_interpret$2_ω
 xchain28_n12_α:
# BOX IR_CALL $tt_var(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5152]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn53: .string "$tt_var"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn53]
 lea rsi, [rbp + 5152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n14_α
 xchain28_n12_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n13_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain28_n15_α
 xchain28_n13_β:
 jmp proc_interpret$2_ω
 xchain28_n14_α:
# IR_CUT
 jmp xchain28_n16_α
 xchain28_n14_β:
 jmp xchain28_n5_α
 xchain28_n15_α:
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
  .section .rodata
  .Lrkfn58: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn58]
 lea rsi, [rbp + 4992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n17_α
 xchain28_n15_β:
 jmp xchain28_n18_α
 xchain28_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn60: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn60]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp proc_interpret$2_ω
 xchain28_n16_β:
 jmp proc_interpret$2_ω
 xchain28_n17_α:
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
  .section .rodata
  .Lrkfn62: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn62]
 lea rsi, [rbp + 4832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n19_α
 xchain28_n17_β:
 jmp xchain28_n18_α
 xchain28_n18_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4016]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4024], rax
  .section .rodata
  .Lrkfn64: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn64]
 lea rsi, [rbp + 4016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n20_α
 xchain28_n18_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain28_n21_α
 xchain28_n19_β:
 jmp xchain28_n18_α
# IR_VAR_REF
 xchain28_n20_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain28_n22_α
 xchain28_n20_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n21_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain28_n23_α
 xchain28_n21_β:
 jmp xchain28_n18_α
# IR_LIT_STRING
 xchain28_n22_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain28_n24_α
 xchain28_n22_β:
 jmp proc_interpret$2_ω
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string ";"
 xchain28_n23_α:
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
  .section .rodata
  .Lrkfn73: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn73]
 lea rsi, [rbp + 4704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n25_α
 xchain28_n23_β:
 jmp xchain28_n18_α
# IR_VAR_REF
 xchain28_n24_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain28_n26_α
 xchain28_n24_β:
 jmp proc_interpret$2_ω
 xchain28_n25_α:
# IR_CUT
 jmp xchain28_n27_α
 xchain28_n25_β:
 jmp xchain28_n18_α
# IR_VAR_REF
 xchain28_n26_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain28_n28_α
 xchain28_n26_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n27_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 jmp xchain28_n29_α
 xchain28_n27_β:
 jmp xchain28_n16_α
 xchain28_n28_α:
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
  .section .rodata
  .Lrkfn82: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn82]
 lea rsi, [rbp + 3904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je xchain28_n31_α
 jmp xchain28_n30_α
 xchain28_n28_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n29_α:
 lea rdi, [rbp + 5568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain28_n32_α
 xchain28_n29_β:
 jmp xchain28_n16_α
 xchain28_n30_α:
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
  .section .rodata
  .Lrkfn86: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 3744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 cmp eax, 99
 je xchain28_n31_α
 jmp xchain28_n33_α
 xchain28_n30_β:
 jmp xchain28_n31_α
 xchain28_n31_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3376]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3384], rax
  .section .rodata
  .Lrkfn88: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn88]
 lea rsi, [rbp + 3376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n34_α
 xchain28_n31_β:
 jmp proc_interpret$2_ω
 xchain28_n32_α:
 mov qword ptr [rbp + 4592], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4624]
 mov rdx, qword ptr [rbp + 4632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx90_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx90_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx90_3]
 lea rdx, [rip + .Lx90_4]
 jmp rax
.Lx90_3:
 mov qword ptr [rbp + 4600], rsp
 mov rax, qword ptr [rbp + 4592]
 test rax, rax
 jne .Lx90_5
 mov qword ptr [rbp + 4592], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx90_2
.Lx90_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx90_2
.Lx90_4:
 mov rax, qword ptr [rbp + 4592]
 test rax, rax
 jne .Lx90_6
 mov qword ptr [rbp + 4592], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx90_2
.Lx90_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx90_2
.Lx90_1:
 call rt_faildescr@PLT
.Lx90_2:
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n35_α
 xchain28_n32_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4600]
 jmp qword ptr [rsp]
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain28_n33_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain28_n36_α
 xchain28_n33_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n34_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain28_n37_α
 xchain28_n34_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n35_α:
 lea rdi, [rbp + 5568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain28_n38_α
 xchain28_n35_β:
 jmp xchain28_n42_α
# IR_VAR_REF
 xchain28_n36_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain28_n39_α
 xchain28_n36_β:
 jmp xchain28_n31_α
# IR_LIT_STRING
 xchain28_n37_α:
 mov qword ptr [rbp + 3328], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 3336], rax
 jmp xchain28_n40_α
 xchain28_n37_β:
 jmp proc_interpret$2_ω
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "->"
 xchain28_n38_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4512] -> [zr+4480]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4488], rax
  .section .rodata
  .Lrkfn101: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 4480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je xchain28_n42_α
 jmp xchain28_n41_α
 xchain28_n38_β:
 jmp xchain28_n42_α
 xchain28_n39_α:
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
  .section .rodata
  .Lrkfn103: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn103]
 lea rsi, [rbp + 3616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain28_n31_α
 jmp xchain28_n43_α
 xchain28_n39_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n40_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain28_n44_α
 xchain28_n40_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n41_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain28_n45_α
 xchain28_n41_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n42_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain28_n46_α
 xchain28_n42_β:
 jmp xchain28_n16_α
 xchain28_n43_α:
# IR_CUT
 jmp xchain28_n47_α
 xchain28_n43_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n44_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain28_n48_α
 xchain28_n44_β:
 jmp proc_interpret$2_ω
# IR_LIT_STRING
 xchain28_n45_α:
 mov qword ptr [rbp + 4288], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain28_n49_α
 xchain28_n45_β:
 jmp proc_interpret$2_ω
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string ","
# IR_VAR_REF
 xchain28_n46_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain28_n50_α
 xchain28_n46_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n47_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain28_n51_α
 xchain28_n47_β:
 jmp xchain28_n16_α
 xchain28_n48_α:
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
  .section .rodata
  .Lrkfn119: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn119]
 lea rsi, [rbp + 3264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain28_n53_α
 jmp xchain28_n52_α
 xchain28_n48_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n49_α:
 lea rdi, [rbp + 5568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain28_n54_α
 xchain28_n49_β:
 jmp proc_interpret$2_ω
 xchain28_n50_α:
 mov qword ptr [rbp + 4368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4432]
 mov rdx, qword ptr [rbp + 4440]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx123_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx123_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx123_3]
 lea rdx, [rip + .Lx123_4]
 jmp rax
.Lx123_3:
 mov qword ptr [rbp + 4376], rsp
 mov rax, qword ptr [rbp + 4368]
 test rax, rax
 jne .Lx123_5
 mov qword ptr [rbp + 4368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx123_2
.Lx123_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx123_2
.Lx123_4:
 mov rax, qword ptr [rbp + 4368]
 test rax, rax
 jne .Lx123_6
 mov qword ptr [rbp + 4368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx123_2
.Lx123_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx123_2
.Lx123_1:
 call rt_faildescr@PLT
.Lx123_2:
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain28_n32_β
 jmp xchain28_n55_α
 xchain28_n50_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4376]
 jmp qword ptr [rsp]
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain28_n51_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain28_n56_α
 xchain28_n51_β:
 jmp xchain28_n16_α
 xchain28_n52_α:
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
  .section .rodata
  .Lrkfn127: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn127]
 lea rsi, [rbp + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je xchain28_n53_α
 jmp xchain28_n57_α
 xchain28_n52_β:
 jmp xchain28_n53_α
 xchain28_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2592]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2600], rax
  .section .rodata
  .Lrkfn129: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn129]
 lea rsi, [rbp + 2592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n58_α
 xchain28_n53_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n54_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain28_n59_α
 xchain28_n54_β:
 jmp proc_interpret$2_ω
# IR_SUSPEND yield+resume
 xchain28_n55_α:
 lea rax, [rip + xchain28_n55_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n55_β:
 jmp xchain28_n32_β
# IR_VAR_REF
 xchain28_n56_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain28_n60_α
 xchain28_n56_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n57_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain28_n61_α
 xchain28_n57_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n58_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain28_n62_α
 xchain28_n58_β:
 jmp xchain28_n71_α
 xchain28_n59_α:
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
  .section .rodata
  .Lrkfn141: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn141]
 lea rsi, [rbp + 4224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n63_α
 xchain28_n59_β:
 jmp xchain28_n16_α
 xchain28_n60_α:
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
 mov rdi, qword ptr [rip + .Lx143_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx143_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx143_3]
 lea rdx, [rip + .Lx143_4]
 jmp rax
.Lx143_3:
 mov qword ptr [rbp + 3480], rsp
 mov rax, qword ptr [rbp + 3472]
 test rax, rax
 jne .Lx143_5
 mov qword ptr [rbp + 3472], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx143_2
.Lx143_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx143_2
.Lx143_4:
 mov rax, qword ptr [rbp + 3472]
 test rax, rax
 jne .Lx143_6
 mov qword ptr [rbp + 3472], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx143_2
.Lx143_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx143_2
.Lx143_1:
 call rt_faildescr@PLT
.Lx143_2:
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n64_α
 xchain28_n60_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3480]
 jmp qword ptr [rsp]
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "interpret_disjunction/3"
# IR_VAR_REF
 xchain28_n61_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain28_n65_α
 xchain28_n61_β:
 jmp xchain28_n53_α
# IR_LIT_STRING
 xchain28_n62_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain28_n66_α
 xchain28_n62_β:
 jmp proc_interpret$2_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "\\+"
 xchain28_n63_α:
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
  .section .rodata
  .Lrkfn148: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn148]
 lea rsi, [rbp + 4064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n55_α
 xchain28_n63_β:
 jmp xchain28_n16_α
# IR_SUSPEND yield+resume
 xchain28_n64_α:
 lea rax, [rip + xchain28_n64_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n64_β:
 jmp xchain28_n60_β
 xchain28_n65_α:
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
  .section .rodata
  .Lrkfn152: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn152]
 lea rsi, [rbp + 2976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain28_n53_α
 jmp xchain28_n67_α
 xchain28_n65_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n66_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain28_n68_α
 xchain28_n66_β:
 jmp proc_interpret$2_ω
 xchain28_n67_α:
# IR_CUT
 jmp xchain28_n69_α
 xchain28_n67_β:
 jmp xchain28_n53_α
 xchain28_n68_α:
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
  .section .rodata
  .Lrkfn157: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn157]
 lea rsi, [rbp + 2496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain28_n71_α
 jmp xchain28_n70_α
 xchain28_n68_β:
 jmp xchain28_n71_α
# IR_LIT_STRING
 xchain28_n69_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain28_n72_α
 xchain28_n69_β:
 jmp proc_interpret$2_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "->"
 xchain28_n70_α:
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
  .section .rodata
  .Lrkfn160: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn160]
 lea rsi, [rbp + 2368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain28_n71_α
 jmp xchain28_n73_α
 xchain28_n70_β:
 jmp xchain28_n71_α
 xchain28_n71_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1856]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1864], rax
  .section .rodata
  .Lrkfn162: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 1856]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n74_α
 xchain28_n71_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n72_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain28_n75_α
 xchain28_n72_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n73_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain28_n76_α
 xchain28_n73_β:
 jmp xchain28_n71_α
# IR_VAR_REF
 xchain28_n74_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain28_n77_α
 xchain28_n74_β:
 jmp xchain28_n84_α
# IR_VAR_REF
 xchain28_n75_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain28_n78_α
 xchain28_n75_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n76_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain28_n79_α
 xchain28_n76_β:
 jmp xchain28_n71_α
# IR_LIT_STRING
 xchain28_n77_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain28_n80_α
 xchain28_n77_β:
 jmp xchain28_n84_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "?"
 xchain28_n78_α:
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
  .section .rodata
  .Lrkfn175: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn175]
 lea rsi, [rbp + 2800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n81_α
 xchain28_n78_β:
 jmp xchain28_n16_α
 xchain28_n79_α:
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
  .section .rodata
  .Lrkfn177: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn177]
 lea rsi, [rbp + 2240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain28_n71_α
 jmp xchain28_n82_α
 xchain28_n79_β:
 jmp xchain28_n71_α
 xchain28_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1744]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
  .section .rodata
  .Lrkfn179: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn179]
 lea rsi, [rbp + 1728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain28_n84_α
 jmp xchain28_n83_α
 xchain28_n80_β:
 jmp xchain28_n84_α
# IR_LIT_STRING
 xchain28_n81_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain28_n85_α
 xchain28_n81_β:
 jmp xchain28_n16_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "fail"
 xchain28_n82_α:
# IR_CUT
 jmp xchain28_n86_α
 xchain28_n82_β:
 jmp xchain28_n71_α
# IR_VAR_REF
 xchain28_n83_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain28_n87_α
 xchain28_n83_β:
 jmp xchain28_n84_α
 xchain28_n84_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1552]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn185: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn185]
 lea rsi, [rbp + 1552]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n88_α
 xchain28_n84_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n85_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain28_n89_α
 xchain28_n85_β:
 jmp xchain28_n16_α
# IR_LIT_STRING
 xchain28_n86_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain28_n90_α
 xchain28_n86_β:
 jmp proc_interpret$2_ω
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "->"
# IR_LIT_STRING
 xchain28_n87_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain28_n91_α
 xchain28_n87_β:
 jmp xchain28_n84_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "true"
# IR_VAR_REF
 xchain28_n88_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain28_n92_α
 xchain28_n88_β:
 jmp xchain28_n100_α
 xchain28_n89_α:
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
 mov rdi, qword ptr [rip + .Lx193_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx193_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx193_3]
 lea rdx, [rip + .Lx193_4]
 jmp rax
.Lx193_3:
 mov qword ptr [rbp + 2696], rsp
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx193_5
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx193_2
.Lx193_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx193_2
.Lx193_4:
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx193_6
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx193_2
.Lx193_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx193_2
.Lx193_1:
 call rt_faildescr@PLT
.Lx193_2:
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n93_α
 xchain28_n89_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2696]
 jmp qword ptr [rsp]
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "interpret_disjunction/3"
# IR_VAR_REF
 xchain28_n90_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain28_n94_α
 xchain28_n90_β:
 jmp proc_interpret$2_ω
 xchain28_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
  .section .rodata
  .Lrkfn197: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn197]
 lea rsi, [rbp + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain28_n84_α
 jmp xchain28_n95_α
 xchain28_n91_β:
 jmp xchain28_n84_α
# IR_VAR_REF
 xchain28_n92_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain28_n96_α
 xchain28_n92_β:
 jmp xchain28_n100_α
# IR_SUSPEND yield+resume
 xchain28_n93_α:
 lea rax, [rip + xchain28_n93_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n93_β:
 jmp xchain28_n89_β
# IR_LIT_STRING
 xchain28_n94_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain28_n97_α
 xchain28_n94_β:
 jmp proc_interpret$2_ω
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "fail"
 xchain28_n95_α:
# IR_CUT
 jmp xchain28_n98_α
 xchain28_n95_β:
 jmp xchain28_n84_α
 xchain28_n96_α:
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
  .section .rodata
  .Lrkfn205: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn205]
 lea rsi, [rbp + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain28_n100_α
 jmp xchain28_n99_α
 xchain28_n96_β:
 jmp xchain28_n100_α
 xchain28_n97_α:
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
  .section .rodata
  .Lrkfn207: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 2064]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n101_α
 xchain28_n97_β:
 jmp xchain28_n16_α
# IR_SUSPEND yield+resume
 xchain28_n98_α:
 lea rax, [rip + xchain28_n98_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n98_β:
 jmp xchain28_n84_α
# IR_VAR_REF
 xchain28_n99_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain28_n102_α
 xchain28_n99_β:
 jmp xchain28_n100_α
 xchain28_n100_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1176], rax
  .section .rodata
  .Lrkfn213: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn213]
 lea rsi, [rbp + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n103_α
 xchain28_n100_β:
 jmp proc_interpret$2_ω
# IR_LIT_STRING
 xchain28_n101_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain28_n104_α
 xchain28_n101_β:
 jmp xchain28_n16_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "true"
# IR_VAR_REF
 xchain28_n102_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain28_n105_α
 xchain28_n102_β:
 jmp xchain28_n100_α
# IR_VAR_REF
 xchain28_n103_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain28_n106_α
 xchain28_n103_β:
 jmp xchain28_n113_α
# IR_VAR_REF
 xchain28_n104_α:
 lea rdi, [rbp + 5552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain28_n107_α
 xchain28_n104_β:
 jmp xchain28_n16_α
 xchain28_n105_α:
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
  .section .rodata
  .Lrkfn222: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn222]
 lea rsi, [rbp + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain28_n100_α
 jmp xchain28_n108_α
 xchain28_n105_β:
 jmp xchain28_n100_α
# IR_VAR_REF
 xchain28_n106_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain28_n109_α
 xchain28_n106_β:
 jmp xchain28_n113_α
 xchain28_n107_α:
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
 mov rdi, qword ptr [rip + .Lx226_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx226_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx226_3]
 lea rdx, [rip + .Lx226_4]
 jmp rax
.Lx226_3:
 mov qword ptr [rbp + 1960], rsp
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx226_5
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx226_2
.Lx226_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx226_2
.Lx226_4:
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx226_6
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx226_2
.Lx226_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx226_2
.Lx226_1:
 call rt_faildescr@PLT
.Lx226_2:
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n110_α
 xchain28_n107_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1960]
 jmp qword ptr [rsp]
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "interpret_disjunction/3"
# IR_VAR_REF
 xchain28_n108_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain28_n111_α
 xchain28_n108_β:
 jmp xchain28_n100_α
 xchain28_n109_α:
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
  .section .rodata
  .Lrkfn230: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn230]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain28_n113_α
 jmp xchain28_n112_α
 xchain28_n109_β:
 jmp xchain28_n113_α
# IR_SUSPEND yield+resume
 xchain28_n110_α:
 lea rax, [rip + xchain28_n110_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n110_β:
 jmp xchain28_n107_β
 xchain28_n111_α:
# BOX IR_CALL $tt_number(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn234: .string "$tt_number"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain28_n100_α
 jmp xchain28_n114_α
 xchain28_n111_β:
 jmp xchain28_n100_α
# IR_VAR_REF
 xchain28_n112_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain28_n115_α
 xchain28_n112_β:
 jmp xchain28_n113_α
 xchain28_n113_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn238: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn238]
 lea rsi, [rbp + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n116_α
 xchain28_n113_β:
 jmp proc_interpret$2_ω
 xchain28_n114_α:
# IR_CUT
 jmp xchain28_n16_α
 xchain28_n114_β:
 jmp xchain28_n100_α
# IR_VAR_REF
 xchain28_n115_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain28_n117_α
 xchain28_n115_β:
 jmp xchain28_n113_α
# IR_VAR_REF
 xchain28_n116_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain28_n118_α
 xchain28_n116_β:
 jmp xchain28_n16_α
 xchain28_n117_α:
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
  .section .rodata
  .Lrkfn245: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain28_n113_α
 jmp xchain28_n119_α
 xchain28_n117_β:
 jmp xchain28_n113_α
# IR_VAR_REF
 xchain28_n118_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain28_n120_α
 xchain28_n118_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n119_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain28_n121_α
 xchain28_n119_β:
 jmp xchain28_n113_α
 xchain28_n120_α:
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
  .section .rodata
  .Lrkfn251: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn251]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n122_α
 xchain28_n120_β:
 jmp xchain28_n16_α
 xchain28_n121_α:
 mov qword ptr [rbp + 832], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx253_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx253_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx253_3]
 lea rdx, [rip + .Lx253_4]
 jmp rax
.Lx253_3:
 mov qword ptr [rbp + 840], rsp
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx253_5
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx253_2
.Lx253_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx253_2
.Lx253_4:
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx253_6
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx253_2
.Lx253_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx253_2
.Lx253_1:
 call rt_faildescr@PLT
.Lx253_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain28_n113_α
 jmp xchain28_n123_α
 xchain28_n121_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 840]
 jmp qword ptr [rsp]
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "is_built_in/1"
# IR_VAR_REF
 xchain28_n122_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain28_n124_α
 xchain28_n122_β:
 jmp xchain28_n16_α
 xchain28_n123_α:
# IR_CUT
 jmp xchain28_n125_α
 xchain28_n123_β:
 jmp xchain28_n121_β
# IR_VAR_REF
 xchain28_n124_α:
 lea rdi, [rbp + 5536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain28_n126_α
 xchain28_n124_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n125_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain28_n127_α
 xchain28_n125_β:
 jmp xchain28_n16_α
 xchain28_n126_α:
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
  .section .rodata
  .Lrkfn262: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn262]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n128_α
 xchain28_n126_β:
 jmp xchain28_n16_α
 xchain28_n127_α:
 mov qword ptr [rbp + 736], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx264_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx264_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx264_3]
 lea rdx, [rip + .Lx264_4]
 jmp rax
.Lx264_3:
 mov qword ptr [rbp + 744], rsp
 mov rax, qword ptr [rbp + 736]
 test rax, rax
 jne .Lx264_5
 mov qword ptr [rbp + 736], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx264_2
.Lx264_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx264_2
.Lx264_4:
 mov rax, qword ptr [rbp + 736]
 test rax, rax
 jne .Lx264_6
 mov qword ptr [rbp + 736], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx264_2
.Lx264_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx264_2
.Lx264_1:
 call rt_faildescr@PLT
.Lx264_2:
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n129_α
 xchain28_n127_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 744]
 jmp qword ptr [rsp]
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "interpret_built_in/1"
# IR_VAR_REF
 xchain28_n128_α:
 lea rdi, [rbp + 5520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain28_n130_α
 xchain28_n128_β:
 jmp xchain28_n16_α
# IR_SUSPEND yield+resume
 xchain28_n129_α:
 lea rax, [rip + xchain28_n129_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n129_β:
 jmp xchain28_n127_β
# IR_VAR_REF
 xchain28_n130_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain28_n131_α
 xchain28_n130_β:
 jmp xchain28_n16_α
 xchain28_n131_α:
 mov qword ptr [rbp + 304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx272_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx272_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx272_3]
 lea rdx, [rip + .Lx272_4]
 jmp rax
.Lx272_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx272_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx272_2
.Lx272_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx272_2
.Lx272_4:
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx272_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx272_2
.Lx272_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx272_2
.Lx272_1:
 call rt_faildescr@PLT
.Lx272_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n132_α
 xchain28_n131_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "define/2"
# IR_VAR_REF
 xchain28_n132_α:
 lea rdi, [rbp + 5504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain28_n133_α
 xchain28_n132_β:
 jmp xchain28_n16_α
 xchain28_n133_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx276_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx276_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx276_3]
 lea rdx, [rip + .Lx276_4]
 jmp rax
.Lx276_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx276_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx276_2
.Lx276_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx276_2
.Lx276_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx276_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx276_2
.Lx276_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx276_2
.Lx276_1:
 call rt_faildescr@PLT
.Lx276_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain28_n131_β
 jmp xchain28_n134_α
 xchain28_n133_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain28_n134_α:
 lea rax, [rip + xchain28_n134_β]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2_γ
 xchain28_n134_β:
 jmp xchain28_n133_β
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
  mov rdi, rsp
  mov ecx, 656
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 656
  call rt_jmp_frame_lexprep@PLT
proc_is_built_in$1_α_body:
lea rax, [rip + xchain279_n4_β]
mov qword ptr [rbp + 592], rax
 xchain279_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn281: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn281]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp xchain279_n1_α
 xchain279_n0_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain279_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain279_n2_α
 xchain279_n1_β:
 jmp xchain279_n5_α
# IR_LIT_STRING
 xchain279_n2_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain279_n3_α
 xchain279_n2_β:
 jmp xchain279_n5_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "true"
 xchain279_n3_α:
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
  .section .rodata
  .Lrkfn286: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn286]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain279_n5_α
 jmp xchain279_n4_α
 xchain279_n3_β:
 jmp xchain279_n5_α
# IR_SUSPEND yield+resume
 xchain279_n4_α:
 lea rax, [rip + xchain279_n4_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$1_γ
 xchain279_n4_β:
 jmp xchain279_n5_α
 xchain279_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn290: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn290]
 lea rsi, [rbp + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp xchain279_n6_α
 xchain279_n5_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain279_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain279_n7_α
 xchain279_n6_β:
 jmp xchain279_n12_α
# IR_LIT_STRING
 xchain279_n7_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain279_n8_α
 xchain279_n7_β:
 jmp proc_is_built_in$1_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "=<"
# IR_VAR_REF
 xchain279_n8_α:
 lea rdi, [rbp + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain279_n9_α
 xchain279_n8_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain279_n9_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain279_n10_α
 xchain279_n9_β:
 jmp proc_is_built_in$1_ω
 xchain279_n10_α:
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
  .section .rodata
  .Lrkfn299: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn299]
 lea rsi, [rbp + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain279_n12_α
 jmp xchain279_n11_α
 xchain279_n10_β:
 jmp xchain279_n12_α
 xchain279_n11_α:
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
  .section .rodata
  .Lrkfn301: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain279_n12_α
 jmp xchain279_n13_α
 xchain279_n11_β:
 jmp xchain279_n12_α
 xchain279_n12_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn303: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn303]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp proc_is_built_in$1_ω
 xchain279_n12_β:
 jmp proc_is_built_in$1_ω
# IR_SUSPEND yield+resume
 xchain279_n13_α:
 lea rax, [rip + xchain279_n13_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$1_γ
 xchain279_n13_β:
 jmp xchain279_n12_α
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
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
  mov rdi, rsp
  mov esi, 256
  call rt_jmp_frame_lexprep@PLT
proc_meta_qsort$0_α_body:
lea rax, [rip + xchain306_n3_β]
mov qword ptr [rbp + 224], rax
 xchain306_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn308: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn308]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_meta_qsort$0_ω
 jmp xchain306_n1_α
 xchain306_n0_β:
 jmp proc_meta_qsort$0_ω
# IR_LIT_STRING
 xchain306_n1_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain306_n2_α
 xchain306_n1_β:
 jmp xchain306_n4_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "qsort"
 xchain306_n2_α:
 mov qword ptr [rbp + 160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx311_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx311_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx311_3]
 lea rdx, [rip + .Lx311_4]
 jmp rax
.Lx311_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx311_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx311_2
.Lx311_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx311_2
.Lx311_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx311_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx311_2
.Lx311_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx311_2
.Lx311_1:
 call rt_faildescr@PLT
.Lx311_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain306_n4_α
 jmp xchain306_n3_α
 xchain306_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain306_n3_α:
 lea rax, [rip + xchain306_n3_β]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_meta_qsort$0_γ
 xchain306_n3_β:
 jmp xchain306_n2_β
 xchain306_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn315: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn315]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_meta_qsort$0_ω
 jmp proc_meta_qsort$0_ω
 xchain306_n4_β:
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
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13144], rsp
  mov rdi, rsp
  mov esi, 13264
  call rt_jmp_frame_lexprep@PLT
proc_define$2_α_body:
lea rax, [rip + xchain316_n63_β]
mov qword ptr [rbp + 13120], rax
 xchain316_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn318: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn318]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n1_α
 xchain316_n0_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 13056], rax
 mov qword ptr [rbp + 13064], rdx
 jmp xchain316_n2_α
 xchain316_n1_β:
 jmp xchain316_n5_α
# IR_LIT_STRING
 xchain316_n2_α:
 mov qword ptr [rbp + 13088], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain316_n3_α
 xchain316_n2_β:
 jmp xchain316_n5_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "qsort"
 xchain316_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13056] -> [zr+13008]
 mov rax, qword ptr [rbp + 13056]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 13064]
 mov qword ptr [rbp + 13016], rax
# marshal arg1 = producer-box slot [zr+13088] -> [zr+13024]
 mov rax, qword ptr [rbp + 13088]
 mov qword ptr [rbp + 13024], rax
 mov rax, qword ptr [rbp + 13096]
 mov qword ptr [rbp + 13032], rax
  .section .rodata
  .Lrkfn323: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn323]
 lea rsi, [rbp + 13008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12992], rax
 mov qword ptr [rbp + 13000], rdx
 cmp eax, 99
 je xchain316_n5_α
 jmp xchain316_n4_α
 xchain316_n3_β:
 jmp xchain316_n5_α
# IR_VAR_REF
 xchain316_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain316_n6_α
 xchain316_n4_β:
 jmp xchain316_n5_α
 xchain316_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5440]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5448], rax
  .section .rodata
  .Lrkfn327: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn327]
 lea rsi, [rbp + 5440]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n7_α
 xchain316_n5_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n6_α:
 mov qword ptr [rbp + 12960], 1
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [rbp + 12968], rax
 jmp xchain316_n8_α
 xchain316_n6_β:
 jmp proc_define$2_ω
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain316_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain316_n9_α
 xchain316_n7_β:
 jmp xchain316_n26_α
# IR_LIT_STRING
 xchain316_n8_α:
 mov qword ptr [rbp + 12768], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 12776], rax
 jmp xchain316_n10_α
 xchain316_n8_β:
 jmp proc_define$2_ω
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n9_α:
 mov qword ptr [rbp + 5392], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [rbp + 5400], rax
 jmp xchain316_n11_α
 xchain316_n9_β:
 jmp proc_define$2_ω
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain316_n10_α:
 mov qword ptr [rbp + 12656], 6
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 12664], rax
 jmp xchain316_n12_α
 xchain316_n10_β:
 jmp proc_define$2_ω
.Lx333_0:
 .quad 27
# IR_LIT_STRING
 xchain316_n11_α:
 mov qword ptr [rbp + 5200], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 5208], rax
 jmp xchain316_n13_α
 xchain316_n11_β:
 jmp proc_define$2_ω
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n12_α:
 mov qword ptr [rbp + 12624], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [rbp + 12632], rax
 jmp xchain316_n14_α
 xchain316_n12_β:
 jmp proc_define$2_ω
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n13_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain316_n15_α
 xchain316_n13_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n14_α:
 mov qword ptr [rbp + 12512], 6
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [rbp + 12520], rax
 jmp xchain316_n16_α
 xchain316_n14_β:
 jmp proc_define$2_ω
.Lx338_0:
 .quad 74
# IR_VAR_REF
 xchain316_n15_α:
 lea rdi, [rbp + 13168]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain316_n17_α
 xchain316_n15_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n16_α:
 mov qword ptr [rbp + 12480], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 12488], rax
 jmp xchain316_n18_α
 xchain316_n16_β:
 jmp proc_define$2_ω
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "."
 xchain316_n17_α:
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
  .section .rodata
  .Lrkfn343: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn343]
 lea rsi, [rbp + 5136]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n19_α
 xchain316_n17_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n18_α:
 mov qword ptr [rbp + 12368], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain316_n20_α
 xchain316_n18_β:
 jmp proc_define$2_ω
.Lx344_0:
 .quad 17
# IR_VAR_REF
 xchain316_n19_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 jmp xchain316_n21_α
 xchain316_n19_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n20_α:
 mov qword ptr [rbp + 12336], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 12344], rax
 jmp xchain316_n22_α
 xchain316_n20_β:
 jmp proc_define$2_ω
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n21_α:
 lea rdi, [rbp + 13200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 jmp xchain316_n23_α
 xchain316_n21_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n22_α:
 mov qword ptr [rbp + 12224], 6
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [rbp + 12232], rax
 jmp xchain316_n24_α
 xchain316_n22_β:
 jmp proc_define$2_ω
.Lx350_0:
 .quad 33
 xchain316_n23_α:
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
  .section .rodata
  .Lrkfn352: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn352]
 lea rsi, [rbp + 5312]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 cmp eax, 99
 je xchain316_n26_α
 jmp xchain316_n25_α
 xchain316_n23_β:
 jmp xchain316_n26_α
# IR_LIT_STRING
 xchain316_n24_α:
 mov qword ptr [rbp + 12192], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [rbp + 12200], rax
 jmp xchain316_n27_α
 xchain316_n24_β:
 jmp proc_define$2_ω
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "."
 xchain316_n25_α:
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
  .section .rodata
  .Lrkfn355: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn355]
 lea rsi, [rbp + 4976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 cmp eax, 99
 je xchain316_n26_α
 jmp xchain316_n28_α
 xchain316_n25_β:
 jmp xchain316_n26_α
 xchain316_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3744]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3752], rax
  .section .rodata
  .Lrkfn357: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn357]
 lea rsi, [rbp + 3744]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n29_α
 xchain316_n26_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n27_α:
 mov qword ptr [rbp + 12080], 6
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 12088], rax
 jmp xchain316_n30_α
 xchain316_n27_β:
 jmp proc_define$2_ω
.Lx358_0:
 .quad 94
# IR_VAR_REF
 xchain316_n28_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain316_n31_α
 xchain316_n28_β:
 jmp xchain316_n26_α
# IR_VAR_REF
 xchain316_n29_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain316_n32_α
 xchain316_n29_β:
 jmp xchain316_n48_α
# IR_LIT_STRING
 xchain316_n30_α:
 mov qword ptr [rbp + 12048], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 12056], rax
 jmp xchain316_n33_α
 xchain316_n30_β:
 jmp proc_define$2_ω
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n31_α:
 mov qword ptr [rbp + 4928], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 4936], rax
 jmp xchain316_n34_α
 xchain316_n31_β:
 jmp proc_define$2_ω
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string ","
# IR_LIT_STRING
 xchain316_n32_α:
 mov qword ptr [rbp + 3696], 1
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain316_n35_α
 xchain316_n32_β:
 jmp proc_define$2_ω
.Lx365_0:
 .quad .Lx365_0_s
.Lx365_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain316_n33_α:
 mov qword ptr [rbp + 11936], 6
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [rbp + 11944], rax
 jmp xchain316_n36_α
 xchain316_n33_β:
 jmp proc_define$2_ω
.Lx366_0:
 .quad 18
# IR_LIT_STRING
 xchain316_n34_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain316_n37_α
 xchain316_n34_β:
 jmp proc_define$2_ω
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain316_n35_α:
 mov qword ptr [rbp + 3504], 1
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain316_n38_α
 xchain316_n35_β:
 jmp proc_define$2_ω
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain316_n36_α:
 mov qword ptr [rbp + 11904], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 11912], rax
 jmp xchain316_n39_α
 xchain316_n36_β:
 jmp proc_define$2_ω
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n37_α:
 lea rdi, [rbp + 13168]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain316_n40_α
 xchain316_n37_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n38_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain316_n41_α
 xchain316_n38_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n39_α:
 mov qword ptr [rbp + 11792], 6
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [rbp + 11800], rax
 jmp xchain316_n42_α
 xchain316_n39_β:
 jmp proc_define$2_ω
.Lx374_0:
 .quad 46
# IR_VAR_REF
 xchain316_n40_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain316_n43_α
 xchain316_n40_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n41_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain316_n44_α
 xchain316_n41_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n42_α:
 mov qword ptr [rbp + 11760], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [rbp + 11768], rax
 jmp xchain316_n45_α
 xchain316_n42_β:
 jmp proc_define$2_ω
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n43_α:
 lea rdi, [rbp + 13216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain316_n46_α
 xchain316_n43_β:
 jmp proc_define$2_ω
 xchain316_n44_α:
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
  .section .rodata
  .Lrkfn383: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn383]
 lea rsi, [rbp + 3616]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain316_n48_α
 jmp xchain316_n47_α
 xchain316_n44_β:
 jmp xchain316_n48_α
# IR_LIT_INTEGER
 xchain316_n45_α:
 mov qword ptr [rbp + 11648], 6
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 11656], rax
 jmp xchain316_n49_α
 xchain316_n45_β:
 jmp proc_define$2_ω
.Lx384_0:
 .quad 83
# IR_VAR_REF
 xchain316_n46_α:
 lea rdi, [rbp + 13232]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 jmp xchain316_n50_α
 xchain316_n46_β:
 jmp proc_define$2_ω
 xchain316_n47_α:
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
  .section .rodata
  .Lrkfn388: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn388]
 lea rsi, [rbp + 3424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain316_n48_α
 jmp xchain316_n51_α
 xchain316_n47_β:
 jmp xchain316_n48_α
 xchain316_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3248]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3256], rax
  .section .rodata
  .Lrkfn390: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn390]
 lea rsi, [rbp + 3248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n52_α
 xchain316_n48_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n49_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain316_n53_α
 xchain316_n49_β:
 jmp proc_define$2_ω
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "."
 xchain316_n50_α:
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
  .section .rodata
  .Lrkfn393: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn393]
 lea rsi, [rbp + 4016]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n54_α
 xchain316_n50_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n51_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain316_n55_α
 xchain316_n51_β:
 jmp xchain316_n48_α
# IR_VAR_REF
 xchain316_n52_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain316_n56_α
 xchain316_n52_β:
 jmp xchain316_n95_α
# IR_LIT_INTEGER
 xchain316_n53_α:
 mov qword ptr [rbp + 11504], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain316_n57_α
 xchain316_n53_β:
 jmp proc_define$2_ω
.Lx398_0:
 .quad 65
# IR_LIT_STRING
 xchain316_n54_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain316_n58_α
 xchain316_n54_β:
 jmp proc_define$2_ω
.Lx399_0:
 .quad .Lx399_0_s
.Lx399_0_s:
 .string ","
# IR_LIT_STRING
 xchain316_n55_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain316_n59_α
 xchain316_n55_β:
 jmp xchain316_n48_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "true"
# IR_LIT_STRING
 xchain316_n56_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain316_n60_α
 xchain316_n56_β:
 jmp proc_define$2_ω
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain316_n57_α:
 mov qword ptr [rbp + 11472], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [rbp + 11480], rax
 jmp xchain316_n61_α
 xchain316_n57_β:
 jmp proc_define$2_ω
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n58_α:
 mov qword ptr [rbp + 4336], 1
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [rbp + 4344], rax
 jmp xchain316_n62_α
 xchain316_n58_β:
 jmp proc_define$2_ω
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "qsort"
 xchain316_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3296]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3304], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3312]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3320], rax
  .section .rodata
  .Lrkfn405: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn405]
 lea rsi, [rbp + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain316_n48_α
 jmp xchain316_n63_α
 xchain316_n59_β:
 jmp xchain316_n48_α
# IR_LIT_STRING
 xchain316_n60_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain316_n64_α
 xchain316_n60_β:
 jmp proc_define$2_ω
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n61_α:
 mov qword ptr [rbp + 11360], 6
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 11368], rax
 jmp xchain316_n65_α
 xchain316_n61_β:
 jmp proc_define$2_ω
.Lx407_0:
 .quad 2
# IR_VAR_REF
 xchain316_n62_α:
 lea rdi, [rbp + 13232]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain316_n66_α
 xchain316_n62_β:
 jmp proc_define$2_ω
# IR_SUSPEND yield+resume
 xchain316_n63_α:
 lea rax, [rip + xchain316_n63_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain316_n63_β:
 jmp xchain316_n48_α
# IR_VAR_REF
 xchain316_n64_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain316_n67_α
 xchain316_n64_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n65_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx414_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain316_n68_α
 xchain316_n65_β:
 jmp proc_define$2_ω
.Lx414_0:
 .quad .Lx414_0_s
.Lx414_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n66_α:
 lea rdi, [rbp + 13248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain316_n69_α
 xchain316_n66_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n67_α:
 lea rdi, [rbp + 13168]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain316_n70_α
 xchain316_n67_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n68_α:
 mov qword ptr [rbp + 11216], 6
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 11224], rax
 jmp xchain316_n71_α
 xchain316_n68_β:
 jmp proc_define$2_ω
.Lx419_0:
 .quad 32
# IR_VAR_REF
 xchain316_n69_α:
 lea rdi, [rbp + 13200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain316_n72_α
 xchain316_n69_β:
 jmp proc_define$2_ω
 xchain316_n70_α:
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
  .section .rodata
  .Lrkfn423: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn423]
 lea rsi, [rbp + 2752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n73_α
 xchain316_n70_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n71_α:
 mov qword ptr [rbp + 11184], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 11192], rax
 jmp xchain316_n74_α
 xchain316_n71_β:
 jmp proc_define$2_ω
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "."
 xchain316_n72_α:
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
  .section .rodata
  .Lrkfn426: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn426]
 lea rsi, [rbp + 4256]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n75_α
 xchain316_n72_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n73_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain316_n76_α
 xchain316_n73_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n74_α:
 mov qword ptr [rbp + 11072], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain316_n77_α
 xchain316_n74_β:
 jmp proc_define$2_ω
.Lx429_0:
 .quad 53
# IR_LIT_STRING
 xchain316_n75_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain316_n78_α
 xchain316_n75_β:
 jmp proc_define$2_ω
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain316_n76_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain316_n79_α
 xchain316_n76_β:
 jmp proc_define$2_ω
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n77_α:
 mov qword ptr [rbp + 11040], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 11048], rax
 jmp xchain316_n80_α
 xchain316_n77_β:
 jmp proc_define$2_ω
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n78_α:
 lea rdi, [rbp + 13216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain316_n81_α
 xchain316_n78_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n79_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain316_n82_α
 xchain316_n79_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n80_α:
 mov qword ptr [rbp + 10928], 6
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 10936], rax
 jmp xchain316_n83_α
 xchain316_n80_β:
 jmp proc_define$2_ω
.Lx437_0:
 .quad 28
# IR_VAR_REF
 xchain316_n81_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain316_n84_α
 xchain316_n81_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n82_α:
 lea rdi, [rbp + 13200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain316_n85_α
 xchain316_n82_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n83_α:
 mov qword ptr [rbp + 10896], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [rbp + 10904], rax
 jmp xchain316_n86_α
 xchain316_n83_β:
 jmp proc_define$2_ω
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n84_α:
 mov qword ptr [rbp + 4576], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain316_n87_α
 xchain316_n84_β:
 jmp proc_define$2_ω
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "."
 xchain316_n85_α:
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
  .section .rodata
  .Lrkfn445: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn445]
 lea rsi, [rbp + 2960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n88_α
 xchain316_n85_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n86_α:
 mov qword ptr [rbp + 10784], 6
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 10792], rax
 jmp xchain316_n89_α
 xchain316_n86_β:
 jmp proc_define$2_ω
.Lx446_0:
 .quad 85
# IR_VAR_REF
 xchain316_n87_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain316_n90_α
 xchain316_n87_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n88_α:
 lea rdi, [rbp + 13216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain316_n91_α
 xchain316_n88_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n89_α:
 mov qword ptr [rbp + 10752], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 10760], rax
 jmp xchain316_n92_α
 xchain316_n89_β:
 jmp proc_define$2_ω
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n90_α:
 lea rdi, [rbp + 13248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain316_n93_α
 xchain316_n90_β:
 jmp proc_define$2_ω
 xchain316_n91_α:
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
  .section .rodata
  .Lrkfn455: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn455]
 lea rsi, [rbp + 3104]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je xchain316_n95_α
 jmp xchain316_n94_α
 xchain316_n91_β:
 jmp xchain316_n95_α
# IR_LIT_INTEGER
 xchain316_n92_α:
 mov qword ptr [rbp + 10640], 6
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain316_n96_α
 xchain316_n92_β:
 jmp proc_define$2_ω
.Lx456_0:
 .quad 99
 xchain316_n93_α:
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
  .section .rodata
  .Lrkfn458: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn458]
 lea rsi, [rbp + 4512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n97_α
 xchain316_n93_β:
 jmp proc_define$2_ω
 xchain316_n94_α:
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
  .section .rodata
  .Lrkfn460: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn460]
 lea rsi, [rbp + 2592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain316_n95_α
 jmp xchain316_n98_α
 xchain316_n94_β:
 jmp xchain316_n95_α
 xchain316_n95_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1744]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1752], rax
  .section .rodata
  .Lrkfn462: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn462]
 lea rsi, [rbp + 1744]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n99_α
 xchain316_n95_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n96_α:
 mov qword ptr [rbp + 10608], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [rbp + 10616], rax
 jmp xchain316_n100_α
 xchain316_n96_β:
 jmp proc_define$2_ω
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "."
 xchain316_n97_α:
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
  .section .rodata
  .Lrkfn465: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn465]
 lea rsi, [rbp + 4624]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n101_α
 xchain316_n97_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n98_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain316_n102_α
 xchain316_n98_β:
 jmp xchain316_n95_α
# IR_VAR_REF
 xchain316_n99_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain316_n103_α
 xchain316_n99_β:
 jmp xchain316_n143_α
# IR_LIT_INTEGER
 xchain316_n100_α:
 mov qword ptr [rbp + 10496], 6
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [rbp + 10504], rax
 jmp xchain316_n104_α
 xchain316_n100_β:
 jmp proc_define$2_ω
.Lx470_0:
 .quad 47
 xchain316_n101_α:
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
  .section .rodata
  .Lrkfn472: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn472]
 lea rsi, [rbp + 4752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n105_α
 xchain316_n101_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n102_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain316_n106_α
 xchain316_n102_β:
 jmp proc_define$2_ω
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string ","
# IR_LIT_STRING
 xchain316_n103_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain316_n107_α
 xchain316_n103_β:
 jmp proc_define$2_ω
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain316_n104_α:
 mov qword ptr [rbp + 10464], 1
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [rbp + 10472], rax
 jmp xchain316_n108_α
 xchain316_n104_β:
 jmp proc_define$2_ω
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "."
 xchain316_n105_α:
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
  .section .rodata
  .Lrkfn477: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn477]
 lea rsi, [rbp + 4864]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 cmp eax, 99
 je xchain316_n26_α
 jmp xchain316_n109_α
 xchain316_n105_β:
 jmp xchain316_n26_α
# IR_LIT_STRING
 xchain316_n106_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain316_n110_α
 xchain316_n106_β:
 jmp proc_define$2_ω
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "=<"
# IR_LIT_STRING
 xchain316_n107_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain316_n111_α
 xchain316_n107_β:
 jmp proc_define$2_ω
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n108_α:
 mov qword ptr [rbp + 10352], 6
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 10360], rax
 jmp xchain316_n112_α
 xchain316_n108_β:
 jmp proc_define$2_ω
.Lx480_0:
 .quad 28
 xchain316_n109_α:
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
  .section .rodata
  .Lrkfn482: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn482]
 lea rsi, [rbp + 3792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain316_n26_α
 jmp xchain316_n113_α
 xchain316_n109_β:
 jmp xchain316_n26_α
# IR_VAR_REF
 xchain316_n110_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain316_n114_α
 xchain316_n110_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n111_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain316_n115_α
 xchain316_n111_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n112_α:
 mov qword ptr [rbp + 10320], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [rbp + 10328], rax
 jmp xchain316_n116_α
 xchain316_n112_β:
 jmp proc_define$2_ω
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain316_n113_α:
 lea rax, [rip + xchain316_n113_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain316_n113_β:
 jmp xchain316_n26_α
# IR_VAR_REF
 xchain316_n114_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain316_n117_α
 xchain316_n114_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n115_α:
 lea rdi, [rbp + 13168]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain316_n118_α
 xchain316_n115_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n116_α:
 mov qword ptr [rbp + 10208], 6
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 10216], rax
 jmp xchain316_n119_α
 xchain316_n116_β:
 jmp proc_define$2_ω
.Lx494_0:
 .quad 82
 xchain316_n117_α:
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
  .section .rodata
  .Lrkfn496: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 1952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n120_α
 xchain316_n117_β:
 jmp proc_define$2_ω
 xchain316_n118_α:
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
  .section .rodata
  .Lrkfn498: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn498]
 lea rsi, [rbp + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n121_α
 xchain316_n118_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n119_α:
 mov qword ptr [rbp + 10176], 1
 mov rax, qword ptr [rip + .Lx499_0]
 mov qword ptr [rbp + 10184], rax
 jmp xchain316_n122_α
 xchain316_n119_β:
 jmp proc_define$2_ω
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n120_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx500_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain316_n123_α
 xchain316_n120_β:
 jmp proc_define$2_ω
.Lx500_0:
 .quad .Lx500_0_s
.Lx500_0_s:
 .string ","
# IR_VAR_REF
 xchain316_n121_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain316_n124_α
 xchain316_n121_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n122_α:
 mov qword ptr [rbp + 10064], 6
 mov rax, qword ptr [rip + .Lx503_0]
 mov qword ptr [rbp + 10072], rax
 jmp xchain316_n125_α
 xchain316_n122_β:
 jmp proc_define$2_ω
.Lx503_0:
 .quad 6
# IR_LIT_STRING
 xchain316_n123_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain316_n126_α
 xchain316_n123_β:
 jmp proc_define$2_ω
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "?"
# IR_VAR_REF
 xchain316_n124_α:
 lea rdi, [rbp + 13200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain316_n127_α
 xchain316_n124_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n125_α:
 mov qword ptr [rbp + 10032], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [rbp + 10040], rax
 jmp xchain316_n128_α
 xchain316_n125_β:
 jmp proc_define$2_ω
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "."
# IR_LIT_STRING
 xchain316_n126_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain316_n129_α
 xchain316_n126_β:
 jmp proc_define$2_ω
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain316_n127_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain316_n130_α
 xchain316_n127_β:
 jmp proc_define$2_ω
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n128_α:
 mov qword ptr [rbp + 9920], 6
 mov rax, qword ptr [rip + .Lx510_0]
 mov qword ptr [rbp + 9928], rax
 jmp xchain316_n131_α
 xchain316_n128_β:
 jmp proc_define$2_ω
.Lx510_0:
 .quad 11
# IR_VAR_REF
 xchain316_n129_α:
 lea rdi, [rbp + 13168]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain316_n132_α
 xchain316_n129_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n130_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain316_n133_α
 xchain316_n130_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n131_α:
 mov qword ptr [rbp + 9888], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [rbp + 9896], rax
 jmp xchain316_n134_α
 xchain316_n131_β:
 jmp proc_define$2_ω
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n132_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain316_n135_α
 xchain316_n132_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n133_α:
 lea rdi, [rbp + 13216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain316_n136_α
 xchain316_n133_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain316_n134_α:
 mov qword ptr [rbp + 9776], 6
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [rbp + 9784], rax
 jmp xchain316_n137_α
 xchain316_n134_β:
 jmp proc_define$2_ω
.Lx520_0:
 .quad 55
# IR_VAR_REF
 xchain316_n135_α:
 lea rdi, [rbp + 13200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain316_n138_α
 xchain316_n135_β:
 jmp proc_define$2_ω
 xchain316_n136_α:
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
  .section .rodata
  .Lrkfn524: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn524]
 lea rsi, [rbp + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n139_α
 xchain316_n136_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n137_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx525_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain316_n140_α
 xchain316_n137_β:
 jmp proc_define$2_ω
.Lx525_0:
 .quad .Lx525_0_s
.Lx525_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n138_α:
 lea rdi, [rbp + 13216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain316_n141_α
 xchain316_n138_β:
 jmp proc_define$2_ω
 xchain316_n139_α:
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
  .section .rodata
  .Lrkfn529: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn529]
 lea rsi, [rbp + 1600]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain316_n143_α
 jmp xchain316_n142_α
 xchain316_n139_β:
 jmp xchain316_n143_α
# IR_LIT_INTEGER
 xchain316_n140_α:
 mov qword ptr [rbp + 9632], 6
 mov rax, qword ptr [rip + .Lx530_0]
 mov qword ptr [rbp + 9640], rax
 jmp xchain316_n144_α
 xchain316_n140_β:
 jmp proc_define$2_ω
.Lx530_0:
 .quad 29
 xchain316_n141_α:
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
  .section .rodata
  .Lrkfn532: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn532]
 lea rsi, [rbp + 2224]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n145_α
 xchain316_n141_β:
 jmp proc_define$2_ω
 xchain316_n142_α:
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
  .section .rodata
  .Lrkfn534: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn534]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain316_n143_α
 jmp xchain316_n146_α
 xchain316_n142_β:
 jmp xchain316_n143_α
 xchain316_n143_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn536: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn536]
 lea rsi, [rbp + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n147_α
 xchain316_n143_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n144_α:
 mov qword ptr [rbp + 9600], 1
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain316_n148_α
 xchain316_n144_β:
 jmp proc_define$2_ω
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string "."
 xchain316_n145_α:
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
  .section .rodata
  .Lrkfn539: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn539]
 lea rsi, [rbp + 2368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n149_α
 xchain316_n145_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n146_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain316_n150_α
 xchain316_n146_β:
 jmp xchain316_n143_α
# IR_VAR_REF
 xchain316_n147_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain316_n151_α
 xchain316_n147_β:
 jmp xchain316_n172_α
# IR_LIT_INTEGER
 xchain316_n148_α:
 mov qword ptr [rbp + 9488], 6
 mov rax, qword ptr [rip + .Lx544_0]
 mov qword ptr [rbp + 9496], rax
 jmp xchain316_n152_α
 xchain316_n148_β:
 jmp proc_define$2_ω
.Lx544_0:
 .quad 39
 xchain316_n149_α:
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
  .section .rodata
  .Lrkfn546: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn546]
 lea rsi, [rbp + 2480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain316_n95_α
 jmp xchain316_n153_α
 xchain316_n149_β:
 jmp xchain316_n95_α
# IR_LIT_STRING
 xchain316_n150_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain316_n154_α
 xchain316_n150_β:
 jmp proc_define$2_ω
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain316_n151_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain316_n155_α
 xchain316_n151_β:
 jmp proc_define$2_ω
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain316_n152_α:
 mov qword ptr [rbp + 9456], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 9464], rax
 jmp xchain316_n156_α
 xchain316_n152_β:
 jmp proc_define$2_ω
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "."
 xchain316_n153_α:
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
  .section .rodata
  .Lrkfn551: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn551]
 lea rsi, [rbp + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain316_n95_α
 jmp xchain316_n157_α
 xchain316_n153_β:
 jmp xchain316_n95_α
# IR_VAR_REF
 xchain316_n154_α:
 lea rdi, [rbp + 13168]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain316_n158_α
 xchain316_n154_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n155_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain316_n159_α
 xchain316_n155_β:
 jmp proc_define$2_ω
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain316_n156_α:
 mov qword ptr [rbp + 9344], 6
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 9352], rax
 jmp xchain316_n160_α
 xchain316_n156_β:
 jmp proc_define$2_ω
.Lx555_0:
 .quad 81
# IR_SUSPEND yield+resume
 xchain316_n157_α:
 lea rax, [rip + xchain316_n157_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain316_n157_β:
 jmp xchain316_n95_α
# IR_VAR_REF
 xchain316_n158_α:
 lea rdi, [rbp + 13184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain316_n161_α
 xchain316_n158_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n159_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain316_n162_α
 xchain316_n159_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n160_α:
 mov qword ptr [rbp + 9312], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 9320], rax
 jmp xchain316_n163_α
 xchain316_n160_β:
 jmp proc_define$2_ω
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "."
# IR_VAR_REF
 xchain316_n161_α:
 lea rdi, [rbp + 13200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain316_n164_α
 xchain316_n161_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n162_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain316_n165_α
 xchain316_n162_β:
 jmp proc_define$2_ω
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain316_n163_α:
 mov qword ptr [rbp + 9200], 6
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 9208], rax
 jmp xchain316_n166_α
 xchain316_n163_β:
 jmp proc_define$2_ω
.Lx566_0:
 .quad 90
# IR_VAR_REF
 xchain316_n164_α:
 lea rdi, [rbp + 13216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain316_n167_α
 xchain316_n164_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n165_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain316_n168_α
 xchain316_n165_β:
 jmp proc_define$2_ω
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain316_n166_α:
 mov qword ptr [rbp + 9168], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain316_n169_α
 xchain316_n166_β:
 jmp proc_define$2_ω
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
 xchain316_n167_α:
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
  .section .rodata
  .Lrkfn572: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn572]
 lea rsi, [rbp + 944]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain316_n143_α
 jmp xchain316_n170_α
 xchain316_n167_β:
 jmp xchain316_n143_α
 xchain316_n168_α:
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
  .section .rodata
  .Lrkfn574: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn574]
 lea rsi, [rbp + 528]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain316_n172_α
 jmp xchain316_n171_α
 xchain316_n168_β:
 jmp xchain316_n172_α
# IR_LIT_INTEGER
 xchain316_n169_α:
 mov qword ptr [rbp + 9056], 6
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 9064], rax
 jmp xchain316_n173_α
 xchain316_n169_β:
 jmp proc_define$2_ω
.Lx575_0:
 .quad 37
 xchain316_n170_α:
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
  .section .rodata
  .Lrkfn577: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn577]
 lea rsi, [rbp + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain316_n143_α
 jmp xchain316_n174_α
 xchain316_n170_β:
 jmp xchain316_n143_α
 xchain316_n171_α:
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
  .section .rodata
  .Lrkfn579: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn579]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain316_n172_α
 jmp xchain316_n175_α
 xchain316_n171_β:
 jmp xchain316_n172_α
 xchain316_n172_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn581: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn581]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp proc_define$2_ω
 xchain316_n172_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n173_α:
 mov qword ptr [rbp + 9024], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 9032], rax
 jmp xchain316_n176_α
 xchain316_n173_β:
 jmp proc_define$2_ω
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain316_n174_α:
 lea rax, [rip + xchain316_n174_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain316_n174_β:
 jmp xchain316_n143_α
# IR_VAR_REF
 xchain316_n175_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain316_n177_α
 xchain316_n175_β:
 jmp xchain316_n172_α
# IR_LIT_INTEGER
 xchain316_n176_α:
 mov qword ptr [rbp + 8912], 6
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain316_n178_α
 xchain316_n176_β:
 jmp proc_define$2_ω
.Lx587_0:
 .quad 10
# IR_LIT_STRING
 xchain316_n177_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain316_n179_α
 xchain316_n177_β:
 jmp xchain316_n172_α
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "true"
# IR_LIT_STRING
 xchain316_n178_α:
 mov qword ptr [rbp + 8880], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 8888], rax
 jmp xchain316_n180_α
 xchain316_n178_β:
 jmp proc_define$2_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "."
 xchain316_n179_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn591: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn591]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain316_n172_α
 jmp xchain316_n181_α
 xchain316_n179_β:
 jmp xchain316_n172_α
# IR_LIT_INTEGER
 xchain316_n180_α:
 mov qword ptr [rbp + 8768], 6
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 8776], rax
 jmp xchain316_n182_α
 xchain316_n180_β:
 jmp proc_define$2_ω
.Lx592_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain316_n181_α:
 lea rax, [rip + xchain316_n181_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain316_n181_β:
 jmp xchain316_n172_α
# IR_LIT_STRING
 xchain316_n182_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain316_n183_α
 xchain316_n182_β:
 jmp proc_define$2_ω
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n183_α:
 mov qword ptr [rbp + 8624], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 8632], rax
 jmp xchain316_n184_α
 xchain316_n183_β:
 jmp proc_define$2_ω
.Lx596_0:
 .quad 66
# IR_LIT_STRING
 xchain316_n184_α:
 mov qword ptr [rbp + 8592], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 8600], rax
 jmp xchain316_n185_α
 xchain316_n184_β:
 jmp proc_define$2_ω
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n185_α:
 mov qword ptr [rbp + 8480], 6
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain316_n186_α
 xchain316_n185_β:
 jmp proc_define$2_ω
.Lx598_0:
 .quad 51
# IR_LIT_STRING
 xchain316_n186_α:
 mov qword ptr [rbp + 8448], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 8456], rax
 jmp xchain316_n187_α
 xchain316_n186_β:
 jmp proc_define$2_ω
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n187_α:
 mov qword ptr [rbp + 8336], 6
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 8344], rax
 jmp xchain316_n188_α
 xchain316_n187_β:
 jmp proc_define$2_ω
.Lx600_0:
 .quad 7
# IR_LIT_STRING
 xchain316_n188_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain316_n189_α
 xchain316_n188_β:
 jmp proc_define$2_ω
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n189_α:
 mov qword ptr [rbp + 8192], 6
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [rbp + 8200], rax
 jmp xchain316_n190_α
 xchain316_n189_β:
 jmp proc_define$2_ω
.Lx602_0:
 .quad 21
# IR_LIT_STRING
 xchain316_n190_α:
 mov qword ptr [rbp + 8160], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [rbp + 8168], rax
 jmp xchain316_n191_α
 xchain316_n190_β:
 jmp proc_define$2_ω
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n191_α:
 mov qword ptr [rbp + 8048], 6
 mov rax, qword ptr [rip + .Lx604_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain316_n192_α
 xchain316_n191_β:
 jmp proc_define$2_ω
.Lx604_0:
 .quad 85
# IR_LIT_STRING
 xchain316_n192_α:
 mov qword ptr [rbp + 8016], 1
 mov rax, qword ptr [rip + .Lx605_0]
 mov qword ptr [rbp + 8024], rax
 jmp xchain316_n193_α
 xchain316_n192_β:
 jmp proc_define$2_ω
.Lx605_0:
 .quad .Lx605_0_s
.Lx605_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n193_α:
 mov qword ptr [rbp + 7904], 6
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain316_n194_α
 xchain316_n193_β:
 jmp proc_define$2_ω
.Lx606_0:
 .quad 27
# IR_LIT_STRING
 xchain316_n194_α:
 mov qword ptr [rbp + 7872], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [rbp + 7880], rax
 jmp xchain316_n195_α
 xchain316_n194_β:
 jmp proc_define$2_ω
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n195_α:
 mov qword ptr [rbp + 7760], 6
 mov rax, qword ptr [rip + .Lx608_0]
 mov qword ptr [rbp + 7768], rax
 jmp xchain316_n196_α
 xchain316_n195_β:
 jmp proc_define$2_ω
.Lx608_0:
 .quad 31
# IR_LIT_STRING
 xchain316_n196_α:
 mov qword ptr [rbp + 7728], 1
 mov rax, qword ptr [rip + .Lx609_0]
 mov qword ptr [rbp + 7736], rax
 jmp xchain316_n197_α
 xchain316_n196_β:
 jmp proc_define$2_ω
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n197_α:
 mov qword ptr [rbp + 7616], 6
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain316_n198_α
 xchain316_n197_β:
 jmp proc_define$2_ω
.Lx610_0:
 .quad 63
# IR_LIT_STRING
 xchain316_n198_α:
 mov qword ptr [rbp + 7584], 1
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [rbp + 7592], rax
 jmp xchain316_n199_α
 xchain316_n198_β:
 jmp proc_define$2_ω
.Lx611_0:
 .quad .Lx611_0_s
.Lx611_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n199_α:
 mov qword ptr [rbp + 7472], 6
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [rbp + 7480], rax
 jmp xchain316_n200_α
 xchain316_n199_β:
 jmp proc_define$2_ω
.Lx612_0:
 .quad 75
# IR_LIT_STRING
 xchain316_n200_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain316_n201_α
 xchain316_n200_β:
 jmp proc_define$2_ω
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n201_α:
 mov qword ptr [rbp + 7328], 6
 mov rax, qword ptr [rip + .Lx614_0]
 mov qword ptr [rbp + 7336], rax
 jmp xchain316_n202_α
 xchain316_n201_β:
 jmp proc_define$2_ω
.Lx614_0:
 .quad 4
# IR_LIT_STRING
 xchain316_n202_α:
 mov qword ptr [rbp + 7296], 1
 mov rax, qword ptr [rip + .Lx615_0]
 mov qword ptr [rbp + 7304], rax
 jmp xchain316_n203_α
 xchain316_n202_β:
 jmp proc_define$2_ω
.Lx615_0:
 .quad .Lx615_0_s
.Lx615_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n203_α:
 mov qword ptr [rbp + 7184], 6
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [rbp + 7192], rax
 jmp xchain316_n204_α
 xchain316_n203_β:
 jmp proc_define$2_ω
.Lx616_0:
 .quad 95
# IR_LIT_STRING
 xchain316_n204_α:
 mov qword ptr [rbp + 7152], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [rbp + 7160], rax
 jmp xchain316_n205_α
 xchain316_n204_β:
 jmp proc_define$2_ω
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n205_α:
 mov qword ptr [rbp + 7040], 6
 mov rax, qword ptr [rip + .Lx618_0]
 mov qword ptr [rbp + 7048], rax
 jmp xchain316_n206_α
 xchain316_n205_β:
 jmp proc_define$2_ω
.Lx618_0:
 .quad 99
# IR_LIT_STRING
 xchain316_n206_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx619_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain316_n207_α
 xchain316_n206_β:
 jmp proc_define$2_ω
.Lx619_0:
 .quad .Lx619_0_s
.Lx619_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n207_α:
 mov qword ptr [rbp + 6896], 6
 mov rax, qword ptr [rip + .Lx620_0]
 mov qword ptr [rbp + 6904], rax
 jmp xchain316_n208_α
 xchain316_n207_β:
 jmp proc_define$2_ω
.Lx620_0:
 .quad 11
# IR_LIT_STRING
 xchain316_n208_α:
 mov qword ptr [rbp + 6864], 1
 mov rax, qword ptr [rip + .Lx621_0]
 mov qword ptr [rbp + 6872], rax
 jmp xchain316_n209_α
 xchain316_n208_β:
 jmp proc_define$2_ω
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n209_α:
 mov qword ptr [rbp + 6752], 6
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain316_n210_α
 xchain316_n209_β:
 jmp proc_define$2_ω
.Lx622_0:
 .quad 28
# IR_LIT_STRING
 xchain316_n210_α:
 mov qword ptr [rbp + 6720], 1
 mov rax, qword ptr [rip + .Lx623_0]
 mov qword ptr [rbp + 6728], rax
 jmp xchain316_n211_α
 xchain316_n210_β:
 jmp proc_define$2_ω
.Lx623_0:
 .quad .Lx623_0_s
.Lx623_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n211_α:
 mov qword ptr [rbp + 6608], 6
 mov rax, qword ptr [rip + .Lx624_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain316_n212_α
 xchain316_n211_β:
 jmp proc_define$2_ω
.Lx624_0:
 .quad 61
# IR_LIT_STRING
 xchain316_n212_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx625_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain316_n213_α
 xchain316_n212_β:
 jmp proc_define$2_ω
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n213_α:
 mov qword ptr [rbp + 6464], 6
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain316_n214_α
 xchain316_n213_β:
 jmp proc_define$2_ω
.Lx626_0:
 .quad 74
# IR_LIT_STRING
 xchain316_n214_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx627_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain316_n215_α
 xchain316_n214_β:
 jmp proc_define$2_ω
.Lx627_0:
 .quad .Lx627_0_s
.Lx627_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n215_α:
 mov qword ptr [rbp + 6320], 6
 mov rax, qword ptr [rip + .Lx628_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain316_n216_α
 xchain316_n215_β:
 jmp proc_define$2_ω
.Lx628_0:
 .quad 18
# IR_LIT_STRING
 xchain316_n216_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx629_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain316_n217_α
 xchain316_n216_β:
 jmp proc_define$2_ω
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n217_α:
 mov qword ptr [rbp + 6176], 6
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain316_n218_α
 xchain316_n217_β:
 jmp proc_define$2_ω
.Lx630_0:
 .quad 92
# IR_LIT_STRING
 xchain316_n218_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain316_n219_α
 xchain316_n218_β:
 jmp proc_define$2_ω
.Lx631_0:
 .quad .Lx631_0_s
.Lx631_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n219_α:
 mov qword ptr [rbp + 6032], 6
 mov rax, qword ptr [rip + .Lx632_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain316_n220_α
 xchain316_n219_β:
 jmp proc_define$2_ω
.Lx632_0:
 .quad 40
# IR_LIT_STRING
 xchain316_n220_α:
 mov qword ptr [rbp + 6000], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [rbp + 6008], rax
 jmp xchain316_n221_α
 xchain316_n220_β:
 jmp proc_define$2_ω
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n221_α:
 mov qword ptr [rbp + 5888], 6
 mov rax, qword ptr [rip + .Lx634_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain316_n222_α
 xchain316_n221_β:
 jmp proc_define$2_ω
.Lx634_0:
 .quad 53
# IR_LIT_STRING
 xchain316_n222_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain316_n223_α
 xchain316_n222_β:
 jmp proc_define$2_ω
.Lx635_0:
 .quad .Lx635_0_s
.Lx635_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n223_α:
 mov qword ptr [rbp + 5744], 6
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain316_n224_α
 xchain316_n223_β:
 jmp proc_define$2_ω
.Lx636_0:
 .quad 59
# IR_LIT_STRING
 xchain316_n224_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain316_n225_α
 xchain316_n224_β:
 jmp proc_define$2_ω
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain316_n225_α:
 mov qword ptr [rbp + 5600], 6
 mov rax, qword ptr [rip + .Lx638_0]
 mov qword ptr [rbp + 5608], rax
 jmp xchain316_n226_α
 xchain316_n225_β:
 jmp proc_define$2_ω
.Lx638_0:
 .quad 8
# IR_LIT_STRING
 xchain316_n226_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx639_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain316_n227_α
 xchain316_n226_β:
 jmp proc_define$2_ω
.Lx639_0:
 .quad .Lx639_0_s
.Lx639_0_s:
 .string "[]"
 xchain316_n227_α:
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
  .section .rodata
  .Lrkfn641: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn641]
 lea rsi, [rbp + 5648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n228_α
 xchain316_n227_β:
 jmp proc_define$2_ω
 xchain316_n228_α:
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
  .section .rodata
  .Lrkfn643: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn643]
 lea rsi, [rbp + 5792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n229_α
 xchain316_n228_β:
 jmp proc_define$2_ω
 xchain316_n229_α:
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
  .section .rodata
  .Lrkfn645: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn645]
 lea rsi, [rbp + 5936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n230_α
 xchain316_n229_β:
 jmp proc_define$2_ω
 xchain316_n230_α:
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
  .section .rodata
  .Lrkfn647: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn647]
 lea rsi, [rbp + 6080]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n231_α
 xchain316_n230_β:
 jmp proc_define$2_ω
 xchain316_n231_α:
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
  .section .rodata
  .Lrkfn649: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn649]
 lea rsi, [rbp + 6224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n232_α
 xchain316_n231_β:
 jmp proc_define$2_ω
 xchain316_n232_α:
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
  .section .rodata
  .Lrkfn651: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn651]
 lea rsi, [rbp + 6368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n233_α
 xchain316_n232_β:
 jmp proc_define$2_ω
 xchain316_n233_α:
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
  .section .rodata
  .Lrkfn653: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn653]
 lea rsi, [rbp + 6512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n234_α
 xchain316_n233_β:
 jmp proc_define$2_ω
 xchain316_n234_α:
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
  .section .rodata
  .Lrkfn655: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn655]
 lea rsi, [rbp + 6656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n235_α
 xchain316_n234_β:
 jmp proc_define$2_ω
 xchain316_n235_α:
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
  .section .rodata
  .Lrkfn657: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn657]
 lea rsi, [rbp + 6800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n236_α
 xchain316_n235_β:
 jmp proc_define$2_ω
 xchain316_n236_α:
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
  .section .rodata
  .Lrkfn659: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn659]
 lea rsi, [rbp + 6944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n237_α
 xchain316_n236_β:
 jmp proc_define$2_ω
 xchain316_n237_α:
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
  .section .rodata
  .Lrkfn661: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn661]
 lea rsi, [rbp + 7088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n238_α
 xchain316_n237_β:
 jmp proc_define$2_ω
 xchain316_n238_α:
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
  .section .rodata
  .Lrkfn663: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn663]
 lea rsi, [rbp + 7232]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n239_α
 xchain316_n238_β:
 jmp proc_define$2_ω
 xchain316_n239_α:
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
  .section .rodata
  .Lrkfn665: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn665]
 lea rsi, [rbp + 7376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n240_α
 xchain316_n239_β:
 jmp proc_define$2_ω
 xchain316_n240_α:
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
  .section .rodata
  .Lrkfn667: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn667]
 lea rsi, [rbp + 7520]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n241_α
 xchain316_n240_β:
 jmp proc_define$2_ω
 xchain316_n241_α:
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
  .section .rodata
  .Lrkfn669: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn669]
 lea rsi, [rbp + 7664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n242_α
 xchain316_n241_β:
 jmp proc_define$2_ω
 xchain316_n242_α:
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
  .section .rodata
  .Lrkfn671: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn671]
 lea rsi, [rbp + 7808]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n243_α
 xchain316_n242_β:
 jmp proc_define$2_ω
 xchain316_n243_α:
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
  .section .rodata
  .Lrkfn673: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn673]
 lea rsi, [rbp + 7952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n244_α
 xchain316_n243_β:
 jmp proc_define$2_ω
 xchain316_n244_α:
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
  .section .rodata
  .Lrkfn675: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn675]
 lea rsi, [rbp + 8096]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n245_α
 xchain316_n244_β:
 jmp proc_define$2_ω
 xchain316_n245_α:
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
  .section .rodata
  .Lrkfn677: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn677]
 lea rsi, [rbp + 8240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n246_α
 xchain316_n245_β:
 jmp proc_define$2_ω
 xchain316_n246_α:
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
  .section .rodata
  .Lrkfn679: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn679]
 lea rsi, [rbp + 8384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8368], rax
 mov qword ptr [rbp + 8376], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n247_α
 xchain316_n246_β:
 jmp proc_define$2_ω
 xchain316_n247_α:
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
  .section .rodata
  .Lrkfn681: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn681]
 lea rsi, [rbp + 8528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n248_α
 xchain316_n247_β:
 jmp proc_define$2_ω
 xchain316_n248_α:
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
  .section .rodata
  .Lrkfn683: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn683]
 lea rsi, [rbp + 8672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8656], rax
 mov qword ptr [rbp + 8664], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n249_α
 xchain316_n248_β:
 jmp proc_define$2_ω
 xchain316_n249_α:
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
  .section .rodata
  .Lrkfn685: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn685]
 lea rsi, [rbp + 8816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n250_α
 xchain316_n249_β:
 jmp proc_define$2_ω
 xchain316_n250_α:
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
  .section .rodata
  .Lrkfn687: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn687]
 lea rsi, [rbp + 8960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n251_α
 xchain316_n250_β:
 jmp proc_define$2_ω
 xchain316_n251_α:
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
  .section .rodata
  .Lrkfn689: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn689]
 lea rsi, [rbp + 9104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9088], rax
 mov qword ptr [rbp + 9096], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n252_α
 xchain316_n251_β:
 jmp proc_define$2_ω
 xchain316_n252_α:
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
  .section .rodata
  .Lrkfn691: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn691]
 lea rsi, [rbp + 9248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n253_α
 xchain316_n252_β:
 jmp proc_define$2_ω
 xchain316_n253_α:
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
  .section .rodata
  .Lrkfn693: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn693]
 lea rsi, [rbp + 9392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n254_α
 xchain316_n253_β:
 jmp proc_define$2_ω
 xchain316_n254_α:
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
  .section .rodata
  .Lrkfn695: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn695]
 lea rsi, [rbp + 9536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n255_α
 xchain316_n254_β:
 jmp proc_define$2_ω
 xchain316_n255_α:
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
  .section .rodata
  .Lrkfn697: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn697]
 lea rsi, [rbp + 9680]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9664], rax
 mov qword ptr [rbp + 9672], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n256_α
 xchain316_n255_β:
 jmp proc_define$2_ω
 xchain316_n256_α:
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
  .section .rodata
  .Lrkfn699: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn699]
 lea rsi, [rbp + 9824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n257_α
 xchain316_n256_β:
 jmp proc_define$2_ω
 xchain316_n257_α:
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
  .section .rodata
  .Lrkfn701: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn701]
 lea rsi, [rbp + 9968]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n258_α
 xchain316_n257_β:
 jmp proc_define$2_ω
 xchain316_n258_α:
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
  .section .rodata
  .Lrkfn703: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn703]
 lea rsi, [rbp + 10112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n259_α
 xchain316_n258_β:
 jmp proc_define$2_ω
 xchain316_n259_α:
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
  .section .rodata
  .Lrkfn705: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn705]
 lea rsi, [rbp + 10256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10240], rax
 mov qword ptr [rbp + 10248], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n260_α
 xchain316_n259_β:
 jmp proc_define$2_ω
 xchain316_n260_α:
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
  .section .rodata
  .Lrkfn707: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn707]
 lea rsi, [rbp + 10400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n261_α
 xchain316_n260_β:
 jmp proc_define$2_ω
 xchain316_n261_α:
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
  .section .rodata
  .Lrkfn709: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn709]
 lea rsi, [rbp + 10544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n262_α
 xchain316_n261_β:
 jmp proc_define$2_ω
 xchain316_n262_α:
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
  .section .rodata
  .Lrkfn711: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn711]
 lea rsi, [rbp + 10688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n263_α
 xchain316_n262_β:
 jmp proc_define$2_ω
 xchain316_n263_α:
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
  .section .rodata
  .Lrkfn713: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn713]
 lea rsi, [rbp + 10832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10816], rax
 mov qword ptr [rbp + 10824], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n264_α
 xchain316_n263_β:
 jmp proc_define$2_ω
 xchain316_n264_α:
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
  .section .rodata
  .Lrkfn715: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn715]
 lea rsi, [rbp + 10976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n265_α
 xchain316_n264_β:
 jmp proc_define$2_ω
 xchain316_n265_α:
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
  .section .rodata
  .Lrkfn717: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn717]
 lea rsi, [rbp + 11120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11104], rax
 mov qword ptr [rbp + 11112], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n266_α
 xchain316_n265_β:
 jmp proc_define$2_ω
 xchain316_n266_α:
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
  .section .rodata
  .Lrkfn719: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn719]
 lea rsi, [rbp + 11264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11248], rax
 mov qword ptr [rbp + 11256], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n267_α
 xchain316_n266_β:
 jmp proc_define$2_ω
 xchain316_n267_α:
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
  .section .rodata
  .Lrkfn721: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn721]
 lea rsi, [rbp + 11408]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11392], rax
 mov qword ptr [rbp + 11400], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n268_α
 xchain316_n267_β:
 jmp proc_define$2_ω
 xchain316_n268_α:
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
  .section .rodata
  .Lrkfn723: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn723]
 lea rsi, [rbp + 11552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n269_α
 xchain316_n268_β:
 jmp proc_define$2_ω
 xchain316_n269_α:
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
  .section .rodata
  .Lrkfn725: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn725]
 lea rsi, [rbp + 11696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n270_α
 xchain316_n269_β:
 jmp proc_define$2_ω
 xchain316_n270_α:
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
  .section .rodata
  .Lrkfn727: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn727]
 lea rsi, [rbp + 11840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11824], rax
 mov qword ptr [rbp + 11832], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n271_α
 xchain316_n270_β:
 jmp proc_define$2_ω
 xchain316_n271_α:
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
  .section .rodata
  .Lrkfn729: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn729]
 lea rsi, [rbp + 11984]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11968], rax
 mov qword ptr [rbp + 11976], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n272_α
 xchain316_n271_β:
 jmp proc_define$2_ω
 xchain316_n272_α:
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
  .section .rodata
  .Lrkfn731: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn731]
 lea rsi, [rbp + 12128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12112], rax
 mov qword ptr [rbp + 12120], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n273_α
 xchain316_n272_β:
 jmp proc_define$2_ω
 xchain316_n273_α:
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
  .section .rodata
  .Lrkfn733: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn733]
 lea rsi, [rbp + 12272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12256], rax
 mov qword ptr [rbp + 12264], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n274_α
 xchain316_n273_β:
 jmp proc_define$2_ω
 xchain316_n274_α:
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
  .section .rodata
  .Lrkfn735: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn735]
 lea rsi, [rbp + 12416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12400], rax
 mov qword ptr [rbp + 12408], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n275_α
 xchain316_n274_β:
 jmp proc_define$2_ω
 xchain316_n275_α:
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
  .section .rodata
  .Lrkfn737: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn737]
 lea rsi, [rbp + 12560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12544], rax
 mov qword ptr [rbp + 12552], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n276_α
 xchain316_n275_β:
 jmp proc_define$2_ω
 xchain316_n276_α:
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
  .section .rodata
  .Lrkfn739: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn739]
 lea rsi, [rbp + 12704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12688], rax
 mov qword ptr [rbp + 12696], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain316_n277_α
 xchain316_n276_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain316_n277_α:
 lea rdi, [rbp + 13152]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 12800], rax
 mov qword ptr [rbp + 12808], rdx
 jmp xchain316_n278_α
 xchain316_n277_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain316_n278_α:
 mov qword ptr [rbp + 12832], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [rbp + 12840], rax
 jmp xchain316_n279_α
 xchain316_n278_β:
 jmp proc_define$2_ω
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "[]"
 xchain316_n279_α:
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
  .section .rodata
  .Lrkfn744: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn744]
 lea rsi, [rbp + 12880]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 cmp eax, 99
 je xchain316_n5_α
 jmp xchain316_n280_α
 xchain316_n279_β:
 jmp xchain316_n5_α
 xchain316_n280_α:
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
  .section .rodata
  .Lrkfn746: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn746]
 lea rsi, [rbp + 5488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain316_n5_α
 jmp xchain316_n281_α
 xchain316_n280_β:
 jmp xchain316_n5_α
# IR_SUSPEND yield+resume
 xchain316_n281_α:
 lea rax, [rip + xchain316_n281_β]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2_γ
 xchain316_n281_β:
 jmp xchain316_n5_α
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
  mov rdi, rsp
  mov ecx, 784
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 744], rsp
  mov rdi, rsp
  mov esi, 784
  call rt_jmp_frame_lexprep@PLT
proc_interpret_built_in$1_α_body:
lea rax, [rip + xchain749_n4_β]
mov qword ptr [rbp + 720], rax
 xchain749_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn751: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn751]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp xchain749_n1_α
 xchain749_n0_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain749_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain749_n2_α
 xchain749_n1_β:
 jmp xchain749_n5_α
# IR_LIT_STRING
 xchain749_n2_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx754_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain749_n3_α
 xchain749_n2_β:
 jmp xchain749_n5_α
.Lx754_0:
 .quad .Lx754_0_s
.Lx754_0_s:
 .string "true"
 xchain749_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn756: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn756]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain749_n5_α
 jmp xchain749_n4_α
 xchain749_n3_β:
 jmp xchain749_n5_α
# IR_SUSPEND yield+resume
 xchain749_n4_α:
 lea rax, [rip + xchain749_n4_β]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$1_γ
 xchain749_n4_β:
 jmp xchain749_n5_α
 xchain749_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+560]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn760: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn760]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp xchain749_n6_α
 xchain749_n5_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain749_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain749_n7_α
 xchain749_n6_β:
 jmp xchain749_n12_α
# IR_LIT_STRING
 xchain749_n7_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx763_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain749_n8_α
 xchain749_n7_β:
 jmp proc_interpret_built_in$1_ω
.Lx763_0:
 .quad .Lx763_0_s
.Lx763_0_s:
 .string "=<"
# IR_VAR_REF
 xchain749_n8_α:
 lea rdi, [rbp + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain749_n9_α
 xchain749_n8_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain749_n9_α:
 lea rdi, [rbp + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain749_n10_α
 xchain749_n9_β:
 jmp proc_interpret_built_in$1_ω
 xchain749_n10_α:
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
  .section .rodata
  .Lrkfn769: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn769]
 lea rsi, [rbp + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain749_n12_α
 jmp xchain749_n11_α
 xchain749_n10_β:
 jmp xchain749_n12_α
 xchain749_n11_α:
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
  .section .rodata
  .Lrkfn771: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn771]
 lea rsi, [rbp + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain749_n12_α
 jmp xchain749_n13_α
 xchain749_n11_β:
 jmp xchain749_n12_α
 xchain749_n12_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn773: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn773]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp proc_interpret_built_in$1_ω
 xchain749_n12_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR
 xchain749_n13_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 216], rax
 jmp xchain749_n14_α
 xchain749_n13_β:
 jmp xchain749_n12_α
# IR_VAR
 xchain749_n14_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 248], rax
 jmp xchain749_n15_α
 xchain749_n14_β:
 jmp xchain749_n12_α
 xchain749_n15_α:
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
  .section .rodata
  .Lrkfn779: .string "$cmp_le"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn779]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain749_n12_α
 jmp xchain749_n16_α
 xchain749_n15_β:
 jmp xchain749_n12_α
# IR_SUSPEND yield+resume
 xchain749_n16_α:
 lea rax, [rip + xchain749_n16_β]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$1_γ
 xchain749_n16_β:
 jmp xchain749_n12_α
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
  mov rdi, rsp
  mov ecx, 3360
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3240], rsp
  mov rdi, rsp
  mov esi, 3360
  call rt_jmp_frame_lexprep@PLT
proc_interpret_disjunction$3_α_body:
lea rax, [rip + xchain782_n59_β]
mov qword ptr [rbp + 3216], rax
 xchain782_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn784: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn784]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n1_α
 xchain782_n0_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain782_n2_α
 xchain782_n1_β:
 jmp xchain782_n7_α
# IR_LIT_STRING
 xchain782_n2_α:
 mov qword ptr [rbp + 3184], 1
 mov rax, qword ptr [rip + .Lx787_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain782_n3_α
 xchain782_n2_β:
 jmp proc_interpret_disjunction$3_ω
.Lx787_0:
 .quad .Lx787_0_s
.Lx787_0_s:
 .string "->"
# IR_VAR_REF
 xchain782_n3_α:
 lea rdi, [rbp + 3280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain782_n4_α
 xchain782_n3_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n4_α:
 lea rdi, [rbp + 3312]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain782_n5_α
 xchain782_n4_β:
 jmp proc_interpret_disjunction$3_ω
 xchain782_n5_α:
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
  .section .rodata
  .Lrkfn793: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn793]
 lea rsi, [rbp + 3120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n6_α
 xchain782_n5_β:
 jmp xchain782_n7_α
 xchain782_n6_α:
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
  .section .rodata
  .Lrkfn795: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn795]
 lea rsi, [rbp + 2960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n8_α
 xchain782_n6_β:
 jmp xchain782_n7_α
 xchain782_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2016]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn797: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn797]
 lea rsi, [rbp + 2016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n9_α
 xchain782_n7_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain782_n10_α
 xchain782_n8_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain782_n11_α
 xchain782_n9_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n10_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain782_n12_α
 xchain782_n10_β:
 jmp xchain782_n7_α
# IR_LIT_STRING
 xchain782_n11_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx804_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain782_n13_α
 xchain782_n11_β:
 jmp proc_interpret_disjunction$3_ω
.Lx804_0:
 .quad .Lx804_0_s
.Lx804_0_s:
 .string "->"
 xchain782_n12_α:
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
  .section .rodata
  .Lrkfn806: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn806]
 lea rsi, [rbp + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n14_α
 xchain782_n12_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n13_α:
 lea rdi, [rbp + 3280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain782_n15_α
 xchain782_n13_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n14_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain782_n16_α
 xchain782_n14_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n15_α:
 lea rdi, [rbp + 3312]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain782_n17_α
 xchain782_n15_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n16_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain782_n18_α
 xchain782_n16_β:
 jmp xchain782_n7_α
 xchain782_n17_α:
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
  .section .rodata
  .Lrkfn816: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn816]
 lea rsi, [rbp + 1904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n19_α
 xchain782_n17_β:
 jmp xchain782_n20_α
 xchain782_n18_α:
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
  .section .rodata
  .Lrkfn818: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn818]
 lea rsi, [rbp + 2704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n21_α
 xchain782_n18_β:
 jmp xchain782_n7_α
 xchain782_n19_α:
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
  .section .rodata
  .Lrkfn820: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn820]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n22_α
 xchain782_n19_β:
 jmp xchain782_n20_α
 xchain782_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1296]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn822: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn822]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n23_α
 xchain782_n20_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n21_α:
 lea rdi, [rbp + 3280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain782_n24_α
 xchain782_n21_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain782_n25_α
 xchain782_n22_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n23_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain782_n26_α
 xchain782_n23_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n24_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain782_n27_α
 xchain782_n24_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n25_α:
 lea rdi, [rbp + 3248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain782_n28_α
 xchain782_n25_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n26_α:
 lea rdi, [rbp + 3296]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain782_n29_α
 xchain782_n26_β:
 jmp xchain782_n33_α
 xchain782_n27_α:
 mov qword ptr [rbp + 2592], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2624]
 mov rdx, qword ptr [rbp + 2632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2656]
 mov rdx, qword ptr [rbp + 2664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx836_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx836_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx836_3]
 lea rdx, [rip + .Lx836_4]
 jmp rax
.Lx836_3:
 mov qword ptr [rbp + 2600], rsp
 mov rax, qword ptr [rbp + 2592]
 test rax, rax
 jne .Lx836_5
 mov qword ptr [rbp + 2592], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx836_2
.Lx836_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx836_2
.Lx836_4:
 mov rax, qword ptr [rbp + 2592]
 test rax, rax
 jne .Lx836_6
 mov qword ptr [rbp + 2592], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx836_2
.Lx836_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx836_2
.Lx836_1:
 call rt_faildescr@PLT
.Lx836_2:
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n30_α
 xchain782_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2600]
 jmp qword ptr [rsp]
.Lx836_0:
 .quad .Lx836_0_s
.Lx836_0_s:
 .string "interpret/2"
 xchain782_n28_α:
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
  .section .rodata
  .Lrkfn838: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn838]
 lea rsi, [rbp + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n31_α
 xchain782_n28_β:
 jmp xchain782_n20_α
 xchain782_n29_α:
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
  .section .rodata
  .Lrkfn840: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn840]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n32_α
 xchain782_n29_β:
 jmp xchain782_n33_α
 xchain782_n30_α:
# IR_CUT
 jmp xchain782_n34_α
 xchain782_n30_β:
 jmp xchain782_n27_β
# IR_VAR_REF
 xchain782_n31_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain782_n35_α
 xchain782_n31_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n32_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain782_n36_α
 xchain782_n32_β:
 jmp xchain782_n33_α
 xchain782_n33_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn847: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn847]
 lea rsi, [rbp + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n37_α
 xchain782_n33_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n34_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain782_n38_α
 xchain782_n34_β:
 jmp xchain782_n43_α
# IR_VAR_REF
 xchain782_n35_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain782_n39_α
 xchain782_n35_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n36_α:
 lea rdi, [rbp + 3280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain782_n40_α
 xchain782_n36_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n37_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain782_n41_α
 xchain782_n37_β:
 jmp xchain782_n52_α
 xchain782_n38_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2480]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2488], rax
  .section .rodata
  .Lrkfn857: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn857]
 lea rsi, [rbp + 2480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain782_n43_α
 jmp xchain782_n42_α
 xchain782_n38_β:
 jmp xchain782_n43_α
 xchain782_n39_α:
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
  .section .rodata
  .Lrkfn859: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn859]
 lea rsi, [rbp + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n44_α
 xchain782_n39_β:
 jmp xchain782_n20_α
 xchain782_n40_α:
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
  .section .rodata
  .Lrkfn861: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn861]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n45_α
 xchain782_n40_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n41_α:
 lea rdi, [rbp + 3280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain782_n46_α
 xchain782_n41_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n42_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain782_n47_α
 xchain782_n42_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n43_α:
 lea rdi, [rbp + 3312]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain782_n48_α
 xchain782_n43_β:
 jmp xchain782_n52_α
 xchain782_n44_α:
# IR_CUT
 jmp xchain782_n49_α
 xchain782_n44_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n45_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain782_n50_α
 xchain782_n45_β:
 jmp xchain782_n33_α
 xchain782_n46_α:
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
  .section .rodata
  .Lrkfn872: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn872]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n51_α
 xchain782_n46_β:
 jmp xchain782_n52_α
# IR_LIT_STRING
 xchain782_n47_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx873_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain782_n53_α
 xchain782_n47_β:
 jmp proc_interpret_disjunction$3_ω
.Lx873_0:
 .quad .Lx873_0_s
.Lx873_0_s:
 .string "->"
# IR_VAR_REF
 xchain782_n48_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain782_n54_α
 xchain782_n48_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n49_α:
 lea rdi, [rbp + 3248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain782_n55_α
 xchain782_n49_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n50_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain782_n56_α
 xchain782_n50_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n51_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain782_n57_α
 xchain782_n51_β:
 jmp xchain782_n52_α
 xchain782_n52_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn883: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn883]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp proc_interpret_disjunction$3_ω
 xchain782_n52_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n53_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain782_n58_α
 xchain782_n53_β:
 jmp proc_interpret_disjunction$3_ω
 xchain782_n54_α:
 mov qword ptr [rbp + 2368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx887_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx887_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx887_3]
 lea rdx, [rip + .Lx887_4]
 jmp rax
.Lx887_3:
 mov qword ptr [rbp + 2376], rsp
 mov rax, qword ptr [rbp + 2368]
 test rax, rax
 jne .Lx887_5
 mov qword ptr [rbp + 2368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx887_2
.Lx887_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx887_2
.Lx887_4:
 mov rax, qword ptr [rbp + 2368]
 test rax, rax
 jne .Lx887_6
 mov qword ptr [rbp + 2368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx887_2
.Lx887_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx887_2
.Lx887_1:
 call rt_faildescr@PLT
.Lx887_2:
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n59_α
 xchain782_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2376]
 jmp qword ptr [rsp]
.Lx887_0:
 .quad .Lx887_0_s
.Lx887_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain782_n55_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain782_n60_α
 xchain782_n55_β:
 jmp xchain782_n52_α
 xchain782_n56_α:
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
  .section .rodata
  .Lrkfn891: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn891]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n61_α
 xchain782_n56_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n57_α:
 lea rdi, [rbp + 3248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain782_n62_α
 xchain782_n57_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n58_α:
 lea rdi, [rbp + 3312]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain782_n63_α
 xchain782_n58_β:
 jmp proc_interpret_disjunction$3_ω
# IR_SUSPEND yield+resume
 xchain782_n59_α:
 lea rax, [rip + xchain782_n59_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n59_β:
 jmp xchain782_n7_α
 xchain782_n60_α:
 mov qword ptr [rbp + 1376], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx899_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx899_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx899_3]
 lea rdx, [rip + .Lx899_4]
 jmp rax
.Lx899_3:
 mov qword ptr [rbp + 1384], rsp
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx899_5
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx899_2
.Lx899_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx899_2
.Lx899_4:
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx899_6
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx899_2
.Lx899_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx899_2
.Lx899_1:
 call rt_faildescr@PLT
.Lx899_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n64_α
 xchain782_n60_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1384]
 jmp qword ptr [rsp]
.Lx899_0:
 .quad .Lx899_0_s
.Lx899_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain782_n61_α:
 lea rdi, [rbp + 3296]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain782_n65_α
 xchain782_n61_β:
 jmp xchain782_n33_α
 xchain782_n62_α:
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
  .section .rodata
  .Lrkfn903: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn903]
 lea rsi, [rbp + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n66_α
 xchain782_n62_β:
 jmp xchain782_n52_α
 xchain782_n63_α:
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
  .section .rodata
  .Lrkfn905: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn905]
 lea rsi, [rbp + 2224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n67_α
 xchain782_n63_β:
 jmp xchain782_n52_α
# IR_SUSPEND yield+resume
 xchain782_n64_α:
 lea rax, [rip + xchain782_n64_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n64_β:
 jmp xchain782_n60_β
# IR_VAR_REF
 xchain782_n65_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain782_n68_α
 xchain782_n65_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n66_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain782_n69_α
 xchain782_n66_β:
 jmp xchain782_n52_α
 xchain782_n67_α:
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
  .section .rodata
  .Lrkfn913: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn913]
 lea rsi, [rbp + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n59_α
 xchain782_n67_β:
 jmp xchain782_n52_α
 xchain782_n68_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx915_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx915_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx915_3]
 lea rdx, [rip + .Lx915_4]
 jmp rax
.Lx915_3:
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx915_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx915_2
.Lx915_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx915_2
.Lx915_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx915_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx915_2
.Lx915_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx915_2
.Lx915_1:
 call rt_faildescr@PLT
.Lx915_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n70_α
 xchain782_n68_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx915_0:
 .quad .Lx915_0_s
.Lx915_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain782_n69_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain782_n71_α
 xchain782_n69_β:
 jmp xchain782_n52_α
# IR_SUSPEND yield+resume
 xchain782_n70_α:
 lea rax, [rip + xchain782_n70_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n70_β:
 jmp xchain782_n68_β
 xchain782_n71_α:
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
  .section .rodata
  .Lrkfn921: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn921]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n72_α
 xchain782_n71_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n72_α:
 lea rdi, [rbp + 3248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain782_n73_α
 xchain782_n72_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n73_α:
 lea rdi, [rbp + 3264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain782_n74_α
 xchain782_n73_β:
 jmp xchain782_n52_α
 xchain782_n74_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx927_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx927_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx927_3]
 lea rdx, [rip + .Lx927_4]
 jmp rax
.Lx927_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx927_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx927_2
.Lx927_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx927_2
.Lx927_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx927_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx927_2
.Lx927_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx927_2
.Lx927_1:
 call rt_faildescr@PLT
.Lx927_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n75_α
 xchain782_n74_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx927_0:
 .quad .Lx927_0_s
.Lx927_0_s:
 .string "interpret/2"
# IR_SUSPEND yield+resume
 xchain782_n75_α:
 lea rax, [rip + xchain782_n75_β]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n75_β:
 jmp xchain782_n74_β
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
 xchain930_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn932: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn932]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain930_n1_α
 xchain930_n0_β:
 jmp main_ω
 xchain930_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx934_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx934_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx934_3]
 lea rdx, [rip + .Lx934_4]
 jmp rax
.Lx934_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx934_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx934_2
.Lx934_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx934_2
.Lx934_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx934_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx934_2
.Lx934_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx934_2
.Lx934_1:
 call rt_faildescr@PLT
.Lx934_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain930_n3_α
 jmp xchain930_n2_α
 xchain930_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx934_0:
 .quad .Lx934_0_s
.Lx934_0_s:
 .string "meta_qsort/0"
# IR_LIT_STRING
 xchain930_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx935_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain930_n4_α
 xchain930_n2_β:
 jmp xchain930_n7_α
.Lx935_0:
 .quad .Lx935_0_s
.Lx935_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain930_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx936_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain930_n5_α
 xchain930_n3_β:
 jmp xchain930_n7_α
.Lx936_0:
 .quad .Lx936_0_s
.Lx936_0_s:
 .string "failed"
 xchain930_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn938: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn938]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain930_n7_α
 jmp xchain930_n6_α
 xchain930_n4_β:
 jmp xchain930_n7_α
 xchain930_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn940: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn940]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain930_n7_α
 jmp xchain930_n6_α
 xchain930_n5_β:
 jmp xchain930_n7_α
# IR_LIT_STRING
 xchain930_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx941_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain930_n8_α
 xchain930_n6_β:
 jmp xchain930_n7_α
.Lx941_0:
 .quad .Lx941_0_s
.Lx941_0_s:
 .string ""
 xchain930_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn943: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn943]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain930_n7_β:
 jmp main_ω
 xchain930_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn945: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn945]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain930_n7_α
 jmp xchain930_n9_α
 xchain930_n8_β:
 jmp xchain930_n7_α
# IR_MOVE_LABEL
 xchain930_n9_α:
 lea rax, [rip + xchain930_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain930_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain930_n10_α:
 jmp qword ptr [rbp + 32]
 xchain930_n10_β:
 jmp main_ω
main_β:
jmp xchain930_n10_α
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
