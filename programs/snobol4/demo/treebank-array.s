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
# IR_VAR
bb56_α:
 mov rdi, qword ptr [rip + .Lx111_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch97_n5_α
 snoch97_n4_β:
 jmp snoch97_n6_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string ""
snoch97_n5_α:
bb57_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch97_n6_α
 snoch97_n5_β:
 jmp snoch97_n6_α
snoch97_n6_α:
snoch97_n6_β:
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
snoch113_n0_α:
# IR_LIT_scalar
bb58_α:
 jmp snoch113_n1_α
 snoch113_n0_β:
 jmp snoch113_n2_α
snoch113_n1_α:
bb59_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S13]
 lea rsi, [rip + .S4]
 call rt_indirect_assign_str@PLT
 jmp snoch113_n2_α
 snoch113_n1_β:
 jmp snoch113_n2_α
snoch113_n2_α:
# IR_LIT_scalar
bb60_α:
 jmp snoch113_n3_α
 snoch113_n2_β:
 jmp snoch113_n4_α
snoch113_n3_α:
bb61_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_str@PLT
 jmp snoch113_n4_α
 snoch113_n3_β:
 jmp snoch113_n4_α
snoch113_n4_α:
# IR_LIT_scalar
bb62_α:
 jmp snoch113_n5_α
 snoch113_n4_β:
 jmp snoch113_n6_α
snoch113_n5_α:
bb63_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch113_n6_α
 snoch113_n5_β:
 jmp snoch113_n6_α
snoch113_n6_α:
bb64_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn121: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn121]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch113_n8_α
 jmp snoch113_n7_α
snoch113_n6_β:
 jmp snoch113_n8_α
snoch113_n7_α:
bb65_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch113_n8_α
 snoch113_n7_β:
 jmp snoch113_n8_α
snoch113_n8_α:
bb66_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn124: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn124]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch113_n10_α
 jmp snoch113_n9_α
snoch113_n8_β:
 jmp snoch113_n10_α
snoch113_n9_α:
bb67_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch113_n10_α
 snoch113_n9_β:
 jmp snoch113_n10_α
snoch113_n10_α:
bb68_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn127: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn127]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch113_n12_α
 jmp snoch113_n11_α
snoch113_n10_β:
 jmp snoch113_n12_α
snoch113_n11_α:
bb69_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch113_n12_α
 snoch113_n11_β:
 jmp snoch113_n12_α
snoch113_n12_α:
# IR_VAR
bb70_α:
 mov rdi, qword ptr [rip + .Lx130_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp snoch113_n13_α
 snoch113_n12_β:
 jmp snoch113_n14_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string ""
snoch113_n13_α:
bb71_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch113_n14_α
 snoch113_n13_β:
 jmp snoch113_n14_α
snoch113_n14_α:
snoch113_n14_β:
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
snoch132_n0_α:
xgvarg133_done:
bb72_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn135: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn135]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch132_n2_α
 jmp snoch132_n1_α
snoch132_n0_β:
 jmp snoch132_n2_α
snoch132_n1_α:
bb73_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch132_n2_α
 snoch132_n1_β:
 jmp snoch132_n2_α
snoch132_n2_α:
snoch132_n2_β:
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
snoch137_n0_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx140_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg138_done
 xgvarg138_β:
 jmp snoch137_n2_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "v"
xgvarg138_done:
bb75_α:
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
 je snoch137_n2_α
 jmp snoch137_n1_α
snoch137_n0_β:
 jmp snoch137_n2_α
snoch137_n1_α:
bb76_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch137_n2_α
 snoch137_n1_β:
 jmp snoch137_n2_α
snoch137_n2_α:
# IR_VAR
bb77_α:
 mov rdi, qword ptr [rip + .Lx144_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch137_n3_α
 snoch137_n2_β:
 jmp snoch137_n4_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string ""
snoch137_n3_α:
bb78_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S19]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch137_n4_α
 snoch137_n3_β:
 jmp snoch137_n4_α
snoch137_n4_α:
snoch137_n4_β:
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
snoch146_n0_α:
xgvarg147_done:
bb79_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn149: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn149]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch146_n2_α
 jmp snoch146_n1_α
snoch146_n0_β:
 jmp snoch146_n2_α
snoch146_n1_α:
bb80_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S20]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch146_n2_α
 snoch146_n1_β:
 jmp snoch146_n2_α
snoch146_n2_α:
snoch146_n2_β:
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
snoch151_n0_α:
# IR_VAR
bb81_α:
 mov rdi, qword ptr [rip + .Lx154_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg152_done
 xgvarg152_β:
 jmp snoch151_n2_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "v"
xgvarg152_done:
bb82_α:
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
 je snoch151_n2_α
 jmp snoch151_n1_α
snoch151_n0_β:
 jmp snoch151_n2_α
snoch151_n1_α:
bb83_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch151_n2_α
 snoch151_n1_β:
 jmp snoch151_n2_α
snoch151_n2_α:
# IR_VAR
bb84_α:
 mov rdi, qword ptr [rip + .Lx158_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch151_n3_α
 snoch151_n2_β:
 jmp snoch151_n4_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string ""
snoch151_n3_α:
bb85_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S21]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch151_n4_α
 snoch151_n3_β:
 jmp snoch151_n4_α
snoch151_n4_α:
snoch151_n4_β:
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
snoch160_n0_α:
xgvarg161_done:
bb86_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn163: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn163]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch160_n2_α
 jmp snoch160_n1_α
snoch160_n0_β:
 jmp snoch160_n2_α
snoch160_n1_α:
bb87_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S22]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch160_n2_α
 snoch160_n1_β:
 jmp snoch160_n2_α
snoch160_n2_α:
snoch160_n2_β:
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
snoch165_n0_α:
bb88_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch165_n2_α
 jmp snoch165_n1_α
snoch165_n0_β:
 jmp snoch165_n2_α
snoch165_n1_α:
bb89_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch165_n2_α
 snoch165_n1_β:
 jmp snoch165_n2_α
snoch165_n2_α:
# IR_VAR
bb90_α:
 mov rdi, qword ptr [rip + .Lx169_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch165_n3_α
 snoch165_n2_β:
 jmp snoch165_n4_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string ""
snoch165_n3_α:
bb91_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S23]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch165_n4_α
 snoch165_n3_β:
 jmp snoch165_n4_α
snoch165_n4_α:
snoch165_n4_β:
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
snoch171_n0_α:
bb92_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch171_n1_α
 snoch171_n0_β:
 jmp snoch171_n1_α
snoch171_n1_α:
bb93_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch171_n2_α
 snoch171_n1_β:
 jmp snoch171_n2_α
snoch171_n2_α:
bb94_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch171_n3_α
 snoch171_n2_β:
 jmp snoch171_n3_α
snoch171_n3_α:
bb95_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch171_n4_α
 snoch171_n3_β:
 jmp snoch171_n4_α
snoch171_n4_α:
bb96_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch171_n5_α
 snoch171_n4_β:
 jmp snoch171_n5_α
snoch171_n5_α:
# IR_VAR
bb97_α:
 mov rdi, qword ptr [rip + .Lx178_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch171_n6_α
 snoch171_n5_β:
 jmp snoch171_n7_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "INPUT"
snoch171_n6_α:
bb98_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S29]
 lea rsi, [rip + .S30]
 call rt_gvar_assign_var@PLT
 jmp snoch171_n8_α
 snoch171_n6_β:
 jmp snoch171_n7_α
snoch171_n7_α:
# IR_LIT_S
bb99_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg180_done
 xgvarg180_β:
 jmp snoch171_n10_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "bank"
xgvarg180_done:
bb100_α:
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
 je snoch171_n10_α
 jmp snoch171_n9_α
snoch171_n7_β:
 jmp snoch171_n10_α
snoch171_n8_α:
bb101_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 1
 lea rax, [rip + .S29]
 mov qword ptr [r12 + 88], rax
 mov dword ptr [r12 + 96], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 104], rax
 lea rdi, [rip + .S31]
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
 jmp snoch171_n5_α
 snoch171_n8_β:
 jmp snoch171_n5_α
snoch171_n9_α:
bb102_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch171_n10_α
 snoch171_n9_β:
 jmp snoch171_n10_α
snoch171_n10_α:
# IR_LIT_S
bb103_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg185_done
 xgvarg185_β:
 jmp snoch171_n12_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "BANK"
xgvarg185_done:
bb104_α:
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
 je snoch171_n12_α
 jmp snoch171_n11_α
snoch171_n10_β:
 jmp snoch171_n12_α
snoch171_n11_α:
bb105_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch171_n12_α
 snoch171_n11_β:
 jmp snoch171_n12_α
snoch171_n12_α:
# IR_LIT_scalar
bb106_α:
 jmp snoch171_n13_α
 snoch171_n12_β:
 jmp snoch171_n14_α
snoch171_n13_α:
# IR_SUBJECT
bb107_α:
 lea rdi, [rip + .S31]
 lea rsi, [r12 + 160]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan190_sγ
 xscan190_sβ:
 jmp snoch171_n14_α
xscan190_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb108_α:
 mov r13, qword ptr [r12 + 160]
 mov r15d, dword ptr [r12 + 168]
 mov dword ptr [r12 + 176], 0
 lea r10, [r12 + 184]
 jmp smatch193_retry
 snoch171_n13_β:
 jmp xscan190_dfail
smatch193_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 176]
# IR_MATCH_DEFER
bb110_α:
 lea rdi, [rip + .S33]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx196_0
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
 jne smatch193_adv
 jmp xscan190_dok
.Lx196_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch193_adv
 mov r14d, eax
 jmp xscan190_dok
 smatch193_elemb:
 jmp smatch193_adv
smatch193_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
 cmp eax, r15d
 jg xscan190_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan190_dfail
 jmp smatch193_retry
xscan190_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S31]
 mov esi, dword ptr [r12 + 176]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch171_n15_α
xscan190_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch171_n14_α
snoch171_n14_α:
# IR_LIT_S
bb112_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg198_done
 xgvarg198_β:
 jmp snoch171_n17_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "bank"
xgvarg198_done:
bb113_α:
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
 je snoch171_n17_α
 jmp snoch171_n16_α
snoch171_n14_β:
 jmp snoch171_n17_α
snoch171_n15_α:
# IR_LIT_S
bb114_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg201_done
 xgvarg201_β:
 jmp snoch171_n19_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "ROOT"
xgvarg201_done:
bb115_α:
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
 je snoch171_n19_α
 jmp snoch171_n18_α
snoch171_n15_β:
 jmp snoch171_n19_α
snoch171_n16_α:
bb116_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch171_n17_α
 snoch171_n16_β:
 jmp snoch171_n17_α
snoch171_n17_α:
bb117_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch171_n20_α
snoch171_n17_β:
 jmp Pop_list_γ
snoch171_n18_α:
bb118_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch171_n19_α
 snoch171_n18_β:
 jmp snoch171_n19_α
snoch171_n19_α:
# IR_VAR
bb119_α:
 mov rdi, qword ptr [rip + .Lx208_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch171_n21_α
 snoch171_n19_β:
 jmp snoch171_n22_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "item"
snoch171_n20_α:
bb120_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch171_n20_β:
 jmp Pop_list_γ
snoch171_n21_α:
# IR_SUBJECT
bb121_α:
 lea rdi, [rip + .S34]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan210_sγ
 xscan210_sβ:
 jmp snoch171_n22_α
xscan210_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb122_α:
 mov r13, qword ptr [r12 + 320]
 mov r15d, dword ptr [r12 + 328]
 mov dword ptr [r12 + 336], 0
 lea r10, [r12 + 344]
 jmp smatch213_retry
 snoch171_n21_β:
 jmp xscan210_dfail
smatch213_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb124_α:
 lea rdi, [rip + .S35]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx216_0
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
 jne smatch213_adv
 jmp xscan210_dok
.Lx216_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch213_adv
 mov r14d, eax
 jmp xscan210_dok
 smatch213_elemb:
 jmp smatch213_adv
smatch213_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan210_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan210_dfail
 jmp smatch213_retry
xscan210_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch171_n23_α
xscan210_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch171_n22_α
snoch171_n22_α:
bb126_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 352], 0
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 1
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S36]
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
 jmp snoch171_n24_α
 snoch171_n22_β:
 jmp snoch171_n24_α
snoch171_n23_α:
bb127_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch171_n12_α
 jmp snoch171_n25_α
snoch171_n23_β:
 jmp snoch171_n12_α
snoch171_n24_α:
bb128_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 400]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch171_n12_α
 jmp snoch171_n26_α
snoch171_n24_β:
 jmp snoch171_n12_α
snoch171_n25_α:
bb129_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch171_n12_α
 snoch171_n25_β:
 jmp snoch171_n12_α
snoch171_n26_α:
bb130_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch171_n12_α
 snoch171_n26_β:
 jmp snoch171_n12_α
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
snoch223_n0_α:
# IR_VAR
bb131_α:
 mov rdi, qword ptr [rip + .Lx226_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg224_done
 xgvarg224_β:
 jmp snoch223_n2_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "v"
xgvarg224_done:
bb132_α:
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
 je snoch223_n2_α
 jmp snoch223_n1_α
snoch223_n0_β:
 jmp snoch223_n2_α
snoch223_n1_α:
bb133_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch223_n2_α
 snoch223_n1_β:
 jmp snoch223_n2_α
snoch223_n2_α:
# IR_VAR
bb134_α:
 mov rdi, qword ptr [rip + .Lx230_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch223_n3_α
 snoch223_n2_β:
 jmp snoch223_n4_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string ""
snoch223_n3_α:
bb135_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S38]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch223_n4_α
 snoch223_n3_β:
 jmp snoch223_n4_α
snoch223_n4_α:
snoch223_n4_β:
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
snoch232_n0_α:
xgvarg233_done:
bb136_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn235: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn235]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch232_n2_α
 jmp snoch232_n1_α
snoch232_n0_β:
 jmp snoch232_n2_α
snoch232_n1_α:
bb137_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S39]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch232_n2_α
 snoch232_n1_β:
 jmp snoch232_n2_α
snoch232_n2_α:
snoch232_n2_β:
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
snoch237_n0_α:
# IR_VAR
bb138_α:
 mov rdi, qword ptr [rip + .Lx242_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg240_done
 xgvarg240_β:
 jmp snoch237_n2_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "f"
xgvarg240_done:
bb139_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn244: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn244]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch237_n2_α
 jmp xgvarg239_done
xgvarg239_β:
 jmp snoch237_n2_α
xgvarg239_done:
# IR_KEYWORD_read
bb140_α:
 mov rdi, qword ptr [rip + .Lx246_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg245_done
 xgvarg245_β:
 jmp snoch237_n2_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "LCASE"
xgvarg245_done:
# IR_KEYWORD_read
bb141_α:
 mov rdi, qword ptr [rip + .Lx248_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg247_done
 xgvarg247_β:
 jmp snoch237_n2_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "UCASE"
xgvarg247_done:
bb142_α:
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
  .Lbynamefn250: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn250]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch237_n2_α
 jmp xgvarg238_done
xgvarg238_β:
 jmp snoch237_n2_α
xgvarg238_done:
# IR_LIT_S
bb143_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg251_done
 xgvarg251_β:
 jmp snoch237_n2_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "STRING"
xgvarg251_done:
bb144_α:
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
  .Lbynamefn254: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn254]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch237_n2_α
 jmp snoch237_n1_α
snoch237_n0_β:
 jmp snoch237_n2_α
snoch237_n1_α:
bb145_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 0
 lea rax, [rip + .S41]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S42]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 0
 lea rax, [rip + .S41]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S40]
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
 jmp snoch237_n3_α
 snoch237_n1_β:
 jmp snoch237_n3_α
snoch237_n2_α:
bb146_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S42]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx257_0
 mov r8, qword ptr [r12 + 272]
 cmp r8d, 6
 jne .Lx257_0
 mov rcx, qword ptr [r12 + 280]
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
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch237_n4_α
.Lx257_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call subscript_get@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch237_n4_α
 snoch237_n2_β:
 jmp snoch237_n5_α
snoch237_n3_α:
snoch237_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch237_n4_α:
bb147_α:
# IR_ASSIGN
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch237_n5_α
 snoch237_n4_β:
 jmp snoch237_n5_α
snoch237_n5_α:
bb148_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S42]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx260_0
 mov r8, qword ptr [r12 + 304]
 cmp r8d, 6
 jne .Lx260_0
 mov rcx, qword ptr [r12 + 312]
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
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch237_n6_α
.Lx260_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call subscript_get@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch237_n6_α
 snoch237_n5_β:
 jmp snoch237_n7_α
snoch237_n6_α:
bb149_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch237_n7_α
 snoch237_n6_β:
 jmp snoch237_n7_α
snoch237_n7_α:
bb150_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 336], 0
 lea rax, [rip + .S45]
 mov qword ptr [r12 + 344], rax
 mov dword ptr [r12 + 352], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S41]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S44]
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
 jmp snoch237_n8_α
 snoch237_n7_β:
 jmp snoch237_n8_α
snoch237_n8_α:
# IR_LIT_scalar
bb151_α:
 jmp snoch237_n9_α
 snoch237_n8_β:
 jmp snoch237_n10_α
snoch237_n9_α:
bb152_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S46]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch237_n10_α
 snoch237_n9_β:
 jmp snoch237_n10_α
snoch237_n10_α:
# IR_VAR
bb153_α:
 mov rdi, qword ptr [rip + .Lx267_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xgvarg265_done
 xgvarg265_β:
 jmp snoch237_n12_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "i"
xgvarg265_done:
# IR_VAR
bb154_α:
 mov rdi, qword ptr [rip + .Lx270_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg268_done
 xgvarg268_β:
 jmp snoch237_n12_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "n"
xgvarg268_done:
bb155_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S46]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 432], rax
   lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 416], 0
 mov qword ptr [r12 + 424], 0
 mov rax, qword ptr [r12 + 432]
 cmp rax, rcx
 jge snoch237_n12_α
 jmp snoch237_n11_α
 snoch237_n10_β:
 jmp snoch237_n12_α
snoch237_n11_α:
# IR_VAR
bb156_α:
 mov rdi, qword ptr [rip + .Lx274_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch237_n13_α
 snoch237_n11_β:
 jmp snoch237_n12_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "i"
snoch237_n12_α:
bb157_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 464], 1
 lea rax, [rip + .S44]
 mov qword ptr [r12 + 472], rax
 mov dword ptr [r12 + 480], 0
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 488], rax
 lea rdi, [rip + .S40]
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
 jmp snoch237_n3_α
 snoch237_n12_β:
 jmp snoch237_n3_α
snoch237_n13_α:
# IR_LIT_scalar
bb158_α:
 jmp snoch237_n14_α
 snoch237_n13_β:
 jmp snoch237_n12_α
snoch237_n14_α:
bb159_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S46]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp snoch237_n15_α
 snoch237_n14_β:
 jmp snoch237_n12_α
snoch237_n15_α:
bb160_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 496]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch237_n16_α
 snoch237_n15_β:
 jmp snoch237_n12_α
snoch237_n16_α:
bb161_α:
# IR_ASSIGN
 lea rdi, [rip + .S46]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch237_n17_α
 snoch237_n16_β:
 jmp snoch237_n12_α
snoch237_n17_α:
# IR_VAR
bb162_α:
 mov rdi, qword ptr [rip + .Lx283_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch237_n18_α
 snoch237_n17_β:
 jmp snoch237_n10_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "i"
snoch237_n18_α:
bb163_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S46]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch237_n10_α
 snoch237_n18_β:
 jmp snoch237_n10_α
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
snoch285_n0_α:
# IR_VAR
bb164_α:
 mov rdi, qword ptr [rip + .Lx290_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg288_done
 xgvarg288_β:
 jmp snoch285_n2_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "f"
xgvarg288_done:
bb165_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn292: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn292]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch285_n2_α
 jmp xgvarg287_done
xgvarg287_β:
 jmp snoch285_n2_α
xgvarg287_done:
# IR_KEYWORD_read
bb166_α:
 mov rdi, qword ptr [rip + .Lx294_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg293_done
 xgvarg293_β:
 jmp snoch285_n2_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "LCASE"
xgvarg293_done:
# IR_KEYWORD_read
bb167_α:
 mov rdi, qword ptr [rip + .Lx296_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg295_done
 xgvarg295_β:
 jmp snoch285_n2_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "UCASE"
xgvarg295_done:
bb168_α:
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
  .Lbynamefn298: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn298]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch285_n2_α
 jmp xgvarg286_done
xgvarg286_β:
 jmp snoch285_n2_α
xgvarg286_done:
# IR_LIT_S
bb169_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg299_done
 xgvarg299_β:
 jmp snoch285_n2_α
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "STRING"
xgvarg299_done:
bb170_α:
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
  .Lbynamefn302: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn302]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch285_n2_α
 jmp snoch285_n1_α
snoch285_n0_β:
 jmp snoch285_n2_α
snoch285_n1_α:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg303_done
 xgvarg303_β:
 jmp snoch285_n4_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string " "
xgvarg303_done:
# IR_VAR
bb172_α:
 mov rdi, qword ptr [rip + .Lx307_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg305_done
 xgvarg305_β:
 jmp snoch285_n4_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "indent"
xgvarg305_done:
bb173_α:
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
  .Lbynamefn309: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn309]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch285_n4_α
 jmp snoch285_n3_α
snoch285_n1_β:
 jmp snoch285_n4_α
snoch285_n2_α:
# IR_VAR
bb174_α:
 mov rdi, qword ptr [rip + .Lx312_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xgvarg310_done
 xgvarg310_β:
 jmp snoch285_n6_α
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "f"
xgvarg310_done:
bb175_α:
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
 je snoch285_n6_α
 jmp snoch285_n5_α
snoch285_n2_β:
 jmp snoch285_n6_α
snoch285_n3_α:
# IR_LIT_scalar
bb176_α:
 jmp snoch285_n7_α
 snoch285_n3_β:
 jmp snoch285_n4_α
snoch285_n4_α:
snoch285_n4_β:
jmp pp_node_γ
jmp pp_node_γ
snoch285_n5_α:
bb177_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S44]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n6_α
 snoch285_n5_β:
 jmp snoch285_n6_α
snoch285_n6_α:
# IR_LIT_S
bb178_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg316_done
 xgvarg316_β:
 jmp snoch285_n9_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string " "
xgvarg316_done:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx320_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg318_done
 xgvarg318_β:
 jmp snoch285_n9_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "indent"
xgvarg318_done:
bb180_α:
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
  .Lbynamefn322: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn322]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch285_n9_α
 jmp snoch285_n8_α
snoch285_n6_β:
 jmp snoch285_n9_α
snoch285_n7_α:
# IR_LIT_S
bb181_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 440], rax
 jmp xgvcat323_1d
 xgvcat323_1b:
 jmp snoch285_n4_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "'"
xgvcat323_1d:
bb182_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch285_n10_α
 snoch285_n7_β:
 jmp snoch285_n4_α
snoch285_n8_α:
bb183_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S48]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n9_α
 snoch285_n8_β:
 jmp snoch285_n9_α
snoch285_n9_α:
# IR_LIT_I
bb184_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvarg327_done
 xgvarg327_β:
 jmp snoch285_n12_α
.Lx328_0:
 .quad 80
xgvarg327_done:
xgvarg329_done:
bb185_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+512]
   lea rdi, [rip + .S49]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 528], rax
# marshal arg0 = gvar NV_GET -> [r12+560]
   lea rdi, [rip + .S44]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
  .section .rodata
  .Lcallfn331: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn331]
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
  .Lbynamefn332: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn332]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch285_n12_α
 jmp snoch285_n11_α
snoch285_n9_β:
 jmp snoch285_n12_α
snoch285_n10_α:
# IR_VAR
bb186_α:
 mov rdi, qword ptr [rip + .Lx334_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch285_n13_α
 snoch285_n10_β:
 jmp snoch285_n4_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "f"
snoch285_n11_α:
bb187_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 592], 1
 lea rax, [rip + .S48]
 mov qword ptr [r12 + 600], rax
 mov dword ptr [r12 + 608], 1
 lea rax, [rip + .S44]
 mov qword ptr [r12 + 616], rax
 mov dword ptr [r12 + 624], 1
 lea rax, [rip + .S50]
 mov qword ptr [r12 + 632], rax
 lea rdi, [rip + .S36]
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
 jmp snoch285_n4_α
 snoch285_n11_β:
 jmp snoch285_n4_α
snoch285_n12_α:
bb188_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S42]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx337_0
 mov r8, qword ptr [r12 + 640]
 cmp r8d, 6
 jne .Lx337_0
 mov rcx, qword ptr [r12 + 648]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx337_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx337_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch285_n14_α
.Lx337_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call subscript_get@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch285_n14_α
 snoch285_n12_β:
 jmp snoch285_n15_α
snoch285_n13_α:
bb189_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch285_n16_α
 snoch285_n13_β:
 jmp snoch285_n4_α
snoch285_n14_α:
bb190_α:
# IR_ASSIGN
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n15_α
 snoch285_n14_β:
 jmp snoch285_n15_α
snoch285_n15_α:
bb191_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S42]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx341_0
 mov r8, qword ptr [r12 + 688]
 cmp r8d, 6
 jne .Lx341_0
 mov rcx, qword ptr [r12 + 696]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx341_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx341_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch285_n17_α
.Lx341_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call subscript_get@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch285_n17_α
 snoch285_n15_β:
 jmp snoch285_n18_α
snoch285_n16_α:
# IR_LIT_scalar
bb192_α:
 jmp snoch285_n19_α
 snoch285_n16_β:
 jmp snoch285_n4_α
snoch285_n17_α:
bb193_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n18_α
 snoch285_n17_β:
 jmp snoch285_n18_α
snoch285_n18_α:
bb194_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 720], 1
 lea rax, [rip + .S48]
 mov qword ptr [r12 + 728], rax
 mov dword ptr [r12 + 736], 0
 lea rax, [rip + .S51]
 mov qword ptr [r12 + 744], rax
 mov dword ptr [r12 + 752], 0
 lea rax, [rip + .S41]
 mov qword ptr [r12 + 760], rax
 mov dword ptr [r12 + 768], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 776], rax
 mov dword ptr [r12 + 784], 0
 lea rax, [rip + .S52]
 mov qword ptr [r12 + 792], rax
 lea rdi, [rip + .S36]
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
 jmp snoch285_n20_α
 snoch285_n18_β:
 jmp snoch285_n20_α
snoch285_n19_α:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 808], rax
 jmp xgvcat345_1d
 xgvcat345_1b:
 jmp snoch285_n4_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "'"
xgvcat345_1d:
bb196_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch285_n21_α
 snoch285_n19_β:
 jmp snoch285_n4_α
snoch285_n20_α:
# IR_LIT_scalar
bb197_α:
 jmp snoch285_n22_α
 snoch285_n20_β:
 jmp snoch285_n23_α
snoch285_n21_α:
# IR_VAR
bb198_α:
 mov rdi, qword ptr [rip + .Lx350_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch285_n24_α
 snoch285_n21_β:
 jmp snoch285_n4_α
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "suffix"
snoch285_n22_α:
bb199_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S46]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch285_n23_α
 snoch285_n22_β:
 jmp snoch285_n23_α
snoch285_n23_α:
# IR_VAR
bb200_α:
 mov rdi, qword ptr [rip + .Lx354_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg352_done
 xgvarg352_β:
 jmp snoch285_n26_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "i"
xgvarg352_done:
# IR_VAR
bb201_α:
 mov rdi, qword ptr [rip + .Lx357_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xgvarg355_done
 xgvarg355_β:
 jmp snoch285_n26_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "n"
xgvarg355_done:
bb202_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S46]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 896], rax
   lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 880], 0
 mov qword ptr [r12 + 888], 0
 mov rax, qword ptr [r12 + 896]
 cmp rax, rcx
 jge snoch285_n26_α
 jmp snoch285_n25_α
 snoch285_n23_β:
 jmp snoch285_n26_α
snoch285_n24_α:
bb203_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch285_n27_α
 snoch285_n24_β:
 jmp snoch285_n4_α
snoch285_n25_α:
# IR_VAR
bb204_α:
 mov rdi, qword ptr [rip + .Lx362_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch285_n28_α
 snoch285_n25_β:
 jmp snoch285_n26_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "i"
snoch285_n26_α:
bb205_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch285_n29_α
 snoch285_n26_β:
 jmp snoch285_n29_α
snoch285_n27_α:
bb206_α:
# IR_ASSIGN
 lea rdi, [rip + .S36]
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n4_α
 snoch285_n27_β:
 jmp snoch285_n4_α
snoch285_n28_α:
# IR_LIT_scalar
bb207_α:
 jmp snoch285_n30_α
 snoch285_n28_β:
 jmp snoch285_n26_α
snoch285_n29_α:
# IR_VAR
bb208_α:
 mov rdi, qword ptr [rip + .Lx368_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch285_n31_α
 snoch285_n29_β:
 jmp snoch285_n32_α
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "INPUT"
snoch285_n30_α:
bb209_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S46]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 960], rax
 jmp snoch285_n33_α
 snoch285_n30_β:
 jmp snoch285_n26_α
snoch285_n31_α:
bb210_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S29]
 lea rsi, [rip + .S30]
 call rt_gvar_assign_var@PLT
 jmp snoch285_n34_α
 snoch285_n31_β:
 jmp snoch285_n32_α
snoch285_n32_α:
# IR_LIT_S
bb211_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [r12 + 976], rax
 jmp xgvarg372_done
 xgvarg372_β:
 jmp snoch285_n36_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "bank"
xgvarg372_done:
bb212_α:
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
 je snoch285_n36_α
 jmp snoch285_n35_α
snoch285_n32_β:
 jmp snoch285_n36_α
snoch285_n33_α:
bb213_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 960]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp snoch285_n37_α
 snoch285_n33_β:
 jmp snoch285_n26_α
snoch285_n34_α:
bb214_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 1032], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1040], rax
 mov dword ptr [r12 + 1048], 1
 lea rax, [rip + .S29]
 mov qword ptr [r12 + 1056], rax
 mov dword ptr [r12 + 1064], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1072], rax
 lea rdi, [rip + .S31]
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
 jmp snoch285_n29_α
 snoch285_n34_β:
 jmp snoch285_n29_α
snoch285_n35_α:
bb215_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 992]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n36_α
 snoch285_n35_β:
 jmp snoch285_n36_α
snoch285_n36_α:
# IR_LIT_S
bb216_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [r12 + 1088], rax
 jmp xgvarg378_done
 xgvarg378_β:
 jmp snoch285_n39_α
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "BANK"
xgvarg378_done:
bb217_α:
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
 je snoch285_n39_α
 jmp snoch285_n38_α
snoch285_n36_β:
 jmp snoch285_n39_α
snoch285_n37_α:
bb218_α:
# IR_ASSIGN
 lea rdi, [rip + .S46]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n40_α
 snoch285_n37_β:
 jmp snoch285_n26_α
snoch285_n38_α:
bb219_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n39_α
 snoch285_n38_β:
 jmp snoch285_n39_α
snoch285_n39_α:
# IR_LIT_scalar
bb220_α:
 jmp snoch285_n41_α
 snoch285_n39_β:
 jmp snoch285_n42_α
snoch285_n40_α:
# IR_VAR
bb221_α:
 mov rdi, qword ptr [rip + .Lx387_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
 jmp xgvarg385_done
 xgvarg385_β:
 jmp snoch285_n26_α
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "i"
xgvarg385_done:
# IR_VAR
bb222_α:
 mov rdi, qword ptr [rip + .Lx390_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xgvarg388_done
 xgvarg388_β:
 jmp snoch285_n26_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "n"
xgvarg388_done:
bb223_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S46]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 1176], rax
   lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 1160], 0
 mov qword ptr [r12 + 1168], 0
 mov rax, qword ptr [r12 + 1176]
 cmp rax, rcx
 jge snoch285_n26_α
 jmp snoch285_n43_α
 snoch285_n40_β:
 jmp snoch285_n26_α
snoch285_n41_α:
# IR_SUBJECT
bb224_α:
 lea rdi, [rip + .S31]
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
 jmp snoch285_n42_α
xscan393_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb225_α:
 mov r13, qword ptr [r12 + 1192]
 mov r15d, dword ptr [r12 + 1200]
 mov dword ptr [r12 + 1208], 0
 lea r10, [r12 + 1216]
 jmp smatch396_retry
 snoch285_n41_β:
 jmp xscan393_dfail
smatch396_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1208]
# IR_MATCH_DEFER
bb227_α:
 lea rdi, [rip + .S33]
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
 lea rdi, [rip + .S31]
 mov esi, dword ptr [r12 + 1208]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch285_n44_α
xscan393_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch285_n42_α
snoch285_n42_α:
# IR_LIT_S
bb229_α:
 mov qword ptr [r12 + 1224], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [r12 + 1232], rax
 jmp xgvarg401_done
 xgvarg401_β:
 jmp snoch285_n46_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "bank"
xgvarg401_done:
bb230_α:
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
 je snoch285_n46_α
 jmp snoch285_n45_α
snoch285_n42_β:
 jmp snoch285_n46_α
snoch285_n43_α:
# IR_VAR
bb231_α:
 mov rdi, qword ptr [rip + .Lx405_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 jmp snoch285_n47_α
 snoch285_n43_β:
 jmp snoch285_n26_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "i"
snoch285_n44_α:
# IR_LIT_S
bb232_α:
 mov qword ptr [r12 + 1288], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [r12 + 1296], rax
 jmp xgvarg406_done
 xgvarg406_β:
 jmp snoch285_n49_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "ROOT"
xgvarg406_done:
bb233_α:
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
 je snoch285_n49_α
 jmp snoch285_n48_α
snoch285_n44_β:
 jmp snoch285_n49_α
snoch285_n45_α:
bb234_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1248]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n46_α
 snoch285_n45_β:
 jmp snoch285_n46_α
snoch285_n46_α:
bb235_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 1336]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch285_n50_α
snoch285_n46_β:
 jmp pp_node_γ
snoch285_n47_α:
bb236_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 1160]
 mov rsi, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1272]
 mov rcx, qword ptr [r12 + 1280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], rdx
 jmp snoch285_n51_α
 snoch285_n47_β:
 jmp snoch285_n26_α
snoch285_n48_α:
bb237_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n49_α
 snoch285_n48_β:
 jmp snoch285_n49_α
snoch285_n49_α:
# IR_VAR
bb238_α:
 mov rdi, qword ptr [rip + .Lx414_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 jmp snoch285_n52_α
 snoch285_n49_β:
 jmp snoch285_n53_α
.Lx414_0:
 .quad .Lx414_0_s
.Lx414_0_s:
 .string "item"
snoch285_n50_α:
bb239_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch285_n50_β:
 jmp pp_node_γ
snoch285_n51_α:
bb240_α:
# IR_ASSIGN
 lea rdi, [rip + .S53]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1360]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n54_α
 snoch285_n51_β:
 jmp snoch285_n26_α
snoch285_n52_α:
# IR_SUBJECT
bb241_α:
 lea rdi, [rip + .S34]
 lea rsi, [r12 + 1384]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan418_sγ
 xscan418_sβ:
 jmp snoch285_n53_α
xscan418_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb242_α:
 mov r13, qword ptr [r12 + 1384]
 mov r15d, dword ptr [r12 + 1392]
 mov dword ptr [r12 + 1400], 0
 lea r10, [r12 + 1408]
 jmp smatch421_retry
 snoch285_n52_β:
 jmp xscan418_dfail
smatch421_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1400]
# IR_MATCH_DEFER
bb244_α:
 lea rdi, [rip + .S35]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx424_0
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
 jne smatch421_adv
 jmp xscan418_dok
.Lx424_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch421_adv
 mov r14d, eax
 jmp xscan418_dok
 smatch421_elemb:
 jmp smatch421_adv
smatch421_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1400], 1
 mov eax, dword ptr [r12 + 1400]
 cmp eax, r15d
 jg xscan418_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan418_dfail
 jmp smatch421_retry
xscan418_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch285_n55_α
xscan418_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch285_n53_α
snoch285_n53_α:
bb246_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1416], 0
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 1424], rax
 mov dword ptr [r12 + 1432], 1
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 1440], rax
 lea rdi, [rip + .S36]
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
 jmp snoch285_n56_α
 snoch285_n53_β:
 jmp snoch285_n56_α
snoch285_n54_α:
# IR_VAR
bb247_α:
 mov rdi, qword ptr [rip + .Lx428_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1448], rax
 mov qword ptr [r12 + 1456], rdx
 jmp snoch285_n57_α
 snoch285_n54_β:
 jmp snoch285_n23_α
.Lx428_0:
 .quad .Lx428_0_s
.Lx428_0_s:
 .string "i"
snoch285_n55_α:
bb248_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 1464]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je snoch285_n39_α
 jmp snoch285_n58_α
snoch285_n55_β:
 jmp snoch285_n39_α
snoch285_n56_α:
bb249_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 1480]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1480], rax
 mov qword ptr [r12 + 1488], rdx
 cmp eax, 99
 je snoch285_n39_α
 jmp snoch285_n59_α
snoch285_n56_β:
 jmp snoch285_n39_α
snoch285_n57_α:
bb250_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S46]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch285_n23_α
 snoch285_n57_β:
 jmp snoch285_n23_α
snoch285_n58_α:
bb251_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n39_α
 snoch285_n58_β:
 jmp snoch285_n39_α
snoch285_n59_α:
bb252_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1488]
 call rt_gvar_assign_descr@PLT
 jmp snoch285_n39_α
 snoch285_n59_β:
 jmp snoch285_n39_α
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
snoch434_n0_α:
# IR_VAR
bb253_α:
 mov rdi, qword ptr [rip + .Lx437_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg435_done
 xgvarg435_β:
 jmp snoch434_n1_α
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "bank"
xgvarg435_done:
# IR_LIT_I
bb254_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg438_done
 xgvarg438_β:
 jmp snoch434_n1_α
.Lx439_0:
 .quad 0
xgvarg438_done:
# IR_LIT_S
bb255_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg440_done
 xgvarg440_β:
 jmp snoch434_n1_α
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string ""
xgvarg440_done:
bb256_α:
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
 je snoch434_n1_α
 jmp snoch434_n1_α
snoch434_n0_β:
 jmp snoch434_n1_α
snoch434_n1_α:
# IR_VAR
bb257_α:
 mov rdi, qword ptr [rip + .Lx444_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch434_n2_α
 snoch434_n1_β:
 jmp snoch434_n3_α
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string ""
snoch434_n2_α:
bb258_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S54]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_var@PLT
 jmp snoch434_n3_α
 snoch434_n2_β:
 jmp snoch434_n3_α
snoch434_n3_α:
snoch434_n3_β:
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
snoch446_n0_α:
# IR_VAR
bb259_α:
 mov rdi, qword ptr [rip + .Lx448_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch446_n1_α
 snoch446_n0_β:
 jmp snoch446_n2_α
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
 .string "ALPHABET"
snoch446_n1_α:
# IR_SUBJECT
bb260_α:
 lea rdi, [rip + .S55]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan449_sγ
 xscan449_sβ:
 jmp snoch446_n2_α
xscan449_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb261_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch452_retry
 snoch446_n1_β:
 jmp xscan449_dfail
smatch452_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb263_α:
 cmp r14d, 10
 jne xcat455_ω
 jmp xcat455_γ
 xcat455_left_β:
 jmp xcat455_ω
xcat455_γ:
# IR_MATCH_CAPTURE_SAVE
bb264_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb265_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat455_right_ω
 add r14d, 1
 jmp xcap457_γ
 xcat455_right_β:
 jmp xcat455_right_ω
xcap457_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S32]
 mov esi, dword ptr [r12 + 48]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan449_dok
xcat455_right_ω:
 jmp xcat455_left_β
smatch452_elemb:
 jmp xcat455_right_β
xcat455_ω:
 jmp smatch452_adv
smatch452_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan449_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan449_dfail
 jmp smatch452_retry
xscan449_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch446_n2_α
xscan449_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch446_n2_α
snoch446_n2_α:
# IR_LIT_S
bb269_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg463_done
 xgvarg463_β:
 jmp snoch446_n3_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "list(head,tail)"
xgvarg463_done:
bb270_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn466: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn466]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch446_n3_α
 jmp snoch446_n3_α
snoch446_n2_β:
 jmp snoch446_n3_α
snoch446_n3_α:
# IR_LIT_scalar
bb271_α:
 jmp snoch446_n4_α
 snoch446_n3_β:
 jmp snoch446_n5_α
snoch446_n4_α:
bb272_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch446_n5_α
 snoch446_n4_β:
 jmp snoch446_n5_α
snoch446_n5_α:
bb273_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn470: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn470]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch446_n7_α
 jmp snoch446_n6_α
snoch446_n5_β:
 jmp snoch446_n7_α
snoch446_n6_α:
bb274_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch446_n7_α
 snoch446_n6_β:
 jmp snoch446_n7_α
snoch446_n7_α:
bb275_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn473: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn473]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch446_n9_α
 jmp snoch446_n8_α
snoch446_n7_β:
 jmp snoch446_n9_α
snoch446_n8_α:
bb276_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch446_n9_α
 snoch446_n8_β:
 jmp snoch446_n9_α
snoch446_n9_α:
bb277_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn476: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn476]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch446_n11_α
 jmp snoch446_n10_α
snoch446_n9_β:
 jmp snoch446_n11_α
snoch446_n10_α:
bb278_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch446_n11_α
 snoch446_n10_β:
 jmp snoch446_n11_α
snoch446_n11_α:
bb279_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch446_n12_α
 snoch446_n11_β:
 jmp snoch446_n12_α
snoch446_n12_α:
bb280_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch446_n13_α
 snoch446_n12_β:
 jmp snoch446_n13_α
snoch446_n13_α:
bb281_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch446_n14_α
 snoch446_n13_β:
 jmp snoch446_n14_α
snoch446_n14_α:
bb282_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch446_n15_α
 snoch446_n14_β:
 jmp snoch446_n15_α
snoch446_n15_α:
bb283_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch446_n16_α
 snoch446_n15_β:
 jmp snoch446_n16_α
snoch446_n16_α:
bb284_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch446_n17_α
 snoch446_n16_β:
 jmp snoch446_n17_α
snoch446_n17_α:
bb285_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch446_n18_α
 snoch446_n17_β:
 jmp snoch446_n18_α
snoch446_n18_α:
bb286_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch446_n19_α
 snoch446_n18_β:
 jmp snoch446_n19_α
snoch446_n19_α:
bb287_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch446_n20_α
 snoch446_n19_β:
 jmp snoch446_n20_α
snoch446_n20_α:
bb288_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch446_n21_α
 snoch446_n20_β:
 jmp snoch446_n21_α
snoch446_n21_α:
bb289_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch446_n22_α
 snoch446_n21_β:
 jmp snoch446_n22_α
snoch446_n22_α:
bb290_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S67]
 call rt_proc_define@PLT
 jmp snoch446_n23_α
 snoch446_n22_β:
 jmp snoch446_n23_α
snoch446_n23_α:
bb291_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch446_n24_α
 snoch446_n23_β:
 jmp snoch446_n24_α
snoch446_n24_α:
bb292_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch446_n25_α
 snoch446_n24_β:
 jmp snoch446_n25_α
snoch446_n25_α:
bb293_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch446_n26_α
 snoch446_n25_β:
 jmp snoch446_n26_α
snoch446_n26_α:
bb294_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch446_n27_α
 snoch446_n26_β:
 jmp snoch446_n27_α
snoch446_n27_α:
bb295_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch446_n28_α
 snoch446_n27_β:
 jmp snoch446_n28_α
snoch446_n28_α:
# IR_VAR
bb296_α:
 mov rdi, qword ptr [rip + .Lx496_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch446_n29_α
 snoch446_n28_β:
 jmp snoch446_n30_α
.Lx496_0:
 .quad .Lx496_0_s
.Lx496_0_s:
 .string "INPUT"
snoch446_n29_α:
bb297_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S29]
 lea rsi, [rip + .S30]
 call rt_gvar_assign_var@PLT
 jmp snoch446_n31_α
 snoch446_n29_β:
 jmp snoch446_n30_α
snoch446_n30_α:
# IR_LIT_S
bb298_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx499_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg498_done
 xgvarg498_β:
 jmp snoch446_n33_α
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "bank"
xgvarg498_done:
bb299_α:
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
 je snoch446_n33_α
 jmp snoch446_n32_α
snoch446_n30_β:
 jmp snoch446_n33_α
snoch446_n31_α:
bb300_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 1
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S29]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S31]
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
 jmp snoch446_n28_α
 snoch446_n31_β:
 jmp snoch446_n28_α
snoch446_n32_α:
bb301_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch446_n33_α
 snoch446_n32_β:
 jmp snoch446_n33_α
snoch446_n33_α:
# IR_LIT_S
bb302_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg503_done
 xgvarg503_β:
 jmp snoch446_n35_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "BANK"
xgvarg503_done:
bb303_α:
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
 je snoch446_n35_α
 jmp snoch446_n34_α
snoch446_n33_β:
 jmp snoch446_n35_α
snoch446_n34_α:
bb304_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch446_n35_α
 snoch446_n34_β:
 jmp snoch446_n35_α
snoch446_n35_α:
# IR_LIT_scalar
bb305_α:
 jmp snoch446_n36_α
 snoch446_n35_β:
 jmp snoch446_n37_α
snoch446_n36_α:
# IR_SUBJECT
bb306_α:
 lea rdi, [rip + .S31]
 lea rsi, [r12 + 320]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan508_sγ
 xscan508_sβ:
 jmp snoch446_n37_α
xscan508_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb307_α:
 mov r13, qword ptr [r12 + 320]
 mov r15d, dword ptr [r12 + 328]
 mov dword ptr [r12 + 336], 0
 lea r10, [r12 + 344]
 jmp smatch511_retry
 snoch446_n36_β:
 jmp xscan508_dfail
smatch511_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 336]
# IR_MATCH_DEFER
bb309_α:
 lea rdi, [rip + .S33]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx514_0
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
 jne smatch511_adv
 jmp xscan508_dok
.Lx514_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch511_adv
 mov r14d, eax
 jmp xscan508_dok
 smatch511_elemb:
 jmp smatch511_adv
smatch511_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 336], 1
 mov eax, dword ptr [r12 + 336]
 cmp eax, r15d
 jg xscan508_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan508_dfail
 jmp smatch511_retry
xscan508_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S31]
 mov esi, dword ptr [r12 + 336]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch446_n38_α
xscan508_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch446_n37_α
snoch446_n37_α:
# IR_LIT_S
bb311_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [r12 + 360], rax
 jmp xgvarg516_done
 xgvarg516_β:
 jmp snoch446_n40_α
.Lx517_0:
 .quad .Lx517_0_s
.Lx517_0_s:
 .string "bank"
xgvarg516_done:
bb312_α:
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
 je snoch446_n40_α
 jmp snoch446_n39_α
snoch446_n37_β:
 jmp snoch446_n40_α
snoch446_n38_α:
# IR_LIT_S
bb313_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [r12 + 408], rax
 jmp xgvarg519_done
 xgvarg519_β:
 jmp snoch446_n42_α
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "ROOT"
xgvarg519_done:
bb314_α:
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
 je snoch446_n42_α
 jmp snoch446_n41_α
snoch446_n38_β:
 jmp snoch446_n42_α
snoch446_n39_α:
bb315_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch446_n40_α
 snoch446_n39_β:
 jmp snoch446_n40_α
snoch446_n40_α:
bb316_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch446_n43_α
snoch446_n40_β:
 jmp flat_γ
snoch446_n41_α:
bb317_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch446_n42_α
 snoch446_n41_β:
 jmp snoch446_n42_α
snoch446_n42_α:
# IR_VAR gva
bb318_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp snoch446_n44_α
 snoch446_n42_β:
 jmp snoch446_n45_α
snoch446_n43_α:
bb319_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp flat_γ
 snoch446_n43_β:
 jmp flat_γ
snoch446_n44_α:
# IR_SUBJECT
bb320_α:
 lea rdi, [rip + .S34]
 lea rsi, [r12 + 480]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan528_sγ
 xscan528_sβ:
 jmp snoch446_n45_α
xscan528_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb321_α:
 mov r13, qword ptr [r12 + 480]
 mov r15d, dword ptr [r12 + 488]
 mov dword ptr [r12 + 496], 0
 lea r10, [r12 + 504]
 jmp smatch531_retry
 snoch446_n44_β:
 jmp xscan528_dfail
smatch531_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 496]
# IR_MATCH_DEFER
bb323_α:
 lea rdi, [rip + .S35]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx534_0
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
 jne smatch531_adv
 jmp xscan528_dok
.Lx534_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch531_adv
 mov r14d, eax
 jmp xscan528_dok
 smatch531_elemb:
 jmp smatch531_adv
smatch531_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 496], 1
 mov eax, dword ptr [r12 + 496]
 cmp eax, r15d
 jg xscan528_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan528_dfail
 jmp smatch531_retry
xscan528_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch446_n46_α
xscan528_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch446_n45_α
snoch446_n45_α:
bb325_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 512], 0
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 520], rax
 mov dword ptr [r12 + 528], 1
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 536], rax
 lea rdi, [rip + .S36]
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
 jmp snoch446_n47_α
 snoch446_n45_β:
 jmp snoch446_n47_α
snoch446_n46_α:
bb326_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch446_n35_α
 jmp snoch446_n48_α
snoch446_n46_β:
 jmp snoch446_n35_α
snoch446_n47_α:
bb327_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 560]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je snoch446_n35_α
 jmp snoch446_n49_α
snoch446_n47_β:
 jmp snoch446_n35_α
snoch446_n48_α:
bb328_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch446_n35_α
 snoch446_n48_β:
 jmp snoch446_n35_α
snoch446_n49_α:
bb329_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rcx
 jmp snoch446_n35_α
 snoch446_n49_β:
 jmp snoch446_n35_α
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
.S12: .string "stk_pop_final"
.S13: .string "v"
.S14: .string "stk_tag"
.S15: .string "stk_c"
.S16: .string "init_list"
.S17: .string "Init_list"
.S18: .string "dummy"
.S19: .string "push_list"
.S20: .string "Push_list"
.S21: .string "push_item"
.S22: .string "Push_item"
.S23: .string "pop_list"
.S24: .string "pop_final(v)"
.S25: .string "Pop_final(vs)"
.S26: .string "node_repr(f)r,sep,i,n,tag"
.S27: .string "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.S28: .string "pp_bank()"
.S29: .string "line"
.S30: .string "INPUT"
.S31: .string "src"
.S32: .string "nl"
.S33: .string "spat"
.S34: .string "item"
.S35: .string "group"
.S36: .string "OUTPUT"
.S37: .string "Parse failed on: "
.S38: .string "pop_final"
.S39: .string "Pop_final"
.S40: .string "node_repr"
.S41: .string "'"
.S42: .string "f"
.S43: .string "tag"
.S44: .string "r"
.S45: .string "('"
.S46: .string "i"
.S47: .string ")"
.S48: .string "pad"
.S49: .string "indent"
.S50: .string "suffix"
.S51: .string "( "
.S52: .string "',"
.S53: .string "nxt"
.S54: .string "pp_bank"
.S55: .string "ALPHABET"
.S56: .string "stk_push_frame(v)"
.S57: .string "stk_push_item(v,cur)"
.S58: .string "stk_pop_into_parent(child,par,n)"
.S59: .string "stk_pop_final(var,child)"
.S60: .string "init_list(v)"
.S61: .string "Init_list(vs)"
.S62: .string "push_list(v)"
.S63: .string "Push_list(vs)"
.S64: .string "push_item(v)"
.S65: .string "Push_item(vs)"
.S66: .string "pop_list()"
.S67: .string "Pop_list()"
.text
