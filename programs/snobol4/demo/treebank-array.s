  .intel_syntax noprefix
  .text
stk_push_frame_α:
#=======================================================================================================================
    .global stk_push_frame_α
    .global stk_push_frame_β
    .global stk_push_frame_γ
    .global stk_push_frame_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
stk_push_frame_α_body:
snoch0_n0_α:
# IR_VAR
bb1_α:
 mov rdi, qword ptr [rip + .Lx2_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "frame_id"
snoch0_n1_α:
# IR_LIT_scalar
bb2_α:
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_VAR
bb3_α:
 mov rdi, qword ptr [rip + .Lx6_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xiset4_val_done
 xiset4_val_β:
 jmp snoch0_n4_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "v"
xiset4_val_done:
# IR_VAR
bb4_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xiset4_key_done
 xiset4_key_β:
 jmp snoch0_n4_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "frame_id"
xiset4_key_done:
# IR_VAR
bb5_α:
 mov rdi, qword ptr [rip + .Lx10_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xiset4_base_done
 xiset4_base_β:
 jmp snoch0_n4_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "stk_tag"
xiset4_base_done:
bb6_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 48]
 cmp eax, 4
 jne .Lx12_0
 mov rax, qword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx12_0
 mov rsi, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx12_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx12_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch0_n4_α
.Lx12_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [r12 + 16]
 mov r9, qword ptr [r12 + 24]
 call subscript_set@PLT
 cmp eax, 0
 je snoch0_n4_α
 jmp snoch0_n4_α
 snoch0_n2_β:
 jmp snoch0_n4_α
snoch0_n3_α:
bb7_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 64], rax
 jmp snoch0_n5_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 72], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 80], rax
 jmp xiset15_val_done
 xiset15_val_β:
 jmp snoch0_n6_α
.Lx16_0:
 .quad 0
xiset15_val_done:
# IR_VAR
bb9_α:
 mov rdi, qword ptr [rip + .Lx18_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xiset15_key_done
 xiset15_key_β:
 jmp snoch0_n6_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "frame_id"
xiset15_key_done:
# IR_VAR
bb10_α:
 mov rdi, qword ptr [rip + .Lx20_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 jmp xiset15_base_done
 xiset15_base_β:
 jmp snoch0_n6_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "stk_n"
xiset15_base_done:
bb11_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 104]
 cmp eax, 4
 jne .Lx22_0
 mov rax, qword ptr [r12 + 88]
 cmp eax, 6
 jne .Lx22_0
 mov rsi, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 96]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx22_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx22_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch0_n6_α
.Lx22_0:
 mov rdi, qword ptr [r12 + 104]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 96]
 mov r8, qword ptr [r12 + 72]
 mov r9, qword ptr [r12 + 80]
 call subscript_set@PLT
 cmp eax, 0
 je snoch0_n6_α
 jmp snoch0_n6_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
bb12_α:
# IR_ASSIGN
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 64]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n5_β:
 jmp snoch0_n2_α
snoch0_n6_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx27_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xgvarg25_done
 xgvarg25_β:
 jmp snoch0_n8_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "frame_id"
xgvarg25_done:
# IR_VAR
bb14_α:
 mov rdi, qword ptr [rip + .Lx30_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xgvarg28_done
 xgvarg28_β:
 jmp snoch0_n8_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "stk"
xgvarg28_done:
bb15_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+120] -> [r12+168]
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 176], rax
# marshal arg1 = producer-box slot [r12+136] -> [r12+184]
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 192], rax
  .section .rodata
  .Lrkfn32: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp snoch0_n7_α
 snoch0_n6_β:
 jmp snoch0_n8_α
snoch0_n7_α:
bb16_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_VAR
bb17_α:
 mov rdi, qword ptr [rip + .Lx35_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string ""
snoch0_n9_α:
bb18_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
snoch0_n10_β:
jmp stk_push_frame_γ
jmp stk_push_frame_γ
stk_push_frame_β:
jmp stk_push_frame_ω
stk_push_frame_γ:
mov eax, 1
xor edx, edx
pop r12
ret
stk_push_frame_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
stk_push_item_α:
#=======================================================================================================================
    .global stk_push_item_α
    .global stk_push_item_β
    .global stk_push_item_γ
    .global stk_push_item_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
stk_push_item_α_body:
snoch37_n0_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg38_done
 xgvarg38_β:
 jmp snoch37_n2_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "stk"
xgvarg38_done:
bb20_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn42: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn42]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch37_n2_α
 jmp snoch37_n1_α
snoch37_n0_β:
 jmp snoch37_n2_α
snoch37_n1_α:
bb21_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch37_n2_α
 snoch37_n1_β:
 jmp snoch37_n2_α
snoch37_n2_α:
bb22_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx45_0
 mov r8, qword ptr [r12 + 64]
 cmp r8d, 6
 jne .Lx45_0
 mov rcx, qword ptr [r12 + 72]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx45_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx45_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch37_n3_α
.Lx45_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 call subscript_get@PLT
 cmp eax, 99
 je snoch37_n4_α
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch37_n3_α
 snoch37_n2_β:
 jmp snoch37_n4_α
snoch37_n3_α:
# IR_LIT_scalar
bb23_α:
 jmp snoch37_n5_α
 snoch37_n3_β:
 jmp snoch37_n4_α
snoch37_n4_α:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx48_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch37_n6_α
 snoch37_n4_β:
 jmp snoch37_n7_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string ""
snoch37_n5_α:
bb25_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx51_0
 mov r8, qword ptr [r12 + 112]
 cmp r8d, 6
 jne .Lx51_0
 mov rcx, qword ptr [r12 + 120]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx51_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx51_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx49_done
.Lx51_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call subscript_get@PLT
 cmp eax, 99
 je snoch37_n4_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx49_done
 xgvidx49_β:
 jmp snoch37_n4_α
xgvidx49_done:
bb26_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 movabs rax, 6
 mov qword ptr [r12 + 144], rax
 movabs rax, 1
 mov qword ptr [r12 + 152], rax
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch37_n4_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch37_n8_α
 snoch37_n5_β:
 jmp snoch37_n4_α
snoch37_n6_α:
bb27_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S6]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch37_n7_α
 snoch37_n6_β:
 jmp snoch37_n7_α
snoch37_n7_α:
snoch37_n7_β:
jmp stk_push_item_γ
jmp stk_push_item_γ
snoch37_n8_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx56_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xiset54_key_done
 xiset54_key_β:
 jmp snoch37_n4_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "cur"
xiset54_key_done:
# IR_VAR
bb29_α:
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xiset54_base_done
 xiset54_base_β:
 jmp snoch37_n4_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "stk_n"
xiset54_base_done:
bb30_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 192]
 cmp eax, 4
 jne .Lx60_0
 mov rax, qword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx60_0
 mov rsi, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 184]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx60_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx60_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, 6
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch37_n4_α
.Lx60_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8, 6
 mov r9, qword ptr [r12 + 160]
 call subscript_set@PLT
 cmp eax, 0
 je snoch37_n4_α
 jmp snoch37_n4_α
 snoch37_n8_β:
 jmp snoch37_n4_α
stk_push_item_β:
jmp stk_push_item_ω
stk_push_item_γ:
mov eax, 1
xor edx, edx
pop r12
ret
stk_push_item_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
stk_pop_into_parent_α:
#=======================================================================================================================
    .global stk_pop_into_parent_α
    .global stk_pop_into_parent_β
    .global stk_pop_into_parent_γ
    .global stk_pop_into_parent_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
stk_pop_into_parent_α_body:
snoch61_n0_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx64_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg62_done
 xgvarg62_β:
 jmp snoch61_n2_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "stk"
xgvarg62_done:
bb32_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn66: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn66]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch61_n2_α
 jmp snoch61_n1_α
snoch61_n0_β:
 jmp snoch61_n2_α
snoch61_n1_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch61_n2_α
 snoch61_n1_β:
 jmp snoch61_n2_α
snoch61_n2_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx70_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg68_done
 xgvarg68_β:
 jmp snoch61_n4_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "stk"
xgvarg68_done:
bb35_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn72: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn72]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch61_n4_α
 jmp snoch61_n3_α
snoch61_n2_β:
 jmp snoch61_n4_α
snoch61_n3_α:
bb36_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch61_n4_α
 snoch61_n3_β:
 jmp snoch61_n4_α
snoch61_n4_α:
# IR_VAR
bb37_α:
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg74_done
 xgvarg74_β:
 jmp snoch61_n6_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "stk"
xgvarg74_done:
bb38_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn78: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn78]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch61_n6_α
 jmp snoch61_n5_α
snoch61_n4_β:
 jmp snoch61_n6_α
snoch61_n5_α:
bb39_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch61_n6_α
 snoch61_n5_β:
 jmp snoch61_n6_α
snoch61_n6_α:
bb40_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S8]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx81_0
 mov r8, qword ptr [r12 + 160]
 cmp r8d, 6
 jne .Lx81_0
 mov rcx, qword ptr [r12 + 168]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx81_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx81_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch61_n7_α
.Lx81_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call subscript_get@PLT
 cmp eax, 99
 je snoch61_n8_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch61_n7_α
 snoch61_n6_β:
 jmp snoch61_n8_α
snoch61_n7_α:
bb41_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch61_n8_α
 snoch61_n7_β:
 jmp snoch61_n8_α
snoch61_n8_α:
# IR_VAR
bb42_α:
 mov rdi, qword ptr [rip + .Lx84_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch61_n9_α
 snoch61_n8_β:
 jmp snoch61_n10_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "n"
snoch61_n9_α:
# IR_LIT_scalar
bb43_α:
 jmp snoch61_n11_α
 snoch61_n9_β:
 jmp snoch61_n10_α
snoch61_n10_α:
# IR_VAR
bb44_α:
 mov rdi, qword ptr [rip + .Lx87_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp snoch61_n12_α
 snoch61_n10_β:
 jmp snoch61_n13_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string ""
snoch61_n11_α:
bb45_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch61_n14_α
 snoch61_n11_β:
 jmp snoch61_n10_α
snoch61_n12_α:
bb46_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch61_n13_α
 snoch61_n12_β:
 jmp snoch61_n13_α
snoch61_n13_α:
snoch61_n13_β:
jmp stk_pop_into_parent_γ
jmp stk_pop_into_parent_γ
snoch61_n14_α:
# IR_VAR
bb47_α:
 mov rdi, qword ptr [rip + .Lx93_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xiset91_key_done
 xiset91_key_β:
 jmp snoch61_n10_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "par"
xiset91_key_done:
# IR_VAR
bb48_α:
 mov rdi, qword ptr [rip + .Lx95_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xiset91_base_done
 xiset91_base_β:
 jmp snoch61_n10_α
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "stk_n"
xiset91_base_done:
bb49_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 248]
 cmp eax, 4
 jne .Lx97_0
 mov rax, qword ptr [r12 + 232]
 cmp eax, 6
 jne .Lx97_0
 mov rsi, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 240]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx97_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx97_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, 6
 mov rdx, qword ptr [r12 + 224]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch61_n10_α
.Lx97_0:
 mov rdi, qword ptr [r12 + 248]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 240]
 mov r8, 6
 mov r9, qword ptr [r12 + 224]
 call subscript_set@PLT
 cmp eax, 0
 je snoch61_n10_α
 jmp snoch61_n10_α
 snoch61_n14_β:
 jmp snoch61_n10_α
stk_pop_into_parent_β:
jmp stk_pop_into_parent_ω
stk_pop_into_parent_γ:
mov eax, 1
xor edx, edx
pop r12
ret
stk_pop_into_parent_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
stk_pop_final_α:
#=======================================================================================================================
    .global stk_pop_final_α
    .global stk_pop_final_β
    .global stk_pop_final_γ
    .global stk_pop_final_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
stk_pop_final_α_body:
snoch98_n0_α:
# IR_VAR
bb50_α:
 mov rdi, qword ptr [rip + .Lx101_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg99_done
 xgvarg99_β:
 jmp snoch98_n2_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "stk"
xgvarg99_done:
bb51_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn103: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn103]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch98_n2_α
 jmp snoch98_n1_α
snoch98_n0_β:
 jmp snoch98_n2_α
snoch98_n1_α:
bb52_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch98_n2_α
 snoch98_n1_β:
 jmp snoch98_n2_α
snoch98_n2_α:
# IR_VAR
bb53_α:
 mov rdi, qword ptr [rip + .Lx107_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg105_done
 xgvarg105_β:
 jmp snoch98_n4_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "stk"
xgvarg105_done:
bb54_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn109: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn109]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch98_n4_α
 jmp snoch98_n3_α
snoch98_n2_β:
 jmp snoch98_n4_α
snoch98_n3_α:
bb55_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch98_n4_α
 snoch98_n3_β:
 jmp snoch98_n4_α
snoch98_n4_α:
# IR_LIT_scalar
bb56_α:
 jmp snoch98_n5_α
 snoch98_n4_β:
 jmp snoch98_n6_α
snoch98_n5_α:
bb57_α:
# IR_INDIRECT_ASSIGN_VAR
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S7]
 call rt_indirect_assign_var@PLT
 jmp snoch98_n6_α
 snoch98_n5_β:
 jmp snoch98_n6_α
snoch98_n6_α:
# IR_VAR
bb58_α:
 mov rdi, qword ptr [rip + .Lx114_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch98_n7_α
 snoch98_n6_β:
 jmp snoch98_n8_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string ""
snoch98_n7_α:
bb59_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch98_n8_α
 snoch98_n7_β:
 jmp snoch98_n8_α
snoch98_n8_α:
snoch98_n8_β:
jmp stk_pop_final_γ
jmp stk_pop_final_γ
stk_pop_final_β:
jmp stk_pop_final_ω
stk_pop_final_γ:
mov eax, 1
xor edx, edx
pop r12
ret
stk_pop_final_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
init_list_α:
#=======================================================================================================================
    .global init_list_α
    .global init_list_β
    .global init_list_γ
    .global init_list_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
init_list_α_body:
snoch116_n0_α:
# IR_LIT_scalar
bb60_α:
 jmp snoch116_n1_α
 snoch116_n0_β:
 jmp snoch116_n2_α
snoch116_n1_α:
bb61_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S13]
 lea rsi, [rip + .S3]
 call rt_indirect_assign_str@PLT
 jmp snoch116_n2_α
 snoch116_n1_β:
 jmp snoch116_n2_α
snoch116_n2_α:
# IR_LIT_scalar
bb62_α:
 jmp snoch116_n3_α
 snoch116_n2_β:
 jmp snoch116_n4_α
snoch116_n3_α:
bb63_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S1]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_str@PLT
 jmp snoch116_n4_α
 snoch116_n3_β:
 jmp snoch116_n4_α
snoch116_n4_α:
# IR_LIT_scalar
bb64_α:
 jmp snoch116_n5_α
 snoch116_n4_β:
 jmp snoch116_n6_α
snoch116_n5_α:
bb65_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch116_n6_α
 snoch116_n5_β:
 jmp snoch116_n6_α
snoch116_n6_α:
bb66_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn124: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn124]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch116_n8_α
 jmp snoch116_n7_α
snoch116_n6_β:
 jmp snoch116_n8_α
snoch116_n7_α:
bb67_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch116_n8_α
 snoch116_n7_β:
 jmp snoch116_n8_α
snoch116_n8_α:
bb68_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn127: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn127]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch116_n10_α
 jmp snoch116_n9_α
snoch116_n8_β:
 jmp snoch116_n10_α
snoch116_n9_α:
bb69_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch116_n10_α
 snoch116_n9_β:
 jmp snoch116_n10_α
snoch116_n10_α:
bb70_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn130: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn130]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch116_n12_α
 jmp snoch116_n11_α
snoch116_n10_β:
 jmp snoch116_n12_α
snoch116_n11_α:
bb71_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch116_n12_α
 snoch116_n11_β:
 jmp snoch116_n12_α
snoch116_n12_α:
# IR_VAR
bb72_α:
 mov rdi, qword ptr [rip + .Lx133_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp snoch116_n13_α
 snoch116_n12_β:
 jmp snoch116_n14_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string ""
snoch116_n13_α:
bb73_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch116_n14_α
 snoch116_n13_β:
 jmp snoch116_n14_α
snoch116_n14_α:
snoch116_n14_β:
jmp init_list_γ
jmp init_list_γ
init_list_β:
jmp init_list_ω
init_list_γ:
mov eax, 1
xor edx, edx
pop r12
ret
init_list_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
Init_list_α:
#=======================================================================================================================
    .global Init_list_α
    .global Init_list_β
    .global Init_list_γ
    .global Init_list_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
Init_list_α_body:
snoch135_n0_α:
xgvarg136_done:
bb74_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S17]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 mov rsi, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_concat_parts_d@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
  .section .rodata
  .Lbynamefn138: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn138]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch135_n2_α
 jmp snoch135_n1_α
snoch135_n0_β:
 jmp snoch135_n2_α
snoch135_n1_α:
bb75_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S20]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch135_n2_α
 snoch135_n1_β:
 jmp snoch135_n2_α
snoch135_n2_α:
snoch135_n2_β:
jmp Init_list_γ
jmp Init_list_γ
Init_list_β:
jmp Init_list_ω
Init_list_γ:
mov eax, 1
xor edx, edx
pop r12
ret
Init_list_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
push_list_α:
#=======================================================================================================================
    .global push_list_α
    .global push_list_β
    .global push_list_γ
    .global push_list_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
push_list_α_body:
snoch140_n0_α:
# IR_VAR
bb76_α:
 mov rdi, qword ptr [rip + .Lx143_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg141_done
 xgvarg141_β:
 jmp snoch140_n2_α
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "v"
xgvarg141_done:
bb77_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch140_n2_α
 jmp snoch140_n1_α
snoch140_n0_β:
 jmp snoch140_n2_α
snoch140_n1_α:
bb78_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch140_n2_α
 snoch140_n1_β:
 jmp snoch140_n2_α
snoch140_n2_α:
# IR_VAR
bb79_α:
 mov rdi, qword ptr [rip + .Lx147_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch140_n3_α
 snoch140_n2_β:
 jmp snoch140_n4_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string ""
snoch140_n3_α:
bb80_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S22]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch140_n4_α
 snoch140_n3_β:
 jmp snoch140_n4_α
snoch140_n4_α:
snoch140_n4_β:
jmp push_list_γ
jmp push_list_γ
push_list_β:
jmp push_list_ω
push_list_γ:
mov eax, 1
xor edx, edx
pop r12
ret
push_list_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
Push_list_α:
#=======================================================================================================================
    .global Push_list_α
    .global Push_list_β
    .global Push_list_γ
    .global Push_list_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
Push_list_α_body:
snoch149_n0_α:
xgvarg150_done:
bb81_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 mov rsi, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_concat_parts_d@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
  .section .rodata
  .Lbynamefn152: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn152]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch149_n2_α
 jmp snoch149_n1_α
snoch149_n0_β:
 jmp snoch149_n2_α
snoch149_n1_α:
bb82_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S24]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n2_α
 snoch149_n1_β:
 jmp snoch149_n2_α
snoch149_n2_α:
snoch149_n2_β:
jmp Push_list_γ
jmp Push_list_γ
Push_list_β:
jmp Push_list_ω
Push_list_γ:
mov eax, 1
xor edx, edx
pop r12
ret
Push_list_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
push_item_α:
#=======================================================================================================================
    .global push_item_α
    .global push_item_β
    .global push_item_γ
    .global push_item_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
push_item_α_body:
snoch154_n0_α:
# IR_VAR
bb83_α:
 mov rdi, qword ptr [rip + .Lx157_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg155_done
 xgvarg155_β:
 jmp snoch154_n2_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "v"
xgvarg155_done:
bb84_α:
# BOX IR_CALL stk_push_item(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 8]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch154_n2_α
 jmp snoch154_n1_α
snoch154_n0_β:
 jmp snoch154_n2_α
snoch154_n1_α:
bb85_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch154_n2_α
 snoch154_n1_β:
 jmp snoch154_n2_α
snoch154_n2_α:
# IR_VAR
bb86_α:
 mov rdi, qword ptr [rip + .Lx161_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch154_n3_α
 snoch154_n2_β:
 jmp snoch154_n4_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string ""
snoch154_n3_α:
bb87_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S25]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch154_n4_α
 snoch154_n3_β:
 jmp snoch154_n4_α
snoch154_n4_α:
snoch154_n4_β:
jmp push_item_γ
jmp push_item_γ
push_item_β:
jmp push_item_ω
push_item_γ:
mov eax, 1
xor edx, edx
pop r12
ret
push_item_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
Push_item_α:
#=======================================================================================================================
    .global Push_item_α
    .global Push_item_β
    .global Push_item_γ
    .global Push_item_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
Push_item_α_body:
snoch163_n0_α:
xgvarg164_done:
bb88_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S26]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 mov rsi, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_concat_parts_d@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
  .section .rodata
  .Lbynamefn166: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn166]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch163_n2_α
 jmp snoch163_n1_α
snoch163_n0_β:
 jmp snoch163_n2_α
snoch163_n1_α:
bb89_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S27]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch163_n2_α
 snoch163_n1_β:
 jmp snoch163_n2_α
snoch163_n2_α:
snoch163_n2_β:
jmp Push_item_γ
jmp Push_item_γ
Push_item_β:
jmp Push_item_ω
Push_item_γ:
mov eax, 1
xor edx, edx
pop r12
ret
Push_item_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
pop_list_α:
#=======================================================================================================================
    .global pop_list_α
    .global pop_list_β
    .global pop_list_γ
    .global pop_list_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
pop_list_α_body:
snoch168_n0_α:
bb90_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch168_n2_α
 jmp snoch168_n1_α
snoch168_n0_β:
 jmp snoch168_n2_α
snoch168_n1_α:
bb91_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch168_n2_α
 snoch168_n1_β:
 jmp snoch168_n2_α
snoch168_n2_α:
# IR_VAR
bb92_α:
 mov rdi, qword ptr [rip + .Lx172_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch168_n3_α
 snoch168_n2_β:
 jmp snoch168_n4_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string ""
snoch168_n3_α:
bb93_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch168_n4_α
 snoch168_n3_β:
 jmp snoch168_n4_α
snoch168_n4_α:
snoch168_n4_β:
jmp pop_list_γ
jmp pop_list_γ
pop_list_β:
jmp pop_list_ω
pop_list_γ:
mov eax, 1
xor edx, edx
pop r12
ret
pop_list_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
Pop_list_α:
#=======================================================================================================================
    .global Pop_list_α
    .global Pop_list_β
    .global Pop_list_γ
    .global Pop_list_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
Pop_list_α_body:
snoch174_n0_α:
bb94_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch174_n1_α
 snoch174_n0_β:
 jmp snoch174_n1_α
snoch174_n1_α:
bb95_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S30]
 call rt_proc_define@PLT
 jmp snoch174_n2_α
 snoch174_n1_β:
 jmp snoch174_n2_α
snoch174_n2_α:
bb96_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S31]
 call rt_proc_define@PLT
 jmp snoch174_n3_α
 snoch174_n2_β:
 jmp snoch174_n3_α
snoch174_n3_α:
bb97_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S32]
 call rt_proc_define@PLT
 jmp snoch174_n4_α
 snoch174_n3_β:
 jmp snoch174_n4_α
snoch174_n4_α:
bb98_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S33]
 call rt_proc_define@PLT
 jmp snoch174_n5_α
 snoch174_n4_β:
 jmp snoch174_n5_α
snoch174_n5_α:
# IR_VAR
bb99_α:
 mov rdi, qword ptr [rip + .Lx181_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch174_n6_α
 snoch174_n5_β:
 jmp snoch174_n7_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "INPUT"
snoch174_n6_α:
bb100_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S34]
 lea rsi, [rip + .S35]
 call rt_gvar_assign_var@PLT
 jmp snoch174_n8_α
 snoch174_n6_β:
 jmp snoch174_n7_α
snoch174_n7_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg183_done
 xgvarg183_β:
 jmp snoch174_n10_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "bank"
xgvarg183_done:
bb102_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 48]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch174_n10_α
 jmp snoch174_n9_α
snoch174_n7_β:
 jmp snoch174_n10_α
snoch174_n8_α:
bb103_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 1
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 88], rax
 mov dword ptr [r12 + 96], 1
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 104], rax
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 64]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch174_n5_α
 snoch174_n8_β:
 jmp snoch174_n5_α
snoch174_n9_α:
bb104_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch174_n10_α
 snoch174_n9_β:
 jmp snoch174_n10_α
snoch174_n10_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg188_done
 xgvarg188_β:
 jmp snoch174_n12_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "BANK"
xgvarg188_done:
bb106_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch174_n12_α
 jmp snoch174_n11_α
snoch174_n10_β:
 jmp snoch174_n12_α
snoch174_n11_α:
bb107_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch174_n12_α
 snoch174_n11_β:
 jmp snoch174_n12_α
snoch174_n12_α:
# IR_LIT_scalar
bb108_α:
 jmp snoch174_n13_α
 snoch174_n12_β:
 jmp snoch174_n14_α
snoch174_n13_α:
# IR_SUBJECT
bb109_α:
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 160]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan193_sγ
 xscan193_sβ:
 jmp snoch174_n14_α
xscan193_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb110_α:
 mov r13, qword ptr [r12 + 160]
 mov r15d, dword ptr [r12 + 168]
 mov dword ptr [r12 + 176], 0
 lea r10, [r12 + 184]
 jmp smatch196_retry
 snoch174_n13_β:
 jmp xscan193_dfail
smatch196_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 176]
# IR_MATCH_DEFER
bb112_α:
 lea rdi, [rip + .S38]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx199_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch196_adv
 jmp xscan193_dok
.Lx199_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch196_adv
 mov r14d, eax
 jmp xscan193_dok
 smatch196_elemb:
 jmp smatch196_adv
smatch196_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
 cmp eax, r15d
 jg xscan193_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan193_dfail
 jmp smatch196_retry
xscan193_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S36]
 mov esi, dword ptr [r12 + 176]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch174_n15_α
xscan193_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch174_n14_α
snoch174_n14_α:
# IR_LIT_S
bb114_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg201_done
 xgvarg201_β:
 jmp snoch174_n17_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "bank"
xgvarg201_done:
bb115_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
   mov rdi, [rip + __proc + 24]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch174_n17_α
 jmp snoch174_n16_α
snoch174_n14_β:
 jmp snoch174_n17_α
snoch174_n15_α:
# IR_LIT_S
bb116_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg204_done
 xgvarg204_β:
 jmp snoch174_n19_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "ROOT"
xgvarg204_done:
bb117_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+240] -> [r12+272]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 280], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch174_n19_α
 jmp snoch174_n18_α
snoch174_n15_β:
 jmp snoch174_n19_α
snoch174_n16_α:
bb118_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch174_n17_α
 snoch174_n16_β:
 jmp snoch174_n17_α
snoch174_n17_α:
bb119_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch174_n20_α
snoch174_n17_β:
 jmp Pop_list_γ
snoch174_n18_α:
bb120_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch174_n19_α
 snoch174_n18_β:
 jmp snoch174_n19_α
snoch174_n19_α:
# IR_VAR
bb121_α:
 mov rdi, qword ptr [rip + .Lx211_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch174_n21_α
 snoch174_n19_β:
 jmp snoch174_n22_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "item"
snoch174_n20_α:
bb122_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch174_n20_β:
 jmp Pop_list_γ
snoch174_n21_α:
# IR_SUBJECT
bb123_α:
 lea rdi, [rip + .S39]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan213_sγ
 xscan213_sβ:
 jmp snoch174_n22_α
xscan213_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb124_α:
 mov r13, qword ptr [r12 + 320]
 mov r15d, dword ptr [r12 + 328]
 mov dword ptr [r12 + 336], 0
 lea r10, [r12 + 344]
 jmp smatch216_retry
 snoch174_n21_β:
 jmp xscan213_dfail
smatch216_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb126_α:
 lea rdi, [rip + .S40]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx219_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch216_adv
 jmp xscan213_dok
.Lx219_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch216_adv
 mov r14d, eax
 jmp xscan213_dok
 smatch216_elemb:
 jmp smatch216_adv
smatch216_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan213_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan213_dfail
 jmp smatch216_retry
xscan213_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch174_n23_α
xscan213_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch174_n22_α
snoch174_n22_α:
bb128_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 352], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 1
 lea rax, [rip + .S39]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S41]
 lea rsi, [r12 + 352]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch174_n24_α
 snoch174_n22_β:
 jmp snoch174_n24_α
snoch174_n23_α:
bb129_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch174_n12_α
 jmp snoch174_n25_α
snoch174_n23_β:
 jmp snoch174_n12_α
snoch174_n24_α:
bb130_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 400]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch174_n12_α
 jmp snoch174_n26_α
snoch174_n24_β:
 jmp snoch174_n12_α
snoch174_n25_α:
bb131_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch174_n12_α
 snoch174_n25_β:
 jmp snoch174_n12_α
snoch174_n26_α:
bb132_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch174_n12_α
 snoch174_n26_β:
 jmp snoch174_n12_α
Pop_list_β:
jmp Pop_list_ω
Pop_list_γ:
mov eax, 1
xor edx, edx
pop r12
ret
Pop_list_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
pop_final_α:
#=======================================================================================================================
    .global pop_final_α
    .global pop_final_β
    .global pop_final_γ
    .global pop_final_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
pop_final_α_body:
snoch226_n0_α:
# IR_VAR
bb133_α:
 mov rdi, qword ptr [rip + .Lx229_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg227_done
 xgvarg227_β:
 jmp snoch226_n2_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "v"
xgvarg227_done:
bb134_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 24]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch226_n2_α
 jmp snoch226_n1_α
snoch226_n0_β:
 jmp snoch226_n2_α
snoch226_n1_α:
bb135_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch226_n2_α
 snoch226_n1_β:
 jmp snoch226_n2_α
snoch226_n2_α:
# IR_VAR
bb136_α:
 mov rdi, qword ptr [rip + .Lx233_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch226_n3_α
 snoch226_n2_β:
 jmp snoch226_n4_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string ""
snoch226_n3_α:
bb137_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S43]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch226_n4_α
 snoch226_n3_β:
 jmp snoch226_n4_α
snoch226_n4_α:
snoch226_n4_β:
jmp pop_final_γ
jmp pop_final_γ
pop_final_β:
jmp pop_final_ω
pop_final_γ:
mov eax, 1
xor edx, edx
pop r12
ret
pop_final_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
Pop_final_α:
#=======================================================================================================================
    .global Pop_final_α
    .global Pop_final_β
    .global Pop_final_γ
    .global Pop_final_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
Pop_final_α_body:
snoch235_n0_α:
xgvarg236_done:
bb138_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S44]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 mov rsi, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_concat_parts_d@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
  .section .rodata
  .Lbynamefn238: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn238]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch235_n2_α
 jmp snoch235_n1_α
snoch235_n0_β:
 jmp snoch235_n2_α
snoch235_n1_α:
bb139_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch235_n2_α
 snoch235_n1_β:
 jmp snoch235_n2_α
snoch235_n2_α:
snoch235_n2_β:
jmp Pop_final_γ
jmp Pop_final_γ
Pop_final_β:
jmp Pop_final_ω
Pop_final_γ:
mov eax, 1
xor edx, edx
pop r12
ret
Pop_final_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
node_repr_α:
#=======================================================================================================================
    .global node_repr_α
    .global node_repr_β
    .global node_repr_γ
    .global node_repr_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
node_repr_α_body:
snoch240_n0_α:
# IR_VAR
bb140_α:
 mov rdi, qword ptr [rip + .Lx245_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg243_done
 xgvarg243_β:
 jmp snoch240_n2_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "f"
xgvarg243_done:
bb141_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn247: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn247]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch240_n2_α
 jmp xgvarg242_done
xgvarg242_β:
 jmp snoch240_n2_α
xgvarg242_done:
# IR_KEYWORD_read
bb142_α:
 mov rdi, qword ptr [rip + .Lx249_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg248_done
 xgvarg248_β:
 jmp snoch240_n2_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "LCASE"
xgvarg248_done:
# IR_KEYWORD_read
bb143_α:
 mov rdi, qword ptr [rip + .Lx251_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg250_done
 xgvarg250_β:
 jmp snoch240_n2_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "UCASE"
xgvarg250_done:
bb144_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+32] -> [r12+112]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+64] -> [r12+128]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [r12+80] -> [r12+144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn253: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn253]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch240_n2_α
 jmp xgvarg241_done
xgvarg241_β:
 jmp snoch240_n2_α
xgvarg241_done:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg254_done
 xgvarg254_β:
 jmp snoch240_n2_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "STRING"
xgvarg254_done:
bb146_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+96] -> [r12+192]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+208]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lbynamefn257: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn257]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch240_n2_α
 jmp snoch240_n1_α
snoch240_n0_β:
 jmp snoch240_n2_α
snoch240_n1_α:
bb147_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 0
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S48]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 0
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S46]
 lea rsi, [r12 + 224]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch240_n3_α
 snoch240_n1_β:
 jmp snoch240_n3_α
snoch240_n2_α:
bb148_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S48]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx260_0
 mov r8, qword ptr [r12 + 272]
 cmp r8d, 6
 jne .Lx260_0
 mov rcx, qword ptr [r12 + 280]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx260_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx260_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch240_n4_α
.Lx260_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call subscript_get@PLT
 cmp eax, 99
 je snoch240_n5_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch240_n4_α
 snoch240_n2_β:
 jmp snoch240_n5_α
snoch240_n3_α:
snoch240_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch240_n4_α:
bb149_α:
# IR_ASSIGN
 lea rdi, [rip + .S49]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch240_n5_α
 snoch240_n4_β:
 jmp snoch240_n5_α
snoch240_n5_α:
bb150_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S48]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx263_0
 mov r8, qword ptr [r12 + 304]
 cmp r8d, 6
 jne .Lx263_0
 mov rcx, qword ptr [r12 + 312]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx263_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx263_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch240_n6_α
.Lx263_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call subscript_get@PLT
 cmp eax, 99
 je snoch240_n7_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch240_n6_α
 snoch240_n5_β:
 jmp snoch240_n7_α
snoch240_n6_α:
bb151_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch240_n7_α
 snoch240_n6_β:
 jmp snoch240_n7_α
snoch240_n7_α:
bb152_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 336], 0
 lea rax, [rip + .S51]
 mov qword ptr [r12 + 344], rax
 mov dword ptr [r12 + 352], 1
 lea rax, [rip + .S49]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S50]
 lea rsi, [r12 + 336]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch240_n8_α
 snoch240_n7_β:
 jmp snoch240_n8_α
snoch240_n8_α:
# IR_LIT_scalar
bb153_α:
 jmp snoch240_n9_α
 snoch240_n8_β:
 jmp snoch240_n10_α
snoch240_n9_α:
bb154_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S52]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch240_n10_α
 snoch240_n9_β:
 jmp snoch240_n10_α
snoch240_n10_α:
# IR_VAR
bb155_α:
 mov rdi, qword ptr [rip + .Lx270_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xgvarg268_done
 xgvarg268_β:
 jmp snoch240_n12_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "i"
xgvarg268_done:
# IR_VAR
bb156_α:
 mov rdi, qword ptr [rip + .Lx273_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg271_done
 xgvarg271_β:
 jmp snoch240_n12_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "n"
xgvarg271_done:
bb157_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S52]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 432], rax
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 416], 0
 mov qword ptr [r12 + 424], 0
 mov rax, qword ptr [r12 + 432]
 cmp rax, rcx
 jge snoch240_n12_α
 jmp snoch240_n11_α
 snoch240_n10_β:
 jmp snoch240_n12_α
snoch240_n11_α:
# IR_VAR
bb158_α:
 mov rdi, qword ptr [rip + .Lx277_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch240_n13_α
 snoch240_n11_β:
 jmp snoch240_n12_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "i"
snoch240_n12_α:
bb159_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 464], 1
 lea rax, [rip + .S50]
 mov qword ptr [r12 + 472], rax
 mov dword ptr [r12 + 480], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 488], rax
 lea rdi, [rip + .S46]
 lea rsi, [r12 + 464]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch240_n3_α
 snoch240_n12_β:
 jmp snoch240_n3_α
snoch240_n13_α:
# IR_LIT_scalar
bb160_α:
 jmp snoch240_n14_α
 snoch240_n13_β:
 jmp snoch240_n12_α
snoch240_n14_α:
bb161_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S52]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp snoch240_n15_α
 snoch240_n14_β:
 jmp snoch240_n12_α
snoch240_n15_α:
bb162_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch240_n16_α
 snoch240_n15_β:
 jmp snoch240_n12_α
snoch240_n16_α:
bb163_α:
# IR_ASSIGN
 lea rdi, [rip + .S52]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch240_n17_α
 snoch240_n16_β:
 jmp snoch240_n12_α
snoch240_n17_α:
# IR_VAR
bb164_α:
 mov rdi, qword ptr [rip + .Lx286_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch240_n18_α
 snoch240_n17_β:
 jmp snoch240_n10_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "i"
snoch240_n18_α:
bb165_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S52]
 lea rsi, [rip + .S52]
 call rt_gvar_assign_var@PLT
 jmp snoch240_n10_α
 snoch240_n18_β:
 jmp snoch240_n10_α
node_repr_β:
jmp node_repr_ω
node_repr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
node_repr_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
pp_node_α:
#=======================================================================================================================
    .global pp_node_α
    .global pp_node_β
    .global pp_node_γ
    .global pp_node_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
pp_node_α_body:
snoch288_n0_α:
# IR_VAR
bb166_α:
 mov rdi, qword ptr [rip + .Lx293_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg291_done
 xgvarg291_β:
 jmp snoch288_n2_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "f"
xgvarg291_done:
bb167_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn295: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn295]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch288_n2_α
 jmp xgvarg290_done
xgvarg290_β:
 jmp snoch288_n2_α
xgvarg290_done:
# IR_KEYWORD_read
bb168_α:
 mov rdi, qword ptr [rip + .Lx297_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg296_done
 xgvarg296_β:
 jmp snoch288_n2_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "LCASE"
xgvarg296_done:
# IR_KEYWORD_read
bb169_α:
 mov rdi, qword ptr [rip + .Lx299_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg298_done
 xgvarg298_β:
 jmp snoch288_n2_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "UCASE"
xgvarg298_done:
bb170_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+32] -> [r12+112]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+64] -> [r12+128]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [r12+80] -> [r12+144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn301: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn301]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch288_n2_α
 jmp xgvarg289_done
xgvarg289_β:
 jmp snoch288_n2_α
xgvarg289_done:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg302_done
 xgvarg302_β:
 jmp snoch288_n2_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "STRING"
xgvarg302_done:
bb172_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+96] -> [r12+192]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+208]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lbynamefn305: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn305]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch288_n2_α
 jmp snoch288_n1_α
snoch288_n0_β:
 jmp snoch288_n2_α
snoch288_n1_α:
# IR_LIT_S
bb173_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg306_done
 xgvarg306_β:
 jmp snoch288_n4_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string " "
xgvarg306_done:
# IR_VAR
bb174_α:
 mov rdi, qword ptr [rip + .Lx310_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg308_done
 xgvarg308_β:
 jmp snoch288_n4_α
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "indent"
xgvarg308_done:
bb175_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+224] -> [r12+272]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+288]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lbynamefn312: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn312]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch288_n4_α
 jmp snoch288_n3_α
snoch288_n1_β:
 jmp snoch288_n4_α
snoch288_n2_α:
# IR_VAR
bb176_α:
 mov rdi, qword ptr [rip + .Lx315_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xgvarg313_done
 xgvarg313_β:
 jmp snoch288_n6_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "f"
xgvarg313_done:
bb177_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+304] -> [r12+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
   mov rdi, [rip + __proc + 32]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch288_n6_α
 jmp snoch288_n5_α
snoch288_n2_β:
 jmp snoch288_n6_α
snoch288_n3_α:
# IR_LIT_scalar
bb178_α:
 jmp snoch288_n7_α
 snoch288_n3_β:
 jmp snoch288_n4_α
snoch288_n4_α:
snoch288_n4_β:
jmp pp_node_γ
jmp pp_node_γ
snoch288_n5_α:
bb179_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S50]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n6_α
 snoch288_n5_β:
 jmp snoch288_n6_α
snoch288_n6_α:
# IR_LIT_S
bb180_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg319_done
 xgvarg319_β:
 jmp snoch288_n9_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string " "
xgvarg319_done:
# IR_VAR
bb181_α:
 mov rdi, qword ptr [rip + .Lx323_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg321_done
 xgvarg321_β:
 jmp snoch288_n9_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "indent"
xgvarg321_done:
bb182_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+400]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lbynamefn325: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn325]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch288_n9_α
 jmp snoch288_n8_α
snoch288_n6_β:
 jmp snoch288_n9_α
snoch288_n7_α:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 440], rax
 jmp xgvcat326_1d
 xgvcat326_1b:
 jmp snoch288_n4_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "'"
xgvcat326_1d:
bb184_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch288_n10_α
 snoch288_n7_β:
 jmp snoch288_n4_α
snoch288_n8_α:
bb185_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S53]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n9_α
 snoch288_n8_β:
 jmp snoch288_n9_α
snoch288_n9_α:
# IR_LIT_I
bb186_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvarg330_done
 xgvarg330_β:
 jmp snoch288_n12_α
.Lx331_0:
 .quad 80
xgvarg330_done:
xgvarg332_done:
bb187_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+512]
   lea rdi, [rip + .S54]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 528], rax
# marshal arg0 = gvar NV_GET -> [r12+560]
   lea rdi, [rip + .S50]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
  .section .rodata
  .Lcallfn334: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn334]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov rcx, qword ptr [r12 + 552]
 mov rax, qword ptr [r12 + 528]
 add rax, rcx
 mov qword ptr [r12 + 512], 6
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lbynamefn335: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn335]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch288_n12_α
 jmp snoch288_n11_α
snoch288_n9_β:
 jmp snoch288_n12_α
snoch288_n10_α:
# IR_VAR
bb188_α:
 mov rdi, qword ptr [rip + .Lx337_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch288_n13_α
 snoch288_n10_β:
 jmp snoch288_n4_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "f"
snoch288_n11_α:
bb189_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 592], 1
 lea rax, [rip + .S53]
 mov qword ptr [r12 + 600], rax
 mov dword ptr [r12 + 608], 1
 lea rax, [rip + .S50]
 mov qword ptr [r12 + 616], rax
 mov dword ptr [r12 + 624], 1
 lea rax, [rip + .S55]
 mov qword ptr [r12 + 632], rax
 lea rdi, [rip + .S41]
 lea rsi, [r12 + 592]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch288_n4_α
 snoch288_n11_β:
 jmp snoch288_n4_α
snoch288_n12_α:
bb190_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S48]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx340_0
 mov r8, qword ptr [r12 + 640]
 cmp r8d, 6
 jne .Lx340_0
 mov rcx, qword ptr [r12 + 648]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx340_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx340_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch288_n14_α
.Lx340_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call subscript_get@PLT
 cmp eax, 99
 je snoch288_n15_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch288_n14_α
 snoch288_n12_β:
 jmp snoch288_n15_α
snoch288_n13_α:
bb191_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch288_n16_α
 snoch288_n13_β:
 jmp snoch288_n4_α
snoch288_n14_α:
bb192_α:
# IR_ASSIGN
 lea rdi, [rip + .S49]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n15_α
 snoch288_n14_β:
 jmp snoch288_n15_α
snoch288_n15_α:
bb193_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S48]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx344_0
 mov r8, qword ptr [r12 + 688]
 cmp r8d, 6
 jne .Lx344_0
 mov rcx, qword ptr [r12 + 696]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx344_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx344_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch288_n17_α
.Lx344_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call subscript_get@PLT
 cmp eax, 99
 je snoch288_n18_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch288_n17_α
 snoch288_n15_β:
 jmp snoch288_n18_α
snoch288_n16_α:
# IR_LIT_scalar
bb194_α:
 jmp snoch288_n19_α
 snoch288_n16_β:
 jmp snoch288_n4_α
snoch288_n17_α:
bb195_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n18_α
 snoch288_n17_β:
 jmp snoch288_n18_α
snoch288_n18_α:
bb196_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 720], 1
 lea rax, [rip + .S53]
 mov qword ptr [r12 + 728], rax
 mov dword ptr [r12 + 736], 0
 lea rax, [rip + .S56]
 mov qword ptr [r12 + 744], rax
 mov dword ptr [r12 + 752], 0
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 760], rax
 mov dword ptr [r12 + 768], 1
 lea rax, [rip + .S49]
 mov qword ptr [r12 + 776], rax
 mov dword ptr [r12 + 784], 0
 lea rax, [rip + .S57]
 mov qword ptr [r12 + 792], rax
 lea rdi, [rip + .S41]
 lea rsi, [r12 + 720]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch288_n20_α
 snoch288_n18_β:
 jmp snoch288_n20_α
snoch288_n19_α:
# IR_LIT_S
bb197_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [r12 + 808], rax
 jmp xgvcat348_1d
 xgvcat348_1b:
 jmp snoch288_n4_α
.Lx349_0:
 .quad .Lx349_0_s
.Lx349_0_s:
 .string "'"
xgvcat348_1d:
bb198_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch288_n21_α
 snoch288_n19_β:
 jmp snoch288_n4_α
snoch288_n20_α:
# IR_LIT_scalar
bb199_α:
 jmp snoch288_n22_α
 snoch288_n20_β:
 jmp snoch288_n23_α
snoch288_n21_α:
# IR_VAR
bb200_α:
 mov rdi, qword ptr [rip + .Lx353_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch288_n24_α
 snoch288_n21_β:
 jmp snoch288_n4_α
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "suffix"
snoch288_n22_α:
bb201_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S52]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch288_n23_α
 snoch288_n22_β:
 jmp snoch288_n23_α
snoch288_n23_α:
# IR_VAR
bb202_α:
 mov rdi, qword ptr [rip + .Lx357_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg355_done
 xgvarg355_β:
 jmp snoch288_n26_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "i"
xgvarg355_done:
# IR_VAR
bb203_α:
 mov rdi, qword ptr [rip + .Lx360_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xgvarg358_done
 xgvarg358_β:
 jmp snoch288_n26_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "n"
xgvarg358_done:
bb204_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S52]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 896], rax
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 880], 0
 mov qword ptr [r12 + 888], 0
 mov rax, qword ptr [r12 + 896]
 cmp rax, rcx
 jge snoch288_n26_α
 jmp snoch288_n25_α
 snoch288_n23_β:
 jmp snoch288_n26_α
snoch288_n24_α:
bb205_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch288_n27_α
 snoch288_n24_β:
 jmp snoch288_n4_α
snoch288_n25_α:
# IR_VAR
bb206_α:
 mov rdi, qword ptr [rip + .Lx365_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch288_n28_α
 snoch288_n25_β:
 jmp snoch288_n26_α
.Lx365_0:
 .quad .Lx365_0_s
.Lx365_0_s:
 .string "i"
snoch288_n26_α:
bb207_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S33]
 call rt_proc_define@PLT
 jmp snoch288_n29_α
 snoch288_n26_β:
 jmp snoch288_n29_α
snoch288_n27_α:
bb208_α:
# IR_ASSIGN
 lea rdi, [rip + .S41]
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n4_α
 snoch288_n27_β:
 jmp snoch288_n4_α
snoch288_n28_α:
# IR_LIT_scalar
bb209_α:
 jmp snoch288_n30_α
 snoch288_n28_β:
 jmp snoch288_n26_α
snoch288_n29_α:
# IR_VAR
bb210_α:
 mov rdi, qword ptr [rip + .Lx371_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch288_n31_α
 snoch288_n29_β:
 jmp snoch288_n32_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "INPUT"
snoch288_n30_α:
bb211_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S52]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 960], rax
 jmp snoch288_n33_α
 snoch288_n30_β:
 jmp snoch288_n26_α
snoch288_n31_α:
bb212_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S34]
 lea rsi, [rip + .S35]
 call rt_gvar_assign_var@PLT
 jmp snoch288_n34_α
 snoch288_n31_β:
 jmp snoch288_n32_α
snoch288_n32_α:
# IR_LIT_S
bb213_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [r12 + 976], rax
 jmp xgvarg375_done
 xgvarg375_β:
 jmp snoch288_n36_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "bank"
xgvarg375_done:
bb214_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+968] -> [r12+1000]
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1000], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1008], rax
   mov rdi, [rip + __proc + 48]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
 cmp eax, 99
 je snoch288_n36_α
 jmp snoch288_n35_α
snoch288_n32_β:
 jmp snoch288_n36_α
snoch288_n33_α:
bb215_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 968]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp snoch288_n37_α
 snoch288_n33_β:
 jmp snoch288_n26_α
snoch288_n34_α:
bb216_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 1032], 1
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 1040], rax
 mov dword ptr [r12 + 1048], 1
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 1056], rax
 mov dword ptr [r12 + 1064], 1
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 1072], rax
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 1032]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch288_n29_α
 snoch288_n34_β:
 jmp snoch288_n29_α
snoch288_n35_α:
bb217_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n36_α
 snoch288_n35_β:
 jmp snoch288_n36_α
snoch288_n36_α:
# IR_LIT_S
bb218_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 1088], rax
 jmp xgvarg381_done
 xgvarg381_β:
 jmp snoch288_n39_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "BANK"
xgvarg381_done:
bb219_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1080] -> [r12+1112]
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1112], rax
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1120], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 1112]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 cmp eax, 99
 je snoch288_n39_α
 jmp snoch288_n38_α
snoch288_n36_β:
 jmp snoch288_n39_α
snoch288_n37_α:
bb220_α:
# IR_ASSIGN
 lea rdi, [rip + .S52]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n40_α
 snoch288_n37_β:
 jmp snoch288_n26_α
snoch288_n38_α:
bb221_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n39_α
 snoch288_n38_β:
 jmp snoch288_n39_α
snoch288_n39_α:
# IR_LIT_scalar
bb222_α:
 jmp snoch288_n41_α
 snoch288_n39_β:
 jmp snoch288_n42_α
snoch288_n40_α:
# IR_VAR
bb223_α:
 mov rdi, qword ptr [rip + .Lx390_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
 jmp xgvarg388_done
 xgvarg388_β:
 jmp snoch288_n26_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "i"
xgvarg388_done:
# IR_VAR
bb224_α:
 mov rdi, qword ptr [rip + .Lx393_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xgvarg391_done
 xgvarg391_β:
 jmp snoch288_n26_α
.Lx393_0:
 .quad .Lx393_0_s
.Lx393_0_s:
 .string "n"
xgvarg391_done:
bb225_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S52]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 1176], rax
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 1160], 0
 mov qword ptr [r12 + 1168], 0
 mov rax, qword ptr [r12 + 1176]
 cmp rax, rcx
 jge snoch288_n26_α
 jmp snoch288_n43_α
 snoch288_n40_β:
 jmp snoch288_n26_α
snoch288_n41_α:
# IR_SUBJECT
bb226_α:
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 1192]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan396_sγ
 xscan396_sβ:
 jmp snoch288_n42_α
xscan396_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb227_α:
 mov r13, qword ptr [r12 + 1192]
 mov r15d, dword ptr [r12 + 1200]
 mov dword ptr [r12 + 1208], 0
 lea r10, [r12 + 1216]
 jmp smatch399_retry
 snoch288_n41_β:
 jmp xscan396_dfail
smatch399_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1208]
# IR_MATCH_DEFER
bb229_α:
 lea rdi, [rip + .S38]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx402_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch399_adv
 jmp xscan396_dok
.Lx402_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch399_adv
 mov r14d, eax
 jmp xscan396_dok
 smatch399_elemb:
 jmp smatch399_adv
smatch399_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1208], 1
 mov eax, dword ptr [r12 + 1208]
 cmp eax, r15d
 jg xscan396_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan396_dfail
 jmp smatch399_retry
xscan396_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S36]
 mov esi, dword ptr [r12 + 1208]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch288_n44_α
xscan396_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch288_n42_α
snoch288_n42_α:
# IR_LIT_S
bb231_α:
 mov qword ptr [r12 + 1224], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [r12 + 1232], rax
 jmp xgvarg404_done
 xgvarg404_β:
 jmp snoch288_n46_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "bank"
xgvarg404_done:
bb232_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1224] -> [r12+1256]
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1264], rax
   mov rdi, [rip + __proc + 24]
 lea rsi, [r12 + 1256]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
 cmp eax, 99
 je snoch288_n46_α
 jmp snoch288_n45_α
snoch288_n42_β:
 jmp snoch288_n46_α
snoch288_n43_α:
# IR_VAR
bb233_α:
 mov rdi, qword ptr [rip + .Lx408_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 jmp snoch288_n47_α
 snoch288_n43_β:
 jmp snoch288_n26_α
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "i"
snoch288_n44_α:
# IR_LIT_S
bb234_α:
 mov qword ptr [r12 + 1288], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 1296], rax
 jmp xgvarg409_done
 xgvarg409_β:
 jmp snoch288_n49_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "ROOT"
xgvarg409_done:
bb235_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1288] -> [r12+1320]
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1320], rax
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1328], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 1320]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 cmp eax, 99
 je snoch288_n49_α
 jmp snoch288_n48_α
snoch288_n44_β:
 jmp snoch288_n49_α
snoch288_n45_α:
bb236_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n46_α
 snoch288_n45_β:
 jmp snoch288_n46_α
snoch288_n46_α:
bb237_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 1336]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch288_n50_α
snoch288_n46_β:
 jmp pp_node_γ
snoch288_n47_α:
bb238_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 1160]
 mov rsi, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1272]
 mov rcx, qword ptr [r12 + 1280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], rdx
 jmp snoch288_n51_α
 snoch288_n47_β:
 jmp snoch288_n26_α
snoch288_n48_α:
bb239_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n49_α
 snoch288_n48_β:
 jmp snoch288_n49_α
snoch288_n49_α:
# IR_VAR
bb240_α:
 mov rdi, qword ptr [rip + .Lx417_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 jmp snoch288_n52_α
 snoch288_n49_β:
 jmp snoch288_n53_α
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "item"
snoch288_n50_α:
bb241_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch288_n50_β:
 jmp pp_node_γ
snoch288_n51_α:
bb242_α:
# IR_ASSIGN
 lea rdi, [rip + .S58]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n54_α
 snoch288_n51_β:
 jmp snoch288_n26_α
snoch288_n52_α:
# IR_SUBJECT
bb243_α:
 lea rdi, [rip + .S39]
 lea rsi, [r12 + 1384]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan421_sγ
 xscan421_sβ:
 jmp snoch288_n53_α
xscan421_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb244_α:
 mov r13, qword ptr [r12 + 1384]
 mov r15d, dword ptr [r12 + 1392]
 mov dword ptr [r12 + 1400], 0
 lea r10, [r12 + 1408]
 jmp smatch424_retry
 snoch288_n52_β:
 jmp xscan421_dfail
smatch424_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1400]
# IR_MATCH_DEFER
bb246_α:
 lea rdi, [rip + .S40]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx427_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch424_adv
 jmp xscan421_dok
.Lx427_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch424_adv
 mov r14d, eax
 jmp xscan421_dok
 smatch424_elemb:
 jmp smatch424_adv
smatch424_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1400], 1
 mov eax, dword ptr [r12 + 1400]
 cmp eax, r15d
 jg xscan421_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan421_dfail
 jmp smatch424_retry
xscan421_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch288_n55_α
xscan421_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch288_n53_α
snoch288_n53_α:
bb248_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1416], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 1424], rax
 mov dword ptr [r12 + 1432], 1
 lea rax, [rip + .S39]
 mov qword ptr [r12 + 1440], rax
 lea rdi, [rip + .S41]
 lea rsi, [r12 + 1416]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch288_n56_α
 snoch288_n53_β:
 jmp snoch288_n56_α
snoch288_n54_α:
# IR_VAR
bb249_α:
 mov rdi, qword ptr [rip + .Lx431_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1448], rax
 mov qword ptr [r12 + 1456], rdx
 jmp snoch288_n57_α
 snoch288_n54_β:
 jmp snoch288_n23_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "i"
snoch288_n55_α:
bb250_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 1464]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je snoch288_n39_α
 jmp snoch288_n58_α
snoch288_n55_β:
 jmp snoch288_n39_α
snoch288_n56_α:
bb251_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 1480]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 cmp eax, 99
 je snoch288_n39_α
 jmp snoch288_n59_α
snoch288_n56_β:
 jmp snoch288_n39_α
snoch288_n57_α:
bb252_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S52]
 lea rsi, [rip + .S52]
 call rt_gvar_assign_var@PLT
 jmp snoch288_n23_α
 snoch288_n57_β:
 jmp snoch288_n23_α
snoch288_n58_α:
bb253_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n39_α
 snoch288_n58_β:
 jmp snoch288_n39_α
snoch288_n59_α:
bb254_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1488]
 call rt_gvar_assign_descr@PLT
 jmp snoch288_n39_α
 snoch288_n59_β:
 jmp snoch288_n39_α
pp_node_β:
jmp pp_node_ω
pp_node_γ:
mov eax, 1
xor edx, edx
pop r12
ret
pp_node_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
pp_bank_α:
#=======================================================================================================================
    .global pp_bank_α
    .global pp_bank_β
    .global pp_bank_γ
    .global pp_bank_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
pp_bank_α_body:
snoch437_n0_α:
# IR_VAR
bb255_α:
 mov rdi, qword ptr [rip + .Lx440_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg438_done
 xgvarg438_β:
 jmp snoch437_n1_α
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "bank"
xgvarg438_done:
# IR_LIT_I
bb256_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg441_done
 xgvarg441_β:
 jmp snoch437_n1_α
.Lx442_0:
 .quad 0
xgvarg441_done:
# IR_LIT_S
bb257_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg443_done
 xgvarg443_β:
 jmp snoch437_n1_α
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string ""
xgvarg443_done:
bb258_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+80]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+96]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [r12+48] -> [r12+112]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 120], rax
   mov rdi, [rip + __proc + 40]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch437_n1_α
 jmp snoch437_n1_α
snoch437_n0_β:
 jmp snoch437_n1_α
snoch437_n1_α:
# IR_VAR
bb259_α:
 mov rdi, qword ptr [rip + .Lx447_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch437_n2_α
 snoch437_n1_β:
 jmp snoch437_n3_α
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string ""
snoch437_n2_α:
bb260_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S59]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch437_n3_α
 snoch437_n2_β:
 jmp snoch437_n3_α
snoch437_n3_α:
snoch437_n3_β:
jmp pp_bank_γ
jmp pp_bank_γ
pp_bank_β:
jmp pp_bank_ω
pp_bank_γ:
mov eax, 1
xor edx, edx
pop r12
ret
pp_bank_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "stk_push_frame"
  .Lpp0_0: .string "v"
  .Lpnames0:
  .quad .Lpp0_0
  .quad 0
  .Lpn1: .string "stk_push_item"
  .Lpp1_0: .string "v"
  .Lpp1_1: .string "cur"
  .Lpnames1:
  .quad .Lpp1_0
  .quad .Lpp1_1
  .quad 0
  .Lpn2: .string "stk_pop_into_parent"
  .Lpp2_0: .string "child"
  .Lpp2_1: .string "par"
  .Lpp2_2: .string "n"
  .Lpnames2:
  .quad .Lpp2_0
  .quad .Lpp2_1
  .quad .Lpp2_2
  .quad 0
  .Lpn3: .string "stk_pop_final"
  .Lpp3_0: .string "var"
  .Lpp3_1: .string "child"
  .Lpnames3:
  .quad .Lpp3_0
  .quad .Lpp3_1
  .quad 0
  .Lpn4: .string "init_list"
  .Lpp4_0: .string "v"
  .Lpnames4:
  .quad .Lpp4_0
  .quad 0
  .Lpn5: .string "Init_list"
  .Lpp5_0: .string "vs"
  .Lpnames5:
  .quad .Lpp5_0
  .quad 0
  .Lpn6: .string "push_list"
  .Lpp6_0: .string "v"
  .Lpnames6:
  .quad .Lpp6_0
  .quad 0
  .Lpn7: .string "Push_list"
  .Lpp7_0: .string "vs"
  .Lpnames7:
  .quad .Lpp7_0
  .quad 0
  .Lpn8: .string "push_item"
  .Lpp8_0: .string "v"
  .Lpnames8:
  .quad .Lpp8_0
  .quad 0
  .Lpn9: .string "Push_item"
  .Lpp9_0: .string "vs"
  .Lpnames9:
  .quad .Lpp9_0
  .quad 0
  .Lpn10: .string "pop_list"
  .Lpnames10:
  .quad 0
  .Lpn11: .string "Pop_list"
  .Lpnames11:
  .quad 0
  .Lpn12: .string "pop_final"
  .Lpp12_0: .string "v"
  .Lpnames12:
  .quad .Lpp12_0
  .quad 0
  .Lpn13: .string "Pop_final"
  .Lpp13_0: .string "vs"
  .Lpnames13:
  .quad .Lpp13_0
  .quad 0
  .Lpn14: .string "node_repr"
  .Lpp14_0: .string "f"
  .Lpp14_1: .string "r"
  .Lpp14_2: .string "sep"
  .Lpp14_3: .string "i"
  .Lpp14_4: .string "n"
  .Lpp14_5: .string "tag"
  .Lpnames14:
  .quad .Lpp14_0
  .quad .Lpp14_1
  .quad .Lpp14_2
  .quad .Lpp14_3
  .quad .Lpp14_4
  .quad .Lpp14_5
  .quad 0
  .Lpn15: .string "pp_node"
  .Lpp15_0: .string "f"
  .Lpp15_1: .string "indent"
  .Lpp15_2: .string "suffix"
  .Lpp15_3: .string "r"
  .Lpp15_4: .string "pad"
  .Lpp15_5: .string "tag"
  .Lpp15_6: .string "n"
  .Lpp15_7: .string "i"
  .Lpp15_8: .string "nxt"
  .Lpnames15:
  .quad .Lpp15_0
  .quad .Lpp15_1
  .quad .Lpp15_2
  .quad .Lpp15_3
  .quad .Lpp15_4
  .quad .Lpp15_5
  .quad .Lpp15_6
  .quad .Lpp15_7
  .quad .Lpp15_8
  .quad 0
  .Lpn16: .string "pp_bank"
  .Lpnames16:
  .quad 0
  .section .text
  .intel_syntax noprefix
proc_startup:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + .Lpnames0]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + stk_push_frame_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 216
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + .Lpnames1]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + stk_push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn1]
  mov esi, 208
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + .Lpnames2]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + stk_pop_into_parent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn2]
  mov esi, 264
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn3]
  lea rsi, [rip + .Lpnames3]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn3]
  lea rsi, [rip + stk_pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn3]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn4]
  lea rsi, [rip + .Lpnames4]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn4]
  lea rsi, [rip + init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn4]
  mov esi, 64
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn5]
  lea rsi, [rip + .Lpnames5]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn5]
  lea rsi, [rip + Init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn5]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn6]
  lea rsi, [rip + .Lpnames6]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn6]
  lea rsi, [rip + push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn6]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn7]
  lea rsi, [rip + .Lpnames7]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn7]
  lea rsi, [rip + Push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn7]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn8]
  lea rsi, [rip + .Lpnames8]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn8]
  lea rsi, [rip + push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn8]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn9]
  lea rsi, [rip + .Lpnames9]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn9]
  lea rsi, [rip + Push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn9]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn10]
  lea rsi, [rip + .Lpnames10]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn10]
  lea rsi, [rip + pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn10]
  mov esi, 32
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn11]
  lea rsi, [rip + .Lpnames11]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn11]
  lea rsi, [rip + Pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn11]
  mov esi, 416
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn12]
  lea rsi, [rip + .Lpnames12]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn12]
  lea rsi, [rip + pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn12]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn13]
  lea rsi, [rip + .Lpnames13]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn13]
  lea rsi, [rip + Pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn13]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + .Lpnames14]
  mov edx, 6
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + node_repr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn14]
  mov esi, 536
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + .Lpnames15]
  mov edx, 9
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn15]
  mov esi, 1496
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + .Lpnames16]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + pp_bank_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn16]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "frame_id"
  .Lgvan1: .string "stk_tag"
  .Lgvan2: .string "stk_n"
  .Lgvan3: .string "stk_c"
  .Lgvan4: .string "v"
  .Lgvan5: .string "stk"
  .Lgvan6: .string "stk_push_frame"
  .Lgvan7: .string "cur"
  .Lgvan8: .string "stk_push_item"
  .Lgvan9: .string "child"
  .Lgvan10: .string "par"
  .Lgvan11: .string "n"
  .Lgvan12: .string "stk_pop_into_parent"
  .Lgvan13: .string "stk_pop_final"
  .Lgvan14: .string "init_list"
  .Lgvan15: .string "Init_list"
  .Lgvan16: .string "dummy"
  .Lgvan17: .string "push_list"
  .Lgvan18: .string "Push_list"
  .Lgvan19: .string "push_item"
  .Lgvan20: .string "Push_item"
  .Lgvan21: .string "pop_list"
  .Lgvan22: .string "Pop_list"
  .Lgvan23: .string "pop_final"
  .Lgvan24: .string "Pop_final"
  .Lgvan25: .string "node_repr"
  .Lgvan26: .string "tag"
  .Lgvan27: .string "f"
  .Lgvan28: .string "r"
  .Lgvan29: .string "i"
  .Lgvan30: .string "suffix"
  .Lgvan31: .string "pad"
  .Lgvan32: .string "nxt"
  .Lgvan33: .string "pp_bank"
  .Lgvan34: .string "delim"
  .Lgvan35: .string "word"
  .Lgvan36: .string "group"
  .Lgvan37: .string "spat"
  .Lgvan38: .string "line"
  .Lgvan39: .string "src"
  .Lgvan40: .string "item"
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
  .section .bss
  .align 16
__gva: .space 656, 0
  .section .text
  .intel_syntax noprefix
  .section .rodata
  .Lprocn0: .string "stk_push_frame"
  .Lprocn1: .string "stk_push_item"
  .Lprocn2: .string "stk_pop_into_parent"
  .Lprocn3: .string "stk_pop_final"
  .Lprocn4: .string "node_repr"
  .Lprocn5: .string "pp_node"
  .Lprocn6: .string "init_list"
  .Lprocn7: .string "pp_bank"
  .align 8
__proc_names:
  .quad .Lprocn0
  .quad .Lprocn1
  .quad .Lprocn2
  .quad .Lprocn3
  .quad .Lprocn4
  .quad .Lprocn5
  .quad .Lprocn6
  .quad .Lprocn7
  .section .bss
  .align 8
__proc: .space 64, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __proc]
  lea rsi, [rip + __proc_names]
  mov edx, 8
  call rt_proc_table_fill@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 41
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call flat_α
  xor eax, eax
  pop rbp
  ret
flat_α:
#=======================================================================================================================
    .global flat_α
    .global flat_β
    .global flat_γ
    .global flat_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
flat_α_body:
snoch449_n0_α:
# IR_VAR
bb261_α:
 mov rdi, qword ptr [rip + .Lx451_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch449_n1_α
 snoch449_n0_β:
 jmp snoch449_n2_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "ALPHABET"
snoch449_n1_α:
# IR_SUBJECT
bb262_α:
 lea rdi, [rip + .S60]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan452_sγ
 xscan452_sβ:
 jmp snoch449_n2_α
xscan452_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb263_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch455_retry
 snoch449_n1_β:
 jmp xscan452_dfail
smatch455_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb265_α:
 cmp r14d, 10
 jne xcat458_ω
 jmp xcat458_γ
 xcat458_left_β:
 jmp xcat458_ω
xcat458_γ:
# IR_MATCH_CAPTURE_SAVE
bb266_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb267_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat458_right_ω
 add r14d, 1
 jmp xcap460_γ
 xcat458_right_β:
 jmp xcat458_right_ω
xcap460_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S37]
 mov esi, dword ptr [r12 + 48]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan452_dok
xcat458_right_ω:
 jmp xcat458_left_β
smatch455_elemb:
 jmp xcat458_right_β
xcat458_ω:
 jmp smatch455_adv
smatch455_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan452_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan452_dfail
 jmp smatch455_retry
xscan452_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch449_n2_α
xscan452_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch449_n2_α
snoch449_n2_α:
# IR_LIT_S
bb271_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg466_done
 xgvarg466_β:
 jmp snoch449_n3_α
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "list(head,tail)"
xgvarg466_done:
bb272_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn469: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn469]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch449_n3_α
 jmp snoch449_n3_α
snoch449_n2_β:
 jmp snoch449_n3_α
snoch449_n3_α:
# IR_LIT_scalar
bb273_α:
 jmp snoch449_n4_α
 snoch449_n3_β:
 jmp snoch449_n5_α
snoch449_n4_α:
bb274_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch449_n5_α
 snoch449_n4_β:
 jmp snoch449_n5_α
snoch449_n5_α:
bb275_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn473: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn473]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch449_n7_α
 jmp snoch449_n6_α
snoch449_n5_β:
 jmp snoch449_n7_α
snoch449_n6_α:
bb276_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch449_n7_α
 snoch449_n6_β:
 jmp snoch449_n7_α
snoch449_n7_α:
bb277_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn476: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn476]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch449_n9_α
 jmp snoch449_n8_α
snoch449_n7_β:
 jmp snoch449_n9_α
snoch449_n8_α:
bb278_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch449_n9_α
 snoch449_n8_β:
 jmp snoch449_n9_α
snoch449_n9_α:
bb279_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn479: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn479]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch449_n11_α
 jmp snoch449_n10_α
snoch449_n9_β:
 jmp snoch449_n11_α
snoch449_n10_α:
bb280_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch449_n11_α
 snoch449_n10_β:
 jmp snoch449_n11_α
snoch449_n11_α:
bb281_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch449_n12_α
 snoch449_n11_β:
 jmp snoch449_n12_α
snoch449_n12_α:
bb282_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch449_n13_α
 snoch449_n12_β:
 jmp snoch449_n13_α
snoch449_n13_α:
bb283_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch449_n14_α
 snoch449_n13_β:
 jmp snoch449_n14_α
snoch449_n14_α:
bb284_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch449_n15_α
 snoch449_n14_β:
 jmp snoch449_n15_α
snoch449_n15_α:
bb285_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch449_n16_α
 snoch449_n15_β:
 jmp snoch449_n16_α
snoch449_n16_α:
bb286_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch449_n17_α
 snoch449_n16_β:
 jmp snoch449_n17_α
snoch449_n17_α:
bb287_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S67]
 call rt_proc_define@PLT
 jmp snoch449_n18_α
 snoch449_n17_β:
 jmp snoch449_n18_α
snoch449_n18_α:
bb288_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S68]
 call rt_proc_define@PLT
 jmp snoch449_n19_α
 snoch449_n18_β:
 jmp snoch449_n19_α
snoch449_n19_α:
bb289_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S69]
 call rt_proc_define@PLT
 jmp snoch449_n20_α
 snoch449_n19_β:
 jmp snoch449_n20_α
snoch449_n20_α:
bb290_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S70]
 call rt_proc_define@PLT
 jmp snoch449_n21_α
 snoch449_n20_β:
 jmp snoch449_n21_α
snoch449_n21_α:
bb291_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S71]
 call rt_proc_define@PLT
 jmp snoch449_n22_α
 snoch449_n21_β:
 jmp snoch449_n22_α
snoch449_n22_α:
bb292_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S72]
 call rt_proc_define@PLT
 jmp snoch449_n23_α
 snoch449_n22_β:
 jmp snoch449_n23_α
snoch449_n23_α:
bb293_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch449_n24_α
 snoch449_n23_β:
 jmp snoch449_n24_α
snoch449_n24_α:
bb294_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S30]
 call rt_proc_define@PLT
 jmp snoch449_n25_α
 snoch449_n24_β:
 jmp snoch449_n25_α
snoch449_n25_α:
bb295_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S31]
 call rt_proc_define@PLT
 jmp snoch449_n26_α
 snoch449_n25_β:
 jmp snoch449_n26_α
snoch449_n26_α:
bb296_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S32]
 call rt_proc_define@PLT
 jmp snoch449_n27_α
 snoch449_n26_β:
 jmp snoch449_n27_α
snoch449_n27_α:
bb297_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S33]
 call rt_proc_define@PLT
 jmp snoch449_n28_α
 snoch449_n27_β:
 jmp snoch449_n28_α
snoch449_n28_α:
# IR_VAR
bb298_α:
 mov rdi, qword ptr [rip + .Lx499_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch449_n29_α
 snoch449_n28_β:
 jmp snoch449_n30_α
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "INPUT"
snoch449_n29_α:
bb299_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S34]
 lea rsi, [rip + .S35]
 call rt_gvar_assign_var@PLT
 jmp snoch449_n31_α
 snoch449_n29_β:
 jmp snoch449_n30_α
snoch449_n30_α:
# IR_LIT_S
bb300_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg501_done
 xgvarg501_β:
 jmp snoch449_n33_α
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "bank"
xgvarg501_done:
bb301_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
   mov rdi, [rip + __proc + 48]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je snoch449_n33_α
 jmp snoch449_n32_α
snoch449_n30_β:
 jmp snoch449_n33_α
snoch449_n31_α:
bb302_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 1
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 1
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 224]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch449_n28_α
 snoch449_n31_β:
 jmp snoch449_n28_α
snoch449_n32_α:
bb303_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch449_n33_α
 snoch449_n32_β:
 jmp snoch449_n33_α
snoch449_n33_α:
# IR_LIT_S
bb304_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg506_done
 xgvarg506_β:
 jmp snoch449_n35_α
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "BANK"
xgvarg506_done:
bb305_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+272] -> [r12+304]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 312], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je snoch449_n35_α
 jmp snoch449_n34_α
snoch449_n33_β:
 jmp snoch449_n35_α
snoch449_n34_α:
bb306_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch449_n35_α
 snoch449_n34_β:
 jmp snoch449_n35_α
snoch449_n35_α:
# IR_LIT_scalar
bb307_α:
 jmp snoch449_n36_α
 snoch449_n35_β:
 jmp snoch449_n37_α
snoch449_n36_α:
# IR_SUBJECT
bb308_α:
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan511_sγ
 xscan511_sβ:
 jmp snoch449_n37_α
xscan511_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb309_α:
 mov r13, qword ptr [r12 + 320]
 mov r15d, dword ptr [r12 + 328]
 mov dword ptr [r12 + 336], 0
 lea r10, [r12 + 344]
 jmp smatch514_retry
 snoch449_n36_β:
 jmp xscan511_dfail
smatch514_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb311_α:
 lea rdi, [rip + .S38]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx517_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch514_adv
 jmp xscan511_dok
.Lx517_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch514_adv
 mov r14d, eax
 jmp xscan511_dok
 smatch514_elemb:
 jmp smatch514_adv
smatch514_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan511_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan511_dfail
 jmp smatch514_retry
xscan511_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S36]
 mov esi, dword ptr [r12 + 336]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch449_n38_α
xscan511_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch449_n37_α
snoch449_n37_α:
# IR_LIT_S
bb313_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg519_done
 xgvarg519_β:
 jmp snoch449_n40_α
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "bank"
xgvarg519_done:
bb314_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
   mov rdi, [rip + __proc + 24]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch449_n40_α
 jmp snoch449_n39_α
snoch449_n37_β:
 jmp snoch449_n40_α
snoch449_n38_α:
# IR_LIT_S
bb315_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [r12 + 408], rax
 jmp xgvarg522_done
 xgvarg522_β:
 jmp snoch449_n42_α
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "ROOT"
xgvarg522_done:
bb316_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch449_n42_α
 jmp snoch449_n41_α
snoch449_n38_β:
 jmp snoch449_n42_α
snoch449_n39_α:
bb317_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch449_n40_α
 snoch449_n39_β:
 jmp snoch449_n40_α
snoch449_n40_α:
bb318_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch449_n43_α
snoch449_n40_β:
 jmp flat_γ
snoch449_n41_α:
bb319_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch449_n42_α
 snoch449_n41_β:
 jmp snoch449_n42_α
snoch449_n42_α:
# IR_VAR gva
bb320_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch449_n44_α
 snoch449_n42_β:
 jmp snoch449_n45_α
snoch449_n43_α:
bb321_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp flat_γ
 snoch449_n43_β:
 jmp flat_γ
snoch449_n44_α:
# IR_SUBJECT
bb322_α:
 lea rdi, [rip + .S39]
 lea rsi, [r12 + 480]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan531_sγ
 xscan531_sβ:
 jmp snoch449_n45_α
xscan531_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb323_α:
 mov r13, qword ptr [r12 + 480]
 mov r15d, dword ptr [r12 + 488]
 mov dword ptr [r12 + 496], 0
 lea r10, [r12 + 504]
 jmp smatch534_retry
 snoch449_n44_β:
 jmp xscan531_dfail
smatch534_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 496]
# IR_MATCH_DEFER
bb325_α:
 lea rdi, [rip + .S40]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx537_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch534_adv
 jmp xscan531_dok
.Lx537_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch534_adv
 mov r14d, eax
 jmp xscan531_dok
 smatch534_elemb:
 jmp smatch534_adv
smatch534_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 496], 1
 mov eax, dword ptr [r12 + 496]
 cmp eax, r15d
 jg xscan531_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan531_dfail
 jmp smatch534_retry
xscan531_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch449_n46_α
xscan531_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch449_n45_α
snoch449_n45_α:
bb327_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 512], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 520], rax
 mov dword ptr [r12 + 528], 1
 lea rax, [rip + .S39]
 mov qword ptr [r12 + 536], rax
 lea rdi, [rip + .S41]
 lea rsi, [r12 + 512]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch449_n47_α
 snoch449_n45_β:
 jmp snoch449_n47_α
snoch449_n46_α:
bb328_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch449_n35_α
 jmp snoch449_n48_α
snoch449_n46_β:
 jmp snoch449_n35_α
snoch449_n47_α:
bb329_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je snoch449_n35_α
 jmp snoch449_n49_α
snoch449_n47_β:
 jmp snoch449_n35_α
snoch449_n48_α:
bb330_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch449_n35_α
 snoch449_n48_β:
 jmp snoch449_n35_α
snoch449_n49_α:
bb331_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch449_n35_α
 snoch449_n49_β:
 jmp snoch449_n35_α
flat_β:
jmp flat_ω
flat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
flat_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
.section .rodata
.S0: .string "frame_id"
.S1: .string "stk"
.S2: .string "stk_push_frame"
.S3: .string ""
.S4: .string "cur"
.S5: .string "stk_n"
.S6: .string "stk_push_item"
.S7: .string "child"
.S8: .string "par"
.S9: .string "n"
.S10: .string "stk_pop_into_parent"
.S11: .string "var"
.S12: .string "stk_pop_final"
.S13: .string "v"
.S14: .string "stk_tag"
.S15: .string "stk_c"
.S16: .string "init_list"
.S17: .string "epsilon . *init_list("
.S18: .string "vs"
.S19: .string ")"
.S20: .string "Init_list"
.S21: .string "dummy"
.S22: .string "push_list"
.S23: .string "epsilon . *push_list("
.S24: .string "Push_list"
.S25: .string "push_item"
.S26: .string "epsilon . *push_item("
.S27: .string "Push_item"
.S28: .string "pop_list"
.S29: .string "pop_final(v)"
.S30: .string "Pop_final(vs)"
.S31: .string "node_repr(f)r,sep,i,n,tag"
.S32: .string "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.S33: .string "pp_bank()"
.S34: .string "line"
.S35: .string "INPUT"
.S36: .string "src"
.S37: .string "nl"
.S38: .string "spat"
.S39: .string "item"
.S40: .string "group"
.S41: .string "OUTPUT"
.S42: .string "Parse failed on: "
.S43: .string "pop_final"
.S44: .string "epsilon . *pop_final("
.S45: .string "Pop_final"
.S46: .string "node_repr"
.S47: .string "'"
.S48: .string "f"
.S49: .string "tag"
.S50: .string "r"
.S51: .string "('"
.S52: .string "i"
.S53: .string "pad"
.S54: .string "indent"
.S55: .string "suffix"
.S56: .string "( "
.S57: .string "',"
.S58: .string "nxt"
.S59: .string "pp_bank"
.S60: .string "ALPHABET"
.S61: .string "stk_push_frame(v)"
.S62: .string "stk_push_item(v,cur)"
.S63: .string "stk_pop_into_parent(child,par,n)"
.S64: .string "stk_pop_final(var,child)"
.S65: .string "init_list(v)"
.S66: .string "Init_list(vs)"
.S67: .string "push_list(v)"
.S68: .string "Push_list(vs)"
.S69: .string "push_item(v)"
.S70: .string "Push_item(vs)"
.S71: .string "pop_list()"
.S72: .string "Pop_list()"
.text
