  .intel_syntax noprefix
  .text
  .globl proc_zebra$1_α
proc_zebra$1_α:
#=======================================================================================================================
    .global proc_zebra$1_α
    .global proc_zebra$1_β
    .global proc_zebra$1_γ
    .global proc_zebra$1_ω
  sub rsp, 10768
  mov [rsp + 10744], rcx
  mov [rsp + 10752], rdx
  mov [rsp + 10760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 10736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9480], rsp
  mov rdi, rsp
  mov esi, 10736
  call rt_jmp_frame_lexprep@PLT
proc_zebra$1_α_body:
lea rax, [rip + xchain0_n197_β]
mov qword ptr [rbp + 9456], rax
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
 je proc_zebra$1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9392] -> [zr+9344]
 mov rax, qword ptr [rbp + 9392]
 mov qword ptr [rbp + 9344], rax
 mov rax, qword ptr [rbp + 9400]
 mov qword ptr [rbp + 9352], rax
# marshal arg1 = producer-box slot [zr+9424] -> [zr+9360]
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 9360], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 9368], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 9344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
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
 je proc_zebra$1_ω
 jmp proc_zebra$1_ω
 xchain0_n5_β:
 jmp proc_zebra$1_ω
 xchain0_n6_α:
 mov qword ptr [rbp + 9264], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 9296]
 mov rdx, qword ptr [rbp + 9304]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx14_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx14_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx14_3]
 lea rdx, [rip + .Lx14_4]
 jmp rax
.Lx14_3:
 mov rax, qword ptr [rbp + 9264]
 test rax, rax
 jne .Lx14_5
 mov qword ptr [rbp + 9264], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx14_2
.Lx14_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx14_2
.Lx14_4:
 mov rax, qword ptr [rbp + 9264]
 test rax, rax
 jne .Lx14_6
 mov qword ptr [rbp + 9264], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx14_2
.Lx14_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx14_2
.Lx14_1:
 call rt_faildescr@PLT
.Lx14_2:
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "houses/1"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 9168], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_zebra$1_ω
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 8880], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 8888], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_zebra$1_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "red"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 8912], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_zebra$1_ω
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "english"
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 10688]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [rbp + 10704]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [rbp + 10720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_zebra$1_ω
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9168] -> [zr+9056]
 mov rax, qword ptr [rbp + 9168]
 mov qword ptr [rbp + 9056], rax
 mov rax, qword ptr [rbp + 9176]
 mov qword ptr [rbp + 9064], rax
# marshal arg1 = producer-box slot [zr+8880] -> [zr+9072]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 9072], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 9080], rax
# marshal arg2 = producer-box slot [zr+8912] -> [zr+9088]
 mov rax, qword ptr [rbp + 8912]
 mov qword ptr [rbp + 9088], rax
 mov rax, qword ptr [rbp + 8920]
 mov qword ptr [rbp + 9096], rax
# marshal arg3 = producer-box slot [zr+8944] -> [zr+9104]
 mov rax, qword ptr [rbp + 8944]
 mov qword ptr [rbp + 9104], rax
 mov rax, qword ptr [rbp + 8952]
 mov qword ptr [rbp + 9112], rax
# marshal arg4 = producer-box slot [zr+8976] -> [zr+9120]
 mov rax, qword ptr [rbp + 8976]
 mov qword ptr [rbp + 9120], rax
 mov rax, qword ptr [rbp + 8984]
 mov qword ptr [rbp + 9128], rax
# marshal arg5 = producer-box slot [zr+9008] -> [zr+9136]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 9136], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 9144], rax
  .section .rodata
  .Lrkfn25: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn25]
 lea rsi, [rbp + 9056]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
 xchain0_n15_α:
 mov qword ptr [rbp + 8848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 9040]
 mov rdx, qword ptr [rbp + 9048]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 9200]
 mov rdx, qword ptr [rbp + 9208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx29_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx29_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx29_3]
 lea rdx, [rip + .Lx29_4]
 jmp rax
.Lx29_3:
 mov rax, qword ptr [rbp + 8848]
 test rax, rax
 jne .Lx29_5
 mov qword ptr [rbp + 8848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx29_2
.Lx29_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx29_2
.Lx29_4:
 mov rax, qword ptr [rbp + 8848]
 test rax, rax
 jne .Lx29_6
 mov qword ptr [rbp + 8848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx29_2
.Lx29_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx29_2
.Lx29_1:
 call rt_faildescr@PLT
.Lx29_2:
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 cmp eax, 99
 je xchain0_n6_β
 jmp xchain0_n16_α
 xchain0_n15_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_zebra$1_ω
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [rbp + 10640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 8480], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_zebra$1_ω
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "spanish"
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 8512], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 8520], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_zebra$1_ω
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "dog"
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [rbp + 10656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8544], rax
 mov qword ptr [rbp + 8552], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [rbp + 10672]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_zebra$1_ω
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8736] -> [zr+8624]
 mov rax, qword ptr [rbp + 8736]
 mov qword ptr [rbp + 8624], rax
 mov rax, qword ptr [rbp + 8744]
 mov qword ptr [rbp + 8632], rax
# marshal arg1 = producer-box slot [zr+8448] -> [zr+8640]
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 8640], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 8648], rax
# marshal arg2 = producer-box slot [zr+8480] -> [zr+8656]
 mov rax, qword ptr [rbp + 8480]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8488]
 mov qword ptr [rbp + 8664], rax
# marshal arg3 = producer-box slot [zr+8512] -> [zr+8672]
 mov rax, qword ptr [rbp + 8512]
 mov qword ptr [rbp + 8672], rax
 mov rax, qword ptr [rbp + 8520]
 mov qword ptr [rbp + 8680], rax
# marshal arg4 = producer-box slot [zr+8544] -> [zr+8688]
 mov rax, qword ptr [rbp + 8544]
 mov qword ptr [rbp + 8688], rax
 mov rax, qword ptr [rbp + 8552]
 mov qword ptr [rbp + 8696], rax
# marshal arg5 = producer-box slot [zr+8576] -> [zr+8704]
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8704], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8712], rax
  .section .rodata
  .Lrkfn40: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn40]
 lea rsi, [rbp + 8624]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n23_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8768], rax
 mov qword ptr [rbp + 8776], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n5_α
 xchain0_n24_α:
 mov qword ptr [rbp + 8416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8608]
 mov rdx, qword ptr [rbp + 8616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8768]
 mov rdx, qword ptr [rbp + 8776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx44_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx44_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx44_3]
 lea rdx, [rip + .Lx44_4]
 jmp rax
.Lx44_3:
 mov rax, qword ptr [rbp + 8416]
 test rax, rax
 jne .Lx44_5
 mov qword ptr [rbp + 8416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx44_2
.Lx44_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx44_2
.Lx44_4:
 mov rax, qword ptr [rbp + 8416]
 test rax, rax
 jne .Lx44_6
 mov qword ptr [rbp + 8416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx44_2
.Lx44_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx44_2
.Lx44_1:
 call rt_faildescr@PLT
.Lx44_2:
 mov qword ptr [rbp + 8368], rax
 mov qword ptr [rbp + 8376], rdx
 cmp eax, 99
 je xchain0_n15_β
 jmp xchain0_n25_α
 xchain0_n24_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_zebra$1_ω
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 8016], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 8024], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_zebra$1_ω
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "green"
# IR_VAR_REF
 xchain0_n27_α:
 lea rdi, [rbp + 10592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [rbp + 10608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [rbp + 8112], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 8120], rax
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp proc_zebra$1_ω
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "coffee"
# IR_VAR_REF
 xchain0_n30_α:
 lea rdi, [rbp + 10624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp proc_zebra$1_ω
 xchain0_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8304] -> [zr+8192]
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [rbp + 8192], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [rbp + 8200], rax
# marshal arg1 = producer-box slot [zr+8016] -> [zr+8208]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 8216], rax
# marshal arg2 = producer-box slot [zr+8048] -> [zr+8224]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 8232], rax
# marshal arg3 = producer-box slot [zr+8080] -> [zr+8240]
 mov rax, qword ptr [rbp + 8080]
 mov qword ptr [rbp + 8240], rax
 mov rax, qword ptr [rbp + 8088]
 mov qword ptr [rbp + 8248], rax
# marshal arg4 = producer-box slot [zr+8112] -> [zr+8256]
 mov rax, qword ptr [rbp + 8112]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 8120]
 mov qword ptr [rbp + 8264], rax
# marshal arg5 = producer-box slot [zr+8144] -> [zr+8272]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8280], rax
  .section .rodata
  .Lrkfn55: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn55]
 lea rsi, [rbp + 8192]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8176], rax
 mov qword ptr [rbp + 8184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n5_α
 xchain0_n33_α:
 mov qword ptr [rbp + 7984], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8176]
 mov rdx, qword ptr [rbp + 8184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8336]
 mov rdx, qword ptr [rbp + 8344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx59_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx59_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx59_3]
 lea rdx, [rip + .Lx59_4]
 jmp rax
.Lx59_3:
 mov rax, qword ptr [rbp + 7984]
 test rax, rax
 jne .Lx59_5
 mov qword ptr [rbp + 7984], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx59_2
.Lx59_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx59_2
.Lx59_4:
 mov rax, qword ptr [rbp + 7984]
 test rax, rax
 jne .Lx59_6
 mov qword ptr [rbp + 7984], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx59_2
.Lx59_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx59_2
.Lx59_1:
 call rt_faildescr@PLT
.Lx59_2:
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 cmp eax, 99
 je xchain0_n24_β
 jmp xchain0_n34_α
 xchain0_n33_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [rbp + 7872], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 7880], rax
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp proc_zebra$1_ω
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n35_α:
 lea rdi, [rbp + 10544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n36_α:
 mov qword ptr [rbp + 7616], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp proc_zebra$1_ω
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "ukrainian"
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [rbp + 10560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [rbp + 7680], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 7688], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp proc_zebra$1_ω
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "tea"
# IR_VAR_REF
 xchain0_n39_α:
 lea rdi, [rbp + 10576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp proc_zebra$1_ω
 xchain0_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7872] -> [zr+7760]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7760], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7768], rax
# marshal arg1 = producer-box slot [zr+7584] -> [zr+7776]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7776], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7784], rax
# marshal arg2 = producer-box slot [zr+7616] -> [zr+7792]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7792], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7800], rax
# marshal arg3 = producer-box slot [zr+7648] -> [zr+7808]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7808], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7816], rax
# marshal arg4 = producer-box slot [zr+7680] -> [zr+7824]
 mov rax, qword ptr [rbp + 7680]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7688]
 mov qword ptr [rbp + 7832], rax
# marshal arg5 = producer-box slot [zr+7712] -> [zr+7840]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7848], rax
  .section .rodata
  .Lrkfn70: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn70]
 lea rsi, [rbp + 7760]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n41_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n5_α
 xchain0_n42_α:
 mov qword ptr [rbp + 7552], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 7744]
 mov rdx, qword ptr [rbp + 7752]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7904]
 mov rdx, qword ptr [rbp + 7912]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx74_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx74_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx74_3]
 lea rdx, [rip + .Lx74_4]
 jmp rax
.Lx74_3:
 mov rax, qword ptr [rbp + 7552]
 test rax, rax
 jne .Lx74_5
 mov qword ptr [rbp + 7552], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx74_2
.Lx74_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx74_2
.Lx74_4:
 mov rax, qword ptr [rbp + 7552]
 test rax, rax
 jne .Lx74_6
 mov qword ptr [rbp + 7552], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx74_2
.Lx74_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx74_2
.Lx74_1:
 call rt_faildescr@PLT
.Lx74_2:
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 cmp eax, 99
 je xchain0_n33_β
 jmp xchain0_n43_α
 xchain0_n42_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n43_α:
 mov qword ptr [rbp + 7120], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 7128], rax
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp proc_zebra$1_ω
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n44_α:
 mov qword ptr [rbp + 6832], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 6840], rax
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp proc_zebra$1_ω
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "green"
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [rbp + 10416]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6864], rax
 mov qword ptr [rbp + 6872], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n46_α:
 lea rdi, [rbp + 10432]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6896], rax
 mov qword ptr [rbp + 6904], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n47_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n48_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp proc_zebra$1_ω
 xchain0_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7120] -> [zr+7008]
 mov rax, qword ptr [rbp + 7120]
 mov qword ptr [rbp + 7008], rax
 mov rax, qword ptr [rbp + 7128]
 mov qword ptr [rbp + 7016], rax
# marshal arg1 = producer-box slot [zr+6832] -> [zr+7024]
 mov rax, qword ptr [rbp + 6832]
 mov qword ptr [rbp + 7024], rax
 mov rax, qword ptr [rbp + 6840]
 mov qword ptr [rbp + 7032], rax
# marshal arg2 = producer-box slot [zr+6864] -> [zr+7040]
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 7048], rax
# marshal arg3 = producer-box slot [zr+6896] -> [zr+7056]
 mov rax, qword ptr [rbp + 6896]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 6904]
 mov qword ptr [rbp + 7064], rax
# marshal arg4 = producer-box slot [zr+6928] -> [zr+7072]
 mov rax, qword ptr [rbp + 6928]
 mov qword ptr [rbp + 7072], rax
 mov rax, qword ptr [rbp + 6936]
 mov qword ptr [rbp + 7080], rax
# marshal arg5 = producer-box slot [zr+6960] -> [zr+7088]
 mov rax, qword ptr [rbp + 6960]
 mov qword ptr [rbp + 7088], rax
 mov rax, qword ptr [rbp + 6968]
 mov qword ptr [rbp + 7096], rax
  .section .rodata
  .Lrkfn86: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 7008]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp proc_zebra$1_ω
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [rbp + 7152], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 7160], rax
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp proc_zebra$1_ω
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "ivory"
# IR_VAR_REF
 xchain0_n52_α:
 lea rdi, [rbp + 10480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n54_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n55_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp proc_zebra$1_ω
 xchain0_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7440] -> [zr+7328]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7328], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7336], rax
# marshal arg1 = producer-box slot [zr+7152] -> [zr+7344]
 mov rax, qword ptr [rbp + 7152]
 mov qword ptr [rbp + 7344], rax
 mov rax, qword ptr [rbp + 7160]
 mov qword ptr [rbp + 7352], rax
# marshal arg2 = producer-box slot [zr+7184] -> [zr+7360]
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7368], rax
# marshal arg3 = producer-box slot [zr+7216] -> [zr+7376]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7384], rax
# marshal arg4 = producer-box slot [zr+7248] -> [zr+7392]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7392], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7400], rax
# marshal arg5 = producer-box slot [zr+7280] -> [zr+7408]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7408], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7416], rax
  .section .rodata
  .Lrkfn98: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn98]
 lea rsi, [rbp + 7328]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n57_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n5_α
 xchain0_n58_α:
 mov qword ptr [rbp + 6800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6992]
 mov rdx, qword ptr [rbp + 7000]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7312]
 mov rdx, qword ptr [rbp + 7320]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 7472]
 mov rdx, qword ptr [rbp + 7480]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx102_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx102_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx102_3]
 lea rdx, [rip + .Lx102_4]
 jmp rax
.Lx102_3:
 mov rax, qword ptr [rbp + 6800]
 test rax, rax
 jne .Lx102_5
 mov qword ptr [rbp + 6800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx102_2
.Lx102_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx102_2
.Lx102_4:
 mov rax, qword ptr [rbp + 6800]
 test rax, rax
 jne .Lx102_6
 mov qword ptr [rbp + 6800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx102_2
.Lx102_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx102_2
.Lx102_1:
 call rt_faildescr@PLT
.Lx102_2:
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n59_α
 xchain0_n58_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "right_of/3"
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [rbp + 6672], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 6680], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp proc_zebra$1_ω
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n60_α:
 lea rdi, [rbp + 10368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n61_α:
 lea rdi, [rbp + 10384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n62_α:
 mov qword ptr [rbp + 6448], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 6456], rax
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp proc_zebra$1_ω
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "snails"
# IR_VAR_REF
 xchain0_n63_α:
 lea rdi, [rbp + 10400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n64_α:
 mov qword ptr [rbp + 6512], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 6520], rax
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp proc_zebra$1_ω
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "winstons"
 xchain0_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6560]
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6568], rax
# marshal arg1 = producer-box slot [zr+6384] -> [zr+6576]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6576], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6584], rax
# marshal arg2 = producer-box slot [zr+6416] -> [zr+6592]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6592], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6600], rax
# marshal arg3 = producer-box slot [zr+6448] -> [zr+6608]
 mov rax, qword ptr [rbp + 6448]
 mov qword ptr [rbp + 6608], rax
 mov rax, qword ptr [rbp + 6456]
 mov qword ptr [rbp + 6616], rax
# marshal arg4 = producer-box slot [zr+6480] -> [zr+6624]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6632], rax
# marshal arg5 = producer-box slot [zr+6512] -> [zr+6640]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6648], rax
  .section .rodata
  .Lrkfn113: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn113]
 lea rsi, [rbp + 6560]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n66_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n5_α
 xchain0_n67_α:
 mov qword ptr [rbp + 6352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6544]
 mov rdx, qword ptr [rbp + 6552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 6704]
 mov rdx, qword ptr [rbp + 6712]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx117_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx117_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx117_3]
 lea rdx, [rip + .Lx117_4]
 jmp rax
.Lx117_3:
 mov rax, qword ptr [rbp + 6352]
 test rax, rax
 jne .Lx117_5
 mov qword ptr [rbp + 6352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx117_2
.Lx117_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx117_2
.Lx117_4:
 mov rax, qword ptr [rbp + 6352]
 test rax, rax
 jne .Lx117_6
 mov qword ptr [rbp + 6352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx117_2
.Lx117_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx117_2
.Lx117_1:
 call rt_faildescr@PLT
.Lx117_2:
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 cmp eax, 99
 je xchain0_n58_β
 jmp xchain0_n68_α
 xchain0_n67_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n68_α:
 mov qword ptr [rbp + 6240], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 6248], rax
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp proc_zebra$1_ω
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n69_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp proc_zebra$1_ω
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "yellow"
# IR_VAR_REF
 xchain0_n70_α:
 lea rdi, [rbp + 10320]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n71_α:
 lea rdi, [rbp + 10336]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n72_α:
 lea rdi, [rbp + 10352]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n73_α:
 mov qword ptr [rbp + 6080], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 6088], rax
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp proc_zebra$1_ω
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "kools"
 xchain0_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6128]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6128], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6136], rax
# marshal arg1 = producer-box slot [zr+5952] -> [zr+6144]
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 6152], rax
# marshal arg2 = producer-box slot [zr+5984] -> [zr+6160]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 6160], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 6168], rax
# marshal arg3 = producer-box slot [zr+6016] -> [zr+6176]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 6184], rax
# marshal arg4 = producer-box slot [zr+6048] -> [zr+6192]
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 6200], rax
# marshal arg5 = producer-box slot [zr+6080] -> [zr+6208]
 mov rax, qword ptr [rbp + 6080]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6088]
 mov qword ptr [rbp + 6216], rax
  .section .rodata
  .Lrkfn128: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 6128]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n75_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n5_α
 xchain0_n76_α:
 mov qword ptr [rbp + 5920], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6112]
 mov rdx, qword ptr [rbp + 6120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 6272]
 mov rdx, qword ptr [rbp + 6280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx132_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx132_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx132_3]
 lea rdx, [rip + .Lx132_4]
 jmp rax
.Lx132_3:
 mov rax, qword ptr [rbp + 5920]
 test rax, rax
 jne .Lx132_5
 mov qword ptr [rbp + 5920], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx132_2
.Lx132_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx132_2
.Lx132_4:
 mov rax, qword ptr [rbp + 5920]
 test rax, rax
 jne .Lx132_6
 mov qword ptr [rbp + 5920], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx132_2
.Lx132_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx132_2
.Lx132_1:
 call rt_faildescr@PLT
.Lx132_2:
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain0_n67_β
 jmp xchain0_n77_α
 xchain0_n76_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "my_member/2"
# IR_VAR_REF
 xchain0_n77_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n78_α:
 mov qword ptr [rbp + 5840], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [rbp + 5848], rax
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp proc_zebra$1_ω
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n79_α:
 lea rdi, [rbp + 10304]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n80_α:
 mov qword ptr [rbp + 5696], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp proc_zebra$1_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n81_α:
 lea rdi, [rbp + 10288]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n82_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp proc_zebra$1_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "."
# IR_LIT_STRING
 xchain0_n83_α:
 mov qword ptr [rbp + 5440], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 5448], rax
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp proc_zebra$1_ω
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n84_α:
 lea rdi, [rbp + 10224]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain0_n85_α
 xchain0_n84_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n85_α:
 lea rdi, [rbp + 10240]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 jmp xchain0_n86_α
 xchain0_n85_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n86_α:
 lea rdi, [rbp + 10256]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain0_n87_α
 xchain0_n86_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n87_α:
 mov qword ptr [rbp + 5248], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 5256], rax
 jmp xchain0_n88_α
 xchain0_n87_β:
 jmp proc_zebra$1_ω
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "milk"
# IR_VAR_REF
 xchain0_n88_α:
 lea rdi, [rbp + 10272]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain0_n89_α
 xchain0_n88_β:
 jmp proc_zebra$1_ω
 xchain0_n89_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5440] -> [zr+5328]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5336], rax
# marshal arg1 = producer-box slot [zr+5152] -> [zr+5344]
 mov rax, qword ptr [rbp + 5152]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5160]
 mov qword ptr [rbp + 5352], rax
# marshal arg2 = producer-box slot [zr+5184] -> [zr+5360]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5368], rax
# marshal arg3 = producer-box slot [zr+5216] -> [zr+5376]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5384], rax
# marshal arg4 = producer-box slot [zr+5248] -> [zr+5392]
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 5400], rax
# marshal arg5 = producer-box slot [zr+5280] -> [zr+5408]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5408], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5416], rax
  .section .rodata
  .Lrkfn153: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn153]
 lea rsi, [rbp + 5328]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n90_α
 xchain0_n89_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n90_α:
 mov qword ptr [rbp + 5120], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 5128], rax
 jmp xchain0_n91_α
 xchain0_n90_β:
 jmp proc_zebra$1_ω
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n91_α:
 lea rdi, [rbp + 10208]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain0_n92_α
 xchain0_n91_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n92_α:
 mov qword ptr [rbp + 4976], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [rbp + 4984], rax
 jmp xchain0_n93_α
 xchain0_n92_β:
 jmp proc_zebra$1_ω
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n93_α:
 lea rdi, [rbp + 10192]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain0_n94_α
 xchain0_n93_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n94_α:
 mov qword ptr [rbp + 4832], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain0_n95_α
 xchain0_n94_β:
 jmp proc_zebra$1_ω
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "[]"
 xchain0_n95_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4976] -> [zr+4912]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4920], rax
# marshal arg1 = producer-box slot [zr+4864] -> [zr+4928]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4936], rax
# marshal arg2 = producer-box slot [zr+4832] -> [zr+4944]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4952], rax
  .section .rodata
  .Lrkfn162: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 4912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n96_α
 xchain0_n95_β:
 jmp proc_zebra$1_ω
 xchain0_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5120] -> [zr+5056]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5064], rax
# marshal arg1 = producer-box slot [zr+5008] -> [zr+5072]
 mov rax, qword ptr [rbp + 5008]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5016]
 mov qword ptr [rbp + 5080], rax
# marshal arg2 = producer-box slot [zr+4896] -> [zr+5088]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 5096], rax
  .section .rodata
  .Lrkfn164: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn164]
 lea rsi, [rbp + 5056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n97_α
 xchain0_n96_β:
 jmp proc_zebra$1_ω
 xchain0_n97_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5488]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+5312] -> [zr+5504]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5512], rax
# marshal arg2 = producer-box slot [zr+5040] -> [zr+5520]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 5528], rax
  .section .rodata
  .Lrkfn166: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn166]
 lea rsi, [rbp + 5488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n98_α
 xchain0_n97_β:
 jmp proc_zebra$1_ω
 xchain0_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5584] -> [zr+5648]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5472] -> [zr+5664]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5672], rax
  .section .rodata
  .Lrkfn168: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn168]
 lea rsi, [rbp + 5632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n99_α
 xchain0_n98_β:
 jmp proc_zebra$1_ω
 xchain0_n99_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5776]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5792]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5800], rax
# marshal arg2 = producer-box slot [zr+5616] -> [zr+5808]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5816], rax
  .section .rodata
  .Lrkfn170: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn170]
 lea rsi, [rbp + 5776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n5_α
 xchain0_n100_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4800] -> [zr+4752]
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+5760] -> [zr+4768]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 4776], rax
  .section .rodata
  .Lrkfn172: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn172]
 lea rsi, [rbp + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n101_α
 xchain0_n100_β:
 jmp xchain0_n76_β
# IR_VAR_REF
 xchain0_n101_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain0_n102_α
 xchain0_n101_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n102_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain0_n103_α
 xchain0_n102_β:
 jmp proc_zebra$1_ω
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "."
# IR_LIT_STRING
 xchain0_n103_α:
 mov qword ptr [rbp + 4592], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain0_n104_α
 xchain0_n103_β:
 jmp proc_zebra$1_ω
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n104_α:
 lea rdi, [rbp + 10128]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain0_n105_α
 xchain0_n104_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n105_α:
 mov qword ptr [rbp + 4336], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 4344], rax
 jmp xchain0_n106_α
 xchain0_n105_β:
 jmp proc_zebra$1_ω
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "norwegian"
# IR_VAR_REF
 xchain0_n106_α:
 lea rdi, [rbp + 10144]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain0_n107_α
 xchain0_n106_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n107_α:
 lea rdi, [rbp + 10160]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain0_n108_α
 xchain0_n107_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n108_α:
 lea rdi, [rbp + 10176]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain0_n109_α
 xchain0_n108_β:
 jmp proc_zebra$1_ω
 xchain0_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4592] -> [zr+4480]
 mov rax, qword ptr [rbp + 4592]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4600]
 mov qword ptr [rbp + 4488], rax
# marshal arg1 = producer-box slot [zr+4304] -> [zr+4496]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4504], rax
# marshal arg2 = producer-box slot [zr+4336] -> [zr+4512]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4520], rax
# marshal arg3 = producer-box slot [zr+4368] -> [zr+4528]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4536], rax
# marshal arg4 = producer-box slot [zr+4400] -> [zr+4544]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4552], rax
# marshal arg5 = producer-box slot [zr+4432] -> [zr+4560]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4568], rax
  .section .rodata
  .Lrkfn187: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn187]
 lea rsi, [rbp + 4480]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n110_α
 xchain0_n109_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n110_α:
 lea rdi, [rbp + 10112]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain0_n111_α
 xchain0_n110_β:
 jmp proc_zebra$1_ω
 xchain0_n111_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4640]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4648], rax
# marshal arg1 = producer-box slot [zr+4464] -> [zr+4656]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4664], rax
# marshal arg2 = producer-box slot [zr+4272] -> [zr+4672]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4680], rax
  .section .rodata
  .Lrkfn191: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 4640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n112_α
 xchain0_n111_β:
 jmp xchain0_n5_α
 xchain0_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4240] -> [zr+4192]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4200], rax
# marshal arg1 = producer-box slot [zr+4624] -> [zr+4208]
 mov rax, qword ptr [rbp + 4624]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 4216], rax
  .section .rodata
  .Lrkfn193: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn193]
 lea rsi, [rbp + 4192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n113_α
 xchain0_n112_β:
 jmp xchain0_n76_β
# IR_LIT_STRING
 xchain0_n113_α:
 mov qword ptr [rbp + 3792], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 3800], rax
 jmp xchain0_n114_α
 xchain0_n113_β:
 jmp proc_zebra$1_ω
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n114_α:
 lea rdi, [rbp + 9984]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain0_n115_α
 xchain0_n114_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n115_α:
 lea rdi, [rbp + 10000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain0_n116_α
 xchain0_n115_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n116_α:
 lea rdi, [rbp + 10016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain0_n117_α
 xchain0_n116_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n117_α:
 lea rdi, [rbp + 10032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain0_n118_α
 xchain0_n117_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n118_α:
 mov qword ptr [rbp + 3632], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 3640], rax
 jmp xchain0_n119_α
 xchain0_n118_β:
 jmp proc_zebra$1_ω
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "chesterfields"
 xchain0_n119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3680]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3688], rax
# marshal arg1 = producer-box slot [zr+3504] -> [zr+3696]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3696], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3704], rax
# marshal arg2 = producer-box slot [zr+3536] -> [zr+3712]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3720], rax
# marshal arg3 = producer-box slot [zr+3568] -> [zr+3728]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3736], rax
# marshal arg4 = producer-box slot [zr+3600] -> [zr+3744]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3752], rax
# marshal arg5 = producer-box slot [zr+3632] -> [zr+3760]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3768], rax
  .section .rodata
  .Lrkfn205: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn205]
 lea rsi, [rbp + 3680]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n120_α
 xchain0_n119_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n120_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain0_n121_α
 xchain0_n120_β:
 jmp proc_zebra$1_ω
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n121_α:
 lea rdi, [rbp + 10048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain0_n122_α
 xchain0_n121_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n122_α:
 lea rdi, [rbp + 10064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain0_n123_α
 xchain0_n122_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n123_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain0_n124_α
 xchain0_n123_β:
 jmp proc_zebra$1_ω
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "fox"
# IR_VAR_REF
 xchain0_n124_α:
 lea rdi, [rbp + 10080]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain0_n125_α
 xchain0_n124_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n125_α:
 lea rdi, [rbp + 10096]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain0_n126_α
 xchain0_n125_β:
 jmp proc_zebra$1_ω
 xchain0_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4000]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4008], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+4016]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 4024], rax
# marshal arg2 = producer-box slot [zr+3856] -> [zr+4032]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 4040], rax
# marshal arg3 = producer-box slot [zr+3888] -> [zr+4048]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 4056], rax
# marshal arg4 = producer-box slot [zr+3920] -> [zr+4064]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 4072], rax
# marshal arg5 = producer-box slot [zr+3952] -> [zr+4080]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 4088], rax
  .section .rodata
  .Lrkfn217: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn217]
 lea rsi, [rbp + 4000]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n127_α
 xchain0_n126_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n127_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain0_n128_α
 xchain0_n127_β:
 jmp xchain0_n5_α
 xchain0_n128_α:
 mov qword ptr [rbp + 3472], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3664]
 mov rdx, qword ptr [rbp + 3672]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3984]
 mov rdx, qword ptr [rbp + 3992]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4144]
 mov rdx, qword ptr [rbp + 4152]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx221_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx221_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx221_3]
 lea rdx, [rip + .Lx221_4]
 jmp rax
.Lx221_3:
 mov rax, qword ptr [rbp + 3472]
 test rax, rax
 jne .Lx221_5
 mov qword ptr [rbp + 3472], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx221_2
.Lx221_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx221_2
.Lx221_4:
 mov rax, qword ptr [rbp + 3472]
 test rax, rax
 jne .Lx221_6
 mov qword ptr [rbp + 3472], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx221_2
.Lx221_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx221_2
.Lx221_1:
 call rt_faildescr@PLT
.Lx221_2:
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n129_α
 xchain0_n128_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "next_to/3"
# IR_LIT_STRING
 xchain0_n129_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain0_n130_α
 xchain0_n129_β:
 jmp proc_zebra$1_ω
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n130_α:
 lea rdi, [rbp + 9856]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain0_n131_α
 xchain0_n130_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n131_α:
 lea rdi, [rbp + 9872]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain0_n132_α
 xchain0_n131_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n132_α:
 lea rdi, [rbp + 9888]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain0_n133_α
 xchain0_n132_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n133_α:
 lea rdi, [rbp + 9904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain0_n134_α
 xchain0_n133_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n134_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain0_n135_α
 xchain0_n134_β:
 jmp proc_zebra$1_ω
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "kools"
 xchain0_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2912]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2928]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2936], rax
# marshal arg2 = producer-box slot [zr+2768] -> [zr+2944]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2952], rax
# marshal arg3 = producer-box slot [zr+2800] -> [zr+2960]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2968], rax
# marshal arg4 = producer-box slot [zr+2832] -> [zr+2976]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2984], rax
# marshal arg5 = producer-box slot [zr+2864] -> [zr+2992]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 3000], rax
  .section .rodata
  .Lrkfn233: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
 lea rsi, [rbp + 2912]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n136_α
 xchain0_n135_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n136_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain0_n137_α
 xchain0_n136_β:
 jmp proc_zebra$1_ω
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n137_α:
 lea rdi, [rbp + 9920]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain0_n138_α
 xchain0_n137_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n138_α:
 lea rdi, [rbp + 9936]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain0_n139_α
 xchain0_n138_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n139_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain0_n140_α
 xchain0_n139_β:
 jmp proc_zebra$1_ω
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "horse"
# IR_VAR_REF
 xchain0_n140_α:
 lea rdi, [rbp + 9952]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain0_n141_α
 xchain0_n140_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n141_α:
 lea rdi, [rbp + 9968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain0_n142_α
 xchain0_n141_β:
 jmp proc_zebra$1_ω
 xchain0_n142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3232]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3240], rax
# marshal arg1 = producer-box slot [zr+3056] -> [zr+3248]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3256], rax
# marshal arg2 = producer-box slot [zr+3088] -> [zr+3264]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3272], rax
# marshal arg3 = producer-box slot [zr+3120] -> [zr+3280]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3288], rax
# marshal arg4 = producer-box slot [zr+3152] -> [zr+3296]
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3304], rax
# marshal arg5 = producer-box slot [zr+3184] -> [zr+3312]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3320], rax
  .section .rodata
  .Lrkfn245: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 3232]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n143_α
 xchain0_n142_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n143_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain0_n144_α
 xchain0_n143_β:
 jmp xchain0_n5_α
 xchain0_n144_α:
 mov qword ptr [rbp + 2704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3376]
 mov rdx, qword ptr [rbp + 3384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx249_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx249_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx249_3]
 lea rdx, [rip + .Lx249_4]
 jmp rax
.Lx249_3:
 mov rax, qword ptr [rbp + 2704]
 test rax, rax
 jne .Lx249_5
 mov qword ptr [rbp + 2704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx249_2
.Lx249_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx249_2
.Lx249_4:
 mov rax, qword ptr [rbp + 2704]
 test rax, rax
 jne .Lx249_6
 mov qword ptr [rbp + 2704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx249_2
.Lx249_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx249_2
.Lx249_1:
 call rt_faildescr@PLT
.Lx249_2:
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain0_n128_β
 jmp xchain0_n145_α
 xchain0_n144_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "next_to/3"
# IR_LIT_STRING
 xchain0_n145_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain0_n146_α
 xchain0_n145_β:
 jmp proc_zebra$1_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n146_α:
 lea rdi, [rbp + 9808]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n147_α
 xchain0_n146_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n147_α:
 lea rdi, [rbp + 9824]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain0_n148_α
 xchain0_n147_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n148_α:
 lea rdi, [rbp + 9840]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain0_n149_α
 xchain0_n148_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n149_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain0_n150_α
 xchain0_n149_β:
 jmp proc_zebra$1_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "orange_juice"
# IR_LIT_STRING
 xchain0_n150_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain0_n151_α
 xchain0_n150_β:
 jmp proc_zebra$1_ω
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "lucky_strikes"
 xchain0_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2464]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2480]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2488], rax
# marshal arg2 = producer-box slot [zr+2320] -> [zr+2496]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2504], rax
# marshal arg3 = producer-box slot [zr+2352] -> [zr+2512]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2520], rax
# marshal arg4 = producer-box slot [zr+2384] -> [zr+2528]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2536], rax
# marshal arg5 = producer-box slot [zr+2416] -> [zr+2544]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2552], rax
  .section .rodata
  .Lrkfn260: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn260]
 lea rsi, [rbp + 2464]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n152_α
 xchain0_n151_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n152_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain0_n153_α
 xchain0_n152_β:
 jmp xchain0_n5_α
 xchain0_n153_α:
 mov qword ptr [rbp + 2256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2448]
 mov rdx, qword ptr [rbp + 2456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx264_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx264_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx264_3]
 lea rdx, [rip + .Lx264_4]
 jmp rax
.Lx264_3:
 mov rax, qword ptr [rbp + 2256]
 test rax, rax
 jne .Lx264_5
 mov qword ptr [rbp + 2256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx264_2
.Lx264_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx264_2
.Lx264_4:
 mov rax, qword ptr [rbp + 2256]
 test rax, rax
 jne .Lx264_6
 mov qword ptr [rbp + 2256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx264_2
.Lx264_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx264_2
.Lx264_1:
 call rt_faildescr@PLT
.Lx264_2:
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain0_n144_β
 jmp xchain0_n154_α
 xchain0_n153_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n154_α:
 mov qword ptr [rbp + 2144], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain0_n155_α
 xchain0_n154_β:
 jmp proc_zebra$1_ω
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n155_α:
 lea rdi, [rbp + 9760]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain0_n156_α
 xchain0_n155_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n156_α:
 mov qword ptr [rbp + 1888], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain0_n157_α
 xchain0_n156_β:
 jmp proc_zebra$1_ω
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "japanese"
# IR_VAR_REF
 xchain0_n157_α:
 lea rdi, [rbp + 9776]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain0_n158_α
 xchain0_n157_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n158_α:
 lea rdi, [rbp + 9792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain0_n159_α
 xchain0_n158_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n159_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain0_n160_α
 xchain0_n159_β:
 jmp proc_zebra$1_ω
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "parliaments"
 xchain0_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2032]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+2048]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+1888] -> [zr+2064]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 2072], rax
# marshal arg3 = producer-box slot [zr+1920] -> [zr+2080]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 2088], rax
# marshal arg4 = producer-box slot [zr+1952] -> [zr+2096]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 2104], rax
# marshal arg5 = producer-box slot [zr+1984] -> [zr+2112]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 2120], rax
  .section .rodata
  .Lrkfn275: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn275]
 lea rsi, [rbp + 2032]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n161_α
 xchain0_n160_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n161_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain0_n162_α
 xchain0_n161_β:
 jmp xchain0_n5_α
 xchain0_n162_α:
 mov qword ptr [rbp + 1824], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx279_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx279_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx279_3]
 lea rdx, [rip + .Lx279_4]
 jmp rax
.Lx279_3:
 mov rax, qword ptr [rbp + 1824]
 test rax, rax
 jne .Lx279_5
 mov qword ptr [rbp + 1824], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx279_2
.Lx279_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx279_2
.Lx279_4:
 mov rax, qword ptr [rbp + 1824]
 test rax, rax
 jne .Lx279_6
 mov qword ptr [rbp + 1824], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx279_2
.Lx279_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx279_2
.Lx279_1:
 call rt_faildescr@PLT
.Lx279_2:
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain0_n153_β
 jmp xchain0_n163_α
 xchain0_n162_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n163_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain0_n164_α
 xchain0_n163_β:
 jmp proc_zebra$1_ω
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n164_α:
 lea rdi, [rbp + 9632]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n165_α
 xchain0_n164_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n165_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain0_n166_α
 xchain0_n165_β:
 jmp proc_zebra$1_ω
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "norwegian"
# IR_VAR_REF
 xchain0_n166_α:
 lea rdi, [rbp + 9648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n167_α
 xchain0_n166_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n167_α:
 lea rdi, [rbp + 9664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n168_α
 xchain0_n167_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n168_α:
 lea rdi, [rbp + 9680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain0_n169_α
 xchain0_n168_β:
 jmp proc_zebra$1_ω
 xchain0_n169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1280]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1296]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+1312]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1320], rax
# marshal arg3 = producer-box slot [zr+1168] -> [zr+1328]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1336], rax
# marshal arg4 = producer-box slot [zr+1200] -> [zr+1344]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1352], rax
# marshal arg5 = producer-box slot [zr+1232] -> [zr+1360]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1368], rax
  .section .rodata
  .Lrkfn291: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn291]
 lea rsi, [rbp + 1280]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n170_α
 xchain0_n169_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n170_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain0_n171_α
 xchain0_n170_β:
 jmp proc_zebra$1_ω
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n171_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain0_n172_α
 xchain0_n171_β:
 jmp proc_zebra$1_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "blue"
# IR_VAR_REF
 xchain0_n172_α:
 lea rdi, [rbp + 9696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain0_n173_α
 xchain0_n172_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n173_α:
 lea rdi, [rbp + 9712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n174_α
 xchain0_n173_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n174_α:
 lea rdi, [rbp + 9728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain0_n175_α
 xchain0_n174_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n175_α:
 lea rdi, [rbp + 9744]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n176_α
 xchain0_n175_β:
 jmp proc_zebra$1_ω
 xchain0_n176_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1600]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1616]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1624], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1632]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1640], rax
# marshal arg3 = producer-box slot [zr+1488] -> [zr+1648]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1656], rax
# marshal arg4 = producer-box slot [zr+1520] -> [zr+1664]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1672], rax
# marshal arg5 = producer-box slot [zr+1552] -> [zr+1680]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1688], rax
  .section .rodata
  .Lrkfn303: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn303]
 lea rsi, [rbp + 1600]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n177_α
 xchain0_n176_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n177_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n178_α
 xchain0_n177_β:
 jmp xchain0_n5_α
 xchain0_n178_α:
 mov qword ptr [rbp + 1072], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1264]
 mov rdx, qword ptr [rbp + 1272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx307_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx307_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx307_3]
 lea rdx, [rip + .Lx307_4]
 jmp rax
.Lx307_3:
 mov rax, qword ptr [rbp + 1072]
 test rax, rax
 jne .Lx307_5
 mov qword ptr [rbp + 1072], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx307_2
.Lx307_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx307_2
.Lx307_4:
 mov rax, qword ptr [rbp + 1072]
 test rax, rax
 jne .Lx307_6
 mov qword ptr [rbp + 1072], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx307_2
.Lx307_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx307_2
.Lx307_1:
 call rt_faildescr@PLT
.Lx307_2:
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain0_n162_β
 jmp xchain0_n179_α
 xchain0_n178_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "next_to/3"
# IR_LIT_STRING
 xchain0_n179_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n180_α
 xchain0_n179_β:
 jmp proc_zebra$1_ω
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n180_α:
 lea rdi, [rbp + 9568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n181_α
 xchain0_n180_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n181_α:
 lea rdi, [rbp + 9584]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain0_n182_α
 xchain0_n181_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n182_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n183_α
 xchain0_n182_β:
 jmp proc_zebra$1_ω
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "zebra"
# IR_VAR_REF
 xchain0_n183_α:
 lea rdi, [rbp + 9600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n184_α
 xchain0_n183_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n184_α:
 lea rdi, [rbp + 9616]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n185_α
 xchain0_n184_β:
 jmp proc_zebra$1_ω
 xchain0_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+832]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+848]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 856], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+864]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 872], rax
# marshal arg3 = producer-box slot [zr+720] -> [zr+880]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 888], rax
# marshal arg4 = producer-box slot [zr+752] -> [zr+896]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 904], rax
# marshal arg5 = producer-box slot [zr+784] -> [zr+912]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn319: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn319]
 lea rsi, [rbp + 832]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n186_α
 xchain0_n185_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n186_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n187_α
 xchain0_n186_β:
 jmp xchain0_n5_α
 xchain0_n187_α:
 mov qword ptr [rbp + 624], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx323_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx323_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx323_3]
 lea rdx, [rip + .Lx323_4]
 jmp rax
.Lx323_3:
 mov rax, qword ptr [rbp + 624]
 test rax, rax
 jne .Lx323_5
 mov qword ptr [rbp + 624], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx323_2
.Lx323_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx323_2
.Lx323_4:
 mov rax, qword ptr [rbp + 624]
 test rax, rax
 jne .Lx323_6
 mov qword ptr [rbp + 624], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx323_2
.Lx323_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx323_2
.Lx323_1:
 call rt_faildescr@PLT
.Lx323_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n178_β
 jmp xchain0_n188_α
 xchain0_n187_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n188_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n189_α
 xchain0_n188_β:
 jmp proc_zebra$1_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n189_α:
 lea rdi, [rbp + 9488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n190_α
 xchain0_n189_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n190_α:
 lea rdi, [rbp + 9504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n191_α
 xchain0_n190_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n191_α:
 lea rdi, [rbp + 9520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n192_α
 xchain0_n191_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n192_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n193_α
 xchain0_n192_β:
 jmp proc_zebra$1_ω
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "water"
# IR_VAR_REF
 xchain0_n193_α:
 lea rdi, [rbp + 9536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n194_α
 xchain0_n193_β:
 jmp proc_zebra$1_ω
 xchain0_n194_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+400]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+416]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+432]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 440], rax
# marshal arg3 = producer-box slot [zr+288] -> [zr+448]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 456], rax
# marshal arg4 = producer-box slot [zr+320] -> [zr+464]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 472], rax
# marshal arg5 = producer-box slot [zr+352] -> [zr+480]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 400]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n195_α
 xchain0_n194_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n195_α:
 lea rdi, [rbp + 9552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n196_α
 xchain0_n195_β:
 jmp xchain0_n5_α
 xchain0_n196_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx339_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx339_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx339_3]
 lea rdx, [rip + .Lx339_4]
 jmp rax
.Lx339_3:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx339_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx339_2
.Lx339_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx339_2
.Lx339_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx339_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx339_2
.Lx339_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx339_2
.Lx339_1:
 call rt_faildescr@PLT
.Lx339_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain0_n187_β
 jmp xchain0_n197_α
 xchain0_n196_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "my_member/2"
# IR_SUSPEND yield+resume
 xchain0_n197_α:
 lea rax, [rip + xchain0_n197_β]
 mov qword ptr [rbp + 9456], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zebra$1_γ
 xchain0_n197_β:
 jmp xchain0_n196_β
proc_zebra$1_res:
add rsp, 8
pop rbp
proc_zebra$1_β:
jmp qword ptr [rbp + 9456]
proc_zebra$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_zebra$1_res]
push rax
mov rax, [rbp + 10744]
mov rbp, [rbp + 10760]
jmp rax
proc_zebra$1_ω:
mov rax, [rbp + 10752]
lea rsp, [rbp + 10768]
mov rbp, [rbp + 10760]
jmp rax
  .globl proc_right_of$3_α
proc_right_of$3_α:
#=======================================================================================================================
    .global proc_right_of$3_α
    .global proc_right_of$3_β
    .global proc_right_of$3_γ
    .global proc_right_of$3_ω
  sub rsp, 1744
  mov [rsp + 1720], rcx
  mov [rsp + 1728], rdx
  mov [rsp + 1736], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1712
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1640], rsp
  mov rdi, rsp
  mov esi, 1712
  call rt_jmp_frame_lexprep@PLT
proc_right_of$3_α_body:
lea rax, [rip + xchain342_n29_β]
mov qword ptr [rbp + 1616], rax
 xchain342_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn344: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn344]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp xchain342_n1_α
 xchain342_n0_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain342_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain342_n2_α
 xchain342_n1_β:
 jmp xchain342_n5_α
# IR_VAR_REF
 xchain342_n2_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain342_n3_α
 xchain342_n2_β:
 jmp xchain342_n5_α
 xchain342_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn350: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn350]
 lea rsi, [rbp + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain342_n5_α
 jmp xchain342_n4_α
 xchain342_n3_β:
 jmp xchain342_n5_α
# IR_VAR_REF
 xchain342_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain342_n6_α
 xchain342_n4_β:
 jmp xchain342_n5_α
 xchain342_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+912]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn354: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn354]
 lea rsi, [rbp + 912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp xchain342_n7_α
 xchain342_n5_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain342_n6_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain342_n8_α
 xchain342_n6_β:
 jmp xchain342_n5_α
# IR_VAR_REF
 xchain342_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain342_n9_α
 xchain342_n7_β:
 jmp xchain342_n14_α
 xchain342_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn360: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn360]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain342_n5_α
 jmp xchain342_n10_α
 xchain342_n8_β:
 jmp xchain342_n5_α
# IR_VAR_REF
 xchain342_n9_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain342_n11_α
 xchain342_n9_β:
 jmp xchain342_n14_α
# IR_VAR_REF
 xchain342_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain342_n12_α
 xchain342_n10_β:
 jmp xchain342_n5_α
 xchain342_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn366: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn366]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain342_n14_α
 jmp xchain342_n13_α
 xchain342_n11_β:
 jmp xchain342_n14_α
# IR_LIT_STRING
 xchain342_n12_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain342_n15_α
 xchain342_n12_β:
 jmp proc_right_of$3_ω
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "."
# IR_VAR_REF
 xchain342_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain342_n16_α
 xchain342_n13_β:
 jmp xchain342_n14_α
 xchain342_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn371: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn371]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp proc_right_of$3_ω
 xchain342_n14_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain342_n15_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain342_n17_α
 xchain342_n15_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain342_n16_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain342_n18_α
 xchain342_n16_β:
 jmp xchain342_n14_α
# IR_LIT_STRING
 xchain342_n17_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain342_n19_α
 xchain342_n17_β:
 jmp proc_right_of$3_ω
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
 xchain342_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn378: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn378]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain342_n14_α
 jmp xchain342_n20_α
 xchain342_n18_β:
 jmp xchain342_n14_α
# IR_VAR_REF
 xchain342_n19_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain342_n21_α
 xchain342_n19_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain342_n20_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain342_n22_α
 xchain342_n20_β:
 jmp xchain342_n14_α
# IR_VAR_REF
 xchain342_n21_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain342_n23_α
 xchain342_n21_β:
 jmp proc_right_of$3_ω
# IR_LIT_STRING
 xchain342_n22_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain342_n24_α
 xchain342_n22_β:
 jmp proc_right_of$3_ω
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "."
 xchain342_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1136]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1152]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn387: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn387]
 lea rsi, [rbp + 1120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp xchain342_n25_α
 xchain342_n23_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain342_n24_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain342_n26_α
 xchain342_n24_β:
 jmp proc_right_of$3_ω
 xchain342_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1280]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1296]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn391: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn391]
 lea rsi, [rbp + 1264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain342_n5_α
 jmp xchain342_n27_α
 xchain342_n25_β:
 jmp xchain342_n5_α
# IR_VAR_REF
 xchain342_n26_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain342_n28_α
 xchain342_n26_β:
 jmp proc_right_of$3_ω
 xchain342_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+976]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn395: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn395]
 lea rsi, [rbp + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain342_n5_α
 jmp xchain342_n29_α
 xchain342_n27_β:
 jmp xchain342_n5_α
 xchain342_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn397: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn397]
 lea rsi, [rbp + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain342_n14_α
 jmp xchain342_n30_α
 xchain342_n28_β:
 jmp xchain342_n14_α
# IR_SUSPEND yield+resume
 xchain342_n29_α:
 lea rax, [rip + xchain342_n29_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_right_of$3_γ
 xchain342_n29_β:
 jmp xchain342_n5_α
 xchain342_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn401: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn401]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain342_n14_α
 jmp xchain342_n31_α
 xchain342_n30_β:
 jmp xchain342_n14_α
# IR_VAR_REF
 xchain342_n31_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain342_n32_α
 xchain342_n31_β:
 jmp xchain342_n14_α
# IR_VAR_REF
 xchain342_n32_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain342_n33_α
 xchain342_n32_β:
 jmp xchain342_n14_α
# IR_VAR_REF
 xchain342_n33_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain342_n34_α
 xchain342_n33_β:
 jmp xchain342_n14_α
 xchain342_n34_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx409_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx409_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx409_3]
 lea rdx, [rip + .Lx409_4]
 jmp rax
.Lx409_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx409_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx409_2
.Lx409_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx409_2
.Lx409_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx409_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx409_2
.Lx409_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx409_2
.Lx409_1:
 call rt_faildescr@PLT
.Lx409_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain342_n14_α
 jmp xchain342_n35_α
 xchain342_n34_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx409_0:
 .quad .Lx409_0_s
.Lx409_0_s:
 .string "right_of/3"
# IR_SUSPEND yield+resume
 xchain342_n35_α:
 lea rax, [rip + xchain342_n35_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_right_of$3_γ
 xchain342_n35_β:
 jmp xchain342_n34_β
proc_right_of$3_res:
add rsp, 8
pop rbp
proc_right_of$3_β:
jmp qword ptr [rbp + 1616]
proc_right_of$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_right_of$3_res]
push rax
mov rax, [rbp + 1720]
mov rbp, [rbp + 1736]
jmp rax
proc_right_of$3_ω:
mov rax, [rbp + 1728]
lea rsp, [rbp + 1744]
mov rbp, [rbp + 1736]
jmp rax
  .globl proc_next_to$3_α
proc_next_to$3_α:
#=======================================================================================================================
    .global proc_next_to$3_α
    .global proc_next_to$3_β
    .global proc_next_to$3_γ
    .global proc_next_to$3_ω
  sub rsp, 2464
  mov [rsp + 2440], rcx
  mov [rsp + 2448], rdx
  mov [rsp + 2456], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2432
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2360], rsp
  mov rdi, rsp
  mov esi, 2432
  call rt_jmp_frame_lexprep@PLT
proc_next_to$3_α_body:
lea rax, [rip + xchain412_n37_β]
mov qword ptr [rbp + 2336], rax
 xchain412_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn414: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn414]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain412_n1_α
 xchain412_n0_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain412_n2_α
 xchain412_n1_β:
 jmp xchain412_n5_α
# IR_VAR_REF
 xchain412_n2_α:
 lea rdi, [rbp + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain412_n3_α
 xchain412_n2_β:
 jmp xchain412_n5_α
 xchain412_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2224]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2232], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2240]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2248], rax
  .section .rodata
  .Lrkfn420: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn420]
 lea rsi, [rbp + 2224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain412_n5_α
 jmp xchain412_n4_α
 xchain412_n3_β:
 jmp xchain412_n5_α
# IR_VAR_REF
 xchain412_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain412_n6_α
 xchain412_n4_β:
 jmp xchain412_n5_α
 xchain412_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1632]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn424: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn424]
 lea rsi, [rbp + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain412_n7_α
 xchain412_n5_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n6_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain412_n8_α
 xchain412_n6_β:
 jmp xchain412_n5_α
# IR_VAR_REF
 xchain412_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain412_n9_α
 xchain412_n7_β:
 jmp xchain412_n14_α
 xchain412_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2096]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2104], rax
# marshal arg1 = producer-box slot [zr+2176] -> [zr+2112]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2120], rax
  .section .rodata
  .Lrkfn430: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn430]
 lea rsi, [rbp + 2096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain412_n5_α
 jmp xchain412_n10_α
 xchain412_n8_β:
 jmp xchain412_n5_α
# IR_VAR_REF
 xchain412_n9_α:
 lea rdi, [rbp + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain412_n11_α
 xchain412_n9_β:
 jmp xchain412_n14_α
# IR_VAR_REF
 xchain412_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain412_n12_α
 xchain412_n10_β:
 jmp xchain412_n5_α
 xchain412_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn436: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn436]
 lea rsi, [rbp + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain412_n14_α
 jmp xchain412_n13_α
 xchain412_n11_β:
 jmp xchain412_n14_α
# IR_LIT_STRING
 xchain412_n12_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain412_n15_α
 xchain412_n12_β:
 jmp proc_next_to$3_ω
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "."
# IR_VAR_REF
 xchain412_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain412_n16_α
 xchain412_n13_β:
 jmp xchain412_n14_α
 xchain412_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+912]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn441: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn441]
 lea rsi, [rbp + 912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain412_n17_α
 xchain412_n14_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n15_α:
 lea rdi, [rbp + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain412_n18_α
 xchain412_n15_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n16_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain412_n19_α
 xchain412_n16_β:
 jmp xchain412_n14_α
# IR_VAR_REF
 xchain412_n17_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain412_n20_α
 xchain412_n17_β:
 jmp xchain412_n27_α
# IR_LIT_STRING
 xchain412_n18_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx448_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain412_n21_α
 xchain412_n18_β:
 jmp proc_next_to$3_ω
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
 .string "."
 xchain412_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn450: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn450]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain412_n14_α
 jmp xchain412_n22_α
 xchain412_n19_β:
 jmp xchain412_n14_α
# IR_VAR_REF
 xchain412_n20_α:
 lea rdi, [rbp + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain412_n23_α
 xchain412_n20_β:
 jmp xchain412_n27_α
# IR_VAR_REF
 xchain412_n21_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain412_n24_α
 xchain412_n21_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain412_n25_α
 xchain412_n22_β:
 jmp xchain412_n14_α
 xchain412_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn458: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn458]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain412_n27_α
 jmp xchain412_n26_α
 xchain412_n23_β:
 jmp xchain412_n27_α
# IR_VAR_REF
 xchain412_n24_α:
 lea rdi, [rbp + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain412_n28_α
 xchain412_n24_β:
 jmp proc_next_to$3_ω
# IR_LIT_STRING
 xchain412_n25_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain412_n29_α
 xchain412_n25_β:
 jmp proc_next_to$3_ω
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "."
# IR_VAR_REF
 xchain412_n26_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain412_n30_α
 xchain412_n26_β:
 jmp xchain412_n27_α
 xchain412_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn465: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn465]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp proc_next_to$3_ω
 xchain412_n27_β:
 jmp proc_next_to$3_ω
 xchain412_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1856]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1872]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn467: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn467]
 lea rsi, [rbp + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain412_n31_α
 xchain412_n28_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n29_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain412_n32_α
 xchain412_n29_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n30_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain412_n33_α
 xchain412_n30_β:
 jmp xchain412_n27_α
 xchain412_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+2000]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2008], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+2016]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn473: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn473]
 lea rsi, [rbp + 1984]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain412_n5_α
 jmp xchain412_n34_α
 xchain412_n31_β:
 jmp xchain412_n5_α
# IR_LIT_STRING
 xchain412_n32_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain412_n35_α
 xchain412_n32_β:
 jmp proc_next_to$3_ω
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "."
 xchain412_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn476: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain412_n27_α
 jmp xchain412_n36_α
 xchain412_n33_β:
 jmp xchain412_n27_α
 xchain412_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1680]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1688], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1696]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1704], rax
  .section .rodata
  .Lrkfn478: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn478]
 lea rsi, [rbp + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain412_n5_α
 jmp xchain412_n37_α
 xchain412_n34_β:
 jmp xchain412_n5_α
# IR_VAR_REF
 xchain412_n35_α:
 lea rdi, [rbp + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain412_n38_α
 xchain412_n35_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n36_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain412_n39_α
 xchain412_n36_β:
 jmp xchain412_n27_α
# IR_SUSPEND yield+resume
 xchain412_n37_α:
 lea rax, [rip + xchain412_n37_β]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_next_to$3_γ
 xchain412_n37_β:
 jmp xchain412_n5_α
# IR_VAR_REF
 xchain412_n38_α:
 lea rdi, [rbp + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain412_n40_α
 xchain412_n38_β:
 jmp proc_next_to$3_ω
# IR_LIT_STRING
 xchain412_n39_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain412_n41_α
 xchain412_n39_β:
 jmp proc_next_to$3_ω
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "."
 xchain412_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1136]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1152]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn489: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn489]
 lea rsi, [rbp + 1120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain412_n42_α
 xchain412_n40_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain412_n41_α:
 lea rdi, [rbp + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain412_n43_α
 xchain412_n41_β:
 jmp proc_next_to$3_ω
 xchain412_n42_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1280]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1296]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn493: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn493]
 lea rsi, [rbp + 1264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain412_n14_α
 jmp xchain412_n44_α
 xchain412_n42_β:
 jmp xchain412_n14_α
# IR_VAR_REF
 xchain412_n43_α:
 lea rdi, [rbp + 2400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain412_n45_α
 xchain412_n43_β:
 jmp proc_next_to$3_ω
 xchain412_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+976]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn497: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn497]
 lea rsi, [rbp + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain412_n14_α
 jmp xchain412_n46_α
 xchain412_n44_β:
 jmp xchain412_n14_α
 xchain412_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn499: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn499]
 lea rsi, [rbp + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain412_n27_α
 jmp xchain412_n47_α
 xchain412_n45_β:
 jmp xchain412_n27_α
# IR_SUSPEND yield+resume
 xchain412_n46_α:
 lea rax, [rip + xchain412_n46_β]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_next_to$3_γ
 xchain412_n46_β:
 jmp xchain412_n14_α
 xchain412_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn503: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn503]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain412_n27_α
 jmp xchain412_n48_α
 xchain412_n47_β:
 jmp xchain412_n27_α
# IR_VAR_REF
 xchain412_n48_α:
 lea rdi, [rbp + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain412_n49_α
 xchain412_n48_β:
 jmp xchain412_n27_α
# IR_VAR_REF
 xchain412_n49_α:
 lea rdi, [rbp + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain412_n50_α
 xchain412_n49_β:
 jmp xchain412_n27_α
# IR_VAR_REF
 xchain412_n50_α:
 lea rdi, [rbp + 2400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain412_n51_α
 xchain412_n50_β:
 jmp xchain412_n27_α
 xchain412_n51_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx511_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx511_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx511_3]
 lea rdx, [rip + .Lx511_4]
 jmp rax
.Lx511_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx511_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx511_2
.Lx511_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx511_2
.Lx511_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx511_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx511_2
.Lx511_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx511_2
.Lx511_1:
 call rt_faildescr@PLT
.Lx511_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain412_n27_α
 jmp xchain412_n52_α
 xchain412_n51_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "next_to/3"
# IR_SUSPEND yield+resume
 xchain412_n52_α:
 lea rax, [rip + xchain412_n52_β]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_next_to$3_γ
 xchain412_n52_β:
 jmp xchain412_n51_β
proc_next_to$3_res:
add rsp, 8
pop rbp
proc_next_to$3_β:
jmp qword ptr [rbp + 2336]
proc_next_to$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_next_to$3_res]
push rax
mov rax, [rbp + 2440]
mov rbp, [rbp + 2456]
jmp rax
proc_next_to$3_ω:
mov rax, [rbp + 2448]
lea rsp, [rbp + 2464]
mov rbp, [rbp + 2456]
jmp rax
  .globl proc_my_member$2_α
proc_my_member$2_α:
#=======================================================================================================================
    .global proc_my_member$2_α
    .global proc_my_member$2_β
    .global proc_my_member$2_γ
    .global proc_my_member$2_ω
  sub rsp, 1264
  mov [rsp + 1240], rcx
  mov [rsp + 1248], rdx
  mov [rsp + 1256], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1232
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1176], rsp
  mov rdi, rsp
  mov esi, 1232
  call rt_jmp_frame_lexprep@PLT
proc_my_member$2_α_body:
lea rax, [rip + xchain514_n17_β]
mov qword ptr [rbp + 1152], rax
 xchain514_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn516: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn516]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_my_member$2_ω
 jmp xchain514_n1_α
 xchain514_n0_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain514_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain514_n2_α
 xchain514_n1_β:
 jmp xchain514_n5_α
# IR_VAR_REF
 xchain514_n2_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain514_n3_α
 xchain514_n2_β:
 jmp xchain514_n5_α
 xchain514_n3_α:
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
  .Lrkfn522: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn522]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain514_n5_α
 jmp xchain514_n4_α
 xchain514_n3_β:
 jmp xchain514_n5_α
# IR_VAR_REF
 xchain514_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain514_n6_α
 xchain514_n4_β:
 jmp xchain514_n5_α
 xchain514_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+720]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn526: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn526]
 lea rsi, [rbp + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_my_member$2_ω
 jmp xchain514_n7_α
 xchain514_n5_β:
 jmp proc_my_member$2_ω
# IR_LIT_STRING
 xchain514_n6_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain514_n8_α
 xchain514_n6_β:
 jmp proc_my_member$2_ω
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "."
# IR_VAR_REF
 xchain514_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain514_n9_α
 xchain514_n7_β:
 jmp xchain514_n14_α
# IR_VAR_REF
 xchain514_n8_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain514_n10_α
 xchain514_n8_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain514_n9_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain514_n11_α
 xchain514_n9_β:
 jmp xchain514_n14_α
# IR_VAR_REF
 xchain514_n10_α:
 lea rdi, [rbp + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain514_n12_α
 xchain514_n10_β:
 jmp proc_my_member$2_ω
 xchain514_n11_α:
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
  .Lrkfn537: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn537]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain514_n14_α
 jmp xchain514_n13_α
 xchain514_n11_β:
 jmp xchain514_n14_α
 xchain514_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+944]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 952], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+960]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn539: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn539]
 lea rsi, [rbp + 928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain514_n5_α
 jmp xchain514_n15_α
 xchain514_n12_β:
 jmp xchain514_n5_α
# IR_VAR_REF
 xchain514_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain514_n16_α
 xchain514_n13_β:
 jmp xchain514_n14_α
 xchain514_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn543: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn543]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_my_member$2_ω
 jmp proc_my_member$2_ω
 xchain514_n14_β:
 jmp proc_my_member$2_ω
 xchain514_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+784]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 792], rax
  .section .rodata
  .Lrkfn545: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn545]
 lea rsi, [rbp + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain514_n5_α
 jmp xchain514_n17_α
 xchain514_n15_β:
 jmp xchain514_n5_α
# IR_LIT_STRING
 xchain514_n16_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain514_n18_α
 xchain514_n16_β:
 jmp proc_my_member$2_ω
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain514_n17_α:
 lea rax, [rip + xchain514_n17_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_member$2_γ
 xchain514_n17_β:
 jmp xchain514_n5_α
# IR_VAR_REF
 xchain514_n18_α:
 lea rdi, [rbp + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain514_n19_α
 xchain514_n18_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain514_n19_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain514_n20_α
 xchain514_n19_β:
 jmp proc_my_member$2_ω
 xchain514_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn554: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn554]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain514_n14_α
 jmp xchain514_n21_α
 xchain514_n20_β:
 jmp xchain514_n14_α
 xchain514_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn556: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn556]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain514_n14_α
 jmp xchain514_n22_α
 xchain514_n21_β:
 jmp xchain514_n14_α
# IR_VAR_REF
 xchain514_n22_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain514_n23_α
 xchain514_n22_β:
 jmp xchain514_n14_α
# IR_VAR_REF
 xchain514_n23_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain514_n24_α
 xchain514_n23_β:
 jmp xchain514_n14_α
 xchain514_n24_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx562_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx562_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx562_3]
 lea rdx, [rip + .Lx562_4]
 jmp rax
.Lx562_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx562_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx562_2
.Lx562_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx562_2
.Lx562_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx562_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx562_2
.Lx562_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx562_2
.Lx562_1:
 call rt_faildescr@PLT
.Lx562_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain514_n14_α
 jmp xchain514_n25_α
 xchain514_n24_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "my_member/2"
# IR_SUSPEND yield+resume
 xchain514_n25_α:
 lea rax, [rip + xchain514_n25_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_member$2_γ
 xchain514_n25_β:
 jmp xchain514_n24_β
proc_my_member$2_res:
add rsp, 8
pop rbp
proc_my_member$2_β:
jmp qword ptr [rbp + 1152]
proc_my_member$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_member$2_res]
push rax
mov rax, [rbp + 1240]
mov rbp, [rbp + 1256]
jmp rax
proc_my_member$2_ω:
mov rax, [rbp + 1248]
lea rsp, [rbp + 1264]
mov rbp, [rbp + 1256]
jmp rax
  .globl proc_houses$1_α
proc_houses$1_α:
#=======================================================================================================================
    .global proc_houses$1_α
    .global proc_houses$1_β
    .global proc_houses$1_γ
    .global proc_houses$1_ω
  sub rsp, 2896
  mov [rsp + 2872], rcx
  mov [rsp + 2880], rdx
  mov [rsp + 2888], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2864
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2456], rsp
  mov rdi, rsp
  mov esi, 2864
  call rt_jmp_frame_lexprep@PLT
proc_houses$1_α_body:
lea rax, [rip + xchain565_n50_β]
mov qword ptr [rbp + 2432], rax
 xchain565_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn567: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn567]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n1_α
 xchain565_n0_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain565_n2_α
 xchain565_n1_β:
 jmp xchain565_n49_α
# IR_LIT_STRING
 xchain565_n2_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain565_n3_α
 xchain565_n2_β:
 jmp proc_houses$1_ω
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
# IR_LIT_STRING
 xchain565_n3_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain565_n4_α
 xchain565_n3_β:
 jmp proc_houses$1_ω
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "house"
# IR_VAR_REF
 xchain565_n4_α:
 lea rdi, [rbp + 2784]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain565_n5_α
 xchain565_n4_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n5_α:
 lea rdi, [rbp + 2800]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain565_n6_α
 xchain565_n5_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n6_α:
 lea rdi, [rbp + 2816]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain565_n7_α
 xchain565_n6_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n7_α:
 lea rdi, [rbp + 2832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain565_n8_α
 xchain565_n7_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n8_α:
 lea rdi, [rbp + 2848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain565_n9_α
 xchain565_n8_β:
 jmp proc_houses$1_ω
 xchain565_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2176]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+2192]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 2200], rax
# marshal arg2 = producer-box slot [zr+2032] -> [zr+2208]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2216], rax
# marshal arg3 = producer-box slot [zr+2064] -> [zr+2224]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2232], rax
# marshal arg4 = producer-box slot [zr+2096] -> [zr+2240]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2248], rax
# marshal arg5 = producer-box slot [zr+2128] -> [zr+2256]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2264], rax
  .section .rodata
  .Lrkfn583: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn583]
 lea rsi, [rbp + 2176]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n10_α
 xchain565_n9_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain565_n10_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain565_n11_α
 xchain565_n10_β:
 jmp proc_houses$1_ω
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "."
# IR_LIT_STRING
 xchain565_n11_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain565_n12_α
 xchain565_n11_β:
 jmp proc_houses$1_ω
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "house"
# IR_VAR_REF
 xchain565_n12_α:
 lea rdi, [rbp + 2704]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain565_n13_α
 xchain565_n12_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n13_α:
 lea rdi, [rbp + 2720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain565_n14_α
 xchain565_n13_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n14_α:
 lea rdi, [rbp + 2736]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain565_n15_α
 xchain565_n14_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n15_α:
 lea rdi, [rbp + 2752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain565_n16_α
 xchain565_n15_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n16_α:
 lea rdi, [rbp + 2768]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain565_n17_α
 xchain565_n16_β:
 jmp proc_houses$1_ω
 xchain565_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1744]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1760]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1776]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1784], rax
# marshal arg3 = producer-box slot [zr+1632] -> [zr+1792]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1800], rax
# marshal arg4 = producer-box slot [zr+1664] -> [zr+1808]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1816], rax
# marshal arg5 = producer-box slot [zr+1696] -> [zr+1824]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn597: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 1744]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n18_α
 xchain565_n17_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain565_n18_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain565_n19_α
 xchain565_n18_β:
 jmp proc_houses$1_ω
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "."
# IR_LIT_STRING
 xchain565_n19_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain565_n20_α
 xchain565_n19_β:
 jmp proc_houses$1_ω
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "house"
# IR_VAR_REF
 xchain565_n20_α:
 lea rdi, [rbp + 2624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain565_n21_α
 xchain565_n20_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n21_α:
 lea rdi, [rbp + 2640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain565_n22_α
 xchain565_n21_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n22_α:
 lea rdi, [rbp + 2656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain565_n23_α
 xchain565_n22_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n23_α:
 lea rdi, [rbp + 2672]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain565_n24_α
 xchain565_n23_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n24_α:
 lea rdi, [rbp + 2688]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain565_n25_α
 xchain565_n24_β:
 jmp proc_houses$1_ω
 xchain565_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1312]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1328]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1336], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1344]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1352], rax
# marshal arg3 = producer-box slot [zr+1200] -> [zr+1360]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1368], rax
# marshal arg4 = producer-box slot [zr+1232] -> [zr+1376]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1384], rax
# marshal arg5 = producer-box slot [zr+1264] -> [zr+1392]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn611: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn611]
 lea rsi, [rbp + 1312]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n26_α
 xchain565_n25_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain565_n26_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain565_n27_α
 xchain565_n26_β:
 jmp proc_houses$1_ω
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "."
# IR_LIT_STRING
 xchain565_n27_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain565_n28_α
 xchain565_n27_β:
 jmp proc_houses$1_ω
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "house"
# IR_VAR_REF
 xchain565_n28_α:
 lea rdi, [rbp + 2544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain565_n29_α
 xchain565_n28_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n29_α:
 lea rdi, [rbp + 2560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain565_n30_α
 xchain565_n29_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n30_α:
 lea rdi, [rbp + 2576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain565_n31_α
 xchain565_n30_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n31_α:
 lea rdi, [rbp + 2592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain565_n32_α
 xchain565_n31_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n32_α:
 lea rdi, [rbp + 2608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain565_n33_α
 xchain565_n32_β:
 jmp proc_houses$1_ω
 xchain565_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+880]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+896]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+912]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 920], rax
# marshal arg3 = producer-box slot [zr+768] -> [zr+928]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 936], rax
# marshal arg4 = producer-box slot [zr+800] -> [zr+944]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 952], rax
# marshal arg5 = producer-box slot [zr+832] -> [zr+960]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn625: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn625]
 lea rsi, [rbp + 880]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n34_α
 xchain565_n33_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain565_n34_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain565_n35_α
 xchain565_n34_β:
 jmp proc_houses$1_ω
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "."
# IR_LIT_STRING
 xchain565_n35_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx627_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain565_n36_α
 xchain565_n35_β:
 jmp proc_houses$1_ω
.Lx627_0:
 .quad .Lx627_0_s
.Lx627_0_s:
 .string "house"
# IR_VAR_REF
 xchain565_n36_α:
 lea rdi, [rbp + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain565_n37_α
 xchain565_n36_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n37_α:
 lea rdi, [rbp + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain565_n38_α
 xchain565_n37_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n38_α:
 lea rdi, [rbp + 2496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain565_n39_α
 xchain565_n38_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n39_α:
 lea rdi, [rbp + 2512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain565_n40_α
 xchain565_n39_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain565_n40_α:
 lea rdi, [rbp + 2528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain565_n41_α
 xchain565_n40_β:
 jmp proc_houses$1_ω
 xchain565_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+448]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+464]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+480]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 488], rax
# marshal arg3 = producer-box slot [zr+336] -> [zr+496]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 504], rax
# marshal arg4 = producer-box slot [zr+368] -> [zr+512]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 520], rax
# marshal arg5 = producer-box slot [zr+400] -> [zr+528]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn639: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn639]
 lea rsi, [rbp + 448]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n42_α
 xchain565_n41_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain565_n42_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx640_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain565_n43_α
 xchain565_n42_β:
 jmp proc_houses$1_ω
.Lx640_0:
 .quad .Lx640_0_s
.Lx640_0_s:
 .string "[]"
 xchain565_n43_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+624]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 632], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+640]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn642: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn642]
 lea rsi, [rbp + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n44_α
 xchain565_n43_β:
 jmp proc_houses$1_ω
 xchain565_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+1056]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+1072]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn644: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn644]
 lea rsi, [rbp + 1040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n45_α
 xchain565_n44_β:
 jmp proc_houses$1_ω
 xchain565_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1488]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+1504]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1512], rax
  .section .rodata
  .Lrkfn646: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn646]
 lea rsi, [rbp + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n46_α
 xchain565_n45_β:
 jmp proc_houses$1_ω
 xchain565_n46_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1920]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1928], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1936]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1944], rax
  .section .rodata
  .Lrkfn648: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn648]
 lea rsi, [rbp + 1904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain565_n47_α
 xchain565_n46_β:
 jmp proc_houses$1_ω
 xchain565_n47_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2352]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2360], rax
# marshal arg2 = producer-box slot [zr+1888] -> [zr+2368]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 2376], rax
  .section .rodata
  .Lrkfn650: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn650]
 lea rsi, [rbp + 2336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain565_n49_α
 jmp xchain565_n48_α
 xchain565_n47_β:
 jmp xchain565_n49_α
 xchain565_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+176]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn652: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn652]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain565_n49_α
 jmp xchain565_n50_α
 xchain565_n48_β:
 jmp xchain565_n49_α
 xchain565_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn654: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn654]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp proc_houses$1_ω
 xchain565_n49_β:
 jmp proc_houses$1_ω
# IR_SUSPEND yield+resume
 xchain565_n50_α:
 lea rax, [rip + xchain565_n50_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_houses$1_γ
 xchain565_n50_β:
 jmp xchain565_n49_α
proc_houses$1_res:
add rsp, 8
pop rbp
proc_houses$1_β:
jmp qword ptr [rbp + 2432]
proc_houses$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_houses$1_res]
push rax
mov rax, [rbp + 2872]
mov rbp, [rbp + 2888]
jmp rax
proc_houses$1_ω:
mov rax, [rbp + 2880]
lea rsp, [rbp + 2896]
mov rbp, [rbp + 2888]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "zebra/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_zebra$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 10736
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "right_of/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_right_of$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1712
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "next_to/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_next_to$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2432
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_my_member$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1232
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "houses/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_houses$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2864
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
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
  mov qword ptr [rsp + 392], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain657_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn659: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn659]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain657_n1_α
 xchain657_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain657_n1_α:
 lea rdi, [rbp + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain657_n2_α
 xchain657_n1_β:
 jmp xchain657_n4_α
 xchain657_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx663_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx663_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx663_3]
 lea rdx, [rip + .Lx663_4]
 jmp rax
.Lx663_3:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx663_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx663_2
.Lx663_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx663_2
.Lx663_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx663_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx663_2
.Lx663_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx663_2
.Lx663_1:
 call rt_faildescr@PLT
.Lx663_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain657_n4_α
 jmp xchain657_n3_α
 xchain657_n2_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string "zebra/1"
# IR_VAR
 xchain657_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain657_n5_α
 xchain657_n3_β:
 jmp xchain657_n4_α
 xchain657_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn667: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn667]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain657_n4_β:
 jmp main_ω
 xchain657_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn669: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn669]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain657_n2_β
 jmp xchain657_n6_α
 xchain657_n5_β:
 jmp xchain657_n2_β
# IR_LIT_STRING
 xchain657_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx670_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain657_n7_α
 xchain657_n6_β:
 jmp xchain657_n4_α
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string ""
 xchain657_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn672: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn672]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain657_n2_β
 jmp xchain657_n8_α
 xchain657_n7_β:
 jmp xchain657_n2_β
# IR_MOVE_LABEL
 xchain657_n8_α:
 lea rax, [rip + xchain657_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain657_n8_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain657_n9_α:
 jmp qword ptr [rbp + 32]
 xchain657_n9_β:
 jmp main_ω
main_β:
jmp xchain657_n9_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 392]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 392]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
