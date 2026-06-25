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
bb3_α:
# IR_IDX_SET: AXS inline DT_A+int fast path, else subscript_set
 lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 lea rdi, [rip + .S2]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx5_0
 mov rax, qword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx5_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx5_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx5_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch0_n4_α
.Lx5_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [r12 + 48]
 mov r9, qword ptr [r12 + 56]
 call subscript_set@PLT
 cmp eax, 0
 je snoch0_n4_α
 jmp snoch0_n4_α
 snoch0_n2_β:
 jmp snoch0_n4_α
snoch0_n3_α:
bb4_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S1]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 64], rax
 jmp snoch0_n5_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
bb5_α:
# IR_IDX_SET: AXS inline DT_A+int fast path, else subscript_set
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 movabs rax, 6
 mov qword ptr [r12 + 104], rax
 movabs rax, 0
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 72]
 cmp eax, 4
 jne .Lx9_0
 mov rax, qword ptr [r12 + 88]
 cmp eax, 6
 jne .Lx9_0
 mov rsi, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 96]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx9_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx9_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch0_n6_α
.Lx9_0:
 mov rdi, qword ptr [r12 + 72]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 96]
 mov r8, qword ptr [r12 + 104]
 mov r9, qword ptr [r12 + 112]
 call subscript_set@PLT
 cmp eax, 0
 je snoch0_n6_α
 jmp snoch0_n6_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
bb6_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 64]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n5_β:
 jmp snoch0_n2_α
snoch0_n6_α:
# IR_VAR
bb7_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n8_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "frame_id"
xgvarg12_done:
# IR_VAR
bb8_α:
 mov rdi, qword ptr [rip + .Lx17_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n8_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "stk"
xgvarg15_done:
bb9_α:
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
  .Lrkfn19: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
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
bb10_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_VAR
bb11_α:
 mov rdi, qword ptr [rip + .Lx22_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string ""
snoch0_n9_α:
bb12_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S6]
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
snoch24_n0_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx27_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg25_done
 xgvarg25_β:
 jmp snoch24_n2_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "stk"
xgvarg25_done:
bb14_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn29: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn29]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch24_n2_α
 jmp snoch24_n1_α
snoch24_n0_β:
 jmp snoch24_n2_α
snoch24_n1_α:
bb15_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch24_n2_α
 snoch24_n1_β:
 jmp snoch24_n2_α
snoch24_n2_α:
bb16_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx32_0
 mov r8, qword ptr [r12 + 64]
 cmp r8d, 6
 jne .Lx32_0
 mov rcx, qword ptr [r12 + 72]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx32_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx32_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch24_n3_α
.Lx32_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 call subscript_get@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch24_n3_α
 snoch24_n2_β:
 jmp snoch24_n4_α
snoch24_n3_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch24_n5_α
 snoch24_n3_β:
 jmp snoch24_n4_α
snoch24_n4_α:
# IR_VAR
bb18_α:
 mov rdi, qword ptr [rip + .Lx35_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch24_n6_α
 snoch24_n4_β:
 jmp snoch24_n7_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string ""
snoch24_n5_α:
bb19_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx38_0
 mov r8, qword ptr [r12 + 112]
 cmp r8d, 6
 jne .Lx38_0
 mov rcx, qword ptr [r12 + 120]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx38_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx38_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx36_done
.Lx38_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call subscript_get@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx36_done
 xgvidx36_β:
 jmp snoch24_n4_α
xgvidx36_done:
bb20_α:
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
 je snoch24_n4_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch24_n8_α
 snoch24_n5_β:
 jmp snoch24_n4_α
snoch24_n6_α:
bb21_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch24_n7_α
 snoch24_n6_β:
 jmp snoch24_n7_α
snoch24_n7_α:
snoch24_n7_β:
jmp stk_push_item_γ
jmp stk_push_item_γ
snoch24_n8_α:
bb22_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx44_0
 mov r8, qword ptr [r12 + 176]
 cmp r8d, 6
 jne .Lx44_0
 mov rcx, qword ptr [r12 + 184]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx44_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx44_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvidx42_done
.Lx44_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call subscript_get@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvidx42_done
 xgvidx42_β:
 jmp snoch24_n4_α
xgvidx42_done:
bb23_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 movabs rax, 6
 mov qword ptr [r12 + 208], rax
 movabs rax, 1
 mov qword ptr [r12 + 216], rax
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch24_n4_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xgvidxv41_done
 xgvidxv41_β:
 jmp snoch24_n4_α
xgvidxv41_done:
bb24_α:
# IR_IDX_SET: AXS inline DT_A+int fast path, else subscript_set
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov rax, qword ptr [r12 + 160]
 movabs rdx, 6
 mov qword ptr [r12 + 160], rdx
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 240]
 cmp eax, 4
 jne .Lx47_0
 mov rax, qword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx47_0
 mov rsi, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx47_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx47_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch24_n4_α
.Lx47_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call subscript_set@PLT
 cmp eax, 0
 je snoch24_n4_α
 jmp snoch24_n4_α
 snoch24_n8_β:
 jmp snoch24_n4_α
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
snoch48_n0_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx51_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg49_done
 xgvarg49_β:
 jmp snoch48_n2_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "stk"
xgvarg49_done:
bb26_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn53: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn53]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch48_n2_α
 jmp snoch48_n1_α
snoch48_n0_β:
 jmp snoch48_n2_α
snoch48_n1_α:
bb27_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch48_n2_α
 snoch48_n1_β:
 jmp snoch48_n2_α
snoch48_n2_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx57_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg55_done
 xgvarg55_β:
 jmp snoch48_n4_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "stk"
xgvarg55_done:
bb29_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn59: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn59]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch48_n4_α
 jmp snoch48_n3_α
snoch48_n2_β:
 jmp snoch48_n4_α
snoch48_n3_α:
bb30_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch48_n4_α
 snoch48_n3_β:
 jmp snoch48_n4_α
snoch48_n4_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx63_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg61_done
 xgvarg61_β:
 jmp snoch48_n6_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "stk"
xgvarg61_done:
bb32_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn65: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn65]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch48_n6_α
 jmp snoch48_n5_α
snoch48_n4_β:
 jmp snoch48_n6_α
snoch48_n5_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch48_n6_α
 snoch48_n5_β:
 jmp snoch48_n6_α
snoch48_n6_α:
bb34_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx68_0
 mov r8, qword ptr [r12 + 160]
 cmp r8d, 6
 jne .Lx68_0
 mov rcx, qword ptr [r12 + 168]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx68_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx68_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch48_n7_α
.Lx68_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call subscript_get@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch48_n7_α
 snoch48_n6_β:
 jmp snoch48_n8_α
snoch48_n7_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch48_n8_α
 snoch48_n7_β:
 jmp snoch48_n8_α
snoch48_n8_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx71_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch48_n9_α
 snoch48_n8_β:
 jmp snoch48_n10_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "n"
snoch48_n9_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch48_n11_α
 snoch48_n9_β:
 jmp snoch48_n10_α
snoch48_n10_α:
# IR_VAR
bb38_α:
 mov rdi, qword ptr [rip + .Lx74_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp snoch48_n12_α
 snoch48_n10_β:
 jmp snoch48_n13_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string ""
snoch48_n11_α:
bb39_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch48_n14_α
 snoch48_n11_β:
 jmp snoch48_n10_α
snoch48_n12_α:
bb40_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch48_n13_α
 snoch48_n12_β:
 jmp snoch48_n13_α
snoch48_n13_α:
snoch48_n13_β:
jmp stk_pop_into_parent_γ
jmp stk_pop_into_parent_γ
snoch48_n14_α:
bb41_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp xgvidxv78_done
 xgvidxv78_β:
 jmp snoch48_n10_α
xgvidxv78_done:
bb42_α:
# IR_IDX_SET: AXS inline DT_A+int fast path, else subscript_set
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov rax, qword ptr [r12 + 224]
 movabs rdx, 6
 mov qword ptr [r12 + 224], rdx
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 240]
 cmp eax, 4
 jne .Lx82_0
 mov rax, qword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx82_0
 mov rsi, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx82_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx82_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch48_n10_α
.Lx82_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [r12 + 224]
 mov r9, qword ptr [r12 + 232]
 call subscript_set@PLT
 cmp eax, 0
 je snoch48_n10_α
 jmp snoch48_n10_α
 snoch48_n14_β:
 jmp snoch48_n10_α
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
snoch83_n0_α:
# IR_VAR
bb43_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg84_done
 xgvarg84_β:
 jmp snoch83_n2_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "stk"
xgvarg84_done:
bb44_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn88: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn88]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch83_n2_α
 jmp snoch83_n1_α
snoch83_n0_β:
 jmp snoch83_n2_α
snoch83_n1_α:
bb45_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch83_n2_α
 snoch83_n1_β:
 jmp snoch83_n2_α
snoch83_n2_α:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx92_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg90_done
 xgvarg90_β:
 jmp snoch83_n4_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "stk"
xgvarg90_done:
bb47_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn94: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn94]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch83_n4_α
 jmp snoch83_n3_α
snoch83_n2_β:
 jmp snoch83_n4_α
snoch83_n3_α:
bb48_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch83_n4_α
 snoch83_n3_β:
 jmp snoch83_n4_α
snoch83_n4_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx97_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch83_n5_α
 snoch83_n4_β:
 jmp snoch83_n6_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string ""
snoch83_n5_α:
bb50_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S13]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch83_n6_α
 snoch83_n5_β:
 jmp snoch83_n6_α
snoch83_n6_α:
snoch83_n6_β:
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
snoch99_n0_α:
# IR_LIT_scalar
bb51_α:
 jmp snoch99_n1_α
 snoch99_n0_β:
 jmp snoch99_n2_α
snoch99_n1_α:
bb52_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S6]
 call rt_indirect_assign_str@PLT
 jmp snoch99_n2_α
 snoch99_n1_β:
 jmp snoch99_n2_α
snoch99_n2_α:
# IR_LIT_scalar
bb53_α:
 jmp snoch99_n3_α
 snoch99_n2_β:
 jmp snoch99_n4_α
snoch99_n3_α:
bb54_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_str@PLT
 jmp snoch99_n4_α
 snoch99_n3_β:
 jmp snoch99_n4_α
snoch99_n4_α:
# IR_LIT_scalar
bb55_α:
 jmp snoch99_n5_α
 snoch99_n4_β:
 jmp snoch99_n6_α
snoch99_n5_α:
bb56_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch99_n6_α
 snoch99_n5_β:
 jmp snoch99_n6_α
snoch99_n6_α:
bb57_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn107: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn107]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch99_n8_α
 jmp snoch99_n7_α
snoch99_n6_β:
 jmp snoch99_n8_α
snoch99_n7_α:
bb58_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch99_n8_α
 snoch99_n7_β:
 jmp snoch99_n8_α
snoch99_n8_α:
bb59_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn110: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn110]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch99_n10_α
 jmp snoch99_n9_α
snoch99_n8_β:
 jmp snoch99_n10_α
snoch99_n9_α:
bb60_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch99_n10_α
 snoch99_n9_β:
 jmp snoch99_n10_α
snoch99_n10_α:
bb61_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn113: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn113]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch99_n12_α
 jmp snoch99_n11_α
snoch99_n10_β:
 jmp snoch99_n12_α
snoch99_n11_α:
bb62_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch99_n12_α
 snoch99_n11_β:
 jmp snoch99_n12_α
snoch99_n12_α:
# IR_VAR
bb63_α:
 mov rdi, qword ptr [rip + .Lx116_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp snoch99_n13_α
 snoch99_n12_β:
 jmp snoch99_n14_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string ""
snoch99_n13_α:
bb64_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch99_n14_α
 snoch99_n13_β:
 jmp snoch99_n14_α
snoch99_n14_α:
snoch99_n14_β:
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
snoch118_n0_α:
xgvarg119_done:
bb65_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn121: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn121]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch118_n2_α
 jmp snoch118_n1_α
snoch118_n0_β:
 jmp snoch118_n2_α
snoch118_n1_α:
bb66_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch118_n2_α
 snoch118_n1_β:
 jmp snoch118_n2_α
snoch118_n2_α:
snoch118_n2_β:
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
snoch123_n0_α:
# IR_VAR
bb67_α:
 mov rdi, qword ptr [rip + .Lx126_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg124_done
 xgvarg124_β:
 jmp snoch123_n2_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "v"
xgvarg124_done:
bb68_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn128: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn128]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch123_n2_α
 jmp snoch123_n1_α
snoch123_n0_β:
 jmp snoch123_n2_α
snoch123_n1_α:
bb69_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch123_n2_α
 snoch123_n1_β:
 jmp snoch123_n2_α
snoch123_n2_α:
# IR_VAR
bb70_α:
 mov rdi, qword ptr [rip + .Lx131_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch123_n3_α
 snoch123_n2_β:
 jmp snoch123_n4_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string ""
snoch123_n3_α:
bb71_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S18]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch123_n4_α
 snoch123_n3_β:
 jmp snoch123_n4_α
snoch123_n4_α:
snoch123_n4_β:
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
snoch133_n0_α:
xgvarg134_done:
bb72_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn136: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn136]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch133_n2_α
 jmp snoch133_n1_α
snoch133_n0_β:
 jmp snoch133_n2_α
snoch133_n1_α:
bb73_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch133_n2_α
 snoch133_n1_β:
 jmp snoch133_n2_α
snoch133_n2_α:
snoch133_n2_β:
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
snoch138_n0_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx141_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg139_done
 xgvarg139_β:
 jmp snoch138_n2_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "v"
xgvarg139_done:
bb75_α:
# BOX IR_CALL stk_push_item(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn143: .string "stk_push_item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn143]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch138_n2_α
 jmp snoch138_n1_α
snoch138_n0_β:
 jmp snoch138_n2_α
snoch138_n1_α:
bb76_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch138_n2_α
 snoch138_n1_β:
 jmp snoch138_n2_α
snoch138_n2_α:
# IR_VAR
bb77_α:
 mov rdi, qword ptr [rip + .Lx146_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch138_n3_α
 snoch138_n2_β:
 jmp snoch138_n4_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string ""
snoch138_n3_α:
bb78_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S20]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch138_n4_α
 snoch138_n3_β:
 jmp snoch138_n4_α
snoch138_n4_α:
snoch138_n4_β:
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
snoch148_n0_α:
xgvarg149_done:
bb79_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn151: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn151]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch148_n2_α
 jmp snoch148_n1_α
snoch148_n0_β:
 jmp snoch148_n2_α
snoch148_n1_α:
bb80_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch148_n2_α
 snoch148_n1_β:
 jmp snoch148_n2_α
snoch148_n2_α:
snoch148_n2_β:
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
snoch153_n0_α:
bb81_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn155: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn155]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch153_n2_α
 jmp snoch153_n1_α
snoch153_n0_β:
 jmp snoch153_n2_α
snoch153_n1_α:
bb82_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch153_n2_α
 snoch153_n1_β:
 jmp snoch153_n2_α
snoch153_n2_α:
# IR_VAR
bb83_α:
 mov rdi, qword ptr [rip + .Lx158_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch153_n3_α
 snoch153_n2_β:
 jmp snoch153_n4_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string ""
snoch153_n3_α:
bb84_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S22]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch153_n4_α
 snoch153_n3_β:
 jmp snoch153_n4_α
snoch153_n4_α:
snoch153_n4_β:
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
snoch160_n0_α:
bb85_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch160_n1_α
 snoch160_n0_β:
 jmp snoch160_n1_α
snoch160_n1_α:
bb86_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch160_n2_α
 snoch160_n1_β:
 jmp snoch160_n2_α
snoch160_n2_α:
bb87_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch160_n3_α
 snoch160_n2_β:
 jmp snoch160_n3_α
snoch160_n3_α:
bb88_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch160_n4_α
 snoch160_n3_β:
 jmp snoch160_n4_α
snoch160_n4_α:
bb89_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch160_n5_α
 snoch160_n4_β:
 jmp snoch160_n5_α
snoch160_n5_α:
# IR_VAR
bb90_α:
 mov rdi, qword ptr [rip + .Lx167_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch160_n6_α
 snoch160_n5_β:
 jmp snoch160_n7_α
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "INPUT"
snoch160_n6_α:
bb91_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch160_n8_α
 snoch160_n6_β:
 jmp snoch160_n7_α
snoch160_n7_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg169_done
 xgvarg169_β:
 jmp snoch160_n10_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "bank"
xgvarg169_done:
bb93_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn172: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn172]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch160_n10_α
 jmp snoch160_n9_α
snoch160_n7_β:
 jmp snoch160_n10_α
snoch160_n8_α:
bb94_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 88], rax
 mov dword ptr [r12 + 96], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 104], rax
 lea rdi, [rip + .S30]
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
 jmp snoch160_n5_α
 snoch160_n8_β:
 jmp snoch160_n5_α
snoch160_n9_α:
bb95_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n10_α
 snoch160_n9_β:
 jmp snoch160_n10_α
snoch160_n10_α:
# IR_LIT_S
bb96_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg175_done
 xgvarg175_β:
 jmp snoch160_n12_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "BANK"
xgvarg175_done:
bb97_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn178: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn178]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch160_n12_α
 jmp snoch160_n11_α
snoch160_n10_β:
 jmp snoch160_n12_α
snoch160_n11_α:
bb98_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n12_α
 snoch160_n11_β:
 jmp snoch160_n12_α
snoch160_n12_α:
# IR_LIT_scalar
bb99_α:
 jmp snoch160_n13_α
 snoch160_n12_β:
 jmp snoch160_n14_α
snoch160_n13_α:
# IR_SUBJECT
bb100_α:
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 160]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan181_sγ
 xscan181_sβ:
 jmp snoch160_n14_α
xscan181_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb101_α:
 mov r13, qword ptr [r12 + 160]
 mov r15d, dword ptr [r12 + 168]
 mov dword ptr [r12 + 176], 0
 lea r10, [r12 + 184]
 jmp smatch184_retry
 snoch160_n13_β:
 jmp xscan181_dfail
smatch184_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 176]
# IR_MATCH_DEFER
bb103_α:
 lea rdi, [rip + .S32]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx187_0
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
 jne smatch184_adv
 jmp xscan181_dok
.Lx187_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch184_adv
 mov r14d, eax
 jmp xscan181_dok
 smatch184_elemb:
 jmp smatch184_adv
smatch184_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
 cmp eax, r15d
 jg xscan181_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan181_dfail
 jmp smatch184_retry
xscan181_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S30]
 mov esi, dword ptr [r12 + 176]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch160_n15_α
xscan181_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch160_n14_α
snoch160_n14_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg189_done
 xgvarg189_β:
 jmp snoch160_n17_α
.Lx190_0:
 .quad .Lx190_0_s
.Lx190_0_s:
 .string "bank"
xgvarg189_done:
bb106_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lprocfn192: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn192]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch160_n17_α
 jmp snoch160_n16_α
snoch160_n14_β:
 jmp snoch160_n17_α
snoch160_n15_α:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg193_done
 xgvarg193_β:
 jmp snoch160_n19_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "ROOT"
xgvarg193_done:
bb108_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+240] -> [r12+272]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lprocfn196: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn196]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch160_n19_α
 jmp snoch160_n18_α
snoch160_n15_β:
 jmp snoch160_n19_α
snoch160_n16_α:
bb109_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n17_α
 snoch160_n16_β:
 jmp snoch160_n17_α
snoch160_n17_α:
bb110_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn199: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn199]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch160_n20_α
snoch160_n17_β:
 jmp Pop_list_γ
snoch160_n18_α:
bb111_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n19_α
 snoch160_n18_β:
 jmp snoch160_n19_α
snoch160_n19_α:
# IR_VAR
bb112_α:
 mov rdi, qword ptr [rip + .Lx202_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch160_n21_α
 snoch160_n19_β:
 jmp snoch160_n22_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "item"
snoch160_n20_α:
bb113_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch160_n20_β:
 jmp Pop_list_γ
snoch160_n21_α:
# IR_SUBJECT
bb114_α:
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan204_sγ
 xscan204_sβ:
 jmp snoch160_n22_α
xscan204_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb115_α:
 mov r13, qword ptr [r12 + 320]
 mov r15d, dword ptr [r12 + 328]
 mov dword ptr [r12 + 336], 0
 lea r10, [r12 + 344]
 jmp smatch207_retry
 snoch160_n21_β:
 jmp xscan204_dfail
smatch207_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb117_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx210_0
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
 jne smatch207_adv
 jmp xscan204_dok
.Lx210_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch207_adv
 mov r14d, eax
 jmp xscan204_dok
 smatch207_elemb:
 jmp smatch207_adv
smatch207_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan204_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan204_dfail
 jmp smatch207_retry
xscan204_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch160_n23_α
xscan204_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch160_n22_α
snoch160_n22_α:
bb119_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 352], 0
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S35]
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
 jmp snoch160_n24_α
 snoch160_n22_β:
 jmp snoch160_n24_α
snoch160_n23_α:
bb120_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn214: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn214]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch160_n12_α
 jmp snoch160_n25_α
snoch160_n23_β:
 jmp snoch160_n12_α
snoch160_n24_α:
bb121_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn216: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn216]
 lea rsi, [r12 + 400]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch160_n12_α
 jmp snoch160_n26_α
snoch160_n24_β:
 jmp snoch160_n12_α
snoch160_n25_α:
bb122_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n12_α
 snoch160_n25_β:
 jmp snoch160_n12_α
snoch160_n26_α:
bb123_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n12_α
 snoch160_n26_β:
 jmp snoch160_n12_α
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
snoch219_n0_α:
# IR_VAR
bb124_α:
 mov rdi, qword ptr [rip + .Lx222_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg220_done
 xgvarg220_β:
 jmp snoch219_n2_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "v"
xgvarg220_done:
bb125_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn224: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn224]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch219_n2_α
 jmp snoch219_n1_α
snoch219_n0_β:
 jmp snoch219_n2_α
snoch219_n1_α:
bb126_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch219_n2_α
 snoch219_n1_β:
 jmp snoch219_n2_α
snoch219_n2_α:
# IR_VAR
bb127_α:
 mov rdi, qword ptr [rip + .Lx227_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch219_n3_α
 snoch219_n2_β:
 jmp snoch219_n4_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string ""
snoch219_n3_α:
bb128_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S37]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch219_n4_α
 snoch219_n3_β:
 jmp snoch219_n4_α
snoch219_n4_α:
snoch219_n4_β:
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
snoch229_n0_α:
xgvarg230_done:
bb129_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn232: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn232]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch229_n2_α
 jmp snoch229_n1_α
snoch229_n0_β:
 jmp snoch229_n2_α
snoch229_n1_α:
bb130_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S38]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch229_n2_α
 snoch229_n1_β:
 jmp snoch229_n2_α
snoch229_n2_α:
snoch229_n2_β:
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
snoch234_n0_α:
# IR_VAR
bb131_α:
 mov rdi, qword ptr [rip + .Lx239_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg237_done
 xgvarg237_β:
 jmp snoch234_n2_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "f"
xgvarg237_done:
bb132_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn241: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn241]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch234_n2_α
 jmp xgvarg236_done
xgvarg236_β:
 jmp snoch234_n2_α
xgvarg236_done:
# IR_KEYWORD_read
bb133_α:
 mov rdi, qword ptr [rip + .Lx243_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg242_done
 xgvarg242_β:
 jmp snoch234_n2_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "LCASE"
xgvarg242_done:
# IR_KEYWORD_read
bb134_α:
 mov rdi, qword ptr [rip + .Lx245_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg244_done
 xgvarg244_β:
 jmp snoch234_n2_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "UCASE"
xgvarg244_done:
bb135_α:
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
  .Lbynamefn247: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn247]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch234_n2_α
 jmp xgvarg235_done
xgvarg235_β:
 jmp snoch234_n2_α
xgvarg235_done:
# IR_LIT_S
bb136_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg248_done
 xgvarg248_β:
 jmp snoch234_n2_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "STRING"
xgvarg248_done:
bb137_α:
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
  .Lbynamefn251: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn251]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch234_n2_α
 jmp snoch234_n1_α
snoch234_n0_β:
 jmp snoch234_n2_α
snoch234_n1_α:
bb138_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 0
 lea rax, [rip + .S40]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S41]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 0
 lea rax, [rip + .S40]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S39]
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
 jmp snoch234_n3_α
 snoch234_n1_β:
 jmp snoch234_n3_α
snoch234_n2_α:
bb139_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx254_0
 mov r8, qword ptr [r12 + 272]
 cmp r8d, 6
 jne .Lx254_0
 mov rcx, qword ptr [r12 + 280]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx254_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx254_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch234_n4_α
.Lx254_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call subscript_get@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch234_n4_α
 snoch234_n2_β:
 jmp snoch234_n5_α
snoch234_n3_α:
snoch234_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch234_n4_α:
bb140_α:
# IR_ASSIGN
 lea rdi, [rip + .S42]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch234_n5_α
 snoch234_n4_β:
 jmp snoch234_n5_α
snoch234_n5_α:
bb141_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx257_0
 mov r8, qword ptr [r12 + 304]
 cmp r8d, 6
 jne .Lx257_0
 mov rcx, qword ptr [r12 + 312]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx257_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx257_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch234_n6_α
.Lx257_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call subscript_get@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch234_n6_α
 snoch234_n5_β:
 jmp snoch234_n7_α
snoch234_n6_α:
bb142_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch234_n7_α
 snoch234_n6_β:
 jmp snoch234_n7_α
snoch234_n7_α:
bb143_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 336], 0
 lea rax, [rip + .S44]
 mov qword ptr [r12 + 344], rax
 mov dword ptr [r12 + 352], 1
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S40]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S43]
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
 jmp snoch234_n8_α
 snoch234_n7_β:
 jmp snoch234_n8_α
snoch234_n8_α:
# IR_LIT_scalar
bb144_α:
 jmp snoch234_n9_α
 snoch234_n8_β:
 jmp snoch234_n10_α
snoch234_n9_α:
bb145_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S45]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch234_n10_α
 snoch234_n9_β:
 jmp snoch234_n10_α
snoch234_n10_α:
# IR_VAR
bb146_α:
 mov rdi, qword ptr [rip + .Lx264_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xgvarg262_done
 xgvarg262_β:
 jmp snoch234_n12_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "i"
xgvarg262_done:
# IR_VAR
bb147_α:
 mov rdi, qword ptr [rip + .Lx267_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg265_done
 xgvarg265_β:
 jmp snoch234_n12_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "n"
xgvarg265_done:
bb148_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 432], rax
   lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 416], 0
 mov qword ptr [r12 + 424], 0
 mov rax, qword ptr [r12 + 432]
 cmp rax, rcx
 jge snoch234_n12_α
 jmp snoch234_n11_α
 snoch234_n10_β:
 jmp snoch234_n12_α
snoch234_n11_α:
# IR_VAR
bb149_α:
 mov rdi, qword ptr [rip + .Lx271_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch234_n13_α
 snoch234_n11_β:
 jmp snoch234_n12_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "i"
snoch234_n12_α:
bb150_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 464], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 472], rax
 mov dword ptr [r12 + 480], 0
 lea rax, [rip + .S46]
 mov qword ptr [r12 + 488], rax
 lea rdi, [rip + .S39]
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
 jmp snoch234_n3_α
 snoch234_n12_β:
 jmp snoch234_n3_α
snoch234_n13_α:
# IR_LIT_scalar
bb151_α:
 jmp snoch234_n14_α
 snoch234_n13_β:
 jmp snoch234_n12_α
snoch234_n14_α:
bb152_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp snoch234_n15_α
 snoch234_n14_β:
 jmp snoch234_n12_α
snoch234_n15_α:
bb153_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 496]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch234_n16_α
 snoch234_n15_β:
 jmp snoch234_n12_α
snoch234_n16_α:
bb154_α:
# IR_ASSIGN
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch234_n17_α
 snoch234_n16_β:
 jmp snoch234_n12_α
snoch234_n17_α:
# IR_VAR
bb155_α:
 mov rdi, qword ptr [rip + .Lx280_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch234_n18_α
 snoch234_n17_β:
 jmp snoch234_n10_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "i"
snoch234_n18_α:
bb156_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S45]
 call rt_gvar_assign_var@PLT
 jmp snoch234_n10_α
 snoch234_n18_β:
 jmp snoch234_n10_α
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
snoch282_n0_α:
# IR_VAR
bb157_α:
 mov rdi, qword ptr [rip + .Lx287_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg285_done
 xgvarg285_β:
 jmp snoch282_n2_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "f"
xgvarg285_done:
bb158_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn289: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn289]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch282_n2_α
 jmp xgvarg284_done
xgvarg284_β:
 jmp snoch282_n2_α
xgvarg284_done:
# IR_KEYWORD_read
bb159_α:
 mov rdi, qword ptr [rip + .Lx291_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg290_done
 xgvarg290_β:
 jmp snoch282_n2_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "LCASE"
xgvarg290_done:
# IR_KEYWORD_read
bb160_α:
 mov rdi, qword ptr [rip + .Lx293_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg292_done
 xgvarg292_β:
 jmp snoch282_n2_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "UCASE"
xgvarg292_done:
bb161_α:
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
  .Lbynamefn295: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn295]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch282_n2_α
 jmp xgvarg283_done
xgvarg283_β:
 jmp snoch282_n2_α
xgvarg283_done:
# IR_LIT_S
bb162_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg296_done
 xgvarg296_β:
 jmp snoch282_n2_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "STRING"
xgvarg296_done:
bb163_α:
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
  .Lbynamefn299: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn299]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch282_n2_α
 jmp snoch282_n1_α
snoch282_n0_β:
 jmp snoch282_n2_α
snoch282_n1_α:
# IR_LIT_S
bb164_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg300_done
 xgvarg300_β:
 jmp snoch282_n4_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string " "
xgvarg300_done:
# IR_VAR
bb165_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg302_done
 xgvarg302_β:
 jmp snoch282_n4_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "indent"
xgvarg302_done:
bb166_α:
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
  .Lbynamefn306: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn306]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch282_n4_α
 jmp snoch282_n3_α
snoch282_n1_β:
 jmp snoch282_n4_α
snoch282_n2_α:
# IR_VAR
bb167_α:
 mov rdi, qword ptr [rip + .Lx309_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xgvarg307_done
 xgvarg307_β:
 jmp snoch282_n6_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "f"
xgvarg307_done:
bb168_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+304] -> [r12+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lprocfn311: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn311]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch282_n6_α
 jmp snoch282_n5_α
snoch282_n2_β:
 jmp snoch282_n6_α
snoch282_n3_α:
# IR_LIT_scalar
bb169_α:
 jmp snoch282_n7_α
 snoch282_n3_β:
 jmp snoch282_n4_α
snoch282_n4_α:
snoch282_n4_β:
jmp pp_node_γ
jmp pp_node_γ
snoch282_n5_α:
bb170_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n6_α
 snoch282_n5_β:
 jmp snoch282_n6_α
snoch282_n6_α:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg314_done
 xgvarg314_β:
 jmp snoch282_n9_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string " "
xgvarg314_done:
# IR_VAR
bb172_α:
 mov rdi, qword ptr [rip + .Lx318_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg316_done
 xgvarg316_β:
 jmp snoch282_n9_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "indent"
xgvarg316_done:
bb173_α:
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
  .Lbynamefn320: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn320]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch282_n9_α
 jmp snoch282_n8_α
snoch282_n6_β:
 jmp snoch282_n9_α
snoch282_n7_α:
# IR_LIT_S
bb174_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 440], rax
 jmp xgvcat321_1d
 xgvcat321_1b:
 jmp snoch282_n4_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "'"
xgvcat321_1d:
bb175_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch282_n10_α
 snoch282_n7_β:
 jmp snoch282_n4_α
snoch282_n8_α:
bb176_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S47]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n9_α
 snoch282_n8_β:
 jmp snoch282_n9_α
snoch282_n9_α:
# IR_LIT_I
bb177_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvarg325_done
 xgvarg325_β:
 jmp snoch282_n12_α
.Lx326_0:
 .quad 80
xgvarg325_done:
xgvarg327_done:
bb178_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+512]
   lea rdi, [rip + .S48]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 528], rax
# marshal arg0 = gvar NV_GET -> [r12+560]
   lea rdi, [rip + .S43]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
  .section .rodata
  .Lcallfn329: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn329]
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
  .Lbynamefn330: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn330]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch282_n12_α
 jmp snoch282_n11_α
snoch282_n9_β:
 jmp snoch282_n12_α
snoch282_n10_α:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx332_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch282_n13_α
 snoch282_n10_β:
 jmp snoch282_n4_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "f"
snoch282_n11_α:
bb180_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 592], 1
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 600], rax
 mov dword ptr [r12 + 608], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 616], rax
 mov dword ptr [r12 + 624], 1
 lea rax, [rip + .S49]
 mov qword ptr [r12 + 632], rax
 lea rdi, [rip + .S35]
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
 jmp snoch282_n4_α
 snoch282_n11_β:
 jmp snoch282_n4_α
snoch282_n12_α:
bb181_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx335_0
 mov r8, qword ptr [r12 + 640]
 cmp r8d, 6
 jne .Lx335_0
 mov rcx, qword ptr [r12 + 648]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx335_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx335_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch282_n14_α
.Lx335_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call subscript_get@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch282_n14_α
 snoch282_n12_β:
 jmp snoch282_n15_α
snoch282_n13_α:
bb182_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch282_n16_α
 snoch282_n13_β:
 jmp snoch282_n4_α
snoch282_n14_α:
bb183_α:
# IR_ASSIGN
 lea rdi, [rip + .S42]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n15_α
 snoch282_n14_β:
 jmp snoch282_n15_α
snoch282_n15_α:
bb184_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx339_0
 mov r8, qword ptr [r12 + 688]
 cmp r8d, 6
 jne .Lx339_0
 mov rcx, qword ptr [r12 + 696]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx339_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx339_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch282_n17_α
.Lx339_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call subscript_get@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch282_n17_α
 snoch282_n15_β:
 jmp snoch282_n18_α
snoch282_n16_α:
# IR_LIT_scalar
bb185_α:
 jmp snoch282_n19_α
 snoch282_n16_β:
 jmp snoch282_n4_α
snoch282_n17_α:
bb186_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n18_α
 snoch282_n17_β:
 jmp snoch282_n18_α
snoch282_n18_α:
bb187_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 720], 1
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 728], rax
 mov dword ptr [r12 + 736], 0
 lea rax, [rip + .S50]
 mov qword ptr [r12 + 744], rax
 mov dword ptr [r12 + 752], 0
 lea rax, [rip + .S40]
 mov qword ptr [r12 + 760], rax
 mov dword ptr [r12 + 768], 1
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 776], rax
 mov dword ptr [r12 + 784], 0
 lea rax, [rip + .S51]
 mov qword ptr [r12 + 792], rax
 lea rdi, [rip + .S35]
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
 jmp snoch282_n20_α
 snoch282_n18_β:
 jmp snoch282_n20_α
snoch282_n19_α:
# IR_LIT_S
bb188_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [r12 + 808], rax
 jmp xgvcat343_1d
 xgvcat343_1b:
 jmp snoch282_n4_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "'"
xgvcat343_1d:
bb189_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch282_n21_α
 snoch282_n19_β:
 jmp snoch282_n4_α
snoch282_n20_α:
# IR_LIT_scalar
bb190_α:
 jmp snoch282_n22_α
 snoch282_n20_β:
 jmp snoch282_n23_α
snoch282_n21_α:
# IR_VAR
bb191_α:
 mov rdi, qword ptr [rip + .Lx348_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch282_n24_α
 snoch282_n21_β:
 jmp snoch282_n4_α
.Lx348_0:
 .quad .Lx348_0_s
.Lx348_0_s:
 .string "suffix"
snoch282_n22_α:
bb192_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S45]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch282_n23_α
 snoch282_n22_β:
 jmp snoch282_n23_α
snoch282_n23_α:
# IR_VAR
bb193_α:
 mov rdi, qword ptr [rip + .Lx352_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg350_done
 xgvarg350_β:
 jmp snoch282_n26_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "i"
xgvarg350_done:
# IR_VAR
bb194_α:
 mov rdi, qword ptr [rip + .Lx355_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xgvarg353_done
 xgvarg353_β:
 jmp snoch282_n26_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "n"
xgvarg353_done:
bb195_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 896], rax
   lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 880], 0
 mov qword ptr [r12 + 888], 0
 mov rax, qword ptr [r12 + 896]
 cmp rax, rcx
 jge snoch282_n26_α
 jmp snoch282_n25_α
 snoch282_n23_β:
 jmp snoch282_n26_α
snoch282_n24_α:
bb196_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch282_n27_α
 snoch282_n24_β:
 jmp snoch282_n4_α
snoch282_n25_α:
# IR_VAR
bb197_α:
 mov rdi, qword ptr [rip + .Lx360_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch282_n28_α
 snoch282_n25_β:
 jmp snoch282_n26_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "i"
snoch282_n26_α:
bb198_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch282_n29_α
 snoch282_n26_β:
 jmp snoch282_n29_α
snoch282_n27_α:
bb199_α:
# IR_ASSIGN
 lea rdi, [rip + .S35]
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n4_α
 snoch282_n27_β:
 jmp snoch282_n4_α
snoch282_n28_α:
# IR_LIT_scalar
bb200_α:
 jmp snoch282_n30_α
 snoch282_n28_β:
 jmp snoch282_n26_α
snoch282_n29_α:
# IR_VAR
bb201_α:
 mov rdi, qword ptr [rip + .Lx366_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch282_n31_α
 snoch282_n29_β:
 jmp snoch282_n32_α
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "INPUT"
snoch282_n30_α:
bb202_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 960], rax
 jmp snoch282_n33_α
 snoch282_n30_β:
 jmp snoch282_n26_α
snoch282_n31_α:
bb203_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch282_n34_α
 snoch282_n31_β:
 jmp snoch282_n32_α
snoch282_n32_α:
# IR_LIT_S
bb204_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [r12 + 976], rax
 jmp xgvarg370_done
 xgvarg370_β:
 jmp snoch282_n36_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "bank"
xgvarg370_done:
bb205_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+968] -> [r12+1000]
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1000], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1008], rax
  .section .rodata
  .Lprocfn373: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn373]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
 cmp eax, 99
 je snoch282_n36_α
 jmp snoch282_n35_α
snoch282_n32_β:
 jmp snoch282_n36_α
snoch282_n33_α:
bb206_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 960]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp snoch282_n37_α
 snoch282_n33_β:
 jmp snoch282_n26_α
snoch282_n34_α:
bb207_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 1032], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 1040], rax
 mov dword ptr [r12 + 1048], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1056], rax
 mov dword ptr [r12 + 1064], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1072], rax
 lea rdi, [rip + .S30]
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
 jmp snoch282_n29_α
 snoch282_n34_β:
 jmp snoch282_n29_α
snoch282_n35_α:
bb208_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n36_α
 snoch282_n35_β:
 jmp snoch282_n36_α
snoch282_n36_α:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 1088], rax
 jmp xgvarg377_done
 xgvarg377_β:
 jmp snoch282_n39_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "BANK"
xgvarg377_done:
bb210_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1080] -> [r12+1112]
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1112], rax
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1120], rax
  .section .rodata
  .Lprocfn380: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn380]
 lea rsi, [r12 + 1112]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 cmp eax, 99
 je snoch282_n39_α
 jmp snoch282_n38_α
snoch282_n36_β:
 jmp snoch282_n39_α
snoch282_n37_α:
bb211_α:
# IR_ASSIGN
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n40_α
 snoch282_n37_β:
 jmp snoch282_n26_α
snoch282_n38_α:
bb212_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n39_α
 snoch282_n38_β:
 jmp snoch282_n39_α
snoch282_n39_α:
# IR_LIT_scalar
bb213_α:
 jmp snoch282_n41_α
 snoch282_n39_β:
 jmp snoch282_n42_α
snoch282_n40_α:
# IR_VAR
bb214_α:
 mov rdi, qword ptr [rip + .Lx387_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
 jmp xgvarg385_done
 xgvarg385_β:
 jmp snoch282_n26_α
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "i"
xgvarg385_done:
# IR_VAR
bb215_α:
 mov rdi, qword ptr [rip + .Lx390_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xgvarg388_done
 xgvarg388_β:
 jmp snoch282_n26_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "n"
xgvarg388_done:
bb216_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 1176], rax
   lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 1160], 0
 mov qword ptr [r12 + 1168], 0
 mov rax, qword ptr [r12 + 1176]
 cmp rax, rcx
 jge snoch282_n26_α
 jmp snoch282_n43_α
 snoch282_n40_β:
 jmp snoch282_n26_α
snoch282_n41_α:
# IR_SUBJECT
bb217_α:
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1192]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan393_sγ
 xscan393_sβ:
 jmp snoch282_n42_α
xscan393_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb218_α:
 mov r13, qword ptr [r12 + 1192]
 mov r15d, dword ptr [r12 + 1200]
 mov dword ptr [r12 + 1208], 0
 lea r10, [r12 + 1216]
 jmp smatch396_retry
 snoch282_n41_β:
 jmp xscan393_dfail
smatch396_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1208]
# IR_MATCH_DEFER
bb220_α:
 lea rdi, [rip + .S32]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx399_0
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
 jne smatch396_adv
 jmp xscan393_dok
.Lx399_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch396_adv
 mov r14d, eax
 jmp xscan393_dok
 smatch396_elemb:
 jmp smatch396_adv
smatch396_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1208], 1
 mov eax, dword ptr [r12 + 1208]
 cmp eax, r15d
 jg xscan393_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan393_dfail
 jmp smatch396_retry
xscan393_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S30]
 mov esi, dword ptr [r12 + 1208]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch282_n44_α
xscan393_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch282_n42_α
snoch282_n42_α:
# IR_LIT_S
bb222_α:
 mov qword ptr [r12 + 1224], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [r12 + 1232], rax
 jmp xgvarg401_done
 xgvarg401_β:
 jmp snoch282_n46_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "bank"
xgvarg401_done:
bb223_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1224] -> [r12+1256]
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1264], rax
  .section .rodata
  .Lprocfn404: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn404]
 lea rsi, [r12 + 1256]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
 cmp eax, 99
 je snoch282_n46_α
 jmp snoch282_n45_α
snoch282_n42_β:
 jmp snoch282_n46_α
snoch282_n43_α:
# IR_VAR
bb224_α:
 mov rdi, qword ptr [rip + .Lx406_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 jmp snoch282_n47_α
 snoch282_n43_β:
 jmp snoch282_n26_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "i"
snoch282_n44_α:
# IR_LIT_S
bb225_α:
 mov qword ptr [r12 + 1288], 1
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [r12 + 1296], rax
 jmp xgvarg407_done
 xgvarg407_β:
 jmp snoch282_n49_α
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "ROOT"
xgvarg407_done:
bb226_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1288] -> [r12+1320]
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1320], rax
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1328], rax
  .section .rodata
  .Lprocfn410: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn410]
 lea rsi, [r12 + 1320]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 cmp eax, 99
 je snoch282_n49_α
 jmp snoch282_n48_α
snoch282_n44_β:
 jmp snoch282_n49_α
snoch282_n45_α:
bb227_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n46_α
 snoch282_n45_β:
 jmp snoch282_n46_α
snoch282_n46_α:
bb228_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn413: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn413]
 lea rsi, [r12 + 1336]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch282_n50_α
snoch282_n46_β:
 jmp pp_node_γ
snoch282_n47_α:
bb229_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 1160]
 mov rsi, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1272]
 mov rcx, qword ptr [r12 + 1280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], rdx
 jmp snoch282_n51_α
 snoch282_n47_β:
 jmp snoch282_n26_α
snoch282_n48_α:
bb230_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n49_α
 snoch282_n48_β:
 jmp snoch282_n49_α
snoch282_n49_α:
# IR_VAR
bb231_α:
 mov rdi, qword ptr [rip + .Lx417_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 jmp snoch282_n52_α
 snoch282_n49_β:
 jmp snoch282_n53_α
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "item"
snoch282_n50_α:
bb232_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch282_n50_β:
 jmp pp_node_γ
snoch282_n51_α:
bb233_α:
# IR_ASSIGN
 lea rdi, [rip + .S52]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n54_α
 snoch282_n51_β:
 jmp snoch282_n26_α
snoch282_n52_α:
# IR_SUBJECT
bb234_α:
 lea rdi, [rip + .S33]
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
 jmp snoch282_n53_α
xscan421_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb235_α:
 mov r13, qword ptr [r12 + 1384]
 mov r15d, dword ptr [r12 + 1392]
 mov dword ptr [r12 + 1400], 0
 lea r10, [r12 + 1408]
 jmp smatch424_retry
 snoch282_n52_β:
 jmp xscan421_dfail
smatch424_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1400]
# IR_MATCH_DEFER
bb237_α:
 lea rdi, [rip + .S34]
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
jmp snoch282_n55_α
xscan421_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch282_n53_α
snoch282_n53_α:
bb239_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1416], 0
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 1424], rax
 mov dword ptr [r12 + 1432], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 1440], rax
 lea rdi, [rip + .S35]
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
 jmp snoch282_n56_α
 snoch282_n53_β:
 jmp snoch282_n56_α
snoch282_n54_α:
# IR_VAR
bb240_α:
 mov rdi, qword ptr [rip + .Lx431_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1448], rax
 mov qword ptr [r12 + 1456], rdx
 jmp snoch282_n57_α
 snoch282_n54_β:
 jmp snoch282_n23_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "i"
snoch282_n55_α:
bb241_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn433: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn433]
 lea rsi, [r12 + 1464]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je snoch282_n39_α
 jmp snoch282_n58_α
snoch282_n55_β:
 jmp snoch282_n39_α
snoch282_n56_α:
bb242_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn435: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn435]
 lea rsi, [r12 + 1480]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 cmp eax, 99
 je snoch282_n39_α
 jmp snoch282_n59_α
snoch282_n56_β:
 jmp snoch282_n39_α
snoch282_n57_α:
bb243_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S45]
 call rt_gvar_assign_var@PLT
 jmp snoch282_n23_α
 snoch282_n57_β:
 jmp snoch282_n23_α
snoch282_n58_α:
bb244_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n39_α
 snoch282_n58_β:
 jmp snoch282_n39_α
snoch282_n59_α:
bb245_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1488]
 call rt_gvar_assign_descr@PLT
 jmp snoch282_n39_α
 snoch282_n59_β:
 jmp snoch282_n39_α
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
snoch439_n0_α:
# IR_VAR
bb246_α:
 mov rdi, qword ptr [rip + .Lx442_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg440_done
 xgvarg440_β:
 jmp snoch439_n1_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "bank"
xgvarg440_done:
# IR_LIT_I
bb247_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg443_done
 xgvarg443_β:
 jmp snoch439_n1_α
.Lx444_0:
 .quad 0
xgvarg443_done:
# IR_LIT_S
bb248_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg445_done
 xgvarg445_β:
 jmp snoch439_n1_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string ""
xgvarg445_done:
bb249_α:
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
  .section .rodata
  .Lprocfn448: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn448]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch439_n1_α
 jmp snoch439_n1_α
snoch439_n0_β:
 jmp snoch439_n1_α
snoch439_n1_α:
# IR_VAR
bb250_α:
 mov rdi, qword ptr [rip + .Lx450_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch439_n2_α
 snoch439_n1_β:
 jmp snoch439_n3_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string ""
snoch439_n2_α:
bb251_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S53]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch439_n3_α
 snoch439_n2_β:
 jmp snoch439_n3_α
snoch439_n3_α:
snoch439_n3_β:
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
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + .Lpnames2]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + stk_pop_into_parent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn2]
  mov esi, 272
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
  mov esi, 64
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
  mov esi, 64
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
  mov esi, 64
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
  mov esi, 64
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
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
snoch452_n0_α:
# IR_VAR
bb252_α:
 mov rdi, qword ptr [rip + .Lx454_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch452_n1_α
 snoch452_n0_β:
 jmp snoch452_n2_α
.Lx454_0:
 .quad .Lx454_0_s
.Lx454_0_s:
 .string "ALPHABET"
snoch452_n1_α:
# IR_SUBJECT
bb253_α:
 lea rdi, [rip + .S54]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan455_sγ
 xscan455_sβ:
 jmp snoch452_n2_α
xscan455_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb254_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch458_retry
 snoch452_n1_β:
 jmp xscan455_dfail
smatch458_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb256_α:
 cmp r14d, 10
 jne xcat461_ω
 jmp xcat461_γ
 xcat461_left_β:
 jmp xcat461_ω
xcat461_γ:
# IR_MATCH_CAPTURE_SAVE
bb257_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb258_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat461_right_ω
 add r14d, 1
 jmp xcap463_γ
 xcat461_right_β:
 jmp xcat461_right_ω
xcap463_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S31]
 mov esi, dword ptr [r12 + 48]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan455_dok
xcat461_right_ω:
 jmp xcat461_left_β
smatch458_elemb:
 jmp xcat461_right_β
xcat461_ω:
 jmp smatch458_adv
smatch458_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan455_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan455_dfail
 jmp smatch458_retry
xscan455_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch452_n2_α
xscan455_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch452_n2_α
snoch452_n2_α:
# IR_LIT_S
bb262_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg469_done
 xgvarg469_β:
 jmp snoch452_n3_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "list(head,tail)"
xgvarg469_done:
bb263_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn472: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn472]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch452_n3_α
 jmp snoch452_n3_α
snoch452_n2_β:
 jmp snoch452_n3_α
snoch452_n3_α:
# IR_LIT_scalar
bb264_α:
 jmp snoch452_n4_α
 snoch452_n3_β:
 jmp snoch452_n5_α
snoch452_n4_α:
bb265_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch452_n5_α
 snoch452_n4_β:
 jmp snoch452_n5_α
snoch452_n5_α:
bb266_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn476: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn476]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch452_n7_α
 jmp snoch452_n6_α
snoch452_n5_β:
 jmp snoch452_n7_α
snoch452_n6_α:
bb267_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch452_n7_α
 snoch452_n6_β:
 jmp snoch452_n7_α
snoch452_n7_α:
bb268_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn479: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn479]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch452_n9_α
 jmp snoch452_n8_α
snoch452_n7_β:
 jmp snoch452_n9_α
snoch452_n8_α:
bb269_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch452_n9_α
 snoch452_n8_β:
 jmp snoch452_n9_α
snoch452_n9_α:
bb270_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn482: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn482]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch452_n11_α
 jmp snoch452_n10_α
snoch452_n9_β:
 jmp snoch452_n11_α
snoch452_n10_α:
bb271_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch452_n11_α
 snoch452_n10_β:
 jmp snoch452_n11_α
snoch452_n11_α:
bb272_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S55]
 call rt_proc_define@PLT
 jmp snoch452_n12_α
 snoch452_n11_β:
 jmp snoch452_n12_α
snoch452_n12_α:
bb273_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch452_n13_α
 snoch452_n12_β:
 jmp snoch452_n13_α
snoch452_n13_α:
bb274_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch452_n14_α
 snoch452_n13_β:
 jmp snoch452_n14_α
snoch452_n14_α:
bb275_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch452_n15_α
 snoch452_n14_β:
 jmp snoch452_n15_α
snoch452_n15_α:
bb276_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch452_n16_α
 snoch452_n15_β:
 jmp snoch452_n16_α
snoch452_n16_α:
bb277_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch452_n17_α
 snoch452_n16_β:
 jmp snoch452_n17_α
snoch452_n17_α:
bb278_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch452_n18_α
 snoch452_n17_β:
 jmp snoch452_n18_α
snoch452_n18_α:
bb279_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch452_n19_α
 snoch452_n18_β:
 jmp snoch452_n19_α
snoch452_n19_α:
bb280_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch452_n20_α
 snoch452_n19_β:
 jmp snoch452_n20_α
snoch452_n20_α:
bb281_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch452_n21_α
 snoch452_n20_β:
 jmp snoch452_n21_α
snoch452_n21_α:
bb282_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch452_n22_α
 snoch452_n21_β:
 jmp snoch452_n22_α
snoch452_n22_α:
bb283_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch452_n23_α
 snoch452_n22_β:
 jmp snoch452_n23_α
snoch452_n23_α:
bb284_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch452_n24_α
 snoch452_n23_β:
 jmp snoch452_n24_α
snoch452_n24_α:
bb285_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch452_n25_α
 snoch452_n24_β:
 jmp snoch452_n25_α
snoch452_n25_α:
bb286_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch452_n26_α
 snoch452_n25_β:
 jmp snoch452_n26_α
snoch452_n26_α:
bb287_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch452_n27_α
 snoch452_n26_β:
 jmp snoch452_n27_α
snoch452_n27_α:
bb288_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch452_n28_α
 snoch452_n27_β:
 jmp snoch452_n28_α
snoch452_n28_α:
# IR_VAR
bb289_α:
 mov rdi, qword ptr [rip + .Lx502_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch452_n29_α
 snoch452_n28_β:
 jmp snoch452_n30_α
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "INPUT"
snoch452_n29_α:
bb290_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch452_n31_α
 snoch452_n29_β:
 jmp snoch452_n30_α
snoch452_n30_α:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx505_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg504_done
 xgvarg504_β:
 jmp snoch452_n33_α
.Lx505_0:
 .quad .Lx505_0_s
.Lx505_0_s:
 .string "bank"
xgvarg504_done:
bb292_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lprocfn507: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn507]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je snoch452_n33_α
 jmp snoch452_n32_α
snoch452_n30_β:
 jmp snoch452_n33_α
snoch452_n31_α:
bb293_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S30]
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
 jmp snoch452_n28_α
 snoch452_n31_β:
 jmp snoch452_n28_α
snoch452_n32_α:
bb294_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch452_n33_α
 snoch452_n32_β:
 jmp snoch452_n33_α
snoch452_n33_α:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg510_done
 xgvarg510_β:
 jmp snoch452_n35_α
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "BANK"
xgvarg510_done:
bb296_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+272] -> [r12+304]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lprocfn513: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn513]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je snoch452_n35_α
 jmp snoch452_n34_α
snoch452_n33_β:
 jmp snoch452_n35_α
snoch452_n34_α:
bb297_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch452_n35_α
 snoch452_n34_β:
 jmp snoch452_n35_α
snoch452_n35_α:
# IR_LIT_scalar
bb298_α:
 jmp snoch452_n36_α
 snoch452_n35_β:
 jmp snoch452_n37_α
snoch452_n36_α:
# IR_SUBJECT
bb299_α:
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan516_sγ
 xscan516_sβ:
 jmp snoch452_n37_α
xscan516_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb300_α:
 mov r13, qword ptr [r12 + 320]
 mov r15d, dword ptr [r12 + 328]
 mov dword ptr [r12 + 336], 0
 lea r10, [r12 + 344]
 jmp smatch519_retry
 snoch452_n36_β:
 jmp xscan516_dfail
smatch519_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb302_α:
 lea rdi, [rip + .S32]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx522_0
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
 jne smatch519_adv
 jmp xscan516_dok
.Lx522_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch519_adv
 mov r14d, eax
 jmp xscan516_dok
 smatch519_elemb:
 jmp smatch519_adv
smatch519_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan516_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan516_dfail
 jmp smatch519_retry
xscan516_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S30]
 mov esi, dword ptr [r12 + 336]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch452_n38_α
xscan516_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch452_n37_α
snoch452_n37_α:
# IR_LIT_S
bb304_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx525_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg524_done
 xgvarg524_β:
 jmp snoch452_n40_α
.Lx525_0:
 .quad .Lx525_0_s
.Lx525_0_s:
 .string "bank"
xgvarg524_done:
bb305_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lprocfn527: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn527]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch452_n40_α
 jmp snoch452_n39_α
snoch452_n37_β:
 jmp snoch452_n40_α
snoch452_n38_α:
# IR_LIT_S
bb306_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [r12 + 408], rax
 jmp xgvarg528_done
 xgvarg528_β:
 jmp snoch452_n42_α
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "ROOT"
xgvarg528_done:
bb307_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lprocfn531: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn531]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch452_n42_α
 jmp snoch452_n41_α
snoch452_n38_β:
 jmp snoch452_n42_α
snoch452_n39_α:
bb308_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch452_n40_α
 snoch452_n39_β:
 jmp snoch452_n40_α
snoch452_n40_α:
bb309_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn534: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn534]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch452_n43_α
snoch452_n40_β:
 jmp flat_γ
snoch452_n41_α:
bb310_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch452_n42_α
 snoch452_n41_β:
 jmp snoch452_n42_α
snoch452_n42_α:
# IR_VAR gva
bb311_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch452_n44_α
 snoch452_n42_β:
 jmp snoch452_n45_α
snoch452_n43_α:
bb312_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp flat_γ
 snoch452_n43_β:
 jmp flat_γ
snoch452_n44_α:
# IR_SUBJECT
bb313_α:
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 480]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan539_sγ
 xscan539_sβ:
 jmp snoch452_n45_α
xscan539_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb314_α:
 mov r13, qword ptr [r12 + 480]
 mov r15d, dword ptr [r12 + 488]
 mov dword ptr [r12 + 496], 0
 lea r10, [r12 + 504]
 jmp smatch542_retry
 snoch452_n44_β:
 jmp xscan539_dfail
smatch542_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 496]
# IR_MATCH_DEFER
bb316_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx545_0
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
 jne smatch542_adv
 jmp xscan539_dok
.Lx545_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch542_adv
 mov r14d, eax
 jmp xscan539_dok
 smatch542_elemb:
 jmp smatch542_adv
smatch542_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 496], 1
 mov eax, dword ptr [r12 + 496]
 cmp eax, r15d
 jg xscan539_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan539_dfail
 jmp smatch542_retry
xscan539_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch452_n46_α
xscan539_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch452_n45_α
snoch452_n45_α:
bb318_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 512], 0
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 520], rax
 mov dword ptr [r12 + 528], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 536], rax
 lea rdi, [rip + .S35]
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
 jmp snoch452_n47_α
 snoch452_n45_β:
 jmp snoch452_n47_α
snoch452_n46_α:
bb319_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn549: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn549]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch452_n35_α
 jmp snoch452_n48_α
snoch452_n46_β:
 jmp snoch452_n35_α
snoch452_n47_α:
bb320_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn551: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn551]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je snoch452_n35_α
 jmp snoch452_n49_α
snoch452_n47_β:
 jmp snoch452_n35_α
snoch452_n48_α:
bb321_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch452_n35_α
 snoch452_n48_β:
 jmp snoch452_n35_α
snoch452_n49_α:
bb322_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch452_n35_α
 snoch452_n49_β:
 jmp snoch452_n35_α
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
.S0: .string "stk_tag"
.S1: .string "frame_id"
.S2: .string "v"
.S3: .string "stk_n"
.S4: .string "stk"
.S5: .string "stk_push_frame"
.S6: .string ""
.S7: .string "cur"
.S8: .string "stk_push_item"
.S9: .string "child"
.S10: .string "par"
.S11: .string "n"
.S12: .string "stk_pop_into_parent"
.S13: .string "stk_pop_final"
.S14: .string "stk_c"
.S15: .string "init_list"
.S16: .string "Init_list"
.S17: .string "dummy"
.S18: .string "push_list"
.S19: .string "Push_list"
.S20: .string "push_item"
.S21: .string "Push_item"
.S22: .string "pop_list"
.S23: .string "pop_final(v)"
.S24: .string "Pop_final(vs)"
.S25: .string "node_repr(f)r,sep,i,n,tag"
.S26: .string "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.S27: .string "pp_bank()"
.S28: .string "line"
.S29: .string "INPUT"
.S30: .string "src"
.S31: .string "nl"
.S32: .string "spat"
.S33: .string "item"
.S34: .string "group"
.S35: .string "OUTPUT"
.S36: .string "Parse failed on: "
.S37: .string "pop_final"
.S38: .string "Pop_final"
.S39: .string "node_repr"
.S40: .string "'"
.S41: .string "f"
.S42: .string "tag"
.S43: .string "r"
.S44: .string "('"
.S45: .string "i"
.S46: .string ")"
.S47: .string "pad"
.S48: .string "indent"
.S49: .string "suffix"
.S50: .string "( "
.S51: .string "',"
.S52: .string "nxt"
.S53: .string "pp_bank"
.S54: .string "ALPHABET"
.S55: .string "stk_push_frame(v)"
.S56: .string "stk_push_item(v,cur)"
.S57: .string "stk_pop_into_parent(child,par,n)"
.S58: .string "stk_pop_final(var,child)"
.S59: .string "init_list(v)"
.S60: .string "Init_list(vs)"
.S61: .string "push_list(v)"
.S62: .string "Push_list(vs)"
.S63: .string "push_item(v)"
.S64: .string "Push_item(vs)"
.S65: .string "pop_list()"
.S66: .string "Pop_list()"
.text
