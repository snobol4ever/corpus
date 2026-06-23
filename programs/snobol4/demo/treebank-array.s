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
 mov rdi, qword ptr [rip + .Lx11_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xgvarg9_done
 xgvarg9_β:
 jmp snoch0_n8_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "frame_id"
xgvarg9_done:
# IR_VAR
bb8_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n8_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "stk"
xgvarg12_done:
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
  .Lrkfn16: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
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
 mov rdi, qword ptr [rip + .Lx19_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
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
snoch21_n0_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx24_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg22_done
 xgvarg22_β:
 jmp snoch21_n2_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "stk"
xgvarg22_done:
bb14_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn26: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn26]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch21_n2_α
 jmp snoch21_n1_α
snoch21_n0_β:
 jmp snoch21_n2_α
snoch21_n1_α:
bb15_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch21_n2_α
 snoch21_n1_β:
 jmp snoch21_n2_α
snoch21_n2_α:
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
 jmp snoch21_n3_α
 snoch21_n2_β:
 jmp snoch21_n4_α
snoch21_n3_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch21_n5_α
 snoch21_n3_β:
 jmp snoch21_n4_α
snoch21_n4_α:
# IR_VAR
bb18_α:
 mov rdi, qword ptr [rip + .Lx31_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch21_n6_α
 snoch21_n4_β:
 jmp snoch21_n7_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string ""
snoch21_n5_α:
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
 jmp xgvidx32_done
 xgvidx32_β:
 jmp snoch21_n4_α
xgvidx32_done:
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
 je snoch21_n4_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch21_n8_α
 snoch21_n5_β:
 jmp snoch21_n4_α
snoch21_n6_α:
bb21_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch21_n7_α
 snoch21_n6_β:
 jmp snoch21_n7_α
snoch21_n7_α:
snoch21_n7_β:
jmp stk_push_item_γ
jmp stk_push_item_γ
snoch21_n8_α:
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
 jmp xgvidx37_done
 xgvidx37_β:
 jmp snoch21_n4_α
xgvidx37_done:
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
 je snoch21_n4_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xgvidxv36_done
 xgvidxv36_β:
 jmp snoch21_n4_α
xgvidxv36_done:
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
 je snoch21_n4_α
 jmp snoch21_n4_α
 snoch21_n8_β:
 jmp snoch21_n4_α
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
snoch41_n0_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg42_done
 xgvarg42_β:
 jmp snoch41_n2_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "stk"
xgvarg42_done:
bb26_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn46: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn46]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch41_n2_α
 jmp snoch41_n1_α
snoch41_n0_β:
 jmp snoch41_n2_α
snoch41_n1_α:
bb27_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch41_n2_α
 snoch41_n1_β:
 jmp snoch41_n2_α
snoch41_n2_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx50_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg48_done
 xgvarg48_β:
 jmp snoch41_n4_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "stk"
xgvarg48_done:
bb29_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn52: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn52]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch41_n4_α
 jmp snoch41_n3_α
snoch41_n2_β:
 jmp snoch41_n4_α
snoch41_n3_α:
bb30_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch41_n4_α
 snoch41_n3_β:
 jmp snoch41_n4_α
snoch41_n4_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx56_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg54_done
 xgvarg54_β:
 jmp snoch41_n6_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "stk"
xgvarg54_done:
bb32_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn58: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn58]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch41_n6_α
 jmp snoch41_n5_α
snoch41_n4_β:
 jmp snoch41_n6_α
snoch41_n5_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch41_n6_α
 snoch41_n5_β:
 jmp snoch41_n6_α
snoch41_n6_α:
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
 jmp snoch41_n7_α
 snoch41_n6_β:
 jmp snoch41_n8_α
snoch41_n7_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch41_n8_α
 snoch41_n7_β:
 jmp snoch41_n8_α
snoch41_n8_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx63_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch41_n9_α
 snoch41_n8_β:
 jmp snoch41_n10_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "n"
snoch41_n9_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch41_n11_α
 snoch41_n9_β:
 jmp snoch41_n10_α
snoch41_n10_α:
# IR_VAR
bb38_α:
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp snoch41_n12_α
 snoch41_n10_β:
 jmp snoch41_n13_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string ""
snoch41_n11_α:
bb39_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch41_n14_α
 snoch41_n11_β:
 jmp snoch41_n10_α
snoch41_n12_α:
bb40_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch41_n13_α
 snoch41_n12_β:
 jmp snoch41_n13_α
snoch41_n13_α:
snoch41_n13_β:
jmp stk_pop_into_parent_γ
jmp stk_pop_into_parent_γ
snoch41_n14_α:
bb41_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S11]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp xgvidxv69_done
 xgvidxv69_β:
 jmp snoch41_n10_α
xgvidxv69_done:
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
 je snoch41_n10_α
 jmp snoch41_n10_α
 snoch41_n14_β:
 jmp snoch41_n10_α
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
snoch72_n0_α:
# IR_VAR
bb43_α:
 mov rdi, qword ptr [rip + .Lx75_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch72_n2_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "stk"
xgvarg73_done:
bb44_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn77: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn77]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch72_n2_α
 jmp snoch72_n1_α
snoch72_n0_β:
 jmp snoch72_n2_α
snoch72_n1_α:
bb45_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch72_n2_α
 snoch72_n1_β:
 jmp snoch72_n2_α
snoch72_n2_α:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx81_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg79_done
 xgvarg79_β:
 jmp snoch72_n4_α
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "stk"
xgvarg79_done:
bb47_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn83: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn83]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch72_n4_α
 jmp snoch72_n3_α
snoch72_n2_β:
 jmp snoch72_n4_α
snoch72_n3_α:
bb48_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch72_n4_α
 snoch72_n3_β:
 jmp snoch72_n4_α
snoch72_n4_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch72_n5_α
 snoch72_n4_β:
 jmp snoch72_n6_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string ""
snoch72_n5_α:
bb50_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S13]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch72_n6_α
 snoch72_n5_β:
 jmp snoch72_n6_α
snoch72_n6_α:
snoch72_n6_β:
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
snoch88_n0_α:
# IR_LIT_scalar
bb51_α:
 jmp snoch88_n1_α
 snoch88_n0_β:
 jmp snoch88_n2_α
snoch88_n1_α:
bb52_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S6]
 call rt_indirect_assign_str@PLT
 jmp snoch88_n2_α
 snoch88_n1_β:
 jmp snoch88_n2_α
snoch88_n2_α:
# IR_LIT_scalar
bb53_α:
 jmp snoch88_n3_α
 snoch88_n2_β:
 jmp snoch88_n4_α
snoch88_n3_α:
bb54_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_str@PLT
 jmp snoch88_n4_α
 snoch88_n3_β:
 jmp snoch88_n4_α
snoch88_n4_α:
# IR_LIT_scalar
bb55_α:
 jmp snoch88_n5_α
 snoch88_n4_β:
 jmp snoch88_n6_α
snoch88_n5_α:
bb56_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch88_n6_α
 snoch88_n5_β:
 jmp snoch88_n6_α
snoch88_n6_α:
bb57_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn96: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn96]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch88_n8_α
 jmp snoch88_n7_α
snoch88_n6_β:
 jmp snoch88_n8_α
snoch88_n7_α:
bb58_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch88_n8_α
 snoch88_n7_β:
 jmp snoch88_n8_α
snoch88_n8_α:
bb59_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn99: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn99]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch88_n10_α
 jmp snoch88_n9_α
snoch88_n8_β:
 jmp snoch88_n10_α
snoch88_n9_α:
bb60_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch88_n10_α
 snoch88_n9_β:
 jmp snoch88_n10_α
snoch88_n10_α:
bb61_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn102: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn102]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch88_n12_α
 jmp snoch88_n11_α
snoch88_n10_β:
 jmp snoch88_n12_α
snoch88_n11_α:
bb62_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch88_n12_α
 snoch88_n11_β:
 jmp snoch88_n12_α
snoch88_n12_α:
# IR_VAR
bb63_α:
 mov rdi, qword ptr [rip + .Lx105_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp snoch88_n13_α
 snoch88_n12_β:
 jmp snoch88_n14_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string ""
snoch88_n13_α:
bb64_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch88_n14_α
 snoch88_n13_β:
 jmp snoch88_n14_α
snoch88_n14_α:
snoch88_n14_β:
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
snoch107_n0_α:
xgvarg108_done:
bb65_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn110: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn110]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch107_n2_α
 jmp snoch107_n1_α
snoch107_n0_β:
 jmp snoch107_n2_α
snoch107_n1_α:
bb66_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch107_n2_α
 snoch107_n1_β:
 jmp snoch107_n2_α
snoch107_n2_α:
snoch107_n2_β:
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
snoch112_n0_α:
# IR_VAR
bb67_α:
 mov rdi, qword ptr [rip + .Lx115_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg113_done
 xgvarg113_β:
 jmp snoch112_n2_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "v"
xgvarg113_done:
bb68_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn117: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn117]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch112_n2_α
 jmp snoch112_n1_α
snoch112_n0_β:
 jmp snoch112_n2_α
snoch112_n1_α:
bb69_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch112_n2_α
 snoch112_n1_β:
 jmp snoch112_n2_α
snoch112_n2_α:
# IR_VAR
bb70_α:
 mov rdi, qword ptr [rip + .Lx120_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch112_n3_α
 snoch112_n2_β:
 jmp snoch112_n4_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string ""
snoch112_n3_α:
bb71_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S18]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch112_n4_α
 snoch112_n3_β:
 jmp snoch112_n4_α
snoch112_n4_α:
snoch112_n4_β:
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
snoch122_n0_α:
xgvarg123_done:
bb72_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn125: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn125]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch122_n2_α
 jmp snoch122_n1_α
snoch122_n0_β:
 jmp snoch122_n2_α
snoch122_n1_α:
bb73_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch122_n2_α
 snoch122_n1_β:
 jmp snoch122_n2_α
snoch122_n2_α:
snoch122_n2_β:
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
snoch127_n0_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx130_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg128_done
 xgvarg128_β:
 jmp snoch127_n2_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "v"
xgvarg128_done:
bb75_α:
# BOX IR_CALL stk_push_item(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn132: .string "stk_push_item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn132]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch127_n2_α
 jmp snoch127_n1_α
snoch127_n0_β:
 jmp snoch127_n2_α
snoch127_n1_α:
bb76_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch127_n2_α
 snoch127_n1_β:
 jmp snoch127_n2_α
snoch127_n2_α:
# IR_VAR
bb77_α:
 mov rdi, qword ptr [rip + .Lx135_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch127_n3_α
 snoch127_n2_β:
 jmp snoch127_n4_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string ""
snoch127_n3_α:
bb78_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S20]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch127_n4_α
 snoch127_n3_β:
 jmp snoch127_n4_α
snoch127_n4_α:
snoch127_n4_β:
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
snoch137_n0_α:
xgvarg138_done:
bb79_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn140: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn140]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch137_n2_α
 jmp snoch137_n1_α
snoch137_n0_β:
 jmp snoch137_n2_α
snoch137_n1_α:
bb80_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch137_n2_α
 snoch137_n1_β:
 jmp snoch137_n2_α
snoch137_n2_α:
snoch137_n2_β:
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
snoch142_n0_α:
bb81_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn144: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn144]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch142_n2_α
 jmp snoch142_n1_α
snoch142_n0_β:
 jmp snoch142_n2_α
snoch142_n1_α:
bb82_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch142_n2_α
 snoch142_n1_β:
 jmp snoch142_n2_α
snoch142_n2_α:
# IR_VAR
bb83_α:
 mov rdi, qword ptr [rip + .Lx147_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch142_n3_α
 snoch142_n2_β:
 jmp snoch142_n4_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string ""
snoch142_n3_α:
bb84_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S22]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch142_n4_α
 snoch142_n3_β:
 jmp snoch142_n4_α
snoch142_n4_α:
snoch142_n4_β:
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
snoch149_n0_α:
bb85_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch149_n1_α
 snoch149_n0_β:
 jmp snoch149_n1_α
snoch149_n1_α:
bb86_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch149_n2_α
 snoch149_n1_β:
 jmp snoch149_n2_α
snoch149_n2_α:
bb87_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch149_n3_α
 snoch149_n2_β:
 jmp snoch149_n3_α
snoch149_n3_α:
bb88_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch149_n4_α
 snoch149_n3_β:
 jmp snoch149_n4_α
snoch149_n4_α:
bb89_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch149_n5_α
 snoch149_n4_β:
 jmp snoch149_n5_α
snoch149_n5_α:
# IR_VAR
bb90_α:
 mov rdi, qword ptr [rip + .Lx156_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch149_n6_α
 snoch149_n5_β:
 jmp snoch149_n7_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "INPUT"
snoch149_n6_α:
bb91_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch149_n8_α
 snoch149_n6_β:
 jmp snoch149_n7_α
snoch149_n7_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg158_done
 xgvarg158_β:
 jmp snoch149_n10_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "bank"
xgvarg158_done:
bb93_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn161: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn161]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch149_n10_α
 jmp snoch149_n9_α
snoch149_n7_β:
 jmp snoch149_n10_α
snoch149_n8_α:
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
 jmp snoch149_n5_α
 snoch149_n8_β:
 jmp snoch149_n5_α
snoch149_n9_α:
bb95_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n10_α
 snoch149_n9_β:
 jmp snoch149_n10_α
snoch149_n10_α:
# IR_LIT_S
bb96_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg164_done
 xgvarg164_β:
 jmp snoch149_n12_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "BANK"
xgvarg164_done:
bb97_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn167: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn167]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch149_n12_α
 jmp snoch149_n11_α
snoch149_n10_β:
 jmp snoch149_n12_α
snoch149_n11_α:
bb98_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n12_α
 snoch149_n11_β:
 jmp snoch149_n12_α
snoch149_n12_α:
# IR_LIT_scalar
bb99_α:
 jmp snoch149_n13_α
 snoch149_n12_β:
 jmp snoch149_n14_α
snoch149_n13_α:
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
 jmp xscan170_sγ
 xscan170_sβ:
 jmp snoch149_n14_α
xscan170_sγ:
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
 jmp smatch173_retry
 snoch149_n13_β:
 jmp xscan170_dfail
smatch173_retry:
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
 jz .Lx176_0
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
 jne smatch173_adv
 jmp xscan170_dok
.Lx176_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch173_adv
 mov r14d, eax
 jmp xscan170_dok
 smatch173_elemb:
 jmp smatch173_adv
smatch173_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
 cmp eax, r15d
 jg xscan170_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan170_dfail
 jmp smatch173_retry
xscan170_dok:
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
jmp snoch149_n15_α
xscan170_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch149_n14_α
snoch149_n14_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg178_done
 xgvarg178_β:
 jmp snoch149_n17_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "bank"
xgvarg178_done:
bb106_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lprocfn181: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn181]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch149_n17_α
 jmp snoch149_n16_α
snoch149_n14_β:
 jmp snoch149_n17_α
snoch149_n15_α:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg182_done
 xgvarg182_β:
 jmp snoch149_n19_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "ROOT"
xgvarg182_done:
bb108_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+240] -> [r12+272]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lprocfn185: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn185]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch149_n19_α
 jmp snoch149_n18_α
snoch149_n15_β:
 jmp snoch149_n19_α
snoch149_n16_α:
bb109_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n17_α
 snoch149_n16_β:
 jmp snoch149_n17_α
snoch149_n17_α:
bb110_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn188: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn188]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch149_n20_α
snoch149_n17_β:
 jmp Pop_list_γ
snoch149_n18_α:
bb111_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n19_α
 snoch149_n18_β:
 jmp snoch149_n19_α
snoch149_n19_α:
# IR_VAR
bb112_α:
 mov rdi, qword ptr [rip + .Lx191_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch149_n21_α
 snoch149_n19_β:
 jmp snoch149_n22_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "item"
snoch149_n20_α:
bb113_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch149_n20_β:
 jmp Pop_list_γ
snoch149_n21_α:
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
 jmp xscan193_sγ
 xscan193_sβ:
 jmp snoch149_n22_α
xscan193_sγ:
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
 jmp smatch196_retry
 snoch149_n21_β:
 jmp xscan193_dfail
smatch196_retry:
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
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
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
jmp snoch149_n23_α
xscan193_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch149_n22_α
snoch149_n22_α:
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
 jmp snoch149_n24_α
 snoch149_n22_β:
 jmp snoch149_n24_α
snoch149_n23_α:
bb120_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn203: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn203]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch149_n12_α
 jmp snoch149_n25_α
snoch149_n23_β:
 jmp snoch149_n12_α
snoch149_n24_α:
bb121_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn205: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn205]
 lea rsi, [r12 + 400]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch149_n12_α
 jmp snoch149_n26_α
snoch149_n24_β:
 jmp snoch149_n12_α
snoch149_n25_α:
bb122_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n12_α
 snoch149_n25_β:
 jmp snoch149_n12_α
snoch149_n26_α:
bb123_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch149_n12_α
 snoch149_n26_β:
 jmp snoch149_n12_α
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
snoch208_n0_α:
# IR_VAR
bb124_α:
 mov rdi, qword ptr [rip + .Lx211_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg209_done
 xgvarg209_β:
 jmp snoch208_n2_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "v"
xgvarg209_done:
bb125_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn213: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn213]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch208_n2_α
 jmp snoch208_n1_α
snoch208_n0_β:
 jmp snoch208_n2_α
snoch208_n1_α:
bb126_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch208_n2_α
 snoch208_n1_β:
 jmp snoch208_n2_α
snoch208_n2_α:
# IR_VAR
bb127_α:
 mov rdi, qword ptr [rip + .Lx216_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch208_n3_α
 snoch208_n2_β:
 jmp snoch208_n4_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string ""
snoch208_n3_α:
bb128_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S37]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch208_n4_α
 snoch208_n3_β:
 jmp snoch208_n4_α
snoch208_n4_α:
snoch208_n4_β:
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
snoch218_n0_α:
xgvarg219_done:
bb129_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn221: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn221]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch218_n2_α
 jmp snoch218_n1_α
snoch218_n0_β:
 jmp snoch218_n2_α
snoch218_n1_α:
bb130_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S38]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch218_n2_α
 snoch218_n1_β:
 jmp snoch218_n2_α
snoch218_n2_α:
snoch218_n2_β:
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
snoch223_n0_α:
# IR_VAR
bb131_α:
 mov rdi, qword ptr [rip + .Lx228_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg226_done
 xgvarg226_β:
 jmp snoch223_n2_α
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "f"
xgvarg226_done:
bb132_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn230: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn230]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch223_n2_α
 jmp xgvarg225_done
xgvarg225_β:
 jmp snoch223_n2_α
xgvarg225_done:
# IR_KEYWORD_read
bb133_α:
 mov rdi, qword ptr [rip + .Lx232_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg231_done
 xgvarg231_β:
 jmp snoch223_n2_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "LCASE"
xgvarg231_done:
# IR_KEYWORD_read
bb134_α:
 mov rdi, qword ptr [rip + .Lx234_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg233_done
 xgvarg233_β:
 jmp snoch223_n2_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "UCASE"
xgvarg233_done:
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
  .Lbynamefn236: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn236]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch223_n2_α
 jmp xgvarg224_done
xgvarg224_β:
 jmp snoch223_n2_α
xgvarg224_done:
# IR_LIT_S
bb136_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg237_done
 xgvarg237_β:
 jmp snoch223_n2_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "STRING"
xgvarg237_done:
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
  .Lbynamefn240: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn240]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch223_n2_α
 jmp snoch223_n1_α
snoch223_n0_β:
 jmp snoch223_n2_α
snoch223_n1_α:
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
 jmp snoch223_n3_α
 snoch223_n1_β:
 jmp snoch223_n3_α
snoch223_n2_α:
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
 jmp snoch223_n4_α
 snoch223_n2_β:
 jmp snoch223_n5_α
snoch223_n3_α:
snoch223_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch223_n4_α:
bb140_α:
# IR_ASSIGN
 lea rdi, [rip + .S42]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch223_n5_α
 snoch223_n4_β:
 jmp snoch223_n5_α
snoch223_n5_α:
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
 jmp snoch223_n6_α
 snoch223_n5_β:
 jmp snoch223_n7_α
snoch223_n6_α:
bb142_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch223_n7_α
 snoch223_n6_β:
 jmp snoch223_n7_α
snoch223_n7_α:
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
 jmp snoch223_n8_α
 snoch223_n7_β:
 jmp snoch223_n8_α
snoch223_n8_α:
# IR_LIT_scalar
bb144_α:
 jmp snoch223_n9_α
 snoch223_n8_β:
 jmp snoch223_n10_α
snoch223_n9_α:
bb145_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S45]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch223_n10_α
 snoch223_n9_β:
 jmp snoch223_n10_α
snoch223_n10_α:
# IR_VAR
bb146_α:
 mov rdi, qword ptr [rip + .Lx251_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xgvarg249_done
 xgvarg249_β:
 jmp snoch223_n12_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "i"
xgvarg249_done:
# IR_VAR
bb147_α:
 mov rdi, qword ptr [rip + .Lx254_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg252_done
 xgvarg252_β:
 jmp snoch223_n12_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "n"
xgvarg252_done:
bb148_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+384] -> [r12+432]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [r12+400] -> [r12+448]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lbynamefn256: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn256]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch223_n12_α
 jmp snoch223_n11_α
snoch223_n10_β:
 jmp snoch223_n12_α
snoch223_n11_α:
# IR_VAR
bb149_α:
 mov rdi, qword ptr [rip + .Lx258_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch223_n13_α
 snoch223_n11_β:
 jmp snoch223_n12_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "i"
snoch223_n12_α:
bb150_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 480], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 488], rax
 mov dword ptr [r12 + 496], 0
 lea rax, [rip + .S46]
 mov qword ptr [r12 + 504], rax
 lea rdi, [rip + .S39]
 lea rsi, [r12 + 480]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch223_n3_α
 snoch223_n12_β:
 jmp snoch223_n3_α
snoch223_n13_α:
# IR_LIT_scalar
bb151_α:
 jmp snoch223_n14_α
 snoch223_n13_β:
 jmp snoch223_n12_α
snoch223_n14_α:
bb152_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 512], rax
 jmp snoch223_n15_α
 snoch223_n14_β:
 jmp snoch223_n12_α
snoch223_n15_α:
bb153_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 512]
 call str_concat_d@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch223_n16_α
 snoch223_n15_β:
 jmp snoch223_n12_α
snoch223_n16_α:
bb154_α:
# IR_ASSIGN
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 call rt_gvar_assign_descr@PLT
 jmp snoch223_n17_α
 snoch223_n16_β:
 jmp snoch223_n12_α
snoch223_n17_α:
# IR_VAR
bb155_α:
 mov rdi, qword ptr [rip + .Lx266_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp snoch223_n18_α
 snoch223_n17_β:
 jmp snoch223_n10_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "i"
snoch223_n18_α:
bb156_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S45]
 call rt_gvar_assign_var@PLT
 jmp snoch223_n10_α
 snoch223_n18_β:
 jmp snoch223_n10_α
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
snoch268_n0_α:
# IR_VAR
bb157_α:
 mov rdi, qword ptr [rip + .Lx273_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg271_done
 xgvarg271_β:
 jmp snoch268_n2_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "f"
xgvarg271_done:
bb158_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn275: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn275]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch268_n2_α
 jmp xgvarg270_done
xgvarg270_β:
 jmp snoch268_n2_α
xgvarg270_done:
# IR_KEYWORD_read
bb159_α:
 mov rdi, qword ptr [rip + .Lx277_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg276_done
 xgvarg276_β:
 jmp snoch268_n2_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "LCASE"
xgvarg276_done:
# IR_KEYWORD_read
bb160_α:
 mov rdi, qword ptr [rip + .Lx279_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg278_done
 xgvarg278_β:
 jmp snoch268_n2_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "UCASE"
xgvarg278_done:
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
  .Lbynamefn281: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn281]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch268_n2_α
 jmp xgvarg269_done
xgvarg269_β:
 jmp snoch268_n2_α
xgvarg269_done:
# IR_LIT_S
bb162_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg282_done
 xgvarg282_β:
 jmp snoch268_n2_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "STRING"
xgvarg282_done:
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
  .Lbynamefn285: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn285]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch268_n2_α
 jmp snoch268_n1_α
snoch268_n0_β:
 jmp snoch268_n2_α
snoch268_n1_α:
# IR_LIT_S
bb164_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg286_done
 xgvarg286_β:
 jmp snoch268_n4_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string " "
xgvarg286_done:
# IR_VAR
bb165_α:
 mov rdi, qword ptr [rip + .Lx290_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg288_done
 xgvarg288_β:
 jmp snoch268_n4_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "indent"
xgvarg288_done:
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
  .Lbynamefn292: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn292]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch268_n4_α
 jmp snoch268_n3_α
snoch268_n1_β:
 jmp snoch268_n4_α
snoch268_n2_α:
# IR_VAR
bb167_α:
 mov rdi, qword ptr [rip + .Lx295_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xgvarg293_done
 xgvarg293_β:
 jmp snoch268_n6_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "f"
xgvarg293_done:
bb168_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+304] -> [r12+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lprocfn297: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn297]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch268_n6_α
 jmp snoch268_n5_α
snoch268_n2_β:
 jmp snoch268_n6_α
snoch268_n3_α:
# IR_LIT_scalar
bb169_α:
 jmp snoch268_n7_α
 snoch268_n3_β:
 jmp snoch268_n4_α
snoch268_n4_α:
snoch268_n4_β:
jmp pp_node_γ
jmp pp_node_γ
snoch268_n5_α:
bb170_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n6_α
 snoch268_n5_β:
 jmp snoch268_n6_α
snoch268_n6_α:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg300_done
 xgvarg300_β:
 jmp snoch268_n9_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string " "
xgvarg300_done:
# IR_VAR
bb172_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg302_done
 xgvarg302_β:
 jmp snoch268_n9_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "indent"
xgvarg302_done:
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
  .Lbynamefn306: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn306]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch268_n9_α
 jmp snoch268_n8_α
snoch268_n6_β:
 jmp snoch268_n9_α
snoch268_n7_α:
# IR_LIT_S
bb174_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 440], rax
 jmp xgvcat307_1d
 xgvcat307_1b:
 jmp snoch268_n4_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "'"
xgvcat307_1d:
bb175_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch268_n10_α
 snoch268_n7_β:
 jmp snoch268_n4_α
snoch268_n8_α:
bb176_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S47]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n9_α
 snoch268_n8_β:
 jmp snoch268_n9_α
snoch268_n9_α:
# IR_LIT_I
bb177_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvarg311_done
 xgvarg311_β:
 jmp snoch268_n12_α
.Lx312_0:
 .quad 80
xgvarg311_done:
xgvarg313_done:
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
  .Lcallfn315: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn315]
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
  .Lbynamefn316: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn316]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch268_n12_α
 jmp snoch268_n11_α
snoch268_n9_β:
 jmp snoch268_n12_α
snoch268_n10_α:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx318_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch268_n13_α
 snoch268_n10_β:
 jmp snoch268_n4_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "f"
snoch268_n11_α:
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
 jmp snoch268_n4_α
 snoch268_n11_β:
 jmp snoch268_n4_α
snoch268_n12_α:
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
 jmp snoch268_n14_α
 snoch268_n12_β:
 jmp snoch268_n15_α
snoch268_n13_α:
bb182_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch268_n16_α
 snoch268_n13_β:
 jmp snoch268_n4_α
snoch268_n14_α:
bb183_α:
# IR_ASSIGN
 lea rdi, [rip + .S42]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n15_α
 snoch268_n14_β:
 jmp snoch268_n15_α
snoch268_n15_α:
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
 jmp snoch268_n17_α
 snoch268_n15_β:
 jmp snoch268_n18_α
snoch268_n16_α:
# IR_LIT_scalar
bb185_α:
 jmp snoch268_n19_α
 snoch268_n16_β:
 jmp snoch268_n4_α
snoch268_n17_α:
bb186_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n18_α
 snoch268_n17_β:
 jmp snoch268_n18_α
snoch268_n18_α:
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
 jmp snoch268_n20_α
 snoch268_n18_β:
 jmp snoch268_n20_α
snoch268_n19_α:
# IR_LIT_S
bb188_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [r12 + 808], rax
 jmp xgvcat327_1d
 xgvcat327_1b:
 jmp snoch268_n4_α
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "'"
xgvcat327_1d:
bb189_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch268_n21_α
 snoch268_n19_β:
 jmp snoch268_n4_α
snoch268_n20_α:
# IR_LIT_scalar
bb190_α:
 jmp snoch268_n22_α
 snoch268_n20_β:
 jmp snoch268_n23_α
snoch268_n21_α:
# IR_VAR
bb191_α:
 mov rdi, qword ptr [rip + .Lx332_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch268_n24_α
 snoch268_n21_β:
 jmp snoch268_n4_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "suffix"
snoch268_n22_α:
bb192_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S45]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch268_n23_α
 snoch268_n22_β:
 jmp snoch268_n23_α
snoch268_n23_α:
# IR_VAR
bb193_α:
 mov rdi, qword ptr [rip + .Lx336_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg334_done
 xgvarg334_β:
 jmp snoch268_n26_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "i"
xgvarg334_done:
# IR_VAR
bb194_α:
 mov rdi, qword ptr [rip + .Lx339_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xgvarg337_done
 xgvarg337_β:
 jmp snoch268_n26_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "n"
xgvarg337_done:
bb195_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+848] -> [r12+896]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+912]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lbynamefn341: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn341]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je snoch268_n26_α
 jmp snoch268_n25_α
snoch268_n23_β:
 jmp snoch268_n26_α
snoch268_n24_α:
bb196_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch268_n27_α
 snoch268_n24_β:
 jmp snoch268_n4_α
snoch268_n25_α:
# IR_VAR
bb197_α:
 mov rdi, qword ptr [rip + .Lx344_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch268_n28_α
 snoch268_n25_β:
 jmp snoch268_n26_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "i"
snoch268_n26_α:
bb198_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch268_n29_α
 snoch268_n26_β:
 jmp snoch268_n29_α
snoch268_n27_α:
bb199_α:
# IR_ASSIGN
 lea rdi, [rip + .S35]
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n4_α
 snoch268_n27_β:
 jmp snoch268_n4_α
snoch268_n28_α:
# IR_LIT_scalar
bb200_α:
 jmp snoch268_n30_α
 snoch268_n28_β:
 jmp snoch268_n26_α
snoch268_n29_α:
# IR_VAR
bb201_α:
 mov rdi, qword ptr [rip + .Lx350_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp snoch268_n31_α
 snoch268_n29_β:
 jmp snoch268_n32_α
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "INPUT"
snoch268_n30_α:
bb202_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S45]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 976], rax
 jmp snoch268_n33_α
 snoch268_n30_β:
 jmp snoch268_n26_α
snoch268_n31_α:
bb203_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch268_n34_α
 snoch268_n31_β:
 jmp snoch268_n32_α
snoch268_n32_α:
# IR_LIT_S
bb204_α:
 mov qword ptr [r12 + 984], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 992], rax
 jmp xgvarg353_done
 xgvarg353_β:
 jmp snoch268_n36_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "bank"
xgvarg353_done:
bb205_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+984] -> [r12+1016]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1016], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
  .section .rodata
  .Lprocfn356: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn356]
 lea rsi, [r12 + 1016]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1000], rax
 mov qword ptr [r12 + 1008], rdx
 cmp eax, 99
 je snoch268_n36_α
 jmp snoch268_n35_α
snoch268_n32_β:
 jmp snoch268_n36_α
snoch268_n33_α:
bb206_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 976]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 jmp snoch268_n37_α
 snoch268_n33_β:
 jmp snoch268_n26_α
snoch268_n34_α:
bb207_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 1048], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 1056], rax
 mov dword ptr [r12 + 1064], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1072], rax
 mov dword ptr [r12 + 1080], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1088], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1048]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch268_n29_α
 snoch268_n34_β:
 jmp snoch268_n29_α
snoch268_n35_α:
bb208_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n36_α
 snoch268_n35_β:
 jmp snoch268_n36_α
snoch268_n36_α:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 1096], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [r12 + 1104], rax
 jmp xgvarg360_done
 xgvarg360_β:
 jmp snoch268_n39_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "BANK"
xgvarg360_done:
bb210_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1096] -> [r12+1128]
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1128], rax
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1136], rax
  .section .rodata
  .Lprocfn363: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn363]
 lea rsi, [r12 + 1128]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1112], rax
 mov qword ptr [r12 + 1120], rdx
 cmp eax, 99
 je snoch268_n39_α
 jmp snoch268_n38_α
snoch268_n36_β:
 jmp snoch268_n39_α
snoch268_n37_α:
bb211_α:
# IR_ASSIGN
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n40_α
 snoch268_n37_β:
 jmp snoch268_n26_α
snoch268_n38_α:
bb212_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1120]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n39_α
 snoch268_n38_β:
 jmp snoch268_n39_α
snoch268_n39_α:
# IR_LIT_scalar
bb213_α:
 jmp snoch268_n41_α
 snoch268_n39_β:
 jmp snoch268_n42_α
snoch268_n40_α:
# IR_VAR
bb214_α:
 mov rdi, qword ptr [rip + .Lx370_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xgvarg368_done
 xgvarg368_β:
 jmp snoch268_n26_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "i"
xgvarg368_done:
# IR_VAR
bb215_α:
 mov rdi, qword ptr [rip + .Lx373_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
 jmp xgvarg371_done
 xgvarg371_β:
 jmp snoch268_n26_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "n"
xgvarg371_done:
bb216_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1144] -> [r12+1192]
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1200], rax
# marshal arg1 = producer-box slot [r12+1160] -> [r12+1208]
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1208], rax
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1216], rax
  .section .rodata
  .Lbynamefn375: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn375]
 lea rsi, [r12 + 1192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1176], rax
 mov qword ptr [r12 + 1184], rdx
 cmp eax, 99
 je snoch268_n26_α
 jmp snoch268_n43_α
snoch268_n40_β:
 jmp snoch268_n26_α
snoch268_n41_α:
# IR_SUBJECT
bb217_α:
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1224]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan376_sγ
 xscan376_sβ:
 jmp snoch268_n42_α
xscan376_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb218_α:
 mov r13, qword ptr [r12 + 1224]
 mov r15d, dword ptr [r12 + 1232]
 mov dword ptr [r12 + 1240], 0
 lea r10, [r12 + 1248]
 jmp smatch379_retry
 snoch268_n41_β:
 jmp xscan376_dfail
smatch379_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1240]
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
 jz .Lx382_0
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
 jne smatch379_adv
 jmp xscan376_dok
.Lx382_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch379_adv
 mov r14d, eax
 jmp xscan376_dok
 smatch379_elemb:
 jmp smatch379_adv
smatch379_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1240], 1
 mov eax, dword ptr [r12 + 1240]
 cmp eax, r15d
 jg xscan376_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan376_dfail
 jmp smatch379_retry
xscan376_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S30]
 mov esi, dword ptr [r12 + 1240]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch268_n44_α
xscan376_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch268_n42_α
snoch268_n42_α:
# IR_LIT_S
bb222_α:
 mov qword ptr [r12 + 1256], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [r12 + 1264], rax
 jmp xgvarg384_done
 xgvarg384_β:
 jmp snoch268_n46_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "bank"
xgvarg384_done:
bb223_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1256] -> [r12+1288]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1288], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1296], rax
  .section .rodata
  .Lprocfn387: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn387]
 lea rsi, [r12 + 1288]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 cmp eax, 99
 je snoch268_n46_α
 jmp snoch268_n45_α
snoch268_n42_β:
 jmp snoch268_n46_α
snoch268_n43_α:
# IR_VAR
bb224_α:
 mov rdi, qword ptr [rip + .Lx389_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 jmp snoch268_n47_α
 snoch268_n43_β:
 jmp snoch268_n26_α
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "i"
snoch268_n44_α:
# IR_LIT_S
bb225_α:
 mov qword ptr [r12 + 1320], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [r12 + 1328], rax
 jmp xgvarg390_done
 xgvarg390_β:
 jmp snoch268_n49_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "ROOT"
xgvarg390_done:
bb226_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1320] -> [r12+1352]
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1352], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1360], rax
  .section .rodata
  .Lprocfn393: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn393]
 lea rsi, [r12 + 1352]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je snoch268_n49_α
 jmp snoch268_n48_α
snoch268_n44_β:
 jmp snoch268_n49_α
snoch268_n45_α:
bb227_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1280]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n46_α
 snoch268_n45_β:
 jmp snoch268_n46_α
snoch268_n46_α:
bb228_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn396: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn396]
 lea rsi, [r12 + 1368]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch268_n50_α
snoch268_n46_β:
 jmp pp_node_γ
snoch268_n47_α:
bb229_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 1176]
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1304]
 mov rcx, qword ptr [r12 + 1312]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1384], rax
 mov qword ptr [r12 + 1392], rdx
 jmp snoch268_n51_α
 snoch268_n47_β:
 jmp snoch268_n26_α
snoch268_n48_α:
bb230_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n49_α
 snoch268_n48_β:
 jmp snoch268_n49_α
snoch268_n49_α:
# IR_VAR
bb231_α:
 mov rdi, qword ptr [rip + .Lx400_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], rdx
 jmp snoch268_n52_α
 snoch268_n49_β:
 jmp snoch268_n53_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "item"
snoch268_n50_α:
bb232_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1376]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch268_n50_β:
 jmp pp_node_γ
snoch268_n51_α:
bb233_α:
# IR_ASSIGN
 lea rdi, [rip + .S52]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1392]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n54_α
 snoch268_n51_β:
 jmp snoch268_n26_α
snoch268_n52_α:
# IR_SUBJECT
bb234_α:
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1416]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan404_sγ
 xscan404_sβ:
 jmp snoch268_n53_α
xscan404_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb235_α:
 mov r13, qword ptr [r12 + 1416]
 mov r15d, dword ptr [r12 + 1424]
 mov dword ptr [r12 + 1432], 0
 lea r10, [r12 + 1440]
 jmp smatch407_retry
 snoch268_n52_β:
 jmp xscan404_dfail
smatch407_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1432]
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
 jz .Lx410_0
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
 jne smatch407_adv
 jmp xscan404_dok
.Lx410_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch407_adv
 mov r14d, eax
 jmp xscan404_dok
 smatch407_elemb:
 jmp smatch407_adv
smatch407_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1432], 1
 mov eax, dword ptr [r12 + 1432]
 cmp eax, r15d
 jg xscan404_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan404_dfail
 jmp smatch407_retry
xscan404_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch268_n55_α
xscan404_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch268_n53_α
snoch268_n53_α:
bb239_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1448], 0
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 1456], rax
 mov dword ptr [r12 + 1464], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 1472], rax
 lea rdi, [rip + .S35]
 lea rsi, [r12 + 1448]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch268_n56_α
 snoch268_n53_β:
 jmp snoch268_n56_α
snoch268_n54_α:
# IR_VAR
bb240_α:
 mov rdi, qword ptr [rip + .Lx414_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 jmp snoch268_n57_α
 snoch268_n54_β:
 jmp snoch268_n23_α
.Lx414_0:
 .quad .Lx414_0_s
.Lx414_0_s:
 .string "i"
snoch268_n55_α:
bb241_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn416: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn416]
 lea rsi, [r12 + 1496]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1496], rax
 mov qword ptr [r12 + 1504], rdx
 cmp eax, 99
 je snoch268_n39_α
 jmp snoch268_n58_α
snoch268_n55_β:
 jmp snoch268_n39_α
snoch268_n56_α:
bb242_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn418: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn418]
 lea rsi, [r12 + 1512]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1512], rax
 mov qword ptr [r12 + 1520], rdx
 cmp eax, 99
 je snoch268_n39_α
 jmp snoch268_n59_α
snoch268_n56_β:
 jmp snoch268_n39_α
snoch268_n57_α:
bb243_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S45]
 call rt_gvar_assign_var@PLT
 jmp snoch268_n23_α
 snoch268_n57_β:
 jmp snoch268_n23_α
snoch268_n58_α:
bb244_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1504]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n39_α
 snoch268_n58_β:
 jmp snoch268_n39_α
snoch268_n59_α:
bb245_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 call rt_gvar_assign_descr@PLT
 jmp snoch268_n39_α
 snoch268_n59_β:
 jmp snoch268_n39_α
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
snoch422_n0_α:
# IR_VAR
bb246_α:
 mov rdi, qword ptr [rip + .Lx425_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg423_done
 xgvarg423_β:
 jmp snoch422_n1_α
.Lx425_0:
 .quad .Lx425_0_s
.Lx425_0_s:
 .string "bank"
xgvarg423_done:
# IR_LIT_I
bb247_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg426_done
 xgvarg426_β:
 jmp snoch422_n1_α
.Lx427_0:
 .quad 0
xgvarg426_done:
# IR_LIT_S
bb248_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg428_done
 xgvarg428_β:
 jmp snoch422_n1_α
.Lx429_0:
 .quad .Lx429_0_s
.Lx429_0_s:
 .string ""
xgvarg428_done:
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
  .Lprocfn431: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn431]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch422_n1_α
 jmp snoch422_n1_α
snoch422_n0_β:
 jmp snoch422_n1_α
snoch422_n1_α:
# IR_VAR
bb250_α:
 mov rdi, qword ptr [rip + .Lx433_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch422_n2_α
 snoch422_n1_β:
 jmp snoch422_n3_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string ""
snoch422_n2_α:
bb251_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S53]
 lea rsi, [rip + .S6]
 call rt_gvar_assign_var@PLT
 jmp snoch422_n3_α
 snoch422_n2_β:
 jmp snoch422_n3_α
snoch422_n3_α:
snoch422_n3_β:
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
  .Lpnames14:
  .quad .Lpp14_0
  .quad 0
  .Lpn15: .string "pp_node"
  .Lpp15_0: .string "f"
  .Lpp15_1: .string "indent"
  .Lpp15_2: .string "suffix"
  .Lpnames15:
  .quad .Lpp15_0
  .quad .Lpp15_1
  .quad .Lpp15_2
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
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + node_repr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn14]
  mov esi, 552
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + .Lpnames15]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn15]
  mov esi, 1528
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
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
snoch435_n0_α:
# IR_VAR
bb252_α:
 mov rdi, qword ptr [rip + .Lx437_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch435_n1_α
 snoch435_n0_β:
 jmp snoch435_n2_α
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "ALPHABET"
snoch435_n1_α:
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
 jmp xscan438_sγ
 xscan438_sβ:
 jmp snoch435_n2_α
xscan438_sγ:
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
 jmp smatch441_retry
 snoch435_n1_β:
 jmp xscan438_dfail
smatch441_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb256_α:
 cmp r14d, 10
 jne xcat444_ω
 jmp xcat444_γ
 xcat444_left_β:
 jmp xcat444_ω
xcat444_γ:
# IR_MATCH_CAPTURE_SAVE
bb257_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb258_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat444_right_ω
 add r14d, 1
 jmp xcap446_γ
 xcat444_right_β:
 jmp xcat444_right_ω
xcap446_γ:
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
 jmp xscan438_dok
xcat444_right_ω:
 jmp xcat444_left_β
smatch441_elemb:
 jmp xcat444_right_β
xcat444_ω:
 jmp smatch441_adv
smatch441_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan438_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan438_dfail
 jmp smatch441_retry
xscan438_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch435_n2_α
xscan438_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch435_n2_α
snoch435_n2_α:
# IR_LIT_S
bb262_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg452_done
 xgvarg452_β:
 jmp snoch435_n3_α
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "list(head,tail)"
xgvarg452_done:
bb263_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn455: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn455]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch435_n3_α
 jmp snoch435_n3_α
snoch435_n2_β:
 jmp snoch435_n3_α
snoch435_n3_α:
# IR_LIT_scalar
bb264_α:
 jmp snoch435_n4_α
 snoch435_n3_β:
 jmp snoch435_n5_α
snoch435_n4_α:
bb265_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch435_n5_α
 snoch435_n4_β:
 jmp snoch435_n5_α
snoch435_n5_α:
bb266_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn459: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn459]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch435_n7_α
 jmp snoch435_n6_α
snoch435_n5_β:
 jmp snoch435_n7_α
snoch435_n6_α:
bb267_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n7_α
 snoch435_n6_β:
 jmp snoch435_n7_α
snoch435_n7_α:
bb268_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn462: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn462]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch435_n9_α
 jmp snoch435_n8_α
snoch435_n7_β:
 jmp snoch435_n9_α
snoch435_n8_α:
bb269_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n9_α
 snoch435_n8_β:
 jmp snoch435_n9_α
snoch435_n9_α:
bb270_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn465: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn465]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch435_n11_α
 jmp snoch435_n10_α
snoch435_n9_β:
 jmp snoch435_n11_α
snoch435_n10_α:
bb271_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n11_α
 snoch435_n10_β:
 jmp snoch435_n11_α
snoch435_n11_α:
bb272_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S55]
 call rt_proc_define@PLT
 jmp snoch435_n12_α
 snoch435_n11_β:
 jmp snoch435_n12_α
snoch435_n12_α:
bb273_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch435_n13_α
 snoch435_n12_β:
 jmp snoch435_n13_α
snoch435_n13_α:
bb274_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch435_n14_α
 snoch435_n13_β:
 jmp snoch435_n14_α
snoch435_n14_α:
bb275_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch435_n15_α
 snoch435_n14_β:
 jmp snoch435_n15_α
snoch435_n15_α:
bb276_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch435_n16_α
 snoch435_n15_β:
 jmp snoch435_n16_α
snoch435_n16_α:
bb277_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch435_n17_α
 snoch435_n16_β:
 jmp snoch435_n17_α
snoch435_n17_α:
bb278_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch435_n18_α
 snoch435_n17_β:
 jmp snoch435_n18_α
snoch435_n18_α:
bb279_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch435_n19_α
 snoch435_n18_β:
 jmp snoch435_n19_α
snoch435_n19_α:
bb280_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch435_n20_α
 snoch435_n19_β:
 jmp snoch435_n20_α
snoch435_n20_α:
bb281_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch435_n21_α
 snoch435_n20_β:
 jmp snoch435_n21_α
snoch435_n21_α:
bb282_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch435_n22_α
 snoch435_n21_β:
 jmp snoch435_n22_α
snoch435_n22_α:
bb283_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch435_n23_α
 snoch435_n22_β:
 jmp snoch435_n23_α
snoch435_n23_α:
bb284_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch435_n24_α
 snoch435_n23_β:
 jmp snoch435_n24_α
snoch435_n24_α:
bb285_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch435_n25_α
 snoch435_n24_β:
 jmp snoch435_n25_α
snoch435_n25_α:
bb286_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch435_n26_α
 snoch435_n25_β:
 jmp snoch435_n26_α
snoch435_n26_α:
bb287_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch435_n27_α
 snoch435_n26_β:
 jmp snoch435_n27_α
snoch435_n27_α:
bb288_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch435_n28_α
 snoch435_n27_β:
 jmp snoch435_n28_α
snoch435_n28_α:
# IR_VAR
bb289_α:
 mov rdi, qword ptr [rip + .Lx485_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch435_n29_α
 snoch435_n28_β:
 jmp snoch435_n30_α
.Lx485_0:
 .quad .Lx485_0_s
.Lx485_0_s:
 .string "INPUT"
snoch435_n29_α:
bb290_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S28]
 lea rsi, [rip + .S29]
 call rt_gvar_assign_var@PLT
 jmp snoch435_n31_α
 snoch435_n29_β:
 jmp snoch435_n30_α
snoch435_n30_α:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg487_done
 xgvarg487_β:
 jmp snoch435_n33_α
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "bank"
xgvarg487_done:
bb292_α:
# BOX IR_CALL init_list(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lprocfn490: .string "init_list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn490]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je snoch435_n33_α
 jmp snoch435_n32_α
snoch435_n30_β:
 jmp snoch435_n33_α
snoch435_n31_α:
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
 jmp snoch435_n28_α
 snoch435_n31_β:
 jmp snoch435_n28_α
snoch435_n32_α:
bb294_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n33_α
 snoch435_n32_β:
 jmp snoch435_n33_α
snoch435_n33_α:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg493_done
 xgvarg493_β:
 jmp snoch435_n35_α
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "BANK"
xgvarg493_done:
bb296_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+272] -> [r12+304]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lprocfn496: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn496]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je snoch435_n35_α
 jmp snoch435_n34_α
snoch435_n33_β:
 jmp snoch435_n35_α
snoch435_n34_α:
bb297_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n35_α
 snoch435_n34_β:
 jmp snoch435_n35_α
snoch435_n35_α:
# IR_LIT_scalar
bb298_α:
 jmp snoch435_n36_α
 snoch435_n35_β:
 jmp snoch435_n37_α
snoch435_n36_α:
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
 jmp xscan499_sγ
 xscan499_sβ:
 jmp snoch435_n37_α
xscan499_sγ:
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
 jmp smatch502_retry
 snoch435_n36_β:
 jmp xscan499_dfail
smatch502_retry:
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
 jz .Lx505_0
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
 jne smatch502_adv
 jmp xscan499_dok
.Lx505_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch502_adv
 mov r14d, eax
 jmp xscan499_dok
 smatch502_elemb:
 jmp smatch502_adv
smatch502_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan499_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan499_dfail
 jmp smatch502_retry
xscan499_dok:
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
jmp snoch435_n38_α
xscan499_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch435_n37_α
snoch435_n37_α:
# IR_LIT_S
bb304_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg507_done
 xgvarg507_β:
 jmp snoch435_n40_α
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "bank"
xgvarg507_done:
bb305_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lprocfn510: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn510]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch435_n40_α
 jmp snoch435_n39_α
snoch435_n37_β:
 jmp snoch435_n40_α
snoch435_n38_α:
# IR_LIT_S
bb306_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx512_0]
 mov qword ptr [r12 + 408], rax
 jmp xgvarg511_done
 xgvarg511_β:
 jmp snoch435_n42_α
.Lx512_0:
 .quad .Lx512_0_s
.Lx512_0_s:
 .string "ROOT"
xgvarg511_done:
bb307_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lprocfn514: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn514]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch435_n42_α
 jmp snoch435_n41_α
snoch435_n38_β:
 jmp snoch435_n42_α
snoch435_n39_α:
bb308_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n40_α
 snoch435_n39_β:
 jmp snoch435_n40_α
snoch435_n40_α:
bb309_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn517: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn517]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch435_n43_α
snoch435_n40_β:
 jmp flat_γ
snoch435_n41_α:
bb310_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n42_α
 snoch435_n41_β:
 jmp snoch435_n42_α
snoch435_n42_α:
# IR_VAR
bb311_α:
 mov rdi, qword ptr [rip + .Lx520_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch435_n44_α
 snoch435_n42_β:
 jmp snoch435_n45_α
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "item"
snoch435_n43_α:
bb312_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch435_n43_β:
 jmp flat_γ
snoch435_n44_α:
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
 jmp xscan522_sγ
 xscan522_sβ:
 jmp snoch435_n45_α
xscan522_sγ:
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
 jmp smatch525_retry
 snoch435_n44_β:
 jmp xscan522_dfail
smatch525_retry:
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
 jz .Lx528_0
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
 jne smatch525_adv
 jmp xscan522_dok
.Lx528_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch525_adv
 mov r14d, eax
 jmp xscan522_dok
 smatch525_elemb:
 jmp smatch525_adv
smatch525_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 496], 1
 mov eax, dword ptr [r12 + 496]
 cmp eax, r15d
 jg xscan522_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan522_dfail
 jmp smatch525_retry
xscan522_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch435_n46_α
xscan522_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch435_n45_α
snoch435_n45_α:
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
 jmp snoch435_n47_α
 snoch435_n45_β:
 jmp snoch435_n47_α
snoch435_n46_α:
bb319_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn532: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn532]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch435_n35_α
 jmp snoch435_n48_α
snoch435_n46_β:
 jmp snoch435_n35_α
snoch435_n47_α:
bb320_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn534: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn534]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je snoch435_n35_α
 jmp snoch435_n49_α
snoch435_n47_β:
 jmp snoch435_n35_α
snoch435_n48_α:
bb321_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n35_α
 snoch435_n48_β:
 jmp snoch435_n35_α
snoch435_n49_α:
bb322_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_gvar_assign_descr@PLT
 jmp snoch435_n35_α
 snoch435_n49_β:
 jmp snoch435_n35_α
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
