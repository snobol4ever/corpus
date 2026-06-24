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
# IR_IDX_SET (subscript_set, by-name)
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
# IR_IDX_SET (subscript_set, by-name)
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
 mov rdi, qword ptr [rip + .Lx12_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xgvarg10_done
 xgvarg10_β:
 jmp snoch0_n8_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "frame_id"
xgvarg10_done:
# IR_VAR
bb8_α:
 mov rdi, qword ptr [rip + .Lx15_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xgvarg13_done
 xgvarg13_β:
 jmp snoch0_n8_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "stk"
xgvarg13_done:
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
  .Lrkfn17: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
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
 mov rdi, qword ptr [rip + .Lx20_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
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
snoch22_n0_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx25_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg23_done
 xgvarg23_β:
 jmp snoch22_n2_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "stk"
xgvarg23_done:
bb14_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn27: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn27]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch22_n2_α
 jmp snoch22_n1_α
snoch22_n0_β:
 jmp snoch22_n2_α
snoch22_n1_α:
bb15_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n2_α
 snoch22_n1_β:
 jmp snoch22_n2_α
snoch22_n2_α:
bb16_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call subscript_get@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch22_n3_α
 snoch22_n2_β:
 jmp snoch22_n4_α
snoch22_n3_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch22_n5_α
 snoch22_n3_β:
 jmp snoch22_n4_α
snoch22_n4_α:
# IR_VAR
bb18_α:
 mov rdi, qword ptr [rip + .Lx32_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch22_n6_α
 snoch22_n4_β:
 jmp snoch22_n7_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string ""
snoch22_n5_α:
bb19_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call subscript_get@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx33_done
 xgvidx33_β:
 jmp snoch22_n4_α
xgvidx33_done:
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
 je snoch22_n4_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch22_n8_α
 snoch22_n5_β:
 jmp snoch22_n4_α
snoch22_n6_α:
bb21_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch22_n7_α
 snoch22_n6_β:
 jmp snoch22_n7_α
snoch22_n7_α:
snoch22_n7_β:
jmp stk_push_item_γ
jmp stk_push_item_γ
snoch22_n8_α:
bb22_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call subscript_get@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvidx38_done
 xgvidx38_β:
 jmp snoch22_n4_α
xgvidx38_done:
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
 je snoch22_n4_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xgvidxv37_done
 xgvidxv37_β:
 jmp snoch22_n4_α
xgvidxv37_done:
bb24_α:
# IR_IDX_SET (subscript_set, by-name)
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
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call subscript_set@PLT
 cmp eax, 0
 je snoch22_n4_α
 jmp snoch22_n4_α
 snoch22_n8_β:
 jmp snoch22_n4_α
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
snoch42_n0_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg43_done
 xgvarg43_β:
 jmp snoch42_n2_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "stk"
xgvarg43_done:
bb26_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn47: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn47]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch42_n2_α
 jmp snoch42_n1_α
snoch42_n0_β:
 jmp snoch42_n2_α
snoch42_n1_α:
bb27_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch42_n2_α
 snoch42_n1_β:
 jmp snoch42_n2_α
snoch42_n2_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx51_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg49_done
 xgvarg49_β:
 jmp snoch42_n4_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "stk"
xgvarg49_done:
bb29_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn53: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn53]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch42_n4_α
 jmp snoch42_n3_α
snoch42_n2_β:
 jmp snoch42_n4_α
snoch42_n3_α:
bb30_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch42_n4_α
 snoch42_n3_β:
 jmp snoch42_n4_α
snoch42_n4_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx57_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg55_done
 xgvarg55_β:
 jmp snoch42_n6_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "stk"
xgvarg55_done:
bb32_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn59: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn59]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch42_n6_α
 jmp snoch42_n5_α
snoch42_n4_β:
 jmp snoch42_n6_α
snoch42_n5_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch42_n6_α
 snoch42_n5_β:
 jmp snoch42_n6_α
snoch42_n6_α:
bb34_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call subscript_get@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch42_n7_α
 snoch42_n6_β:
 jmp snoch42_n8_α
snoch42_n7_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch42_n8_α
 snoch42_n7_β:
 jmp snoch42_n8_α
snoch42_n8_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx64_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch42_n9_α
 snoch42_n8_β:
 jmp snoch42_n10_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "n"
snoch42_n9_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch42_n11_α
 snoch42_n9_β:
 jmp snoch42_n10_α
snoch42_n10_α:
# IR_VAR
bb38_α:
 mov rdi, qword ptr [rip + .Lx67_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp snoch42_n12_α
 snoch42_n10_β:
 jmp snoch42_n13_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string ""
snoch42_n11_α:
bb39_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch42_n14_α
 snoch42_n11_β:
 jmp snoch42_n10_α
snoch42_n12_α:
bb40_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch42_n13_α
 snoch42_n12_β:
 jmp snoch42_n13_α
snoch42_n13_α:
snoch42_n13_β:
jmp stk_pop_into_parent_γ
jmp stk_pop_into_parent_γ
snoch42_n14_α:
bb41_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp xgvidxv71_done
 xgvidxv71_β:
 jmp snoch42_n10_α
xgvidxv71_done:
bb42_α:
# IR_IDX_SET (subscript_set, by-name)
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
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [r12 + 224]
 mov r9, qword ptr [r12 + 232]
 call subscript_set@PLT
 cmp eax, 0
 je snoch42_n10_α
 jmp snoch42_n10_α
 snoch42_n14_β:
 jmp snoch42_n10_α
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
snoch75_n0_α:
# IR_VAR
bb43_α:
 mov rdi, qword ptr [rip + .Lx78_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg76_done
 xgvarg76_β:
 jmp snoch75_n2_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "stk"
xgvarg76_done:
bb44_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn80: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn80]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch75_n2_α
 jmp snoch75_n1_α
snoch75_n0_β:
 jmp snoch75_n2_α
snoch75_n1_α:
bb45_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch75_n2_α
 snoch75_n1_β:
 jmp snoch75_n2_α
snoch75_n2_α:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx84_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg82_done
 xgvarg82_β:
 jmp snoch75_n4_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "stk"
xgvarg82_done:
bb47_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn86: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn86]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch75_n4_α
 jmp snoch75_n3_α
snoch75_n2_β:
 jmp snoch75_n4_α
snoch75_n3_α:
bb48_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch75_n4_α
 snoch75_n3_β:
 jmp snoch75_n4_α
snoch75_n4_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx89_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch75_n5_α
 snoch75_n4_β:
 jmp snoch75_n6_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string ""
snoch75_n5_α:
bb50_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S13]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch75_n6_α
 snoch75_n5_β:
 jmp snoch75_n6_α
snoch75_n6_α:
snoch75_n6_β:
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
snoch91_n0_α:
# IR_LIT_scalar
bb51_α:
 jmp snoch91_n1_α
 snoch91_n0_β:
 jmp snoch91_n2_α
snoch91_n1_α:
bb52_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S6]
 call rt_indirect_assign_str@PLT
 jmp snoch91_n2_α
 snoch91_n1_β:
 jmp snoch91_n2_α
snoch91_n2_α:
# IR_LIT_scalar
bb53_α:
 jmp snoch91_n3_α
 snoch91_n2_β:
 jmp snoch91_n4_α
snoch91_n3_α:
bb54_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_str@PLT
 jmp snoch91_n4_α
 snoch91_n3_β:
 jmp snoch91_n4_α
snoch91_n4_α:
# IR_LIT_scalar
bb55_α:
 jmp snoch91_n5_α
 snoch91_n4_β:
 jmp snoch91_n6_α
snoch91_n5_α:
bb56_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch91_n6_α
 snoch91_n5_β:
 jmp snoch91_n6_α
snoch91_n6_α:
bb57_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn99: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn99]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch91_n8_α
 jmp snoch91_n7_α
snoch91_n6_β:
 jmp snoch91_n8_α
snoch91_n7_α:
bb58_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch91_n8_α
 snoch91_n7_β:
 jmp snoch91_n8_α
snoch91_n8_α:
bb59_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn102: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn102]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch91_n10_α
 jmp snoch91_n9_α
snoch91_n8_β:
 jmp snoch91_n10_α
snoch91_n9_α:
bb60_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch91_n10_α
 snoch91_n9_β:
 jmp snoch91_n10_α
snoch91_n10_α:
bb61_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn105: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn105]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch91_n12_α
 jmp snoch91_n11_α
snoch91_n10_β:
 jmp snoch91_n12_α
snoch91_n11_α:
bb62_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch91_n12_α
 snoch91_n11_β:
 jmp snoch91_n12_α
snoch91_n12_α:
# IR_VAR
bb63_α:
 mov rdi, qword ptr [rip + .Lx108_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp snoch91_n13_α
 snoch91_n12_β:
 jmp snoch91_n14_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string ""
snoch91_n13_α:
bb64_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch91_n14_α
 snoch91_n13_β:
 jmp snoch91_n14_α
snoch91_n14_α:
snoch91_n14_β:
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
snoch110_n0_α:
xgvarg111_done:
bb65_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn113: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn113]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch110_n2_α
 jmp snoch110_n1_α
snoch110_n0_β:
 jmp snoch110_n2_α
snoch110_n1_α:
bb66_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch110_n2_α
 snoch110_n1_β:
 jmp snoch110_n2_α
snoch110_n2_α:
snoch110_n2_β:
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
snoch115_n0_α:
# IR_VAR
bb67_α:
 mov rdi, qword ptr [rip + .Lx118_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg116_done
 xgvarg116_β:
 jmp snoch115_n2_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "v"
xgvarg116_done:
bb68_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn120: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn120]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch115_n2_α
 jmp snoch115_n1_α
snoch115_n0_β:
 jmp snoch115_n2_α
snoch115_n1_α:
bb69_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch115_n2_α
 snoch115_n1_β:
 jmp snoch115_n2_α
snoch115_n2_α:
# IR_VAR
bb70_α:
 mov rdi, qword ptr [rip + .Lx123_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch115_n3_α
 snoch115_n2_β:
 jmp snoch115_n4_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string ""
snoch115_n3_α:
bb71_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S18]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch115_n4_α
 snoch115_n3_β:
 jmp snoch115_n4_α
snoch115_n4_α:
snoch115_n4_β:
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
snoch125_n0_α:
xgvarg126_done:
bb72_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn128: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn128]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch125_n2_α
 jmp snoch125_n1_α
snoch125_n0_β:
 jmp snoch125_n2_α
snoch125_n1_α:
bb73_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch125_n2_α
 snoch125_n1_β:
 jmp snoch125_n2_α
snoch125_n2_α:
snoch125_n2_β:
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
snoch130_n0_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx133_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg131_done
 xgvarg131_β:
 jmp snoch130_n2_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "v"
xgvarg131_done:
bb75_α:
# BOX IR_CALL stk_push_item(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn135: .string "stk_push_item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn135]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch130_n2_α
 jmp snoch130_n1_α
snoch130_n0_β:
 jmp snoch130_n2_α
snoch130_n1_α:
bb76_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch130_n2_α
 snoch130_n1_β:
 jmp snoch130_n2_α
snoch130_n2_α:
# IR_VAR
bb77_α:
 mov rdi, qword ptr [rip + .Lx138_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch130_n3_α
 snoch130_n2_β:
 jmp snoch130_n4_α
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string ""
snoch130_n3_α:
bb78_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S20]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch130_n4_α
 snoch130_n3_β:
 jmp snoch130_n4_α
snoch130_n4_α:
snoch130_n4_β:
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
snoch140_n0_α:
xgvarg141_done:
bb79_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn143: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn143]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch140_n2_α
 jmp snoch140_n1_α
snoch140_n0_β:
 jmp snoch140_n2_α
snoch140_n1_α:
bb80_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch140_n2_α
 snoch140_n1_β:
 jmp snoch140_n2_α
snoch140_n2_α:
snoch140_n2_β:
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
snoch145_n0_α:
bb81_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn147: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn147]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch145_n2_α
 jmp snoch145_n1_α
snoch145_n0_β:
 jmp snoch145_n2_α
snoch145_n1_α:
bb82_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch145_n2_α
 snoch145_n1_β:
 jmp snoch145_n2_α
snoch145_n2_α:
# IR_VAR
bb83_α:
 mov rdi, qword ptr [rip + .Lx150_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch145_n3_α
 snoch145_n2_β:
 jmp snoch145_n4_α
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string ""
snoch145_n3_α:
bb84_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S22]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch145_n4_α
 snoch145_n3_β:
 jmp snoch145_n4_α
snoch145_n4_α:
snoch145_n4_β:
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
snoch152_n0_α:
bb85_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch152_n1_α
 snoch152_n0_β:
 jmp snoch152_n1_α
snoch152_n1_α:
bb86_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch152_n2_α
 snoch152_n1_β:
 jmp snoch152_n2_α
snoch152_n2_α:
bb87_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch152_n3_α
 snoch152_n2_β:
 jmp snoch152_n3_α
snoch152_n3_α:
bb88_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch152_n4_α
 snoch152_n3_β:
 jmp snoch152_n4_α
snoch152_n4_α:
bb89_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch152_n5_α
 snoch152_n4_β:
 jmp snoch152_n5_α
snoch152_n5_α:
# IR_VAR
bb90_α:
 mov rdi, qword ptr [rip + .Lx159_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch152_n6_α
 snoch152_n5_β:
 jmp snoch152_n7_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "INPUT"
snoch152_n6_α:
bb91_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch152_n8_α
 snoch152_n6_β:
 jmp snoch152_n7_α
snoch152_n7_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg161_done
 xgvarg161_β:
 jmp snoch152_n10_α
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "bank"
xgvarg161_done:
bb93_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn164: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn164]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch152_n10_α
 jmp snoch152_n9_α
snoch152_n7_β:
 jmp snoch152_n10_α
snoch152_n8_α:
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
 jmp snoch152_n5_α
 snoch152_n8_β:
 jmp snoch152_n5_α
snoch152_n9_α:
bb95_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch152_n10_α
 snoch152_n9_β:
 jmp snoch152_n10_α
snoch152_n10_α:
# IR_LIT_S
bb96_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg167_done
 xgvarg167_β:
 jmp snoch152_n12_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "BANK"
xgvarg167_done:
bb97_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn170: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn170]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch152_n12_α
 jmp snoch152_n11_α
snoch152_n10_β:
 jmp snoch152_n12_α
snoch152_n11_α:
bb98_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch152_n12_α
 snoch152_n11_β:
 jmp snoch152_n12_α
snoch152_n12_α:
# IR_LIT_scalar
bb99_α:
 jmp snoch152_n13_α
 snoch152_n12_β:
 jmp snoch152_n14_α
snoch152_n13_α:
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
 jmp xscan173_sγ
 xscan173_sβ:
 jmp snoch152_n14_α
xscan173_sγ:
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
 jmp smatch176_retry
 snoch152_n13_β:
 jmp xscan173_dfail
smatch176_retry:
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
 jz .Lx179_0
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
 jne smatch176_adv
 jmp xscan173_dok
.Lx179_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch176_adv
 mov r14d, eax
 jmp xscan173_dok
 smatch176_elemb:
 jmp smatch176_adv
smatch176_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
 cmp eax, r15d
 jg xscan173_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan173_dfail
 jmp smatch176_retry
xscan173_dok:
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
jmp snoch152_n15_α
xscan173_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch152_n14_α
snoch152_n14_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg181_done
 xgvarg181_β:
 jmp snoch152_n17_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "bank"
xgvarg181_done:
bb106_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lprocfn184: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn184]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch152_n17_α
 jmp snoch152_n16_α
snoch152_n14_β:
 jmp snoch152_n17_α
snoch152_n15_α:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg185_done
 xgvarg185_β:
 jmp snoch152_n19_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "ROOT"
xgvarg185_done:
bb108_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+240] -> [r12+272]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lprocfn188: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn188]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch152_n19_α
 jmp snoch152_n18_α
snoch152_n15_β:
 jmp snoch152_n19_α
snoch152_n16_α:
bb109_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch152_n17_α
 snoch152_n16_β:
 jmp snoch152_n17_α
snoch152_n17_α:
bb110_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn191: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn191]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch152_n20_α
snoch152_n17_β:
 jmp Pop_list_γ
snoch152_n18_α:
bb111_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch152_n19_α
 snoch152_n18_β:
 jmp snoch152_n19_α
snoch152_n19_α:
# IR_VAR
bb112_α:
 mov rdi, qword ptr [rip + .Lx194_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch152_n21_α
 snoch152_n19_β:
 jmp snoch152_n22_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "item"
snoch152_n20_α:
bb113_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch152_n20_β:
 jmp Pop_list_γ
snoch152_n21_α:
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
 jmp xscan196_sγ
 xscan196_sβ:
 jmp snoch152_n22_α
xscan196_sγ:
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
 jmp smatch199_retry
 snoch152_n21_β:
 jmp xscan196_dfail
smatch199_retry:
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
 jz .Lx202_0
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
 jne smatch199_adv
 jmp xscan196_dok
.Lx202_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch199_adv
 mov r14d, eax
 jmp xscan196_dok
 smatch199_elemb:
 jmp smatch199_adv
smatch199_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan196_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan196_dfail
 jmp smatch199_retry
xscan196_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch152_n23_α
xscan196_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch152_n22_α
snoch152_n22_α:
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
 jmp snoch152_n24_α
 snoch152_n22_β:
 jmp snoch152_n24_α
snoch152_n23_α:
bb120_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn206: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn206]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch152_n12_α
 jmp snoch152_n25_α
snoch152_n23_β:
 jmp snoch152_n12_α
snoch152_n24_α:
bb121_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn208: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn208]
 lea rsi, [r12 + 400]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch152_n12_α
 jmp snoch152_n26_α
snoch152_n24_β:
 jmp snoch152_n12_α
snoch152_n25_α:
bb122_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch152_n12_α
 snoch152_n25_β:
 jmp snoch152_n12_α
snoch152_n26_α:
bb123_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch152_n12_α
 snoch152_n26_β:
 jmp snoch152_n12_α
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
snoch211_n0_α:
# IR_VAR
bb124_α:
 mov rdi, qword ptr [rip + .Lx214_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg212_done
 xgvarg212_β:
 jmp snoch211_n2_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "v"
xgvarg212_done:
bb125_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn216: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn216]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch211_n2_α
 jmp snoch211_n1_α
snoch211_n0_β:
 jmp snoch211_n2_α
snoch211_n1_α:
bb126_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch211_n2_α
 snoch211_n1_β:
 jmp snoch211_n2_α
snoch211_n2_α:
# IR_VAR
bb127_α:
 mov rdi, qword ptr [rip + .Lx219_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch211_n3_α
 snoch211_n2_β:
 jmp snoch211_n4_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string ""
snoch211_n3_α:
bb128_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S37]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch211_n4_α
 snoch211_n3_β:
 jmp snoch211_n4_α
snoch211_n4_α:
snoch211_n4_β:
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
snoch221_n0_α:
xgvarg222_done:
bb129_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn224: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn224]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch221_n2_α
 jmp snoch221_n1_α
snoch221_n0_β:
 jmp snoch221_n2_α
snoch221_n1_α:
bb130_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S38]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch221_n2_α
 snoch221_n1_β:
 jmp snoch221_n2_α
snoch221_n2_α:
snoch221_n2_β:
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
snoch226_n0_α:
# IR_VAR
bb131_α:
 mov rdi, qword ptr [rip + .Lx231_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg229_done
 xgvarg229_β:
 jmp snoch226_n2_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "f"
xgvarg229_done:
bb132_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn233: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn233]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch226_n2_α
 jmp xgvarg228_done
xgvarg228_β:
 jmp snoch226_n2_α
xgvarg228_done:
# IR_KEYWORD_read
bb133_α:
 mov rdi, qword ptr [rip + .Lx235_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg234_done
 xgvarg234_β:
 jmp snoch226_n2_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "LCASE"
xgvarg234_done:
# IR_KEYWORD_read
bb134_α:
 mov rdi, qword ptr [rip + .Lx237_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg236_done
 xgvarg236_β:
 jmp snoch226_n2_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "UCASE"
xgvarg236_done:
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
  .Lbynamefn239: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn239]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch226_n2_α
 jmp xgvarg227_done
xgvarg227_β:
 jmp snoch226_n2_α
xgvarg227_done:
# IR_LIT_S
bb136_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg240_done
 xgvarg240_β:
 jmp snoch226_n2_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "STRING"
xgvarg240_done:
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
  .Lbynamefn243: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn243]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch226_n2_α
 jmp snoch226_n1_α
snoch226_n0_β:
 jmp snoch226_n2_α
snoch226_n1_α:
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
 jmp snoch226_n3_α
 snoch226_n1_β:
 jmp snoch226_n3_α
snoch226_n2_α:
bb139_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call subscript_get@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch226_n4_α
 snoch226_n2_β:
 jmp snoch226_n5_α
snoch226_n3_α:
snoch226_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch226_n4_α:
bb140_α:
# IR_ASSIGN
 lea rdi, [rip + .S42]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch226_n5_α
 snoch226_n4_β:
 jmp snoch226_n5_α
snoch226_n5_α:
bb141_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call subscript_get@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch226_n6_α
 snoch226_n5_β:
 jmp snoch226_n7_α
snoch226_n6_α:
bb142_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch226_n7_α
 snoch226_n6_β:
 jmp snoch226_n7_α
snoch226_n7_α:
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
 jmp snoch226_n8_α
 snoch226_n7_β:
 jmp snoch226_n8_α
snoch226_n8_α:
# IR_LIT_scalar
bb144_α:
 jmp snoch226_n9_α
 snoch226_n8_β:
 jmp snoch226_n10_α
snoch226_n9_α:
bb145_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S45]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch226_n10_α
 snoch226_n9_β:
 jmp snoch226_n10_α
snoch226_n10_α:
# IR_VAR
bb146_α:
 mov rdi, qword ptr [rip + .Lx254_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xgvarg252_done
 xgvarg252_β:
 jmp snoch226_n12_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "i"
xgvarg252_done:
# IR_VAR
bb147_α:
 mov rdi, qword ptr [rip + .Lx257_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg255_done
 xgvarg255_β:
 jmp snoch226_n12_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "n"
xgvarg255_done:
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
 jge snoch226_n12_α
 jmp snoch226_n11_α
 snoch226_n10_β:
 jmp snoch226_n12_α
snoch226_n11_α:
# IR_VAR
bb149_α:
 mov rdi, qword ptr [rip + .Lx260_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch226_n13_α
 snoch226_n11_β:
 jmp snoch226_n12_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "i"
snoch226_n12_α:
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
 jmp snoch226_n3_α
 snoch226_n12_β:
 jmp snoch226_n3_α
snoch226_n13_α:
# IR_LIT_scalar
bb151_α:
 jmp snoch226_n14_α
 snoch226_n13_β:
 jmp snoch226_n12_α
snoch226_n14_α:
bb152_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp snoch226_n15_α
 snoch226_n14_β:
 jmp snoch226_n12_α
snoch226_n15_α:
bb153_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 496]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch226_n16_α
 snoch226_n15_β:
 jmp snoch226_n12_α
snoch226_n16_α:
bb154_α:
# IR_ASSIGN
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch226_n17_α
 snoch226_n16_β:
 jmp snoch226_n12_α
snoch226_n17_α:
# IR_VAR
bb155_α:
 mov rdi, qword ptr [rip + .Lx269_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch226_n18_α
 snoch226_n17_β:
 jmp snoch226_n10_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "i"
snoch226_n18_α:
bb156_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S45]
 call rt_gvar_assign_var@PLT
 jmp snoch226_n10_α
 snoch226_n18_β:
 jmp snoch226_n10_α
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
snoch271_n0_α:
# IR_VAR
bb157_α:
 mov rdi, qword ptr [rip + .Lx276_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg274_done
 xgvarg274_β:
 jmp snoch271_n2_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "f"
xgvarg274_done:
bb158_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn278: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn278]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch271_n2_α
 jmp xgvarg273_done
xgvarg273_β:
 jmp snoch271_n2_α
xgvarg273_done:
# IR_KEYWORD_read
bb159_α:
 mov rdi, qword ptr [rip + .Lx280_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg279_done
 xgvarg279_β:
 jmp snoch271_n2_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "LCASE"
xgvarg279_done:
# IR_KEYWORD_read
bb160_α:
 mov rdi, qword ptr [rip + .Lx282_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg281_done
 xgvarg281_β:
 jmp snoch271_n2_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "UCASE"
xgvarg281_done:
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
  .Lbynamefn284: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn284]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch271_n2_α
 jmp xgvarg272_done
xgvarg272_β:
 jmp snoch271_n2_α
xgvarg272_done:
# IR_LIT_S
bb162_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg285_done
 xgvarg285_β:
 jmp snoch271_n2_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "STRING"
xgvarg285_done:
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
  .Lbynamefn288: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn288]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch271_n2_α
 jmp snoch271_n1_α
snoch271_n0_β:
 jmp snoch271_n2_α
snoch271_n1_α:
# IR_LIT_S
bb164_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg289_done
 xgvarg289_β:
 jmp snoch271_n4_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string " "
xgvarg289_done:
# IR_VAR
bb165_α:
 mov rdi, qword ptr [rip + .Lx293_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg291_done
 xgvarg291_β:
 jmp snoch271_n4_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "indent"
xgvarg291_done:
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
  .Lbynamefn295: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn295]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch271_n4_α
 jmp snoch271_n3_α
snoch271_n1_β:
 jmp snoch271_n4_α
snoch271_n2_α:
# IR_VAR
bb167_α:
 mov rdi, qword ptr [rip + .Lx298_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xgvarg296_done
 xgvarg296_β:
 jmp snoch271_n6_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "f"
xgvarg296_done:
bb168_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+304] -> [r12+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lprocfn300: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn300]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch271_n6_α
 jmp snoch271_n5_α
snoch271_n2_β:
 jmp snoch271_n6_α
snoch271_n3_α:
# IR_LIT_scalar
bb169_α:
 jmp snoch271_n7_α
 snoch271_n3_β:
 jmp snoch271_n4_α
snoch271_n4_α:
snoch271_n4_β:
jmp pp_node_γ
jmp pp_node_γ
snoch271_n5_α:
bb170_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n6_α
 snoch271_n5_β:
 jmp snoch271_n6_α
snoch271_n6_α:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg303_done
 xgvarg303_β:
 jmp snoch271_n9_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string " "
xgvarg303_done:
# IR_VAR
bb172_α:
 mov rdi, qword ptr [rip + .Lx307_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg305_done
 xgvarg305_β:
 jmp snoch271_n9_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "indent"
xgvarg305_done:
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
  .Lbynamefn309: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn309]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch271_n9_α
 jmp snoch271_n8_α
snoch271_n6_β:
 jmp snoch271_n9_α
snoch271_n7_α:
# IR_LIT_S
bb174_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 440], rax
 jmp xgvcat310_1d
 xgvcat310_1b:
 jmp snoch271_n4_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "'"
xgvcat310_1d:
bb175_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch271_n10_α
 snoch271_n7_β:
 jmp snoch271_n4_α
snoch271_n8_α:
bb176_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S47]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n9_α
 snoch271_n8_β:
 jmp snoch271_n9_α
snoch271_n9_α:
# IR_LIT_I
bb177_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvarg314_done
 xgvarg314_β:
 jmp snoch271_n12_α
.Lx315_0:
 .quad 80
xgvarg314_done:
xgvarg316_done:
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
  .Lcallfn318: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn318]
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
  .Lbynamefn319: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn319]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch271_n12_α
 jmp snoch271_n11_α
snoch271_n9_β:
 jmp snoch271_n12_α
snoch271_n10_α:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx321_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch271_n13_α
 snoch271_n10_β:
 jmp snoch271_n4_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "f"
snoch271_n11_α:
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
 jmp snoch271_n4_α
 snoch271_n11_β:
 jmp snoch271_n4_α
snoch271_n12_α:
bb181_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 call subscript_get@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch271_n14_α
 snoch271_n12_β:
 jmp snoch271_n15_α
snoch271_n13_α:
bb182_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch271_n16_α
 snoch271_n13_β:
 jmp snoch271_n4_α
snoch271_n14_α:
bb183_α:
# IR_ASSIGN
 lea rdi, [rip + .S42]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n15_α
 snoch271_n14_β:
 jmp snoch271_n15_α
snoch271_n15_α:
bb184_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S3]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 lea rdi, [rip + .S41]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call subscript_get@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch271_n17_α
 snoch271_n15_β:
 jmp snoch271_n18_α
snoch271_n16_α:
# IR_LIT_scalar
bb185_α:
 jmp snoch271_n19_α
 snoch271_n16_β:
 jmp snoch271_n4_α
snoch271_n17_α:
bb186_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n18_α
 snoch271_n17_β:
 jmp snoch271_n18_α
snoch271_n18_α:
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
 jmp snoch271_n20_α
 snoch271_n18_β:
 jmp snoch271_n20_α
snoch271_n19_α:
# IR_LIT_S
bb188_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 808], rax
 jmp xgvcat330_1d
 xgvcat330_1b:
 jmp snoch271_n4_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "'"
xgvcat330_1d:
bb189_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch271_n21_α
 snoch271_n19_β:
 jmp snoch271_n4_α
snoch271_n20_α:
# IR_LIT_scalar
bb190_α:
 jmp snoch271_n22_α
 snoch271_n20_β:
 jmp snoch271_n23_α
snoch271_n21_α:
# IR_VAR
bb191_α:
 mov rdi, qword ptr [rip + .Lx335_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch271_n24_α
 snoch271_n21_β:
 jmp snoch271_n4_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "suffix"
snoch271_n22_α:
bb192_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S45]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch271_n23_α
 snoch271_n22_β:
 jmp snoch271_n23_α
snoch271_n23_α:
# IR_VAR
bb193_α:
 mov rdi, qword ptr [rip + .Lx339_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg337_done
 xgvarg337_β:
 jmp snoch271_n26_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "i"
xgvarg337_done:
# IR_VAR
bb194_α:
 mov rdi, qword ptr [rip + .Lx342_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xgvarg340_done
 xgvarg340_β:
 jmp snoch271_n26_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "n"
xgvarg340_done:
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
 jge snoch271_n26_α
 jmp snoch271_n25_α
 snoch271_n23_β:
 jmp snoch271_n26_α
snoch271_n24_α:
bb196_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch271_n27_α
 snoch271_n24_β:
 jmp snoch271_n4_α
snoch271_n25_α:
# IR_VAR
bb197_α:
 mov rdi, qword ptr [rip + .Lx346_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch271_n28_α
 snoch271_n25_β:
 jmp snoch271_n26_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "i"
snoch271_n26_α:
bb198_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch271_n29_α
 snoch271_n26_β:
 jmp snoch271_n29_α
snoch271_n27_α:
bb199_α:
# IR_ASSIGN
 lea rdi, [rip + .S35]
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n4_α
 snoch271_n27_β:
 jmp snoch271_n4_α
snoch271_n28_α:
# IR_LIT_scalar
bb200_α:
 jmp snoch271_n30_α
 snoch271_n28_β:
 jmp snoch271_n26_α
snoch271_n29_α:
# IR_VAR
bb201_α:
 mov rdi, qword ptr [rip + .Lx352_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch271_n31_α
 snoch271_n29_β:
 jmp snoch271_n32_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "INPUT"
snoch271_n30_α:
bb202_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 960], rax
 jmp snoch271_n33_α
 snoch271_n30_β:
 jmp snoch271_n26_α
snoch271_n31_α:
bb203_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch271_n34_α
 snoch271_n31_β:
 jmp snoch271_n32_α
snoch271_n32_α:
# IR_LIT_S
bb204_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 976], rax
 jmp xgvarg356_done
 xgvarg356_β:
 jmp snoch271_n36_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "bank"
xgvarg356_done:
bb205_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+968] -> [r12+1000]
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1000], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1008], rax
  .section .rodata
  .Lprocfn359: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn359]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
 cmp eax, 99
 je snoch271_n36_α
 jmp snoch271_n35_α
snoch271_n32_β:
 jmp snoch271_n36_α
snoch271_n33_α:
bb206_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 960]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp snoch271_n37_α
 snoch271_n33_β:
 jmp snoch271_n26_α
snoch271_n34_α:
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
 jmp snoch271_n29_α
 snoch271_n34_β:
 jmp snoch271_n29_α
snoch271_n35_α:
bb208_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n36_α
 snoch271_n35_β:
 jmp snoch271_n36_α
snoch271_n36_α:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [r12 + 1088], rax
 jmp xgvarg363_done
 xgvarg363_β:
 jmp snoch271_n39_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "BANK"
xgvarg363_done:
bb210_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1080] -> [r12+1112]
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1112], rax
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1120], rax
  .section .rodata
  .Lprocfn366: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn366]
 lea rsi, [r12 + 1112]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 cmp eax, 99
 je snoch271_n39_α
 jmp snoch271_n38_α
snoch271_n36_β:
 jmp snoch271_n39_α
snoch271_n37_α:
bb211_α:
# IR_ASSIGN
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n40_α
 snoch271_n37_β:
 jmp snoch271_n26_α
snoch271_n38_α:
bb212_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n39_α
 snoch271_n38_β:
 jmp snoch271_n39_α
snoch271_n39_α:
# IR_LIT_scalar
bb213_α:
 jmp snoch271_n41_α
 snoch271_n39_β:
 jmp snoch271_n42_α
snoch271_n40_α:
# IR_VAR
bb214_α:
 mov rdi, qword ptr [rip + .Lx373_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
 jmp xgvarg371_done
 xgvarg371_β:
 jmp snoch271_n26_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "i"
xgvarg371_done:
# IR_VAR
bb215_α:
 mov rdi, qword ptr [rip + .Lx376_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xgvarg374_done
 xgvarg374_β:
 jmp snoch271_n26_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "n"
xgvarg374_done:
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
 jge snoch271_n26_α
 jmp snoch271_n43_α
 snoch271_n40_β:
 jmp snoch271_n26_α
snoch271_n41_α:
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
 jmp xscan378_sγ
 xscan378_sβ:
 jmp snoch271_n42_α
xscan378_sγ:
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
 jmp smatch381_retry
 snoch271_n41_β:
 jmp xscan378_dfail
smatch381_retry:
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
 jz .Lx384_0
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
 jne smatch381_adv
 jmp xscan378_dok
.Lx384_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch381_adv
 mov r14d, eax
 jmp xscan378_dok
 smatch381_elemb:
 jmp smatch381_adv
smatch381_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1208], 1
 mov eax, dword ptr [r12 + 1208]
 cmp eax, r15d
 jg xscan378_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan378_dfail
 jmp smatch381_retry
xscan378_dok:
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
jmp snoch271_n44_α
xscan378_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch271_n42_α
snoch271_n42_α:
# IR_LIT_S
bb222_α:
 mov qword ptr [r12 + 1224], 1
 mov rax, qword ptr [rip + .Lx387_0]
 mov qword ptr [r12 + 1232], rax
 jmp xgvarg386_done
 xgvarg386_β:
 jmp snoch271_n46_α
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "bank"
xgvarg386_done:
bb223_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1224] -> [r12+1256]
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1264], rax
  .section .rodata
  .Lprocfn389: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn389]
 lea rsi, [r12 + 1256]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
 cmp eax, 99
 je snoch271_n46_α
 jmp snoch271_n45_α
snoch271_n42_β:
 jmp snoch271_n46_α
snoch271_n43_α:
# IR_VAR
bb224_α:
 mov rdi, qword ptr [rip + .Lx391_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 jmp snoch271_n47_α
 snoch271_n43_β:
 jmp snoch271_n26_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "i"
snoch271_n44_α:
# IR_LIT_S
bb225_α:
 mov qword ptr [r12 + 1288], 1
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [r12 + 1296], rax
 jmp xgvarg392_done
 xgvarg392_β:
 jmp snoch271_n49_α
.Lx393_0:
 .quad .Lx393_0_s
.Lx393_0_s:
 .string "ROOT"
xgvarg392_done:
bb226_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1288] -> [r12+1320]
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1320], rax
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1328], rax
  .section .rodata
  .Lprocfn395: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn395]
 lea rsi, [r12 + 1320]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 cmp eax, 99
 je snoch271_n49_α
 jmp snoch271_n48_α
snoch271_n44_β:
 jmp snoch271_n49_α
snoch271_n45_α:
bb227_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n46_α
 snoch271_n45_β:
 jmp snoch271_n46_α
snoch271_n46_α:
bb228_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn398: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn398]
 lea rsi, [r12 + 1336]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch271_n50_α
snoch271_n46_β:
 jmp pp_node_γ
snoch271_n47_α:
bb229_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 1160]
 mov rsi, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1272]
 mov rcx, qword ptr [r12 + 1280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], rdx
 jmp snoch271_n51_α
 snoch271_n47_β:
 jmp snoch271_n26_α
snoch271_n48_α:
bb230_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n49_α
 snoch271_n48_β:
 jmp snoch271_n49_α
snoch271_n49_α:
# IR_VAR
bb231_α:
 mov rdi, qword ptr [rip + .Lx402_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 jmp snoch271_n52_α
 snoch271_n49_β:
 jmp snoch271_n53_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "item"
snoch271_n50_α:
bb232_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch271_n50_β:
 jmp pp_node_γ
snoch271_n51_α:
bb233_α:
# IR_ASSIGN
 lea rdi, [rip + .S52]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n54_α
 snoch271_n51_β:
 jmp snoch271_n26_α
snoch271_n52_α:
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
 jmp xscan406_sγ
 xscan406_sβ:
 jmp snoch271_n53_α
xscan406_sγ:
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
 jmp smatch409_retry
 snoch271_n52_β:
 jmp xscan406_dfail
smatch409_retry:
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
 jz .Lx412_0
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
 jne smatch409_adv
 jmp xscan406_dok
.Lx412_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch409_adv
 mov r14d, eax
 jmp xscan406_dok
 smatch409_elemb:
 jmp smatch409_adv
smatch409_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1400], 1
 mov eax, dword ptr [r12 + 1400]
 cmp eax, r15d
 jg xscan406_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan406_dfail
 jmp smatch409_retry
xscan406_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch271_n55_α
xscan406_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch271_n53_α
snoch271_n53_α:
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
 jmp snoch271_n56_α
 snoch271_n53_β:
 jmp snoch271_n56_α
snoch271_n54_α:
# IR_VAR
bb240_α:
 mov rdi, qword ptr [rip + .Lx416_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1448], rax
 mov qword ptr [r12 + 1456], rdx
 jmp snoch271_n57_α
 snoch271_n54_β:
 jmp snoch271_n23_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "i"
snoch271_n55_α:
bb241_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn418: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn418]
 lea rsi, [r12 + 1464]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je snoch271_n39_α
 jmp snoch271_n58_α
snoch271_n55_β:
 jmp snoch271_n39_α
snoch271_n56_α:
bb242_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn420: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn420]
 lea rsi, [r12 + 1480]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 cmp eax, 99
 je snoch271_n39_α
 jmp snoch271_n59_α
snoch271_n56_β:
 jmp snoch271_n39_α
snoch271_n57_α:
bb243_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S45]
 call rt_gvar_assign_var@PLT
 jmp snoch271_n23_α
 snoch271_n57_β:
 jmp snoch271_n23_α
snoch271_n58_α:
bb244_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n39_α
 snoch271_n58_β:
 jmp snoch271_n39_α
snoch271_n59_α:
bb245_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1488]
 call rt_gvar_assign_descr@PLT
 jmp snoch271_n39_α
 snoch271_n59_β:
 jmp snoch271_n39_α
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
snoch424_n0_α:
# IR_VAR
bb246_α:
 mov rdi, qword ptr [rip + .Lx427_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg425_done
 xgvarg425_β:
 jmp snoch424_n1_α
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "bank"
xgvarg425_done:
# IR_LIT_I
bb247_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg428_done
 xgvarg428_β:
 jmp snoch424_n1_α
.Lx429_0:
 .quad 0
xgvarg428_done:
# IR_LIT_S
bb248_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg430_done
 xgvarg430_β:
 jmp snoch424_n1_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string ""
xgvarg430_done:
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
  .Lprocfn433: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn433]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch424_n1_α
 jmp snoch424_n1_α
snoch424_n0_β:
 jmp snoch424_n1_α
snoch424_n1_α:
# IR_VAR
bb250_α:
 mov rdi, qword ptr [rip + .Lx435_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch424_n2_α
 snoch424_n1_β:
 jmp snoch424_n3_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string ""
snoch424_n2_α:
bb251_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S53]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch424_n3_α
 snoch424_n2_β:
 jmp snoch424_n3_α
snoch424_n3_α:
snoch424_n3_β:
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
snoch437_n0_α:
# IR_VAR
bb252_α:
 mov rdi, qword ptr [rip + .Lx439_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch437_n1_α
 snoch437_n0_β:
 jmp snoch437_n2_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "ALPHABET"
snoch437_n1_α:
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
 jmp xscan440_sγ
 xscan440_sβ:
 jmp snoch437_n2_α
xscan440_sγ:
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
 jmp smatch443_retry
 snoch437_n1_β:
 jmp xscan440_dfail
smatch443_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb256_α:
 cmp r14d, 10
 jne xcat446_ω
 jmp xcat446_γ
 xcat446_left_β:
 jmp xcat446_ω
xcat446_γ:
# IR_MATCH_CAPTURE_SAVE
bb257_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb258_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat446_right_ω
 add r14d, 1
 jmp xcap448_γ
 xcat446_right_β:
 jmp xcat446_right_ω
xcap448_γ:
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
 jmp xscan440_dok
xcat446_right_ω:
 jmp xcat446_left_β
smatch443_elemb:
 jmp xcat446_right_β
xcat446_ω:
 jmp smatch443_adv
smatch443_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan440_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan440_dfail
 jmp smatch443_retry
xscan440_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch437_n2_α
xscan440_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch437_n2_α
snoch437_n2_α:
# IR_LIT_S
bb262_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg454_done
 xgvarg454_β:
 jmp snoch437_n3_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "list(head,tail)"
xgvarg454_done:
bb263_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn457: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn457]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch437_n3_α
 jmp snoch437_n3_α
snoch437_n2_β:
 jmp snoch437_n3_α
snoch437_n3_α:
# IR_LIT_scalar
bb264_α:
 jmp snoch437_n4_α
 snoch437_n3_β:
 jmp snoch437_n5_α
snoch437_n4_α:
bb265_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch437_n5_α
 snoch437_n4_β:
 jmp snoch437_n5_α
snoch437_n5_α:
bb266_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn461: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn461]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch437_n7_α
 jmp snoch437_n6_α
snoch437_n5_β:
 jmp snoch437_n7_α
snoch437_n6_α:
bb267_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch437_n7_α
 snoch437_n6_β:
 jmp snoch437_n7_α
snoch437_n7_α:
bb268_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn464: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn464]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch437_n9_α
 jmp snoch437_n8_α
snoch437_n7_β:
 jmp snoch437_n9_α
snoch437_n8_α:
bb269_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch437_n9_α
 snoch437_n8_β:
 jmp snoch437_n9_α
snoch437_n9_α:
bb270_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn467: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn467]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch437_n11_α
 jmp snoch437_n10_α
snoch437_n9_β:
 jmp snoch437_n11_α
snoch437_n10_α:
bb271_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch437_n11_α
 snoch437_n10_β:
 jmp snoch437_n11_α
snoch437_n11_α:
bb272_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S55]
 call rt_proc_define@PLT
 jmp snoch437_n12_α
 snoch437_n11_β:
 jmp snoch437_n12_α
snoch437_n12_α:
bb273_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch437_n13_α
 snoch437_n12_β:
 jmp snoch437_n13_α
snoch437_n13_α:
bb274_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch437_n14_α
 snoch437_n13_β:
 jmp snoch437_n14_α
snoch437_n14_α:
bb275_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch437_n15_α
 snoch437_n14_β:
 jmp snoch437_n15_α
snoch437_n15_α:
bb276_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch437_n16_α
 snoch437_n15_β:
 jmp snoch437_n16_α
snoch437_n16_α:
bb277_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch437_n17_α
 snoch437_n16_β:
 jmp snoch437_n17_α
snoch437_n17_α:
bb278_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch437_n18_α
 snoch437_n17_β:
 jmp snoch437_n18_α
snoch437_n18_α:
bb279_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch437_n19_α
 snoch437_n18_β:
 jmp snoch437_n19_α
snoch437_n19_α:
bb280_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch437_n20_α
 snoch437_n19_β:
 jmp snoch437_n20_α
snoch437_n20_α:
bb281_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch437_n21_α
 snoch437_n20_β:
 jmp snoch437_n21_α
snoch437_n21_α:
bb282_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch437_n22_α
 snoch437_n21_β:
 jmp snoch437_n22_α
snoch437_n22_α:
bb283_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch437_n23_α
 snoch437_n22_β:
 jmp snoch437_n23_α
snoch437_n23_α:
bb284_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch437_n24_α
 snoch437_n23_β:
 jmp snoch437_n24_α
snoch437_n24_α:
bb285_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch437_n25_α
 snoch437_n24_β:
 jmp snoch437_n25_α
snoch437_n25_α:
bb286_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch437_n26_α
 snoch437_n25_β:
 jmp snoch437_n26_α
snoch437_n26_α:
bb287_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch437_n27_α
 snoch437_n26_β:
 jmp snoch437_n27_α
snoch437_n27_α:
bb288_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch437_n28_α
 snoch437_n27_β:
 jmp snoch437_n28_α
snoch437_n28_α:
# IR_VAR
bb289_α:
 mov rdi, qword ptr [rip + .Lx487_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch437_n29_α
 snoch437_n28_β:
 jmp snoch437_n30_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "INPUT"
snoch437_n29_α:
bb290_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch437_n31_α
 snoch437_n29_β:
 jmp snoch437_n30_α
snoch437_n30_α:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg489_done
 xgvarg489_β:
 jmp snoch437_n33_α
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "bank"
xgvarg489_done:
bb292_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lprocfn492: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn492]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je snoch437_n33_α
 jmp snoch437_n32_α
snoch437_n30_β:
 jmp snoch437_n33_α
snoch437_n31_α:
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
 jmp snoch437_n28_α
 snoch437_n31_β:
 jmp snoch437_n28_α
snoch437_n32_α:
bb294_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch437_n33_α
 snoch437_n32_β:
 jmp snoch437_n33_α
snoch437_n33_α:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg495_done
 xgvarg495_β:
 jmp snoch437_n35_α
.Lx496_0:
 .quad .Lx496_0_s
.Lx496_0_s:
 .string "BANK"
xgvarg495_done:
bb296_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+272] -> [r12+304]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lprocfn498: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn498]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je snoch437_n35_α
 jmp snoch437_n34_α
snoch437_n33_β:
 jmp snoch437_n35_α
snoch437_n34_α:
bb297_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch437_n35_α
 snoch437_n34_β:
 jmp snoch437_n35_α
snoch437_n35_α:
# IR_LIT_scalar
bb298_α:
 jmp snoch437_n36_α
 snoch437_n35_β:
 jmp snoch437_n37_α
snoch437_n36_α:
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
 jmp xscan501_sγ
 xscan501_sβ:
 jmp snoch437_n37_α
xscan501_sγ:
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
 jmp smatch504_retry
 snoch437_n36_β:
 jmp xscan501_dfail
smatch504_retry:
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
 jz .Lx507_0
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
 jne smatch504_adv
 jmp xscan501_dok
.Lx507_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch504_adv
 mov r14d, eax
 jmp xscan501_dok
 smatch504_elemb:
 jmp smatch504_adv
smatch504_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan501_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan501_dfail
 jmp smatch504_retry
xscan501_dok:
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
jmp snoch437_n38_α
xscan501_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch437_n37_α
snoch437_n37_α:
# IR_LIT_S
bb304_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx510_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg509_done
 xgvarg509_β:
 jmp snoch437_n40_α
.Lx510_0:
 .quad .Lx510_0_s
.Lx510_0_s:
 .string "bank"
xgvarg509_done:
bb305_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lprocfn512: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn512]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch437_n40_α
 jmp snoch437_n39_α
snoch437_n37_β:
 jmp snoch437_n40_α
snoch437_n38_α:
# IR_LIT_S
bb306_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [r12 + 408], rax
 jmp xgvarg513_done
 xgvarg513_β:
 jmp snoch437_n42_α
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string "ROOT"
xgvarg513_done:
bb307_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lprocfn516: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn516]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch437_n42_α
 jmp snoch437_n41_α
snoch437_n38_β:
 jmp snoch437_n42_α
snoch437_n39_α:
bb308_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch437_n40_α
 snoch437_n39_β:
 jmp snoch437_n40_α
snoch437_n40_α:
bb309_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn519: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn519]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch437_n43_α
snoch437_n40_β:
 jmp flat_γ
snoch437_n41_α:
bb310_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch437_n42_α
 snoch437_n41_β:
 jmp snoch437_n42_α
snoch437_n42_α:
# IR_VAR gva
bb311_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch437_n44_α
 snoch437_n42_β:
 jmp snoch437_n45_α
snoch437_n43_α:
bb312_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp flat_γ
 snoch437_n43_β:
 jmp flat_γ
snoch437_n44_α:
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
 jmp xscan524_sγ
 xscan524_sβ:
 jmp snoch437_n45_α
xscan524_sγ:
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
 jmp smatch527_retry
 snoch437_n44_β:
 jmp xscan524_dfail
smatch527_retry:
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
 jz .Lx530_0
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
 jne smatch527_adv
 jmp xscan524_dok
.Lx530_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch527_adv
 mov r14d, eax
 jmp xscan524_dok
 smatch527_elemb:
 jmp smatch527_adv
smatch527_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 496], 1
 mov eax, dword ptr [r12 + 496]
 cmp eax, r15d
 jg xscan524_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan524_dfail
 jmp smatch527_retry
xscan524_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch437_n46_α
xscan524_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch437_n45_α
snoch437_n45_α:
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
 jmp snoch437_n47_α
 snoch437_n45_β:
 jmp snoch437_n47_α
snoch437_n46_α:
bb319_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn534: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn534]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch437_n35_α
 jmp snoch437_n48_α
snoch437_n46_β:
 jmp snoch437_n35_α
snoch437_n47_α:
bb320_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn536: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn536]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je snoch437_n35_α
 jmp snoch437_n49_α
snoch437_n47_β:
 jmp snoch437_n35_α
snoch437_n48_α:
bb321_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch437_n35_α
 snoch437_n48_β:
 jmp snoch437_n35_α
snoch437_n49_α:
bb322_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch437_n35_α
 snoch437_n49_β:
 jmp snoch437_n35_α
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
