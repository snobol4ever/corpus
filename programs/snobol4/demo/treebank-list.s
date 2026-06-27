  .intel_syntax noprefix
  .text
list_reverse_α:
#=======================================================================================================================
    .global list_reverse_α
    .global list_reverse_β
    .global list_reverse_γ
    .global list_reverse_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
list_reverse_α_body:
snoch0_n0_α:
# IR_LIT_scalar
bb1_α:
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
bb2_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S0]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_str@PLT
 jmp snoch0_n2_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_VAR
bb3_α:
 mov rdi, qword ptr [rip + .Lx4_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch0_n3_α
 snoch0_n2_β:
 jmp snoch0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "lst"
snoch0_n3_α:
bb4_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n4_α
snoch0_n4_α:
# IR_VAR
bb5_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg6_done
 xgvarg6_β:
 jmp snoch0_n6_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "cur"
xgvarg6_done:
bb6_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn10: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn10]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch0_n6_α
 jmp snoch0_n5_α
snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
# IR_VAR
bb7_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n8_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "cur"
xgvarg12_done:
bb8_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn16: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn16]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp xgvarg11_done
xgvarg11_β:
 jmp snoch0_n8_α
xgvarg11_done:
# IR_VAR
bb9_α:
 mov rdi, qword ptr [rip + .Lx19_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg17_done
 xgvarg17_β:
 jmp snoch0_n8_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "acc"
xgvarg17_done:
bb10_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+112] -> [r12+160]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn21: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp snoch0_n7_α
 snoch0_n5_β:
 jmp snoch0_n8_α
snoch0_n6_α:
# IR_VAR
bb11_α:
 mov rdi, qword ptr [rip + .Lx23_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch0_n9_α
 snoch0_n6_β:
 jmp snoch0_n10_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "acc"
snoch0_n7_α:
bb12_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx27_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvarg25_done
 xgvarg25_β:
 jmp snoch0_n4_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "cur"
xgvarg25_done:
bb14_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lbynamefn29: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn29]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch0_n4_α
 jmp snoch0_n11_α
snoch0_n8_β:
 jmp snoch0_n4_α
snoch0_n9_α:
bb15_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S0]
 call rt_gvar_assign_var@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
snoch0_n10_β:
jmp list_reverse_γ
jmp list_reverse_γ
snoch0_n11_α:
bb16_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n4_α
 snoch0_n11_β:
 jmp snoch0_n4_α
list_reverse_β:
jmp list_reverse_ω
list_reverse_γ:
mov eax, 1
xor edx, edx
pop r12
ret
list_reverse_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
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
snoch32_n0_α:
# IR_VAR
bb17_α:
 mov rdi, qword ptr [rip + .Lx36_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg34_done
 xgvarg34_β:
 jmp snoch32_n2_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "v"
xgvarg34_done:
# IR_LIT_NUL
bb18_α:
 mov qword ptr [r12 + 32], 0
 mov qword ptr [r12 + 40], 0
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch32_n2_α
xgvarg37_done:
bb19_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+16] -> [r12+64]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn40: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch32_n2_α
 jmp xgvarg33_done
 xgvarg33_β:
 jmp snoch32_n2_α
xgvarg33_done:
# IR_VAR
bb20_α:
 mov rdi, qword ptr [rip + .Lx43_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xgvarg41_done
 xgvarg41_β:
 jmp snoch32_n2_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "stk"
xgvarg41_done:
bb21_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+128]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+144]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn45: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch32_n2_α
 jmp snoch32_n1_α
 snoch32_n0_β:
 jmp snoch32_n2_α
snoch32_n1_α:
bb22_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch32_n2_α
 snoch32_n1_β:
 jmp snoch32_n2_α
snoch32_n2_α:
# IR_VAR
bb23_α:
 mov rdi, qword ptr [rip + .Lx48_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch32_n3_α
 snoch32_n2_β:
 jmp snoch32_n4_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string ""
snoch32_n3_α:
bb24_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S6]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch32_n4_α
 snoch32_n3_β:
 jmp snoch32_n4_α
snoch32_n4_α:
snoch32_n4_β:
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
snoch50_n0_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx52_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch50_n1_α
 snoch50_n0_β:
 jmp snoch50_n2_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string ""
snoch50_n1_α:
bb26_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch50_n2_α
 snoch50_n1_β:
 jmp snoch50_n2_α
snoch50_n2_α:
snoch50_n2_β:
jmp stk_push_item_γ
jmp stk_push_item_γ
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
snoch54_n0_α:
# IR_VAR
bb27_α:
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg56_done
 xgvarg56_β:
 jmp snoch54_n2_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "stk"
xgvarg56_done:
bb28_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn60: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn60]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch54_n2_α
 jmp xgvarg55_done
xgvarg55_β:
 jmp snoch54_n2_α
xgvarg55_done:
bb29_α:
# BOX IR_CALL list_reverse(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch54_n2_α
 jmp snoch54_n1_α
snoch54_n0_β:
 jmp snoch54_n2_α
snoch54_n1_α:
bb30_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_gvar_assign_descr@PLT
 jmp snoch54_n2_α
 snoch54_n1_β:
 jmp snoch54_n2_α
snoch54_n2_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx65_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xgvarg63_done
 xgvarg63_β:
 jmp snoch54_n4_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "stk"
xgvarg63_done:
bb32_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lbynamefn67: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn67]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch54_n4_α
 jmp snoch54_n3_α
snoch54_n2_β:
 jmp snoch54_n4_α
snoch54_n3_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch54_n4_α
 snoch54_n3_β:
 jmp snoch54_n4_α
snoch54_n4_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx70_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch54_n5_α
 snoch54_n4_β:
 jmp snoch54_n6_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string ""
snoch54_n5_α:
bb35_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch54_n6_α
 snoch54_n5_β:
 jmp snoch54_n6_α
snoch54_n6_α:
snoch54_n6_β:
jmp stk_pop_into_parent_γ
jmp stk_pop_into_parent_γ
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
bb36_α:
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
bb37_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn77: .string "tail"
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
bb38_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch72_n2_α
 snoch72_n1_β:
 jmp snoch72_n2_α
snoch72_n2_α:
# IR_VAR
bb39_α:
 mov rdi, qword ptr [rip + .Lx80_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch72_n3_α
 snoch72_n2_β:
 jmp snoch72_n4_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string ""
snoch72_n3_α:
bb40_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch72_n4_α
 snoch72_n3_β:
 jmp snoch72_n4_α
snoch72_n4_α:
snoch72_n4_β:
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
snoch82_n0_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch82_n1_α
 snoch82_n0_β:
 jmp snoch82_n2_α
snoch82_n1_α:
bb42_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S1]
 call rt_indirect_assign_str@PLT
 jmp snoch82_n2_α
 snoch82_n1_β:
 jmp snoch82_n2_α
snoch82_n2_α:
# IR_LIT_scalar
bb43_α:
 jmp snoch82_n3_α
 snoch82_n2_β:
 jmp snoch82_n4_α
snoch82_n3_α:
bb44_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_str@PLT
 jmp snoch82_n4_α
 snoch82_n3_β:
 jmp snoch82_n4_α
snoch82_n4_α:
# IR_VAR
bb45_α:
 mov rdi, qword ptr [rip + .Lx88_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch82_n5_α
 snoch82_n4_β:
 jmp snoch82_n6_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string ""
snoch82_n5_α:
bb46_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch82_n6_α
 snoch82_n5_β:
 jmp snoch82_n6_α
snoch82_n6_α:
snoch82_n6_β:
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
snoch90_n0_α:
xgvarg91_done:
bb47_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S13]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S15]
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
  .Lbynamefn93: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn93]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch90_n2_α
 jmp snoch90_n1_α
snoch90_n0_β:
 jmp snoch90_n2_α
snoch90_n1_α:
bb48_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch90_n2_α
 snoch90_n1_β:
 jmp snoch90_n2_α
snoch90_n2_α:
snoch90_n2_β:
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
snoch95_n0_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx98_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg96_done
 xgvarg96_β:
 jmp snoch95_n2_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "v"
xgvarg96_done:
bb50_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
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
 je snoch95_n2_α
 jmp snoch95_n1_α
snoch95_n0_β:
 jmp snoch95_n2_α
snoch95_n1_α:
bb51_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch95_n2_α
 snoch95_n1_β:
 jmp snoch95_n2_α
snoch95_n2_α:
# IR_VAR
bb52_α:
 mov rdi, qword ptr [rip + .Lx102_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch95_n3_α
 snoch95_n2_β:
 jmp snoch95_n4_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string ""
snoch95_n3_α:
bb53_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S18]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch95_n4_α
 snoch95_n3_β:
 jmp snoch95_n4_α
snoch95_n4_α:
snoch95_n4_β:
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
snoch104_n0_α:
xgvarg105_done:
bb54_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S15]
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
  .Lbynamefn107: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn107]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch104_n2_α
 jmp snoch104_n1_α
snoch104_n0_β:
 jmp snoch104_n2_α
snoch104_n1_α:
bb55_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S20]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch104_n2_α
 snoch104_n1_β:
 jmp snoch104_n2_α
snoch104_n2_α:
snoch104_n2_β:
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
snoch109_n0_α:
# IR_VAR
bb56_α:
 mov rdi, qword ptr [rip + .Lx112_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg110_done
 xgvarg110_β:
 jmp snoch109_n2_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "v"
xgvarg110_done:
bb57_α:
# BOX IR_CALL stk_push_item(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 16]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch109_n2_α
 jmp snoch109_n1_α
snoch109_n0_β:
 jmp snoch109_n2_α
snoch109_n1_α:
bb58_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch109_n2_α
 snoch109_n1_β:
 jmp snoch109_n2_α
snoch109_n2_α:
# IR_VAR
bb59_α:
 mov rdi, qword ptr [rip + .Lx116_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch109_n3_α
 snoch109_n2_β:
 jmp snoch109_n4_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string ""
snoch109_n3_α:
bb60_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S21]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch109_n4_α
 snoch109_n3_β:
 jmp snoch109_n4_α
snoch109_n4_α:
snoch109_n4_β:
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
snoch118_n0_α:
xgvarg119_done:
bb61_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S22]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S15]
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
bb62_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S23]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch118_n2_α
 snoch118_n1_β:
 jmp snoch118_n2_α
snoch118_n2_α:
snoch118_n2_β:
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
snoch123_n0_α:
bb63_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 24]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch123_n2_α
 jmp snoch123_n1_α
snoch123_n0_β:
 jmp snoch123_n2_α
snoch123_n1_α:
bb64_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch123_n2_α
 snoch123_n1_β:
 jmp snoch123_n2_α
snoch123_n2_α:
# IR_VAR
bb65_α:
 mov rdi, qword ptr [rip + .Lx127_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch123_n3_α
 snoch123_n2_β:
 jmp snoch123_n4_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string ""
snoch123_n3_α:
bb66_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S24]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch123_n4_α
 snoch123_n3_β:
 jmp snoch123_n4_α
snoch123_n4_α:
snoch123_n4_β:
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
snoch129_n0_α:
bb67_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch129_n1_α
 snoch129_n0_β:
 jmp snoch129_n1_α
snoch129_n1_α:
bb68_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch129_n2_α
 snoch129_n1_β:
 jmp snoch129_n2_α
snoch129_n2_α:
bb69_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch129_n3_α
 snoch129_n2_β:
 jmp snoch129_n3_α
snoch129_n3_α:
bb70_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch129_n4_α
 snoch129_n3_β:
 jmp snoch129_n4_α
snoch129_n4_α:
bb71_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch129_n5_α
 snoch129_n4_β:
 jmp snoch129_n5_α
snoch129_n5_α:
# IR_VAR
bb72_α:
 mov rdi, qword ptr [rip + .Lx136_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch129_n6_α
 snoch129_n5_β:
 jmp snoch129_n7_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "INPUT"
snoch129_n6_α:
bb73_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_var@PLT
 jmp snoch129_n8_α
 snoch129_n6_β:
 jmp snoch129_n7_α
snoch129_n7_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx139_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch129_n9_α
 snoch129_n7_β:
 jmp snoch129_n10_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "src"
snoch129_n8_α:
bb75_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 32], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 40], rax
 mov dword ptr [r12 + 48], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 72], rax
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 32]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch129_n5_α
 snoch129_n8_β:
 jmp snoch129_n5_α
snoch129_n9_α:
# IR_SUBJECT
bb76_α:
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 80]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan141_sγ
 xscan141_sβ:
 jmp snoch129_n10_α
xscan141_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb77_α:
 mov r13, qword ptr [r12 + 80]
 mov r15d, dword ptr [r12 + 88]
 mov dword ptr [r12 + 96], 0
 lea r10, [r12 + 104]
 jmp smatch144_retry
 snoch129_n9_β:
 jmp xscan141_dfail
smatch144_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 96]
# IR_MATCH_DEFER
bb79_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx147_0
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
 jne smatch144_adv
 jmp xscan141_dok
.Lx147_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch144_adv
 mov r14d, eax
 jmp xscan141_dok
 smatch144_elemb:
 jmp smatch144_adv
smatch144_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 96], 1
 mov eax, dword ptr [r12 + 96]
 cmp eax, r15d
 jg xscan141_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan141_dfail
 jmp smatch144_retry
xscan141_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch129_n11_α
xscan141_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch129_n10_α
snoch129_n10_α:
# IR_LIT_scalar
bb81_α:
 jmp snoch129_n12_α
 snoch129_n10_β:
 jmp Pop_list_γ
snoch129_n11_α:
bb82_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch129_n13_α
snoch129_n11_β:
 jmp Pop_list_γ
snoch129_n12_α:
bb83_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S35]
 lea rsi, [rip + .S36]
 call rt_gvar_assign_str@PLT
 jmp Pop_list_γ
 snoch129_n12_β:
 jmp Pop_list_γ
snoch129_n13_α:
bb84_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch129_n13_β:
 jmp Pop_list_γ
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
snoch153_n0_α:
# IR_VAR
bb85_α:
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
bb86_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 32]
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
bb87_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch153_n2_α
 snoch153_n1_β:
 jmp snoch153_n2_α
snoch153_n2_α:
# IR_VAR
bb88_α:
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
bb89_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S37]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch153_n4_α
 snoch153_n3_β:
 jmp snoch153_n4_α
snoch153_n4_α:
snoch153_n4_β:
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
snoch162_n0_α:
xgvarg163_done:
bb90_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = inline concat 3 parts -> [r12+32]
 mov dword ptr [r12 + 48], 0
 lea rax, [rip + .S38]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 72], rax
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S15]
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
bb91_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S39]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch162_n2_α
 snoch162_n1_β:
 jmp snoch162_n2_α
snoch162_n2_α:
snoch162_n2_β:
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
snoch167_n0_α:
# IR_VAR
bb92_α:
 mov rdi, qword ptr [rip + .Lx172_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg170_done
 xgvarg170_β:
 jmp snoch167_n2_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "node"
xgvarg170_done:
bb93_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn174: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn174]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch167_n2_α
 jmp xgvarg169_done
xgvarg169_β:
 jmp snoch167_n2_α
xgvarg169_done:
# IR_KEYWORD_read
bb94_α:
 mov rdi, qword ptr [rip + .Lx176_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg175_done
 xgvarg175_β:
 jmp snoch167_n2_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "LCASE"
xgvarg175_done:
# IR_KEYWORD_read
bb95_α:
 mov rdi, qword ptr [rip + .Lx178_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg177_done
 xgvarg177_β:
 jmp snoch167_n2_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "UCASE"
xgvarg177_done:
bb96_α:
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
  .Lbynamefn180: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn180]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch167_n2_α
 jmp xgvarg168_done
xgvarg168_β:
 jmp snoch167_n2_α
xgvarg168_done:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg181_done
 xgvarg181_β:
 jmp snoch167_n2_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "STRING"
xgvarg181_done:
bb98_α:
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
  .Lbynamefn184: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn184]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch167_n2_α
 jmp snoch167_n1_α
snoch167_n0_β:
 jmp snoch167_n2_α
snoch167_n1_α:
bb99_α:
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
 jmp snoch167_n3_α
 snoch167_n1_β:
 jmp snoch167_n3_α
snoch167_n2_α:
# IR_LIT_scalar
bb100_α:
 jmp snoch167_n4_α
 snoch167_n2_β:
 jmp snoch167_n5_α
snoch167_n3_α:
snoch167_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch167_n4_α:
bb101_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S43]
 lea rsi, [rip + .S44]
 call rt_gvar_assign_str@PLT
 jmp snoch167_n5_α
 snoch167_n4_β:
 jmp snoch167_n5_α
snoch167_n5_α:
# IR_LIT_scalar
bb102_α:
 jmp snoch167_n6_α
 snoch167_n5_β:
 jmp snoch167_n7_α
snoch167_n6_α:
bb103_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_str@PLT
 jmp snoch167_n7_α
 snoch167_n6_β:
 jmp snoch167_n7_α
snoch167_n7_α:
# IR_VAR
bb104_α:
 mov rdi, qword ptr [rip + .Lx191_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch167_n8_α
 snoch167_n7_β:
 jmp snoch167_n9_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "node"
snoch167_n8_α:
bb105_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S46]
 lea rsi, [rip + .S42]
 call rt_gvar_assign_var@PLT
 jmp snoch167_n9_α
 snoch167_n8_β:
 jmp snoch167_n9_α
snoch167_n9_α:
# IR_VAR
bb106_α:
 mov rdi, qword ptr [rip + .Lx195_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xgvarg193_done
 xgvarg193_β:
 jmp snoch167_n11_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "c"
xgvarg193_done:
bb107_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+288] -> [r12+320]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lbynamefn197: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn197]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je snoch167_n11_α
 jmp snoch167_n10_α
snoch167_n9_β:
 jmp snoch167_n11_α
snoch167_n10_α:
# IR_VAR
bb108_α:
 mov rdi, qword ptr [rip + .Lx199_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch167_n12_α
 snoch167_n10_β:
 jmp snoch167_n13_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "r"
snoch167_n11_α:
bb109_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 352], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S40]
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
 jmp snoch167_n3_α
 snoch167_n11_β:
 jmp snoch167_n3_α
snoch167_n12_α:
# IR_VAR
bb110_α:
 mov rdi, qword ptr [rip + .Lx202_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch167_n14_α
 snoch167_n12_β:
 jmp snoch167_n13_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "sep"
snoch167_n13_α:
# IR_LIT_scalar
bb111_α:
 jmp snoch167_n15_α
 snoch167_n13_β:
 jmp snoch167_n16_α
snoch167_n14_α:
bb112_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch167_n17_α
 snoch167_n14_β:
 jmp snoch167_n13_α
snoch167_n15_α:
bb113_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S47]
 call rt_gvar_assign_str@PLT
 jmp snoch167_n16_α
 snoch167_n15_β:
 jmp snoch167_n16_α
snoch167_n16_α:
# IR_VAR
bb114_α:
 mov rdi, qword ptr [rip + .Lx208_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xgvarg206_done
 xgvarg206_β:
 jmp snoch167_n9_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "c"
xgvarg206_done:
bb115_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+416] -> [r12+448]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lbynamefn210: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn210]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je snoch167_n9_α
 jmp snoch167_n18_α
snoch167_n16_β:
 jmp snoch167_n9_α
snoch167_n17_α:
# IR_VAR
bb116_α:
 mov rdi, qword ptr [rip + .Lx214_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xgvarg212_done
 xgvarg212_β:
 jmp snoch167_n13_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "c"
xgvarg212_done:
bb117_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lbynamefn216: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn216]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch167_n13_α
 jmp xgvarg211_done
xgvarg211_β:
 jmp snoch167_n13_α
xgvarg211_done:
bb118_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+480] -> [r12+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
   mov rdi, [rip + __proc + 40]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je snoch167_n13_α
 jmp snoch167_n19_α
snoch167_n17_β:
 jmp snoch167_n13_α
snoch167_n18_α:
bb119_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S46]
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_gvar_assign_descr@PLT
 jmp snoch167_n9_α
 snoch167_n18_β:
 jmp snoch167_n9_α
snoch167_n19_α:
bb120_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp snoch167_n20_α
 snoch167_n19_β:
 jmp snoch167_n13_α
snoch167_n20_α:
bb121_α:
# IR_ASSIGN
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_gvar_assign_descr@PLT
 jmp snoch167_n13_α
 snoch167_n20_β:
 jmp snoch167_n13_α
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
snoch222_n0_α:
# IR_VAR
bb122_α:
 mov rdi, qword ptr [rip + .Lx225_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg223_done
 xgvarg223_β:
 jmp snoch222_n2_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "node"
xgvarg223_done:
bb123_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 40]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch222_n2_α
 jmp snoch222_n1_α
snoch222_n0_β:
 jmp snoch222_n2_α
snoch222_n1_α:
bb124_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch222_n2_α
 snoch222_n1_β:
 jmp snoch222_n2_α
snoch222_n2_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg228_done
 xgvarg228_β:
 jmp snoch222_n4_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string " "
xgvarg228_done:
# IR_VAR
bb126_α:
 mov rdi, qword ptr [rip + .Lx232_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg230_done
 xgvarg230_β:
 jmp snoch222_n4_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "indent"
xgvarg230_done:
bb127_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+112]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+128]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lbynamefn234: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn234]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch222_n4_α
 jmp snoch222_n3_α
snoch222_n2_β:
 jmp snoch222_n4_α
snoch222_n3_α:
bb128_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S48]
 mov rsi, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 call rt_gvar_assign_descr@PLT
 jmp snoch222_n4_α
 snoch222_n3_β:
 jmp snoch222_n4_α
snoch222_n4_α:
# IR_LIT_I
bb129_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [r12 + 152], rax
 jmp xgvarg236_done
 xgvarg236_β:
 jmp snoch222_n6_α
.Lx237_0:
 .quad 80
xgvarg236_done:
xgvarg238_done:
bb130_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+144] -> [r12+176]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+192]
   lea rdi, [rip + .S49]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 208], rax
# marshal arg0 = gvar NV_GET -> [r12+240]
   lea rdi, [rip + .S43]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
  .section .rodata
  .Lcallfn240: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn240]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov rcx, qword ptr [r12 + 232]
 mov rax, qword ptr [r12 + 208]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lbynamefn241: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn241]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je snoch222_n6_α
 jmp snoch222_n5_α
snoch222_n4_β:
 jmp snoch222_n6_α
snoch222_n5_α:
bb131_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 256], 1
 lea rax, [rip + .S48]
 mov qword ptr [r12 + 264], rax
 mov dword ptr [r12 + 272], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 280], rax
 mov dword ptr [r12 + 288], 1
 lea rax, [rip + .S50]
 mov qword ptr [r12 + 296], rax
 lea rdi, [rip + .S35]
 lea rsi, [r12 + 256]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch222_n7_α
 snoch222_n5_β:
 jmp snoch222_n7_α
snoch222_n6_α:
# IR_VAR
bb132_α:
 mov rdi, qword ptr [rip + .Lx244_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch222_n8_α
 snoch222_n6_β:
 jmp snoch222_n9_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "pad"
snoch222_n7_α:
snoch222_n7_β:
jmp pp_node_γ
jmp pp_node_γ
snoch222_n8_α:
# IR_LIT_scalar
bb133_α:
 jmp snoch222_n10_α
 snoch222_n8_β:
 jmp snoch222_n9_α
snoch222_n9_α:
# IR_VAR
bb134_α:
 mov rdi, qword ptr [rip + .Lx248_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xgvarg246_done
 xgvarg246_β:
 jmp snoch222_n12_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "node"
xgvarg246_done:
bb135_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+320] -> [r12+352]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lbynamefn250: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn250]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je snoch222_n12_α
 jmp snoch222_n11_α
snoch222_n9_β:
 jmp snoch222_n12_α
snoch222_n10_α:
# IR_LIT_S
bb136_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 376], rax
 jmp xgvcat251_1d
 xgvcat251_1b:
 jmp snoch222_n9_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "( "
xgvcat251_1d:
bb137_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch222_n13_α
 snoch222_n10_β:
 jmp snoch222_n9_α
snoch222_n11_α:
bb138_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S46]
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_gvar_assign_descr@PLT
 jmp snoch222_n12_α
 snoch222_n11_β:
 jmp snoch222_n12_α
snoch222_n12_α:
# IR_VAR
bb139_α:
 mov rdi, qword ptr [rip + .Lx257_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg255_done
 xgvarg255_β:
 jmp snoch222_n15_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "c"
xgvarg255_done:
bb140_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lbynamefn259: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn259]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch222_n15_α
 jmp snoch222_n14_α
snoch222_n12_β:
 jmp snoch222_n15_α
snoch222_n13_α:
# IR_LIT_scalar
bb141_α:
 jmp snoch222_n16_α
 snoch222_n13_β:
 jmp snoch222_n9_α
snoch222_n14_α:
# IR_VAR
bb142_α:
 mov rdi, qword ptr [rip + .Lx263_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xgvarg261_done
 xgvarg261_β:
 jmp snoch222_n18_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "c"
xgvarg261_done:
bb143_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+448] -> [r12+480]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lbynamefn265: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn265]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je snoch222_n18_α
 jmp snoch222_n17_α
snoch222_n14_β:
 jmp snoch222_n18_α
snoch222_n15_α:
bb144_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch222_n19_α
 snoch222_n15_β:
 jmp snoch222_n19_α
snoch222_n16_α:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 504], rax
 jmp xgvcat267_1d
 xgvcat267_1b:
 jmp snoch222_n9_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "'"
xgvcat267_1d:
bb146_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp snoch222_n20_α
 snoch222_n16_β:
 jmp snoch222_n9_α
snoch222_n17_α:
bb147_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S51]
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_gvar_assign_descr@PLT
 jmp snoch222_n18_α
 snoch222_n17_β:
 jmp snoch222_n18_α
snoch222_n18_α:
# IR_VAR
bb148_α:
 mov rdi, qword ptr [rip + .Lx273_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xgvarg271_done
 xgvarg271_β:
 jmp snoch222_n22_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "nxt"
xgvarg271_done:
bb149_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+528] -> [r12+560]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lbynamefn275: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn275]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch222_n22_α
 jmp snoch222_n21_α
snoch222_n18_β:
 jmp snoch222_n22_α
snoch222_n19_α:
# IR_VAR
bb150_α:
 mov rdi, qword ptr [rip + .Lx277_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch222_n23_α
 snoch222_n19_β:
 jmp snoch222_n24_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "INPUT"
snoch222_n20_α:
# IR_VAR
bb151_α:
 mov rdi, qword ptr [rip + .Lx280_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xgvarg278_done
 xgvarg278_β:
 jmp snoch222_n9_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "node"
xgvarg278_done:
bb152_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+592] -> [r12+624]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lbynamefn282: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn282]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je snoch222_n9_α
 jmp snoch222_n25_α
snoch222_n20_β:
 jmp snoch222_n9_α
snoch222_n21_α:
# IR_VAR
bb153_α:
 mov rdi, qword ptr [rip + .Lx286_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xgvarg284_done
 xgvarg284_β:
 jmp snoch222_n26_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "c"
xgvarg284_done:
bb154_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+640] -> [r12+672]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lbynamefn288: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn288]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je snoch222_n26_α
 jmp xgvarg283_done
xgvarg283_β:
 jmp snoch222_n26_α
xgvarg283_done:
xgvarg289_done:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [r12 + 696], rax
 jmp xgvarg290_done
 xgvarg290_β:
 jmp snoch222_n26_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string ","
xgvarg290_done:
bb156_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+656] -> [r12+720]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+736]
   lea rdi, [rip + .S49]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 768], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 768]
 add rax, rcx
 mov qword ptr [r12 + 736], 6
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [r12+688] -> [r12+752]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 760], rax
   mov rdi, [rip + __proc + 48]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je snoch222_n26_α
 jmp snoch222_n26_α
snoch222_n21_β:
 jmp snoch222_n26_α
snoch222_n22_α:
# IR_VAR
bb157_α:
 mov rdi, qword ptr [rip + .Lx296_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xgvarg294_done
 xgvarg294_β:
 jmp snoch222_n7_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "c"
xgvarg294_done:
bb158_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+784] -> [r12+816]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lbynamefn298: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn298]
 lea rsi, [r12 + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je snoch222_n7_α
 jmp xgvarg293_done
xgvarg293_β:
 jmp snoch222_n7_α
xgvarg293_done:
xgvarg299_done:
xgvarg300_done:
bb159_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+800] -> [r12+848]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+864]
   lea rdi, [rip + .S49]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 896], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 896]
 add rax, rcx
 mov qword ptr [r12 + 864], 6
 mov qword ptr [r12 + 872], rax
# marshal arg2 = inline concat 2 parts -> [r12+880]
 mov dword ptr [r12 + 912], 0
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 920], rax
 mov dword ptr [r12 + 928], 1
 lea rax, [rip + .S50]
 mov qword ptr [r12 + 936], rax
 lea rdi, [r12 + 912]
 mov rsi, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_concat_parts_d@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
   mov rdi, [rip + __proc + 48]
 lea rsi, [r12 + 848]
 mov edx, 3
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je snoch222_n7_α
 jmp snoch222_n7_α
snoch222_n22_β:
 jmp snoch222_n7_α
snoch222_n23_α:
bb160_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_var@PLT
 jmp snoch222_n27_α
 snoch222_n23_β:
 jmp snoch222_n24_α
snoch222_n24_α:
# IR_VAR
bb161_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch222_n28_α
 snoch222_n24_β:
 jmp snoch222_n29_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "src"
snoch222_n25_α:
bb162_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp snoch222_n30_α
 snoch222_n25_β:
 jmp snoch222_n9_α
snoch222_n26_α:
# IR_VAR
bb163_α:
 mov rdi, qword ptr [rip + .Lx307_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp snoch222_n31_α
 snoch222_n26_β:
 jmp snoch222_n12_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "nxt"
snoch222_n27_α:
bb164_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 992], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1000], rax
 mov dword ptr [r12 + 1008], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 1016], rax
 mov dword ptr [r12 + 1024], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 1032], rax
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 992]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch222_n19_α
 snoch222_n27_β:
 jmp snoch222_n19_α
snoch222_n28_α:
# IR_SUBJECT
bb165_α:
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 1040]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan309_sγ
 xscan309_sβ:
 jmp snoch222_n29_α
xscan309_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb166_α:
 mov r13, qword ptr [r12 + 1040]
 mov r15d, dword ptr [r12 + 1048]
 mov dword ptr [r12 + 1056], 0
 lea r10, [r12 + 1064]
 jmp smatch312_retry
 snoch222_n28_β:
 jmp xscan309_dfail
smatch312_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1056]
# IR_MATCH_DEFER
bb168_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx315_0
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
 jne smatch312_adv
 jmp xscan309_dok
.Lx315_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch312_adv
 mov r14d, eax
 jmp xscan309_dok
 smatch312_elemb:
 jmp smatch312_adv
smatch312_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1056], 1
 mov eax, dword ptr [r12 + 1056]
 cmp eax, r15d
 jg xscan309_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan309_dfail
 jmp smatch312_retry
xscan309_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch222_n32_α
xscan309_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch222_n29_α
snoch222_n29_α:
# IR_LIT_scalar
bb170_α:
 jmp snoch222_n33_α
 snoch222_n29_β:
 jmp pp_node_γ
snoch222_n30_α:
# IR_LIT_scalar
bb171_α:
 jmp snoch222_n34_α
 snoch222_n30_β:
 jmp snoch222_n9_α
snoch222_n31_α:
bb172_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S46]
 lea rsi, [rip + .S51]
 call rt_gvar_assign_var@PLT
 jmp snoch222_n12_α
 snoch222_n31_β:
 jmp snoch222_n12_α
snoch222_n32_α:
bb173_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 1072]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch222_n35_α
snoch222_n32_β:
 jmp pp_node_γ
snoch222_n33_α:
bb174_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S35]
 lea rsi, [rip + .S36]
 call rt_gvar_assign_str@PLT
 jmp pp_node_γ
 snoch222_n33_β:
 jmp pp_node_γ
snoch222_n34_α:
# IR_LIT_S
bb175_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [r12 + 1096], rax
 jmp xgvcat322_1d
 xgvcat322_1b:
 jmp snoch222_n9_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "',"
xgvcat322_1d:
bb176_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp snoch222_n36_α
 snoch222_n34_β:
 jmp snoch222_n9_α
snoch222_n35_α:
bb177_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch222_n35_β:
 jmp pp_node_γ
snoch222_n36_α:
bb178_α:
# IR_ASSIGN
 lea rdi, [rip + .S35]
 mov rsi, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 call rt_gvar_assign_descr@PLT
 jmp snoch222_n9_α
 snoch222_n36_β:
 jmp snoch222_n9_α
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
snoch328_n0_α:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx331_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg329_done
 xgvarg329_β:
 jmp snoch328_n1_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "bank"
xgvarg329_done:
# IR_LIT_I
bb180_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg332_done
 xgvarg332_β:
 jmp snoch328_n1_α
.Lx333_0:
 .quad 0
xgvarg332_done:
# IR_LIT_S
bb181_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg334_done
 xgvarg334_β:
 jmp snoch328_n1_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string ""
xgvarg334_done:
bb182_α:
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
   mov rdi, [rip + __proc + 48]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch328_n1_α
 jmp snoch328_n1_α
snoch328_n0_β:
 jmp snoch328_n1_α
snoch328_n1_α:
# IR_VAR
bb183_α:
 mov rdi, qword ptr [rip + .Lx338_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch328_n2_α
 snoch328_n1_β:
 jmp snoch328_n3_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string ""
snoch328_n2_α:
bb184_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S52]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch328_n3_α
 snoch328_n2_β:
 jmp snoch328_n3_α
snoch328_n3_α:
snoch328_n3_β:
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
  .Lpn0: .string "list_reverse"
  .Lpp0_0: .string "lst"
  .Lpp0_1: .string "acc"
  .Lpp0_2: .string "cur"
  .Lpnames0:
  .quad .Lpp0_0
  .quad .Lpp0_1
  .quad .Lpp0_2
  .quad 0
  .Lpn1: .string "stk_push_frame"
  .Lpp1_0: .string "v"
  .Lpnames1:
  .quad .Lpp1_0
  .quad 0
  .Lpn2: .string "stk_push_item"
  .Lpp2_0: .string "v"
  .Lpnames2:
  .quad .Lpp2_0
  .quad 0
  .Lpn3: .string "stk_pop_into_parent"
  .Lpp3_0: .string "child"
  .Lpnames3:
  .quad .Lpp3_0
  .quad 0
  .Lpn4: .string "stk_pop_final"
  .Lpp4_0: .string "var"
  .Lpnames4:
  .quad .Lpp4_0
  .quad 0
  .Lpn5: .string "init_list"
  .Lpp5_0: .string "v"
  .Lpnames5:
  .quad .Lpp5_0
  .quad 0
  .Lpn6: .string "Init_list"
  .Lpp6_0: .string "vs"
  .Lpnames6:
  .quad .Lpp6_0
  .quad 0
  .Lpn7: .string "push_list"
  .Lpp7_0: .string "v"
  .Lpnames7:
  .quad .Lpp7_0
  .quad 0
  .Lpn8: .string "Push_list"
  .Lpp8_0: .string "vs"
  .Lpnames8:
  .quad .Lpp8_0
  .quad 0
  .Lpn9: .string "push_item"
  .Lpp9_0: .string "v"
  .Lpnames9:
  .quad .Lpp9_0
  .quad 0
  .Lpn10: .string "Push_item"
  .Lpp10_0: .string "vs"
  .Lpnames10:
  .quad .Lpp10_0
  .quad 0
  .Lpn11: .string "pop_list"
  .Lpnames11:
  .quad 0
  .Lpn12: .string "Pop_list"
  .Lpnames12:
  .quad 0
  .Lpn13: .string "pop_final"
  .Lpp13_0: .string "v"
  .Lpnames13:
  .quad .Lpp13_0
  .quad 0
  .Lpn14: .string "Pop_final"
  .Lpp14_0: .string "vs"
  .Lpnames14:
  .quad .Lpp14_0
  .quad 0
  .Lpn15: .string "node_repr"
  .Lpp15_0: .string "node"
  .Lpp15_1: .string "r"
  .Lpp15_2: .string "c"
  .Lpp15_3: .string "sep"
  .Lpnames15:
  .quad .Lpp15_0
  .quad .Lpp15_1
  .quad .Lpp15_2
  .quad .Lpp15_3
  .quad 0
  .Lpn16: .string "pp_node"
  .Lpp16_0: .string "node"
  .Lpp16_1: .string "indent"
  .Lpp16_2: .string "suffix"
  .Lpp16_3: .string "r"
  .Lpp16_4: .string "pad"
  .Lpp16_5: .string "c"
  .Lpp16_6: .string "nxt"
  .Lpnames16:
  .quad .Lpp16_0
  .quad .Lpp16_1
  .quad .Lpp16_2
  .quad .Lpp16_3
  .quad .Lpp16_4
  .quad .Lpp16_5
  .quad .Lpp16_6
  .quad 0
  .Lpn17: .string "pp_bank"
  .Lpp17_0: .string "cur"
  .Lpnames17:
  .quad .Lpp17_0
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
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + list_reverse_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + .Lpnames1]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + stk_push_frame_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn1]
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + .Lpnames2]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + stk_push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn2]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn3]
  lea rsi, [rip + .Lpnames3]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn3]
  lea rsi, [rip + stk_pop_into_parent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn3]
  mov esi, 160
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn4]
  lea rsi, [rip + .Lpnames4]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn4]
  lea rsi, [rip + stk_pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn4]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn5]
  lea rsi, [rip + .Lpnames5]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn5]
  lea rsi, [rip + init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn5]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn6]
  lea rsi, [rip + .Lpnames6]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn6]
  lea rsi, [rip + Init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn6]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn7]
  lea rsi, [rip + .Lpnames7]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn7]
  lea rsi, [rip + push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn7]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn8]
  lea rsi, [rip + .Lpnames8]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn8]
  lea rsi, [rip + Push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn8]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn9]
  lea rsi, [rip + .Lpnames9]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn9]
  lea rsi, [rip + push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn9]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn10]
  lea rsi, [rip + .Lpnames10]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn10]
  lea rsi, [rip + Push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn10]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn11]
  lea rsi, [rip + .Lpnames11]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn11]
  lea rsi, [rip + pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn11]
  mov esi, 32
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn12]
  lea rsi, [rip + .Lpnames12]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn12]
  lea rsi, [rip + Pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn12]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn13]
  lea rsi, [rip + .Lpnames13]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn13]
  lea rsi, [rip + pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn13]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + .Lpnames14]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + Pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn14]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + .Lpnames15]
  mov edx, 4
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + node_repr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn15]
  mov esi, 560
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + .Lpnames16]
  mov edx, 7
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn16]
  mov esi, 1120
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn17]
  lea rsi, [rip + .Lpnames17]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn17]
  lea rsi, [rip + pp_bank_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn17]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "acc"
  .Lgvan1: .string "cur"
  .Lgvan2: .string "lst"
  .Lgvan3: .string "list_reverse"
  .Lgvan4: .string "stk"
  .Lgvan5: .string "stk_push_frame"
  .Lgvan6: .string "stk_push_item"
  .Lgvan7: .string "child"
  .Lgvan8: .string "stk_pop_into_parent"
  .Lgvan9: .string "stk_pop_final"
  .Lgvan10: .string "init_list"
  .Lgvan11: .string "Init_list"
  .Lgvan12: .string "dummy"
  .Lgvan13: .string "push_list"
  .Lgvan14: .string "Push_list"
  .Lgvan15: .string "push_item"
  .Lgvan16: .string "Push_item"
  .Lgvan17: .string "pop_list"
  .Lgvan18: .string "Pop_list"
  .Lgvan19: .string "pop_final"
  .Lgvan20: .string "Pop_final"
  .Lgvan21: .string "delim"
  .Lgvan22: .string "word"
  .Lgvan23: .string "group"
  .Lgvan24: .string "treebank"
  .Lgvan25: .string "node_repr"
  .Lgvan26: .string "r"
  .Lgvan27: .string "sep"
  .Lgvan28: .string "c"
  .Lgvan29: .string "node"
  .Lgvan30: .string "pad"
  .Lgvan31: .string "nxt"
  .Lgvan32: .string "pp_bank"
  .Lgvan33: .string "line"
  .Lgvan34: .string "src"
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
  .section .bss
  .align 16
__gva: .space 560, 0
  .section .text
  .intel_syntax noprefix
  .section .rodata
  .Lprocn0: .string "list_reverse"
  .Lprocn1: .string "stk_push_frame"
  .Lprocn2: .string "stk_push_item"
  .Lprocn3: .string "stk_pop_into_parent"
  .Lprocn4: .string "stk_pop_final"
  .Lprocn5: .string "node_repr"
  .Lprocn6: .string "pp_node"
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
  mov edx, 35
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
snoch340_n0_α:
# IR_VAR
bb185_α:
 mov rdi, qword ptr [rip + .Lx342_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch340_n1_α
 snoch340_n0_β:
 jmp snoch340_n2_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "ALPHABET"
snoch340_n1_α:
# IR_SUBJECT
bb186_α:
 lea rdi, [rip + .S53]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan343_sγ
 xscan343_sβ:
 jmp snoch340_n2_α
xscan343_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb187_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch346_retry
 snoch340_n1_β:
 jmp xscan343_dfail
smatch346_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb189_α:
 cmp r14d, 10
 jne xcat349_ω
 jmp xcat349_γ
 xcat349_left_β:
 jmp xcat349_ω
xcat349_γ:
# IR_MATCH_CAPTURE_SAVE
bb190_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb191_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat349_right_ω
 add r14d, 1
 jmp xcap351_γ
 xcat349_right_β:
 jmp xcat349_right_ω
xcap351_γ:
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
 jmp xscan343_dok
xcat349_right_ω:
 jmp xcat349_left_β
smatch346_elemb:
 jmp xcat349_right_β
xcat349_ω:
 jmp smatch346_adv
smatch346_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan343_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan343_dfail
 jmp smatch346_retry
xscan343_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch340_n2_α
xscan343_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch340_n2_α
snoch340_n2_α:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg357_done
 xgvarg357_β:
 jmp snoch340_n3_α
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "list(head,tail)"
xgvarg357_done:
bb196_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn360: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn360]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch340_n3_α
 jmp snoch340_n3_α
snoch340_n2_β:
 jmp snoch340_n3_α
snoch340_n3_α:
bb197_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S54]
 call rt_proc_define@PLT
 jmp snoch340_n4_α
 snoch340_n3_β:
 jmp snoch340_n4_α
snoch340_n4_α:
bb198_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S55]
 call rt_proc_define@PLT
 jmp snoch340_n5_α
 snoch340_n4_β:
 jmp snoch340_n5_α
snoch340_n5_α:
bb199_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch340_n6_α
 snoch340_n5_β:
 jmp snoch340_n6_α
snoch340_n6_α:
bb200_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch340_n7_α
 snoch340_n6_β:
 jmp snoch340_n7_α
snoch340_n7_α:
bb201_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch340_n8_α
 snoch340_n7_β:
 jmp snoch340_n8_α
snoch340_n8_α:
bb202_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch340_n9_α
 snoch340_n8_β:
 jmp snoch340_n9_α
snoch340_n9_α:
bb203_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch340_n10_α
 snoch340_n9_β:
 jmp snoch340_n10_α
snoch340_n10_α:
bb204_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch340_n11_α
 snoch340_n10_β:
 jmp snoch340_n11_α
snoch340_n11_α:
bb205_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S62]
 call rt_proc_define@PLT
 jmp snoch340_n12_α
 snoch340_n11_β:
 jmp snoch340_n12_α
snoch340_n12_α:
bb206_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S63]
 call rt_proc_define@PLT
 jmp snoch340_n13_α
 snoch340_n12_β:
 jmp snoch340_n13_α
snoch340_n13_α:
bb207_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S64]
 call rt_proc_define@PLT
 jmp snoch340_n14_α
 snoch340_n13_β:
 jmp snoch340_n14_α
snoch340_n14_α:
bb208_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S65]
 call rt_proc_define@PLT
 jmp snoch340_n15_α
 snoch340_n14_β:
 jmp snoch340_n15_α
snoch340_n15_α:
bb209_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S66]
 call rt_proc_define@PLT
 jmp snoch340_n16_α
 snoch340_n15_β:
 jmp snoch340_n16_α
snoch340_n16_α:
bb210_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S25]
 call rt_proc_define@PLT
 jmp snoch340_n17_α
 snoch340_n16_β:
 jmp snoch340_n17_α
snoch340_n17_α:
bb211_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S26]
 call rt_proc_define@PLT
 jmp snoch340_n18_α
 snoch340_n17_β:
 jmp snoch340_n18_α
snoch340_n18_α:
bb212_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S27]
 call rt_proc_define@PLT
 jmp snoch340_n19_α
 snoch340_n18_β:
 jmp snoch340_n19_α
snoch340_n19_α:
bb213_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S28]
 call rt_proc_define@PLT
 jmp snoch340_n20_α
 snoch340_n19_β:
 jmp snoch340_n20_α
snoch340_n20_α:
bb214_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S29]
 call rt_proc_define@PLT
 jmp snoch340_n21_α
 snoch340_n20_β:
 jmp snoch340_n21_α
snoch340_n21_α:
# IR_VAR
bb215_α:
 mov rdi, qword ptr [rip + .Lx380_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch340_n22_α
 snoch340_n21_β:
 jmp snoch340_n23_α
.Lx380_0:
 .quad .Lx380_0_s
.Lx380_0_s:
 .string "INPUT"
snoch340_n22_α:
bb216_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_var@PLT
 jmp snoch340_n24_α
 snoch340_n22_β:
 jmp snoch340_n23_α
snoch340_n23_α:
# IR_VAR gva
bb217_α:
 mov rax, qword ptr [rbx + 544]
 mov rdx, qword ptr [rbx + 552]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch340_n25_α
 snoch340_n23_β:
 jmp snoch340_n26_α
snoch340_n24_α:
bb218_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 144], 1
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 152], rax
 mov dword ptr [r12 + 160], 1
 lea rax, [rip + .S30]
 mov qword ptr [r12 + 168], rax
 mov dword ptr [r12 + 176], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 184], rax
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 144]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch340_n21_α
 snoch340_n24_β:
 jmp snoch340_n21_α
snoch340_n25_α:
# IR_SUBJECT
bb219_α:
 lea rdi, [rip + .S32]
 lea rsi, [r12 + 192]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan385_sγ
 xscan385_sβ:
 jmp snoch340_n26_α
xscan385_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb220_α:
 mov r13, qword ptr [r12 + 192]
 mov r15d, dword ptr [r12 + 200]
 mov dword ptr [r12 + 208], 0
 lea r10, [r12 + 216]
 jmp smatch388_retry
 snoch340_n25_β:
 jmp xscan385_dfail
smatch388_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 208]
# IR_MATCH_DEFER
bb222_α:
 lea rdi, [rip + .S34]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx391_0
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
 jne smatch388_adv
 jmp xscan385_dok
.Lx391_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch388_adv
 mov r14d, eax
 jmp xscan385_dok
 smatch388_elemb:
 jmp smatch388_adv
smatch388_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 208], 1
 mov eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jg xscan385_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan385_dfail
 jmp smatch388_retry
xscan385_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch340_n27_α
xscan385_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch340_n26_α
snoch340_n26_α:
# IR_LIT_scalar
bb224_α:
 jmp snoch340_n28_α
 snoch340_n26_β:
 jmp flat_γ
snoch340_n27_α:
bb225_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
   mov rdi, [rip + __proc + 56]
 lea rsi, [r12 + 224]
 mov edx, 0
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch340_n29_α
snoch340_n27_β:
 jmp flat_γ
snoch340_n28_α:
bb226_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S35]
 lea rsi, [rip + .S36]
 call rt_gvar_assign_str@PLT
 jmp flat_γ
 snoch340_n28_β:
 jmp flat_γ
snoch340_n29_α:
bb227_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rcx
 jmp flat_γ
 snoch340_n29_β:
 jmp flat_γ
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
.S0: .string "acc"
.S1: .string ""
.S2: .string "cur"
.S3: .string "lst"
.S4: .string "list_reverse"
.S5: .string "stk"
.S6: .string "stk_push_frame"
.S7: .string "stk_push_item"
.S8: .string "child"
.S9: .string "stk_pop_into_parent"
.S10: .string "stk_pop_final"
.S11: .string "v"
.S12: .string "init_list"
.S13: .string "epsilon . *init_list("
.S14: .string "vs"
.S15: .string ")"
.S16: .string "Init_list"
.S17: .string "dummy"
.S18: .string "push_list"
.S19: .string "epsilon . *push_list("
.S20: .string "Push_list"
.S21: .string "push_item"
.S22: .string "epsilon . *push_item("
.S23: .string "Push_item"
.S24: .string "pop_list"
.S25: .string "pop_final(v)"
.S26: .string "Pop_final(vs)"
.S27: .string "node_repr(node)r,c,sep"
.S28: .string "pp_node(node,indent,suffix)r,pad,c,nxt"
.S29: .string "pp_bank()cur"
.S30: .string "line"
.S31: .string "INPUT"
.S32: .string "src"
.S33: .string "nl"
.S34: .string "treebank"
.S35: .string "OUTPUT"
.S36: .string "Pattern match failed"
.S37: .string "pop_final"
.S38: .string "epsilon . *pop_final("
.S39: .string "Pop_final"
.S40: .string "node_repr"
.S41: .string "'"
.S42: .string "node"
.S43: .string "r"
.S44: .string "("
.S45: .string "sep"
.S46: .string "c"
.S47: .string ", "
.S48: .string "pad"
.S49: .string "indent"
.S50: .string "suffix"
.S51: .string "nxt"
.S52: .string "pp_bank"
.S53: .string "ALPHABET"
.S54: .string "list_reverse(lst)acc,cur"
.S55: .string "stk_push_frame(v)"
.S56: .string "stk_push_item(v)"
.S57: .string "stk_pop_into_parent()child"
.S58: .string "stk_pop_final(var)"
.S59: .string "init_list(v)"
.S60: .string "Init_list(vs)"
.S61: .string "push_list(v)"
.S62: .string "Push_list(vs)"
.S63: .string "push_item(v)"
.S64: .string "Push_item(vs)"
.S65: .string "pop_list()"
.S66: .string "Pop_list()"
.text
