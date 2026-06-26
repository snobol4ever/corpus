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
# IR_LIT_scalar
bb8_α:
 jmp xiset15_val_done
 xiset15_val_β:
 jmp snoch0_n6_α
xiset15_val_done:
# IR_VAR
bb9_α:
 mov rdi, qword ptr [rip + .Lx18_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
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
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xiset15_base_done
 xiset15_base_β:
 jmp snoch0_n6_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "stk_n"
xiset15_base_done:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
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
 mov rdi, qword ptr [rip + .Lx26_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 jmp xgvarg24_done
 xgvarg24_β:
 jmp snoch0_n8_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "frame_id"
xgvarg24_done:
# IR_VAR
bb14_α:
 mov rdi, qword ptr [rip + .Lx29_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xgvarg27_done
 xgvarg27_β:
 jmp snoch0_n8_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "stk"
xgvarg27_done:
bb15_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+104] -> [r12+152]
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 160], rax
# marshal arg1 = producer-box slot [r12+120] -> [r12+168]
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 176], rax
  .section .rodata
  .Lrkfn31: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp snoch0_n7_α
 snoch0_n6_β:
 jmp snoch0_n8_α
snoch0_n7_α:
bb16_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_VAR
bb17_α:
 mov rdi, qword ptr [rip + .Lx34_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string ""
snoch0_n9_α:
bb18_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S3]
 lea rsi, [rip + .S4]
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
snoch36_n0_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx39_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch36_n2_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "stk"
xgvarg37_done:
bb20_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn41: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn41]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch36_n2_α
 jmp snoch36_n1_α
snoch36_n0_β:
 jmp snoch36_n2_α
snoch36_n1_α:
bb21_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch36_n2_α
 snoch36_n1_β:
 jmp snoch36_n2_α
snoch36_n2_α:
bb22_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx44_0
 mov r8, qword ptr [r12 + 64]
 cmp r8d, 6
 jne .Lx44_0
 mov rcx, qword ptr [r12 + 72]
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
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch36_n3_α
.Lx44_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 call subscript_get@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch36_n3_α
 snoch36_n2_β:
 jmp snoch36_n4_α
snoch36_n3_α:
# IR_LIT_scalar
bb23_α:
 jmp snoch36_n5_α
 snoch36_n3_β:
 jmp snoch36_n4_α
snoch36_n4_α:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch36_n6_α
 snoch36_n4_β:
 jmp snoch36_n7_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string ""
snoch36_n5_α:
bb25_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx50_0
 mov r8, qword ptr [r12 + 112]
 cmp r8d, 6
 jne .Lx50_0
 mov rcx, qword ptr [r12 + 120]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx50_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx50_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx48_done
.Lx50_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call subscript_get@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvidx48_done
 xgvidx48_β:
 jmp snoch36_n4_α
xgvidx48_done:
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
 je snoch36_n4_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch36_n8_α
 snoch36_n5_β:
 jmp snoch36_n4_α
snoch36_n6_α:
bb27_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch36_n7_α
 snoch36_n6_β:
 jmp snoch36_n7_α
snoch36_n7_α:
snoch36_n7_β:
jmp stk_push_item_γ
jmp stk_push_item_γ
snoch36_n8_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx55_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xiset53_key_done
 xiset53_key_β:
 jmp snoch36_n4_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "cur"
xiset53_key_done:
# IR_VAR
bb29_α:
 mov rdi, qword ptr [rip + .Lx57_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xiset53_base_done
 xiset53_base_β:
 jmp snoch36_n4_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "stk_n"
xiset53_base_done:
bb30_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 192]
 cmp eax, 4
 jne .Lx59_0
 mov rax, qword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx59_0
 mov rsi, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 184]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx59_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx59_0
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
 jmp snoch36_n4_α
.Lx59_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call subscript_set@PLT
 cmp eax, 0
 je snoch36_n4_α
 jmp snoch36_n4_α
 snoch36_n8_β:
 jmp snoch36_n4_α
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
snoch60_n0_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx63_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg61_done
 xgvarg61_β:
 jmp snoch60_n2_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "stk"
xgvarg61_done:
bb32_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn65: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn65]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch60_n2_α
 jmp snoch60_n1_α
snoch60_n0_β:
 jmp snoch60_n2_α
snoch60_n1_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch60_n2_α
 snoch60_n1_β:
 jmp snoch60_n2_α
snoch60_n2_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx69_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg67_done
 xgvarg67_β:
 jmp snoch60_n4_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "stk"
xgvarg67_done:
bb35_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn71: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn71]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch60_n4_α
 jmp snoch60_n3_α
snoch60_n2_β:
 jmp snoch60_n4_α
snoch60_n3_α:
bb36_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch60_n4_α
 snoch60_n3_β:
 jmp snoch60_n4_α
snoch60_n4_α:
# IR_VAR
bb37_α:
 mov rdi, qword ptr [rip + .Lx75_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch60_n6_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "stk"
xgvarg73_done:
bb38_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn77: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn77]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch60_n6_α
 jmp snoch60_n5_α
snoch60_n4_β:
 jmp snoch60_n6_α
snoch60_n5_α:
bb39_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch60_n6_α
 snoch60_n5_β:
 jmp snoch60_n6_α
snoch60_n6_α:
bb40_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S9]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx80_0
 mov r8, qword ptr [r12 + 160]
 cmp r8d, 6
 jne .Lx80_0
 mov rcx, qword ptr [r12 + 168]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx80_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx80_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch60_n7_α
.Lx80_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call subscript_get@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch60_n7_α
 snoch60_n6_β:
 jmp snoch60_n8_α
snoch60_n7_α:
bb41_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch60_n8_α
 snoch60_n7_β:
 jmp snoch60_n8_α
snoch60_n8_α:
# IR_VAR
bb42_α:
 mov rdi, qword ptr [rip + .Lx83_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch60_n9_α
 snoch60_n8_β:
 jmp snoch60_n10_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "n"
snoch60_n9_α:
# IR_LIT_scalar
bb43_α:
 jmp snoch60_n11_α
 snoch60_n9_β:
 jmp snoch60_n10_α
snoch60_n10_α:
# IR_VAR
bb44_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp snoch60_n12_α
 snoch60_n10_β:
 jmp snoch60_n13_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string ""
snoch60_n11_α:
bb45_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch60_n14_α
 snoch60_n11_β:
 jmp snoch60_n10_α
snoch60_n12_α:
bb46_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch60_n13_α
 snoch60_n12_β:
 jmp snoch60_n13_α
snoch60_n13_α:
snoch60_n13_β:
jmp stk_pop_into_parent_γ
jmp stk_pop_into_parent_γ
snoch60_n14_α:
# IR_VAR
bb47_α:
 mov rdi, qword ptr [rip + .Lx92_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xiset90_key_done
 xiset90_key_β:
 jmp snoch60_n10_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "par"
xiset90_key_done:
# IR_VAR
bb48_α:
 mov rdi, qword ptr [rip + .Lx94_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xiset90_base_done
 xiset90_base_β:
 jmp snoch60_n10_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "stk_n"
xiset90_base_done:
bb49_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 248]
 cmp eax, 4
 jne .Lx96_0
 mov rax, qword ptr [r12 + 232]
 cmp eax, 6
 jne .Lx96_0
 mov rsi, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 240]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx96_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx96_0
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
 jmp snoch60_n10_α
.Lx96_0:
 mov rdi, qword ptr [r12 + 248]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 240]
 mov r8, qword ptr [r12 + 224]
 mov r9, qword ptr [r12 + 232]
 call subscript_set@PLT
 cmp eax, 0
 je snoch60_n10_α
 jmp snoch60_n10_α
 snoch60_n14_β:
 jmp snoch60_n10_α
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
snoch97_n0_α:
# IR_VAR
bb50_α:
 mov rdi, qword ptr [rip + .Lx100_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg98_done
 xgvarg98_β:
 jmp snoch97_n2_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "stk"
xgvarg98_done:
bb51_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn102: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn102]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch97_n2_α
 jmp snoch97_n1_α
snoch97_n0_β:
 jmp snoch97_n2_α
snoch97_n1_α:
bb52_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch97_n2_α
 snoch97_n1_β:
 jmp snoch97_n2_α
snoch97_n2_α:
# IR_VAR
bb53_α:
 mov rdi, qword ptr [rip + .Lx106_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg104_done
 xgvarg104_β:
 jmp snoch97_n4_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "stk"
xgvarg104_done:
bb54_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn108: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn108]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch97_n4_α
 jmp snoch97_n3_α
snoch97_n2_β:
 jmp snoch97_n4_α
snoch97_n3_α:
bb55_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch97_n4_α
 snoch97_n3_β:
 jmp snoch97_n4_α
snoch97_n4_α:
# IR_LIT_scalar
bb56_α:
 jmp snoch97_n5_α
 snoch97_n4_β:
 jmp snoch97_n6_α
snoch97_n5_α:
bb57_α:
# IR_INDIRECT_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S8]
 call rt_indirect_assign_var@PLT
 jmp snoch97_n6_α
 snoch97_n5_β:
 jmp snoch97_n6_α
snoch97_n6_α:
# IR_VAR
bb58_α:
 mov rdi, qword ptr [rip + .Lx113_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch97_n7_α
 snoch97_n6_β:
 jmp snoch97_n8_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string ""
snoch97_n7_α:
bb59_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S13]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch97_n8_α
 snoch97_n7_β:
 jmp snoch97_n8_α
snoch97_n8_α:
snoch97_n8_β:
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
snoch115_n0_α:
# IR_LIT_scalar
bb60_α:
 jmp snoch115_n1_α
 snoch115_n0_β:
 jmp snoch115_n2_α
snoch115_n1_α:
bb61_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S14]
 lea rsi, [rip + .S4]
 call rt_indirect_assign_str@PLT
 jmp snoch115_n2_α
 snoch115_n1_β:
 jmp snoch115_n2_α
snoch115_n2_α:
# IR_LIT_scalar
bb62_α:
 jmp snoch115_n3_α
 snoch115_n2_β:
 jmp snoch115_n4_α
snoch115_n3_α:
bb63_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_str@PLT
 jmp snoch115_n4_α
 snoch115_n3_β:
 jmp snoch115_n4_α
snoch115_n4_α:
# IR_LIT_scalar
bb64_α:
 jmp snoch115_n5_α
 snoch115_n4_β:
 jmp snoch115_n6_α
snoch115_n5_α:
bb65_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch115_n6_α
 snoch115_n5_β:
 jmp snoch115_n6_α
snoch115_n6_α:
bb66_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn123: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn123]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch115_n8_α
 jmp snoch115_n7_α
snoch115_n6_β:
 jmp snoch115_n8_α
snoch115_n7_α:
bb67_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch115_n8_α
 snoch115_n7_β:
 jmp snoch115_n8_α
snoch115_n8_α:
bb68_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn126: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn126]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch115_n10_α
 jmp snoch115_n9_α
snoch115_n8_β:
 jmp snoch115_n10_α
snoch115_n9_α:
bb69_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch115_n10_α
 snoch115_n9_β:
 jmp snoch115_n10_α
snoch115_n10_α:
bb70_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn129: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn129]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch115_n12_α
 jmp snoch115_n11_α
snoch115_n10_β:
 jmp snoch115_n12_α
snoch115_n11_α:
bb71_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch115_n12_α
 snoch115_n11_β:
 jmp snoch115_n12_α
snoch115_n12_α:
# IR_VAR
bb72_α:
 mov rdi, qword ptr [rip + .Lx132_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp snoch115_n13_α
 snoch115_n12_β:
 jmp snoch115_n14_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string ""
snoch115_n13_α:
bb73_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch115_n14_α
 snoch115_n13_β:
 jmp snoch115_n14_α
snoch115_n14_α:
snoch115_n14_β:
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
snoch134_n0_α:
xgvarg135_done:
bb74_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn137: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn137]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch134_n2_α
 jmp snoch134_n1_α
snoch134_n0_β:
 jmp snoch134_n2_α
snoch134_n1_α:
bb75_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch134_n2_α
 snoch134_n1_β:
 jmp snoch134_n2_α
snoch134_n2_α:
snoch134_n2_β:
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
snoch139_n0_α:
# IR_VAR
bb76_α:
 mov rdi, qword ptr [rip + .Lx142_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg140_done
 xgvarg140_β:
 jmp snoch139_n2_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "v"
xgvarg140_done:
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
 je snoch139_n2_α
 jmp snoch139_n1_α
snoch139_n0_β:
 jmp snoch139_n2_α
snoch139_n1_α:
bb78_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch139_n2_α
 snoch139_n1_β:
 jmp snoch139_n2_α
snoch139_n2_α:
# IR_VAR
bb79_α:
 mov rdi, qword ptr [rip + .Lx146_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch139_n3_α
 snoch139_n2_β:
 jmp snoch139_n4_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string ""
snoch139_n3_α:
bb80_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S20]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch139_n4_α
 snoch139_n3_β:
 jmp snoch139_n4_α
snoch139_n4_α:
snoch139_n4_β:
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
snoch148_n0_α:
xgvarg149_done:
bb81_α:
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
bb82_α:
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
snoch153_n0_α:
# IR_VAR
bb83_α:
 mov rdi, qword ptr [rip + .Lx156_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg154_done
 xgvarg154_β:
 jmp snoch153_n2_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "v"
xgvarg154_done:
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
 je snoch153_n2_α
 jmp snoch153_n1_α
snoch153_n0_β:
 jmp snoch153_n2_α
snoch153_n1_α:
bb85_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch153_n2_α
 snoch153_n1_β:
 jmp snoch153_n2_α
snoch153_n2_α:
# IR_VAR
bb86_α:
 mov rdi, qword ptr [rip + .Lx160_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch153_n3_α
 snoch153_n2_β:
 jmp snoch153_n4_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string ""
snoch153_n3_α:
bb87_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S22]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch153_n4_α
 snoch153_n3_β:
 jmp snoch153_n4_α
snoch153_n4_α:
snoch153_n4_β:
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
snoch162_n0_α:
xgvarg163_done:
bb88_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn165: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn165]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch162_n2_α
 jmp snoch162_n1_α
snoch162_n0_β:
 jmp snoch162_n2_α
snoch162_n1_α:
bb89_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S23]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch162_n2_α
 snoch162_n1_β:
 jmp snoch162_n2_α
snoch162_n2_α:
snoch162_n2_β:
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
snoch167_n0_α:
bb90_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch167_n2_α
 jmp snoch167_n1_α
snoch167_n0_β:
 jmp snoch167_n2_α
snoch167_n1_α:
bb91_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch167_n2_α
 snoch167_n1_β:
 jmp snoch167_n2_α
snoch167_n2_α:
# IR_VAR
bb92_α:
 mov rdi, qword ptr [rip + .Lx171_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch167_n3_α
 snoch167_n2_β:
 jmp snoch167_n4_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string ""
snoch167_n3_α:
bb93_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S24]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch167_n4_α
 snoch167_n3_β:
 jmp snoch167_n4_α
snoch167_n4_α:
snoch167_n4_β:
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
snoch173_n0_α:
bb94_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch173_n1_α
 snoch173_n0_β:
 jmp snoch173_n1_α
snoch173_n1_α:
bb95_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch173_n2_α
 snoch173_n1_β:
 jmp snoch173_n2_α
snoch173_n2_α:
bb96_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch173_n3_α
 snoch173_n2_β:
 jmp snoch173_n3_α
snoch173_n3_α:
bb97_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch173_n4_α
 snoch173_n3_β:
 jmp snoch173_n4_α
snoch173_n4_α:
bb98_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch173_n5_α
 snoch173_n4_β:
 jmp snoch173_n5_α
snoch173_n5_α:
# IR_VAR
bb99_α:
 mov rdi, qword ptr [rip + .Lx180_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch173_n6_α
 snoch173_n5_β:
 jmp snoch173_n7_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "INPUT"
snoch173_n6_α:
bb100_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_var@PLT
 jmp snoch173_n8_α
 snoch173_n6_β:
 jmp snoch173_n7_α
snoch173_n7_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg182_done
 xgvarg182_β:
 jmp snoch173_n10_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "bank"
xgvarg182_done:
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
 je snoch173_n10_α
 jmp snoch173_n9_α
snoch173_n7_β:
 jmp snoch173_n10_α
snoch173_n8_α:
bb103_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 88], rax
 mov dword ptr [r12 + 96], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 104], rax
 lea rdi, [rip + .S32]
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
 jmp snoch173_n5_α
 snoch173_n8_β:
 jmp snoch173_n5_α
snoch173_n9_α:
bb104_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n10_α
 snoch173_n9_β:
 jmp snoch173_n10_α
snoch173_n10_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg187_done
 xgvarg187_β:
 jmp snoch173_n12_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "BANK"
xgvarg187_done:
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
 je snoch173_n12_α
 jmp snoch173_n11_α
snoch173_n10_β:
 jmp snoch173_n12_α
snoch173_n11_α:
bb107_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n12_α
 snoch173_n11_β:
 jmp snoch173_n12_α
snoch173_n12_α:
# IR_LIT_scalar
bb108_α:
 jmp snoch173_n13_α
 snoch173_n12_β:
 jmp snoch173_n14_α
snoch173_n13_α:
# IR_SUBJECT
bb109_α:
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 160]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan192_sγ
 xscan192_sβ:
 jmp snoch173_n14_α
xscan192_sγ:
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
 jmp smatch195_retry
 snoch173_n13_β:
 jmp xscan192_dfail
smatch195_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 176]
# IR_MATCH_DEFER
bb112_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx198_0
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
 jne smatch195_adv
 jmp xscan192_dok
.Lx198_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch195_adv
 mov r14d, eax
 jmp xscan192_dok
 smatch195_elemb:
 jmp smatch195_adv
smatch195_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
 cmp eax, r15d
 jg xscan192_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan192_dfail
 jmp smatch195_retry
xscan192_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S32]
 mov esi, dword ptr [r12 + 176]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch173_n15_α
xscan192_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch173_n14_α
snoch173_n14_α:
# IR_LIT_S
bb114_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg200_done
 xgvarg200_β:
 jmp snoch173_n17_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "bank"
xgvarg200_done:
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
 je snoch173_n17_α
 jmp snoch173_n16_α
snoch173_n14_β:
 jmp snoch173_n17_α
snoch173_n15_α:
# IR_LIT_S
bb116_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg203_done
 xgvarg203_β:
 jmp snoch173_n19_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "ROOT"
xgvarg203_done:
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
 je snoch173_n19_α
 jmp snoch173_n18_α
snoch173_n15_β:
 jmp snoch173_n19_α
snoch173_n16_α:
bb118_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n17_α
 snoch173_n16_β:
 jmp snoch173_n17_α
snoch173_n17_α:
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
 jmp snoch173_n20_α
snoch173_n17_β:
 jmp Pop_list_γ
snoch173_n18_α:
bb120_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n19_α
 snoch173_n18_β:
 jmp snoch173_n19_α
snoch173_n19_α:
# IR_VAR
bb121_α:
 mov rdi, qword ptr [rip + .Lx210_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch173_n21_α
 snoch173_n19_β:
 jmp snoch173_n22_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "item"
snoch173_n20_α:
bb122_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch173_n20_β:
 jmp Pop_list_γ
snoch173_n21_α:
# IR_SUBJECT
bb123_α:
 lea rdi, [rip + .S35]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan212_sγ
 xscan212_sβ:
 jmp snoch173_n22_α
xscan212_sγ:
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
 jmp smatch215_retry
 snoch173_n21_β:
 jmp xscan212_dfail
smatch215_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb126_α:
 lea rdi, [rip + .S36]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx218_0
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
 jne smatch215_adv
 jmp xscan212_dok
.Lx218_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch215_adv
 mov r14d, eax
 jmp xscan212_dok
 smatch215_elemb:
 jmp smatch215_adv
smatch215_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan212_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan212_dfail
 jmp smatch215_retry
xscan212_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch173_n23_α
xscan212_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch173_n22_α
snoch173_n22_α:
bb128_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 352], 0
 lea rax, [rip + .S38]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 1
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S37]
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
 jmp snoch173_n24_α
 snoch173_n22_β:
 jmp snoch173_n24_α
snoch173_n23_α:
bb129_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch173_n12_α
 jmp snoch173_n25_α
snoch173_n23_β:
 jmp snoch173_n12_α
snoch173_n24_α:
bb130_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 400]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch173_n12_α
 jmp snoch173_n26_α
snoch173_n24_β:
 jmp snoch173_n12_α
snoch173_n25_α:
bb131_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n12_α
 snoch173_n25_β:
 jmp snoch173_n12_α
snoch173_n26_α:
bb132_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n12_α
 snoch173_n26_β:
 jmp snoch173_n12_α
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
snoch225_n0_α:
# IR_VAR
bb133_α:
 mov rdi, qword ptr [rip + .Lx228_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg226_done
 xgvarg226_β:
 jmp snoch225_n2_α
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "v"
xgvarg226_done:
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
 je snoch225_n2_α
 jmp snoch225_n1_α
snoch225_n0_β:
 jmp snoch225_n2_α
snoch225_n1_α:
bb135_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch225_n2_α
 snoch225_n1_β:
 jmp snoch225_n2_α
snoch225_n2_α:
# IR_VAR
bb136_α:
 mov rdi, qword ptr [rip + .Lx232_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch225_n3_α
 snoch225_n2_β:
 jmp snoch225_n4_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string ""
snoch225_n3_α:
bb137_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S39]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch225_n4_α
 snoch225_n3_β:
 jmp snoch225_n4_α
snoch225_n4_α:
snoch225_n4_β:
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
snoch234_n0_α:
xgvarg235_done:
bb138_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn237: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn237]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch234_n2_α
 jmp snoch234_n1_α
snoch234_n0_β:
 jmp snoch234_n2_α
snoch234_n1_α:
bb139_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S40]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch234_n2_α
 snoch234_n1_β:
 jmp snoch234_n2_α
snoch234_n2_α:
snoch234_n2_β:
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
snoch239_n0_α:
# IR_VAR
bb140_α:
 mov rdi, qword ptr [rip + .Lx244_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg242_done
 xgvarg242_β:
 jmp snoch239_n2_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "f"
xgvarg242_done:
bb141_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn246: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn246]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch239_n2_α
 jmp xgvarg241_done
xgvarg241_β:
 jmp snoch239_n2_α
xgvarg241_done:
# IR_KEYWORD_read
bb142_α:
 mov rdi, qword ptr [rip + .Lx248_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg247_done
 xgvarg247_β:
 jmp snoch239_n2_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "LCASE"
xgvarg247_done:
# IR_KEYWORD_read
bb143_α:
 mov rdi, qword ptr [rip + .Lx250_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg249_done
 xgvarg249_β:
 jmp snoch239_n2_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "UCASE"
xgvarg249_done:
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
  .Lbynamefn252: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn252]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch239_n2_α
 jmp xgvarg240_done
xgvarg240_β:
 jmp snoch239_n2_α
xgvarg240_done:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg253_done
 xgvarg253_β:
 jmp snoch239_n2_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "STRING"
xgvarg253_done:
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
  .Lbynamefn256: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn256]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch239_n2_α
 jmp snoch239_n1_α
snoch239_n0_β:
 jmp snoch239_n2_α
snoch239_n1_α:
bb147_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S41]
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
 jmp snoch239_n3_α
 snoch239_n1_β:
 jmp snoch239_n3_α
snoch239_n2_α:
bb148_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S43]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx259_0
 mov r8, qword ptr [r12 + 272]
 cmp r8d, 6
 jne .Lx259_0
 mov rcx, qword ptr [r12 + 280]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx259_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx259_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch239_n4_α
.Lx259_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call subscript_get@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch239_n4_α
 snoch239_n2_β:
 jmp snoch239_n5_α
snoch239_n3_α:
snoch239_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch239_n4_α:
bb149_α:
# IR_ASSIGN
 lea rdi, [rip + .S44]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch239_n5_α
 snoch239_n4_β:
 jmp snoch239_n5_α
snoch239_n5_α:
bb150_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S43]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx262_0
 mov r8, qword ptr [r12 + 304]
 cmp r8d, 6
 jne .Lx262_0
 mov rcx, qword ptr [r12 + 312]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx262_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx262_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch239_n6_α
.Lx262_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call subscript_get@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch239_n6_α
 snoch239_n5_β:
 jmp snoch239_n7_α
snoch239_n6_α:
bb151_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch239_n7_α
 snoch239_n6_β:
 jmp snoch239_n7_α
snoch239_n7_α:
bb152_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 336], 0
 lea rax, [rip + .S46]
 mov qword ptr [r12 + 344], rax
 mov dword ptr [r12 + 352], 1
 lea rax, [rip + .S44]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S45]
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
 jmp snoch239_n8_α
 snoch239_n7_β:
 jmp snoch239_n8_α
snoch239_n8_α:
# IR_LIT_scalar
bb153_α:
 jmp snoch239_n9_α
 snoch239_n8_β:
 jmp snoch239_n10_α
snoch239_n9_α:
bb154_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S47]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch239_n10_α
 snoch239_n9_β:
 jmp snoch239_n10_α
snoch239_n10_α:
# IR_VAR
bb155_α:
 mov rdi, qword ptr [rip + .Lx269_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xgvarg267_done
 xgvarg267_β:
 jmp snoch239_n12_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "i"
xgvarg267_done:
# IR_VAR
bb156_α:
 mov rdi, qword ptr [rip + .Lx272_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg270_done
 xgvarg270_β:
 jmp snoch239_n12_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "n"
xgvarg270_done:
bb157_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S47]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 432], rax
   lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 416], 0
 mov qword ptr [r12 + 424], 0
 mov rax, qword ptr [r12 + 432]
 cmp rax, rcx
 jge snoch239_n12_α
 jmp snoch239_n11_α
 snoch239_n10_β:
 jmp snoch239_n12_α
snoch239_n11_α:
# IR_VAR
bb158_α:
 mov rdi, qword ptr [rip + .Lx276_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch239_n13_α
 snoch239_n11_β:
 jmp snoch239_n12_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "i"
snoch239_n12_α:
bb159_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 464], 1
 lea rax, [rip + .S45]
 mov qword ptr [r12 + 472], rax
 mov dword ptr [r12 + 480], 0
 lea rax, [rip + .S48]
 mov qword ptr [r12 + 488], rax
 lea rdi, [rip + .S41]
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
 jmp snoch239_n3_α
 snoch239_n12_β:
 jmp snoch239_n3_α
snoch239_n13_α:
# IR_LIT_scalar
bb160_α:
 jmp snoch239_n14_α
 snoch239_n13_β:
 jmp snoch239_n12_α
snoch239_n14_α:
bb161_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S47]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp snoch239_n15_α
 snoch239_n14_β:
 jmp snoch239_n12_α
snoch239_n15_α:
bb162_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch239_n16_α
 snoch239_n15_β:
 jmp snoch239_n12_α
snoch239_n16_α:
bb163_α:
# IR_ASSIGN
 lea rdi, [rip + .S47]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch239_n17_α
 snoch239_n16_β:
 jmp snoch239_n12_α
snoch239_n17_α:
# IR_VAR
bb164_α:
 mov rdi, qword ptr [rip + .Lx285_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch239_n18_α
 snoch239_n17_β:
 jmp snoch239_n10_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "i"
snoch239_n18_α:
bb165_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S47]
 lea rsi, [rip + .S47]
 call rt_gvar_assign_var@PLT
 jmp snoch239_n10_α
 snoch239_n18_β:
 jmp snoch239_n10_α
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
snoch287_n0_α:
# IR_VAR
bb166_α:
 mov rdi, qword ptr [rip + .Lx292_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg290_done
 xgvarg290_β:
 jmp snoch287_n2_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "f"
xgvarg290_done:
bb167_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn294: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn294]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch287_n2_α
 jmp xgvarg289_done
xgvarg289_β:
 jmp snoch287_n2_α
xgvarg289_done:
# IR_KEYWORD_read
bb168_α:
 mov rdi, qword ptr [rip + .Lx296_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg295_done
 xgvarg295_β:
 jmp snoch287_n2_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "LCASE"
xgvarg295_done:
# IR_KEYWORD_read
bb169_α:
 mov rdi, qword ptr [rip + .Lx298_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg297_done
 xgvarg297_β:
 jmp snoch287_n2_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "UCASE"
xgvarg297_done:
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
  .Lbynamefn300: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn300]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch287_n2_α
 jmp xgvarg288_done
xgvarg288_β:
 jmp snoch287_n2_α
xgvarg288_done:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg301_done
 xgvarg301_β:
 jmp snoch287_n2_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "STRING"
xgvarg301_done:
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
  .Lbynamefn304: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn304]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch287_n2_α
 jmp snoch287_n1_α
snoch287_n0_β:
 jmp snoch287_n2_α
snoch287_n1_α:
# IR_LIT_S
bb173_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg305_done
 xgvarg305_β:
 jmp snoch287_n4_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string " "
xgvarg305_done:
# IR_VAR
bb174_α:
 mov rdi, qword ptr [rip + .Lx309_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg307_done
 xgvarg307_β:
 jmp snoch287_n4_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "indent"
xgvarg307_done:
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
  .Lbynamefn311: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn311]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch287_n4_α
 jmp snoch287_n3_α
snoch287_n1_β:
 jmp snoch287_n4_α
snoch287_n2_α:
# IR_VAR
bb176_α:
 mov rdi, qword ptr [rip + .Lx314_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xgvarg312_done
 xgvarg312_β:
 jmp snoch287_n6_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "f"
xgvarg312_done:
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
 je snoch287_n6_α
 jmp snoch287_n5_α
snoch287_n2_β:
 jmp snoch287_n6_α
snoch287_n3_α:
# IR_LIT_scalar
bb178_α:
 jmp snoch287_n7_α
 snoch287_n3_β:
 jmp snoch287_n4_α
snoch287_n4_α:
snoch287_n4_β:
jmp pp_node_γ
jmp pp_node_γ
snoch287_n5_α:
bb179_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S45]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n6_α
 snoch287_n5_β:
 jmp snoch287_n6_α
snoch287_n6_α:
# IR_LIT_S
bb180_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg318_done
 xgvarg318_β:
 jmp snoch287_n9_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string " "
xgvarg318_done:
# IR_VAR
bb181_α:
 mov rdi, qword ptr [rip + .Lx322_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg320_done
 xgvarg320_β:
 jmp snoch287_n9_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "indent"
xgvarg320_done:
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
  .Lbynamefn324: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn324]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch287_n9_α
 jmp snoch287_n8_α
snoch287_n6_β:
 jmp snoch287_n9_α
snoch287_n7_α:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 440], rax
 jmp xgvcat325_1d
 xgvcat325_1b:
 jmp snoch287_n4_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "'"
xgvcat325_1d:
bb184_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch287_n10_α
 snoch287_n7_β:
 jmp snoch287_n4_α
snoch287_n8_α:
bb185_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S49]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n9_α
 snoch287_n8_β:
 jmp snoch287_n9_α
snoch287_n9_α:
# IR_LIT_I
bb186_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvarg329_done
 xgvarg329_β:
 jmp snoch287_n12_α
.Lx330_0:
 .quad 80
xgvarg329_done:
xgvarg331_done:
bb187_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+512]
   lea rdi, [rip + .S50]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 528], rax
# marshal arg0 = gvar NV_GET -> [r12+560]
   lea rdi, [rip + .S45]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
  .section .rodata
  .Lcallfn333: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn333]
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
  .Lbynamefn334: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn334]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch287_n12_α
 jmp snoch287_n11_α
snoch287_n9_β:
 jmp snoch287_n12_α
snoch287_n10_α:
# IR_VAR
bb188_α:
 mov rdi, qword ptr [rip + .Lx336_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch287_n13_α
 snoch287_n10_β:
 jmp snoch287_n4_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "f"
snoch287_n11_α:
bb189_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 592], 1
 lea rax, [rip + .S49]
 mov qword ptr [r12 + 600], rax
 mov dword ptr [r12 + 608], 1
 lea rax, [rip + .S45]
 mov qword ptr [r12 + 616], rax
 mov dword ptr [r12 + 624], 1
 lea rax, [rip + .S51]
 mov qword ptr [r12 + 632], rax
 lea rdi, [rip + .S37]
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
 jmp snoch287_n4_α
 snoch287_n11_β:
 jmp snoch287_n4_α
snoch287_n12_α:
bb190_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S43]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx339_0
 mov r8, qword ptr [r12 + 640]
 cmp r8d, 6
 jne .Lx339_0
 mov rcx, qword ptr [r12 + 648]
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
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch287_n14_α
.Lx339_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call subscript_get@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch287_n14_α
 snoch287_n12_β:
 jmp snoch287_n15_α
snoch287_n13_α:
bb191_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch287_n16_α
 snoch287_n13_β:
 jmp snoch287_n4_α
snoch287_n14_α:
bb192_α:
# IR_ASSIGN
 lea rdi, [rip + .S44]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n15_α
 snoch287_n14_β:
 jmp snoch287_n15_α
snoch287_n15_α:
bb193_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S43]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx343_0
 mov r8, qword ptr [r12 + 688]
 cmp r8d, 6
 jne .Lx343_0
 mov rcx, qword ptr [r12 + 696]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx343_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx343_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch287_n17_α
.Lx343_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call subscript_get@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch287_n17_α
 snoch287_n15_β:
 jmp snoch287_n18_α
snoch287_n16_α:
# IR_LIT_scalar
bb194_α:
 jmp snoch287_n19_α
 snoch287_n16_β:
 jmp snoch287_n4_α
snoch287_n17_α:
bb195_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n18_α
 snoch287_n17_β:
 jmp snoch287_n18_α
snoch287_n18_α:
bb196_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 720], 1
 lea rax, [rip + .S49]
 mov qword ptr [r12 + 728], rax
 mov dword ptr [r12 + 736], 0
 lea rax, [rip + .S52]
 mov qword ptr [r12 + 744], rax
 mov dword ptr [r12 + 752], 0
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 760], rax
 mov dword ptr [r12 + 768], 1
 lea rax, [rip + .S44]
 mov qword ptr [r12 + 776], rax
 mov dword ptr [r12 + 784], 0
 lea rax, [rip + .S53]
 mov qword ptr [r12 + 792], rax
 lea rdi, [rip + .S37]
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
 jmp snoch287_n20_α
 snoch287_n18_β:
 jmp snoch287_n20_α
snoch287_n19_α:
# IR_LIT_S
bb197_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [r12 + 808], rax
 jmp xgvcat347_1d
 xgvcat347_1b:
 jmp snoch287_n4_α
.Lx348_0:
 .quad .Lx348_0_s
.Lx348_0_s:
 .string "'"
xgvcat347_1d:
bb198_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch287_n21_α
 snoch287_n19_β:
 jmp snoch287_n4_α
snoch287_n20_α:
# IR_LIT_scalar
bb199_α:
 jmp snoch287_n22_α
 snoch287_n20_β:
 jmp snoch287_n23_α
snoch287_n21_α:
# IR_VAR
bb200_α:
 mov rdi, qword ptr [rip + .Lx352_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch287_n24_α
 snoch287_n21_β:
 jmp snoch287_n4_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "suffix"
snoch287_n22_α:
bb201_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S47]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch287_n23_α
 snoch287_n22_β:
 jmp snoch287_n23_α
snoch287_n23_α:
# IR_VAR
bb202_α:
 mov rdi, qword ptr [rip + .Lx356_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg354_done
 xgvarg354_β:
 jmp snoch287_n26_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "i"
xgvarg354_done:
# IR_VAR
bb203_α:
 mov rdi, qword ptr [rip + .Lx359_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xgvarg357_done
 xgvarg357_β:
 jmp snoch287_n26_α
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "n"
xgvarg357_done:
bb204_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S47]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 896], rax
   lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 880], 0
 mov qword ptr [r12 + 888], 0
 mov rax, qword ptr [r12 + 896]
 cmp rax, rcx
 jge snoch287_n26_α
 jmp snoch287_n25_α
 snoch287_n23_β:
 jmp snoch287_n26_α
snoch287_n24_α:
bb205_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch287_n27_α
 snoch287_n24_β:
 jmp snoch287_n4_α
snoch287_n25_α:
# IR_VAR
bb206_α:
 mov rdi, qword ptr [rip + .Lx364_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch287_n28_α
 snoch287_n25_β:
 jmp snoch287_n26_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "i"
snoch287_n26_α:
bb207_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch287_n29_α
 snoch287_n26_β:
 jmp snoch287_n29_α
snoch287_n27_α:
bb208_α:
# IR_ASSIGN
 lea rdi, [rip + .S37]
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n4_α
 snoch287_n27_β:
 jmp snoch287_n4_α
snoch287_n28_α:
# IR_LIT_scalar
bb209_α:
 jmp snoch287_n30_α
 snoch287_n28_β:
 jmp snoch287_n26_α
snoch287_n29_α:
# IR_VAR
bb210_α:
 mov rdi, qword ptr [rip + .Lx370_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch287_n31_α
 snoch287_n29_β:
 jmp snoch287_n32_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "INPUT"
snoch287_n30_α:
bb211_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S47]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 960], rax
 jmp snoch287_n33_α
 snoch287_n30_β:
 jmp snoch287_n26_α
snoch287_n31_α:
bb212_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_var@PLT
 jmp snoch287_n34_α
 snoch287_n31_β:
 jmp snoch287_n32_α
snoch287_n32_α:
# IR_LIT_S
bb213_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [r12 + 976], rax
 jmp xgvarg374_done
 xgvarg374_β:
 jmp snoch287_n36_α
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "bank"
xgvarg374_done:
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
 je snoch287_n36_α
 jmp snoch287_n35_α
snoch287_n32_β:
 jmp snoch287_n36_α
snoch287_n33_α:
bb215_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 968]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp snoch287_n37_α
 snoch287_n33_β:
 jmp snoch287_n26_α
snoch287_n34_α:
bb216_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 1032], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1040], rax
 mov dword ptr [r12 + 1048], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 1056], rax
 mov dword ptr [r12 + 1064], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 1072], rax
 lea rdi, [rip + .S32]
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
 jmp snoch287_n29_α
 snoch287_n34_β:
 jmp snoch287_n29_α
snoch287_n35_α:
bb217_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n36_α
 snoch287_n35_β:
 jmp snoch287_n36_α
snoch287_n36_α:
# IR_LIT_S
bb218_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [r12 + 1088], rax
 jmp xgvarg380_done
 xgvarg380_β:
 jmp snoch287_n39_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "BANK"
xgvarg380_done:
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
 je snoch287_n39_α
 jmp snoch287_n38_α
snoch287_n36_β:
 jmp snoch287_n39_α
snoch287_n37_α:
bb220_α:
# IR_ASSIGN
 lea rdi, [rip + .S47]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n40_α
 snoch287_n37_β:
 jmp snoch287_n26_α
snoch287_n38_α:
bb221_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n39_α
 snoch287_n38_β:
 jmp snoch287_n39_α
snoch287_n39_α:
# IR_LIT_scalar
bb222_α:
 jmp snoch287_n41_α
 snoch287_n39_β:
 jmp snoch287_n42_α
snoch287_n40_α:
# IR_VAR
bb223_α:
 mov rdi, qword ptr [rip + .Lx389_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
 jmp xgvarg387_done
 xgvarg387_β:
 jmp snoch287_n26_α
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "i"
xgvarg387_done:
# IR_VAR
bb224_α:
 mov rdi, qword ptr [rip + .Lx392_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xgvarg390_done
 xgvarg390_β:
 jmp snoch287_n26_α
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "n"
xgvarg390_done:
bb225_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S47]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 1176], rax
   lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 1160], 0
 mov qword ptr [r12 + 1168], 0
 mov rax, qword ptr [r12 + 1176]
 cmp rax, rcx
 jge snoch287_n26_α
 jmp snoch287_n43_α
 snoch287_n40_β:
 jmp snoch287_n26_α
snoch287_n41_α:
# IR_SUBJECT
bb226_α:
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 1192]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan395_sγ
 xscan395_sβ:
 jmp snoch287_n42_α
xscan395_sγ:
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
 jmp smatch398_retry
 snoch287_n41_β:
 jmp xscan395_dfail
smatch398_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1208]
# IR_MATCH_DEFER
bb229_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx401_0
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
 jne smatch398_adv
 jmp xscan395_dok
.Lx401_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch398_adv
 mov r14d, eax
 jmp xscan395_dok
 smatch398_elemb:
 jmp smatch398_adv
smatch398_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1208], 1
 mov eax, dword ptr [r12 + 1208]
 cmp eax, r15d
 jg xscan395_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan395_dfail
 jmp smatch398_retry
xscan395_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S32]
 mov esi, dword ptr [r12 + 1208]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch287_n44_α
xscan395_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch287_n42_α
snoch287_n42_α:
# IR_LIT_S
bb231_α:
 mov qword ptr [r12 + 1224], 1
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [r12 + 1232], rax
 jmp xgvarg403_done
 xgvarg403_β:
 jmp snoch287_n46_α
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "bank"
xgvarg403_done:
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
 je snoch287_n46_α
 jmp snoch287_n45_α
snoch287_n42_β:
 jmp snoch287_n46_α
snoch287_n43_α:
# IR_VAR
bb233_α:
 mov rdi, qword ptr [rip + .Lx407_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 jmp snoch287_n47_α
 snoch287_n43_β:
 jmp snoch287_n26_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "i"
snoch287_n44_α:
# IR_LIT_S
bb234_α:
 mov qword ptr [r12 + 1288], 1
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [r12 + 1296], rax
 jmp xgvarg408_done
 xgvarg408_β:
 jmp snoch287_n49_α
.Lx409_0:
 .quad .Lx409_0_s
.Lx409_0_s:
 .string "ROOT"
xgvarg408_done:
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
 je snoch287_n49_α
 jmp snoch287_n48_α
snoch287_n44_β:
 jmp snoch287_n49_α
snoch287_n45_α:
bb236_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n46_α
 snoch287_n45_β:
 jmp snoch287_n46_α
snoch287_n46_α:
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
 jmp snoch287_n50_α
snoch287_n46_β:
 jmp pp_node_γ
snoch287_n47_α:
bb238_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 1160]
 mov rsi, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1272]
 mov rcx, qword ptr [r12 + 1280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], rdx
 jmp snoch287_n51_α
 snoch287_n47_β:
 jmp snoch287_n26_α
snoch287_n48_α:
bb239_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n49_α
 snoch287_n48_β:
 jmp snoch287_n49_α
snoch287_n49_α:
# IR_VAR
bb240_α:
 mov rdi, qword ptr [rip + .Lx416_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 jmp snoch287_n52_α
 snoch287_n49_β:
 jmp snoch287_n53_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "item"
snoch287_n50_α:
bb241_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch287_n50_β:
 jmp pp_node_γ
snoch287_n51_α:
bb242_α:
# IR_ASSIGN
 lea rdi, [rip + .S54]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n54_α
 snoch287_n51_β:
 jmp snoch287_n26_α
snoch287_n52_α:
# IR_SUBJECT
bb243_α:
 lea rdi, [rip + .S35]
 lea rsi, [r12 + 1384]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan420_sγ
 xscan420_sβ:
 jmp snoch287_n53_α
xscan420_sγ:
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
 jmp smatch423_retry
 snoch287_n52_β:
 jmp xscan420_dfail
smatch423_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1400]
# IR_MATCH_DEFER
bb246_α:
 lea rdi, [rip + .S36]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx426_0
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
 jne smatch423_adv
 jmp xscan420_dok
.Lx426_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch423_adv
 mov r14d, eax
 jmp xscan420_dok
 smatch423_elemb:
 jmp smatch423_adv
smatch423_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1400], 1
 mov eax, dword ptr [r12 + 1400]
 cmp eax, r15d
 jg xscan420_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan420_dfail
 jmp smatch423_retry
xscan420_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch287_n55_α
xscan420_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch287_n53_α
snoch287_n53_α:
bb248_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1416], 0
 lea rax, [rip + .S38]
 mov qword ptr [r12 + 1424], rax
 mov dword ptr [r12 + 1432], 1
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 1440], rax
 lea rdi, [rip + .S37]
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
 jmp snoch287_n56_α
 snoch287_n53_β:
 jmp snoch287_n56_α
snoch287_n54_α:
# IR_VAR
bb249_α:
 mov rdi, qword ptr [rip + .Lx430_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1448], rax
 mov qword ptr [r12 + 1456], rdx
 jmp snoch287_n57_α
 snoch287_n54_β:
 jmp snoch287_n23_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "i"
snoch287_n55_α:
bb250_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 1464]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je snoch287_n39_α
 jmp snoch287_n58_α
snoch287_n55_β:
 jmp snoch287_n39_α
snoch287_n56_α:
bb251_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 1480]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 cmp eax, 99
 je snoch287_n39_α
 jmp snoch287_n59_α
snoch287_n56_β:
 jmp snoch287_n39_α
snoch287_n57_α:
bb252_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S47]
 lea rsi, [rip + .S47]
 call rt_gvar_assign_var@PLT
 jmp snoch287_n23_α
 snoch287_n57_β:
 jmp snoch287_n23_α
snoch287_n58_α:
bb253_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n39_α
 snoch287_n58_β:
 jmp snoch287_n39_α
snoch287_n59_α:
bb254_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1488]
 call rt_gvar_assign_descr@PLT
 jmp snoch287_n39_α
 snoch287_n59_β:
 jmp snoch287_n39_α
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
snoch436_n0_α:
# IR_VAR
bb255_α:
 mov rdi, qword ptr [rip + .Lx439_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg437_done
 xgvarg437_β:
 jmp snoch436_n1_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "bank"
xgvarg437_done:
# IR_LIT_I
bb256_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg440_done
 xgvarg440_β:
 jmp snoch436_n1_α
.Lx441_0:
 .quad 0
xgvarg440_done:
# IR_LIT_S
bb257_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg442_done
 xgvarg442_β:
 jmp snoch436_n1_α
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string ""
xgvarg442_done:
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
 je snoch436_n1_α
 jmp snoch436_n1_α
snoch436_n0_β:
 jmp snoch436_n1_α
snoch436_n1_α:
# IR_VAR
bb259_α:
 mov rdi, qword ptr [rip + .Lx446_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch436_n2_α
 snoch436_n1_β:
 jmp snoch436_n3_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string ""
snoch436_n2_α:
bb260_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S55]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch436_n3_α
 snoch436_n2_β:
 jmp snoch436_n3_α
snoch436_n3_α:
snoch436_n3_β:
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
  mov esi, 200
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
snoch448_n0_α:
# IR_VAR
bb261_α:
 mov rdi, qword ptr [rip + .Lx450_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch448_n1_α
 snoch448_n0_β:
 jmp snoch448_n2_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "ALPHABET"
snoch448_n1_α:
# IR_SUBJECT
bb262_α:
 lea rdi, [rip + .S56]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan451_sγ
 xscan451_sβ:
 jmp snoch448_n2_α
xscan451_sγ:
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
 jmp smatch454_retry
 snoch448_n1_β:
 jmp xscan451_dfail
smatch454_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb265_α:
 cmp r14d, 10
 jne xcat457_ω
 jmp xcat457_γ
 xcat457_left_β:
 jmp xcat457_ω
xcat457_γ:
# IR_MATCH_CAPTURE_SAVE
bb266_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb267_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat457_right_ω
 add r14d, 1
 jmp xcap459_γ
 xcat457_right_β:
 jmp xcat457_right_ω
xcap459_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S33]
 mov esi, dword ptr [r12 + 48]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan451_dok
xcat457_right_ω:
 jmp xcat457_left_β
smatch454_elemb:
 jmp xcat457_right_β
xcat457_ω:
 jmp smatch454_adv
smatch454_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan451_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan451_dfail
 jmp smatch454_retry
xscan451_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch448_n2_α
xscan451_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch448_n2_α
snoch448_n2_α:
# IR_LIT_S
bb271_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg465_done
 xgvarg465_β:
 jmp snoch448_n3_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "list(head,tail)"
xgvarg465_done:
bb272_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn468: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn468]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch448_n3_α
 jmp snoch448_n3_α
snoch448_n2_β:
 jmp snoch448_n3_α
snoch448_n3_α:
# IR_LIT_scalar
bb273_α:
 jmp snoch448_n4_α
 snoch448_n3_β:
 jmp snoch448_n5_α
snoch448_n4_α:
bb274_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch448_n5_α
 snoch448_n4_β:
 jmp snoch448_n5_α
snoch448_n5_α:
bb275_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn472: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn472]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch448_n7_α
 jmp snoch448_n6_α
snoch448_n5_β:
 jmp snoch448_n7_α
snoch448_n6_α:
bb276_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch448_n7_α
 snoch448_n6_β:
 jmp snoch448_n7_α
snoch448_n7_α:
bb277_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn475: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn475]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch448_n9_α
 jmp snoch448_n8_α
snoch448_n7_β:
 jmp snoch448_n9_α
snoch448_n8_α:
bb278_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch448_n9_α
 snoch448_n8_β:
 jmp snoch448_n9_α
snoch448_n9_α:
bb279_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn478: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn478]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch448_n11_α
 jmp snoch448_n10_α
snoch448_n9_β:
 jmp snoch448_n11_α
snoch448_n10_α:
bb280_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch448_n11_α
 snoch448_n10_β:
 jmp snoch448_n11_α
snoch448_n11_α:
bb281_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch448_n12_α
 snoch448_n11_β:
 jmp snoch448_n12_α
snoch448_n12_α:
bb282_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch448_n13_α
 snoch448_n12_β:
 jmp snoch448_n13_α
snoch448_n13_α:
bb283_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch448_n14_α
 snoch448_n13_β:
 jmp snoch448_n14_α
snoch448_n14_α:
bb284_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch448_n15_α
 snoch448_n14_β:
 jmp snoch448_n15_α
snoch448_n15_α:
bb285_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch448_n16_α
 snoch448_n15_β:
 jmp snoch448_n16_α
snoch448_n16_α:
bb286_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch448_n17_α
 snoch448_n16_β:
 jmp snoch448_n17_α
snoch448_n17_α:
bb287_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch448_n18_α
 snoch448_n17_β:
 jmp snoch448_n18_α
snoch448_n18_α:
bb288_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch448_n19_α
 snoch448_n18_β:
 jmp snoch448_n19_α
snoch448_n19_α:
bb289_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch448_n20_α
 snoch448_n19_β:
 jmp snoch448_n20_α
snoch448_n20_α:
bb290_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch448_n21_α
 snoch448_n20_β:
 jmp snoch448_n21_α
snoch448_n21_α:
bb291_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S67]
 call rt_proc_define@PLT
 jmp snoch448_n22_α
 snoch448_n21_β:
 jmp snoch448_n22_α
snoch448_n22_α:
bb292_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S68]
 call rt_proc_define@PLT
 jmp snoch448_n23_α
 snoch448_n22_β:
 jmp snoch448_n23_α
snoch448_n23_α:
bb293_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch448_n24_α
 snoch448_n23_β:
 jmp snoch448_n24_α
snoch448_n24_α:
bb294_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch448_n25_α
 snoch448_n24_β:
 jmp snoch448_n25_α
snoch448_n25_α:
bb295_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch448_n26_α
 snoch448_n25_β:
 jmp snoch448_n26_α
snoch448_n26_α:
bb296_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch448_n27_α
 snoch448_n26_β:
 jmp snoch448_n27_α
snoch448_n27_α:
bb297_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch448_n28_α
 snoch448_n27_β:
 jmp snoch448_n28_α
snoch448_n28_α:
# IR_VAR
bb298_α:
 mov rdi, qword ptr [rip + .Lx498_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch448_n29_α
 snoch448_n28_β:
 jmp snoch448_n30_α
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "INPUT"
snoch448_n29_α:
bb299_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_var@PLT
 jmp snoch448_n31_α
 snoch448_n29_β:
 jmp snoch448_n30_α
snoch448_n30_α:
# IR_LIT_S
bb300_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg500_done
 xgvarg500_β:
 jmp snoch448_n33_α
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "bank"
xgvarg500_done:
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
 je snoch448_n33_α
 jmp snoch448_n32_α
snoch448_n30_β:
 jmp snoch448_n33_α
snoch448_n31_α:
bb302_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S32]
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
 jmp snoch448_n28_α
 snoch448_n31_β:
 jmp snoch448_n28_α
snoch448_n32_α:
bb303_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch448_n33_α
 snoch448_n32_β:
 jmp snoch448_n33_α
snoch448_n33_α:
# IR_LIT_S
bb304_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg505_done
 xgvarg505_β:
 jmp snoch448_n35_α
.Lx506_0:
 .quad .Lx506_0_s
.Lx506_0_s:
 .string "BANK"
xgvarg505_done:
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
 je snoch448_n35_α
 jmp snoch448_n34_α
snoch448_n33_β:
 jmp snoch448_n35_α
snoch448_n34_α:
bb306_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch448_n35_α
 snoch448_n34_β:
 jmp snoch448_n35_α
snoch448_n35_α:
# IR_LIT_scalar
bb307_α:
 jmp snoch448_n36_α
 snoch448_n35_β:
 jmp snoch448_n37_α
snoch448_n36_α:
# IR_SUBJECT
bb308_α:
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan510_sγ
 xscan510_sβ:
 jmp snoch448_n37_α
xscan510_sγ:
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
 jmp smatch513_retry
 snoch448_n36_β:
 jmp xscan510_dfail
smatch513_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb311_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx516_0
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
 jne smatch513_adv
 jmp xscan510_dok
.Lx516_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch513_adv
 mov r14d, eax
 jmp xscan510_dok
 smatch513_elemb:
 jmp smatch513_adv
smatch513_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan510_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan510_dfail
 jmp smatch513_retry
xscan510_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S32]
 mov esi, dword ptr [r12 + 336]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch448_n38_α
xscan510_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch448_n37_α
snoch448_n37_α:
# IR_LIT_S
bb313_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg518_done
 xgvarg518_β:
 jmp snoch448_n40_α
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "bank"
xgvarg518_done:
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
 je snoch448_n40_α
 jmp snoch448_n39_α
snoch448_n37_β:
 jmp snoch448_n40_α
snoch448_n38_α:
# IR_LIT_S
bb315_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [r12 + 408], rax
 jmp xgvarg521_done
 xgvarg521_β:
 jmp snoch448_n42_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "ROOT"
xgvarg521_done:
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
 je snoch448_n42_α
 jmp snoch448_n41_α
snoch448_n38_β:
 jmp snoch448_n42_α
snoch448_n39_α:
bb317_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch448_n40_α
 snoch448_n39_β:
 jmp snoch448_n40_α
snoch448_n40_α:
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
 jmp snoch448_n43_α
snoch448_n40_β:
 jmp flat_γ
snoch448_n41_α:
bb319_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch448_n42_α
 snoch448_n41_β:
 jmp snoch448_n42_α
snoch448_n42_α:
# IR_VAR gva
bb320_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch448_n44_α
 snoch448_n42_β:
 jmp snoch448_n45_α
snoch448_n43_α:
bb321_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp flat_γ
 snoch448_n43_β:
 jmp flat_γ
snoch448_n44_α:
# IR_SUBJECT
bb322_α:
 lea rdi, [rip + .S35]
 lea rsi, [r12 + 480]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan530_sγ
 xscan530_sβ:
 jmp snoch448_n45_α
xscan530_sγ:
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
 jmp smatch533_retry
 snoch448_n44_β:
 jmp xscan530_dfail
smatch533_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 496]
# IR_MATCH_DEFER
bb325_α:
 lea rdi, [rip + .S36]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx536_0
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
 jne smatch533_adv
 jmp xscan530_dok
.Lx536_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch533_adv
 mov r14d, eax
 jmp xscan530_dok
 smatch533_elemb:
 jmp smatch533_adv
smatch533_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 496], 1
 mov eax, dword ptr [r12 + 496]
 cmp eax, r15d
 jg xscan530_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan530_dfail
 jmp smatch533_retry
xscan530_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch448_n46_α
xscan530_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch448_n45_α
snoch448_n45_α:
bb327_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 512], 0
 lea rax, [rip + .S38]
 mov qword ptr [r12 + 520], rax
 mov dword ptr [r12 + 528], 1
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 536], rax
 lea rdi, [rip + .S37]
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
 jmp snoch448_n47_α
 snoch448_n45_β:
 jmp snoch448_n47_α
snoch448_n46_α:
bb328_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch448_n35_α
 jmp snoch448_n48_α
snoch448_n46_β:
 jmp snoch448_n35_α
snoch448_n47_α:
bb329_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je snoch448_n35_α
 jmp snoch448_n49_α
snoch448_n47_β:
 jmp snoch448_n35_α
snoch448_n48_α:
bb330_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch448_n35_α
 snoch448_n48_β:
 jmp snoch448_n35_α
snoch448_n49_α:
bb331_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch448_n35_α
 snoch448_n49_β:
 jmp snoch448_n35_α
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
.S1: .string "bb_idx_set: needs base/key/value operand slots ([\316\266+off] producers)"
.S2: .string "stk"
.S3: .string "stk_push_frame"
.S4: .string ""
.S5: .string "cur"
.S6: .string "stk_n"
.S7: .string "stk_push_item"
.S8: .string "child"
.S9: .string "par"
.S10: .string "n"
.S11: .string "stk_pop_into_parent"
.S12: .string "var"
.S13: .string "stk_pop_final"
.S14: .string "v"
.S15: .string "stk_tag"
.S16: .string "stk_c"
.S17: .string "init_list"
.S18: .string "Init_list"
.S19: .string "dummy"
.S20: .string "push_list"
.S21: .string "Push_list"
.S22: .string "push_item"
.S23: .string "Push_item"
.S24: .string "pop_list"
.S25: .string "pop_final(v)"
.S26: .string "Pop_final(vs)"
.S27: .string "node_repr(f)r,sep,i,n,tag"
.S28: .string "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.S29: .string "pp_bank()"
.S30: .string "line"
.S31: .string "INPUT"
.S32: .string "src"
.S33: .string "nl"
.S34: .string "spat"
.S35: .string "item"
.S36: .string "group"
.S37: .string "OUTPUT"
.S38: .string "Parse failed on: "
.S39: .string "pop_final"
.S40: .string "Pop_final"
.S41: .string "node_repr"
.S42: .string "'"
.S43: .string "f"
.S44: .string "tag"
.S45: .string "r"
.S46: .string "('"
.S47: .string "i"
.S48: .string ")"
.S49: .string "pad"
.S50: .string "indent"
.S51: .string "suffix"
.S52: .string "( "
.S53: .string "',"
.S54: .string "nxt"
.S55: .string "pp_bank"
.S56: .string "ALPHABET"
.S57: .string "stk_push_frame(v)"
.S58: .string "stk_push_item(v,cur)"
.S59: .string "stk_pop_into_parent(child,par,n)"
.S60: .string "stk_pop_final(var,child)"
.S61: .string "init_list(v)"
.S62: .string "Init_list(vs)"
.S63: .string "push_list(v)"
.S64: .string "Push_list(vs)"
.S65: .string "push_item(v)"
.S66: .string "Push_item(vs)"
.S67: .string "pop_list()"
.S68: .string "Pop_list()"
.text
