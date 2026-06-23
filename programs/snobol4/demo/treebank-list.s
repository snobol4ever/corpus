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
  .section .rodata
  .Lprocfn62: .string "list_reverse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn62]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_named_proc@PLT
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
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xgvarg64_done
 xgvarg64_β:
 jmp snoch54_n4_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "stk"
xgvarg64_done:
bb32_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lbynamefn68: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn68]
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
 mov rdi, qword ptr [rip + .Lx71_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch54_n5_α
 snoch54_n4_β:
 jmp snoch54_n6_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
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
snoch73_n0_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg74_done
 xgvarg74_β:
 jmp snoch73_n2_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "stk"
xgvarg74_done:
bb37_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn78: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn78]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch73_n2_α
 jmp snoch73_n1_α
snoch73_n0_β:
 jmp snoch73_n2_α
snoch73_n1_α:
bb38_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch73_n2_α
 snoch73_n1_β:
 jmp snoch73_n2_α
snoch73_n2_α:
# IR_VAR
bb39_α:
 mov rdi, qword ptr [rip + .Lx81_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch73_n3_α
 snoch73_n2_β:
 jmp snoch73_n4_α
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string ""
snoch73_n3_α:
bb40_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch73_n4_α
 snoch73_n3_β:
 jmp snoch73_n4_α
snoch73_n4_α:
snoch73_n4_β:
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
snoch83_n0_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch83_n1_α
 snoch83_n0_β:
 jmp snoch83_n2_α
snoch83_n1_α:
bb42_α:
# IR_INDIRECT_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S1]
 call rt_indirect_assign_str@PLT
 jmp snoch83_n2_α
 snoch83_n1_β:
 jmp snoch83_n2_α
snoch83_n2_α:
# IR_LIT_scalar
bb43_α:
 jmp snoch83_n3_α
 snoch83_n2_β:
 jmp snoch83_n4_α
snoch83_n3_α:
bb44_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_str@PLT
 jmp snoch83_n4_α
 snoch83_n3_β:
 jmp snoch83_n4_α
snoch83_n4_α:
# IR_VAR
bb45_α:
 mov rdi, qword ptr [rip + .Lx89_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch83_n5_α
 snoch83_n4_β:
 jmp snoch83_n6_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string ""
snoch83_n5_α:
bb46_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch83_n6_α
 snoch83_n5_β:
 jmp snoch83_n6_α
snoch83_n6_α:
snoch83_n6_β:
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
snoch91_n0_α:
xgvarg92_done:
bb47_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn94: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn94]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch91_n2_α
 jmp snoch91_n1_α
snoch91_n0_β:
 jmp snoch91_n2_α
snoch91_n1_α:
bb48_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch91_n2_α
 snoch91_n1_β:
 jmp snoch91_n2_α
snoch91_n2_α:
snoch91_n2_β:
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
snoch96_n0_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx99_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg97_done
 xgvarg97_β:
 jmp snoch96_n2_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "v"
xgvarg97_done:
bb50_α:
# BOX IR_CALL stk_push_frame(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn101: .string "stk_push_frame"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn101]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch96_n2_α
 jmp snoch96_n1_α
snoch96_n0_β:
 jmp snoch96_n2_α
snoch96_n1_α:
bb51_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch96_n2_α
 snoch96_n1_β:
 jmp snoch96_n2_α
snoch96_n2_α:
# IR_VAR
bb52_α:
 mov rdi, qword ptr [rip + .Lx104_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch96_n3_α
 snoch96_n2_β:
 jmp snoch96_n4_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string ""
snoch96_n3_α:
bb53_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch96_n4_α
 snoch96_n3_β:
 jmp snoch96_n4_α
snoch96_n4_α:
snoch96_n4_β:
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
snoch106_n0_α:
xgvarg107_done:
bb54_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn109: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn109]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch106_n2_α
 jmp snoch106_n1_α
snoch106_n0_β:
 jmp snoch106_n2_α
snoch106_n1_α:
bb55_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch106_n2_α
 snoch106_n1_β:
 jmp snoch106_n2_α
snoch106_n2_α:
snoch106_n2_β:
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
snoch111_n0_α:
# IR_VAR
bb56_α:
 mov rdi, qword ptr [rip + .Lx114_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg112_done
 xgvarg112_β:
 jmp snoch111_n2_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "v"
xgvarg112_done:
bb57_α:
# BOX IR_CALL stk_push_item(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn116: .string "stk_push_item"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn116]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch111_n2_α
 jmp snoch111_n1_α
snoch111_n0_β:
 jmp snoch111_n2_α
snoch111_n1_α:
bb58_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch111_n2_α
 snoch111_n1_β:
 jmp snoch111_n2_α
snoch111_n2_α:
# IR_VAR
bb59_α:
 mov rdi, qword ptr [rip + .Lx119_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch111_n3_α
 snoch111_n2_β:
 jmp snoch111_n4_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string ""
snoch111_n3_α:
bb60_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch111_n4_α
 snoch111_n3_β:
 jmp snoch111_n4_α
snoch111_n4_α:
snoch111_n4_β:
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
snoch121_n0_α:
xgvarg122_done:
bb61_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn124: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn124]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch121_n2_α
 jmp snoch121_n1_α
snoch121_n0_β:
 jmp snoch121_n2_α
snoch121_n1_α:
bb62_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch121_n2_α
 snoch121_n1_β:
 jmp snoch121_n2_α
snoch121_n2_α:
snoch121_n2_β:
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
snoch126_n0_α:
bb63_α:
# BOX IR_CALL stk_pop_into_parent(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn128: .string "stk_pop_into_parent"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn128]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch126_n2_α
 jmp snoch126_n1_α
snoch126_n0_β:
 jmp snoch126_n2_α
snoch126_n1_α:
bb64_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch126_n2_α
 snoch126_n1_β:
 jmp snoch126_n2_α
snoch126_n2_α:
# IR_VAR
bb65_α:
 mov rdi, qword ptr [rip + .Lx131_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch126_n3_α
 snoch126_n2_β:
 jmp snoch126_n4_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string ""
snoch126_n3_α:
bb66_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S19]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch126_n4_α
 snoch126_n3_β:
 jmp snoch126_n4_α
snoch126_n4_α:
snoch126_n4_β:
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
snoch133_n0_α:
bb67_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S20]
 call rt_proc_define@PLT
 jmp snoch133_n1_α
 snoch133_n0_β:
 jmp snoch133_n1_α
snoch133_n1_α:
bb68_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S21]
 call rt_proc_define@PLT
 jmp snoch133_n2_α
 snoch133_n1_β:
 jmp snoch133_n2_α
snoch133_n2_α:
bb69_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S22]
 call rt_proc_define@PLT
 jmp snoch133_n3_α
 snoch133_n2_β:
 jmp snoch133_n3_α
snoch133_n3_α:
bb70_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch133_n4_α
 snoch133_n3_β:
 jmp snoch133_n4_α
snoch133_n4_α:
bb71_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch133_n5_α
 snoch133_n4_β:
 jmp snoch133_n5_α
snoch133_n5_α:
# IR_VAR
bb72_α:
 mov rdi, qword ptr [rip + .Lx140_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch133_n6_α
 snoch133_n5_β:
 jmp snoch133_n7_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "INPUT"
snoch133_n6_α:
bb73_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S25]
 lea rsi, [rip + .S26]
 call rt_gvar_assign_var@PLT
 jmp snoch133_n8_α
 snoch133_n6_β:
 jmp snoch133_n7_α
snoch133_n7_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx143_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch133_n9_α
 snoch133_n7_β:
 jmp snoch133_n10_α
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "src"
snoch133_n8_α:
bb75_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 32], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 40], rax
 mov dword ptr [r12 + 48], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 56], rax
 mov dword ptr [r12 + 64], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 72], rax
 lea rdi, [rip + .S27]
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
 jmp snoch133_n5_α
 snoch133_n8_β:
 jmp snoch133_n5_α
snoch133_n9_α:
# IR_SUBJECT
bb76_α:
 lea rdi, [rip + .S27]
 lea rsi, [r12 + 80]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan145_sγ
 xscan145_sβ:
 jmp snoch133_n10_α
xscan145_sγ:
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
 jmp smatch148_retry
 snoch133_n9_β:
 jmp xscan145_dfail
smatch148_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 96]
# IR_MATCH_DEFER
bb79_α:
 lea rdi, [rip + .S29]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx151_0
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
 jne smatch148_adv
 jmp xscan145_dok
.Lx151_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch148_adv
 mov r14d, eax
 jmp xscan145_dok
 smatch148_elemb:
 jmp smatch148_adv
smatch148_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 96], 1
 mov eax, dword ptr [r12 + 96]
 cmp eax, r15d
 jg xscan145_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan145_dfail
 jmp smatch148_retry
xscan145_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch133_n11_α
xscan145_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch133_n10_α
snoch133_n10_α:
# IR_LIT_scalar
bb81_α:
 jmp snoch133_n12_α
 snoch133_n10_β:
 jmp Pop_list_γ
snoch133_n11_α:
bb82_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn155: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn155]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je Pop_list_γ
 jmp snoch133_n13_α
snoch133_n11_β:
 jmp Pop_list_γ
snoch133_n12_α:
bb83_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_str@PLT
 jmp Pop_list_γ
 snoch133_n12_β:
 jmp Pop_list_γ
snoch133_n13_α:
bb84_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp Pop_list_γ
 snoch133_n13_β:
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
snoch158_n0_α:
# IR_VAR
bb85_α:
 mov rdi, qword ptr [rip + .Lx161_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg159_done
 xgvarg159_β:
 jmp snoch158_n2_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "v"
xgvarg159_done:
bb86_α:
# BOX IR_CALL stk_pop_final(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn163: .string "stk_pop_final"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn163]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch158_n2_α
 jmp snoch158_n1_α
snoch158_n0_β:
 jmp snoch158_n2_α
snoch158_n1_α:
bb87_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch158_n2_α
 snoch158_n1_β:
 jmp snoch158_n2_α
snoch158_n2_α:
# IR_VAR
bb88_α:
 mov rdi, qword ptr [rip + .Lx166_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch158_n3_α
 snoch158_n2_β:
 jmp snoch158_n4_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string ""
snoch158_n3_α:
bb89_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S32]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch158_n4_α
 snoch158_n3_β:
 jmp snoch158_n4_α
snoch158_n4_α:
snoch158_n4_β:
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
snoch168_n0_α:
xgvarg169_done:
bb90_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn171: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn171]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch168_n2_α
 jmp snoch168_n1_α
snoch168_n0_β:
 jmp snoch168_n2_α
snoch168_n1_α:
bb91_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S33]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call rt_gvar_assign_descr@PLT
 jmp snoch168_n2_α
 snoch168_n1_β:
 jmp snoch168_n2_α
snoch168_n2_α:
snoch168_n2_β:
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
snoch173_n0_α:
# IR_VAR
bb92_α:
 mov rdi, qword ptr [rip + .Lx178_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg176_done
 xgvarg176_β:
 jmp snoch173_n2_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "node"
xgvarg176_done:
bb93_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn180: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn180]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch173_n2_α
 jmp xgvarg175_done
xgvarg175_β:
 jmp snoch173_n2_α
xgvarg175_done:
# IR_KEYWORD_read
bb94_α:
 mov rdi, qword ptr [rip + .Lx182_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg181_done
 xgvarg181_β:
 jmp snoch173_n2_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "LCASE"
xgvarg181_done:
# IR_KEYWORD_read
bb95_α:
 mov rdi, qword ptr [rip + .Lx184_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg183_done
 xgvarg183_β:
 jmp snoch173_n2_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "UCASE"
xgvarg183_done:
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
  .Lbynamefn186: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn186]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch173_n2_α
 jmp xgvarg174_done
xgvarg174_β:
 jmp snoch173_n2_α
xgvarg174_done:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [r12 + 168], rax
 jmp xgvarg187_done
 xgvarg187_β:
 jmp snoch173_n2_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "STRING"
xgvarg187_done:
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
  .Lbynamefn190: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn190]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch173_n2_α
 jmp snoch173_n1_α
snoch173_n0_β:
 jmp snoch173_n2_α
snoch173_n1_α:
bb99_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 224], 0
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 232], rax
 mov dword ptr [r12 + 240], 1
 lea rax, [rip + .S36]
 mov qword ptr [r12 + 248], rax
 mov dword ptr [r12 + 256], 0
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 264], rax
 lea rdi, [rip + .S34]
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
 jmp snoch173_n3_α
 snoch173_n1_β:
 jmp snoch173_n3_α
snoch173_n2_α:
# IR_LIT_scalar
bb100_α:
 jmp snoch173_n4_α
 snoch173_n2_β:
 jmp snoch173_n5_α
snoch173_n3_α:
snoch173_n3_β:
jmp node_repr_γ
jmp node_repr_γ
snoch173_n4_α:
bb101_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S37]
 lea rsi, [rip + .S38]
 call rt_gvar_assign_str@PLT
 jmp snoch173_n5_α
 snoch173_n4_β:
 jmp snoch173_n5_α
snoch173_n5_α:
# IR_LIT_scalar
bb102_α:
 jmp snoch173_n6_α
 snoch173_n5_β:
 jmp snoch173_n7_α
snoch173_n6_α:
bb103_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S39]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_str@PLT
 jmp snoch173_n7_α
 snoch173_n6_β:
 jmp snoch173_n7_α
snoch173_n7_α:
# IR_VAR
bb104_α:
 mov rdi, qword ptr [rip + .Lx197_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch173_n8_α
 snoch173_n7_β:
 jmp snoch173_n9_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "node"
snoch173_n8_α:
bb105_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S40]
 lea rsi, [rip + .S36]
 call rt_gvar_assign_var@PLT
 jmp snoch173_n9_α
 snoch173_n8_β:
 jmp snoch173_n9_α
snoch173_n9_α:
# IR_VAR
bb106_α:
 mov rdi, qword ptr [rip + .Lx201_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xgvarg199_done
 xgvarg199_β:
 jmp snoch173_n11_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "c"
xgvarg199_done:
bb107_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+288] -> [r12+320]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lbynamefn203: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn203]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je snoch173_n11_α
 jmp snoch173_n10_α
snoch173_n9_β:
 jmp snoch173_n11_α
snoch173_n10_α:
# IR_VAR
bb108_α:
 mov rdi, qword ptr [rip + .Lx205_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch173_n12_α
 snoch173_n10_β:
 jmp snoch173_n13_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "r"
snoch173_n11_α:
bb109_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 352], 1
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 360], rax
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S41]
 mov qword ptr [r12 + 376], rax
 lea rdi, [rip + .S34]
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
 jmp snoch173_n3_α
 snoch173_n11_β:
 jmp snoch173_n3_α
snoch173_n12_α:
# IR_VAR
bb110_α:
 mov rdi, qword ptr [rip + .Lx208_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch173_n14_α
 snoch173_n12_β:
 jmp snoch173_n13_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "sep"
snoch173_n13_α:
# IR_LIT_scalar
bb111_α:
 jmp snoch173_n15_α
 snoch173_n13_β:
 jmp snoch173_n16_α
snoch173_n14_α:
bb112_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch173_n17_α
 snoch173_n14_β:
 jmp snoch173_n13_α
snoch173_n15_α:
bb113_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S39]
 lea rsi, [rip + .S42]
 call rt_gvar_assign_str@PLT
 jmp snoch173_n16_α
 snoch173_n15_β:
 jmp snoch173_n16_α
snoch173_n16_α:
# IR_VAR
bb114_α:
 mov rdi, qword ptr [rip + .Lx214_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xgvarg212_done
 xgvarg212_β:
 jmp snoch173_n9_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "c"
xgvarg212_done:
bb115_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+416] -> [r12+448]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lbynamefn216: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn216]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je snoch173_n9_α
 jmp snoch173_n18_α
snoch173_n16_β:
 jmp snoch173_n9_α
snoch173_n17_α:
# IR_VAR
bb116_α:
 mov rdi, qword ptr [rip + .Lx220_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xgvarg218_done
 xgvarg218_β:
 jmp snoch173_n13_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "c"
xgvarg218_done:
bb117_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lbynamefn222: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn222]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch173_n13_α
 jmp xgvarg217_done
xgvarg217_β:
 jmp snoch173_n13_α
xgvarg217_done:
bb118_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+480] -> [r12+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lprocfn224: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn224]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je snoch173_n13_α
 jmp snoch173_n19_α
snoch173_n17_β:
 jmp snoch173_n13_α
snoch173_n18_α:
bb119_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S40]
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n9_α
 snoch173_n18_β:
 jmp snoch173_n9_α
snoch173_n19_α:
bb120_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp snoch173_n20_α
 snoch173_n19_β:
 jmp snoch173_n13_α
snoch173_n20_α:
bb121_α:
# IR_ASSIGN
 lea rdi, [rip + .S37]
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n13_α
 snoch173_n20_β:
 jmp snoch173_n13_α
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
snoch229_n0_α:
# IR_VAR
bb122_α:
 mov rdi, qword ptr [rip + .Lx232_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg230_done
 xgvarg230_β:
 jmp snoch229_n2_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "node"
xgvarg230_done:
bb123_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn234: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn234]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch229_n2_α
 jmp snoch229_n1_α
snoch229_n0_β:
 jmp snoch229_n2_α
snoch229_n1_α:
bb124_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S37]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch229_n2_α
 snoch229_n1_β:
 jmp snoch229_n2_α
snoch229_n2_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg236_done
 xgvarg236_β:
 jmp snoch229_n4_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string " "
xgvarg236_done:
# IR_VAR
bb126_α:
 mov rdi, qword ptr [rip + .Lx240_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg238_done
 xgvarg238_β:
 jmp snoch229_n4_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "indent"
xgvarg238_done:
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
  .Lbynamefn242: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn242]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch229_n4_α
 jmp snoch229_n3_α
snoch229_n2_β:
 jmp snoch229_n4_α
snoch229_n3_α:
bb128_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 call rt_gvar_assign_descr@PLT
 jmp snoch229_n4_α
 snoch229_n3_β:
 jmp snoch229_n4_α
snoch229_n4_α:
# IR_LIT_I
bb129_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [r12 + 152], rax
 jmp xgvarg244_done
 xgvarg244_β:
 jmp snoch229_n6_α
.Lx245_0:
 .quad 80
xgvarg244_done:
xgvarg246_done:
bb130_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+144] -> [r12+176]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+192]
   lea rdi, [rip + .S44]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 208], rax
# marshal arg0 = gvar NV_GET -> [r12+240]
   lea rdi, [rip + .S37]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
  .section .rodata
  .Lcallfn248: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn248]
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
  .Lbynamefn249: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn249]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je snoch229_n6_α
 jmp snoch229_n5_α
snoch229_n4_β:
 jmp snoch229_n6_α
snoch229_n5_α:
bb131_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 256], 1
 lea rax, [rip + .S43]
 mov qword ptr [r12 + 264], rax
 mov dword ptr [r12 + 272], 1
 lea rax, [rip + .S37]
 mov qword ptr [r12 + 280], rax
 mov dword ptr [r12 + 288], 1
 lea rax, [rip + .S45]
 mov qword ptr [r12 + 296], rax
 lea rdi, [rip + .S30]
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
 jmp snoch229_n7_α
 snoch229_n5_β:
 jmp snoch229_n7_α
snoch229_n6_α:
# IR_VAR
bb132_α:
 mov rdi, qword ptr [rip + .Lx252_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch229_n8_α
 snoch229_n6_β:
 jmp snoch229_n9_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "pad"
snoch229_n7_α:
snoch229_n7_β:
jmp pp_node_γ
jmp pp_node_γ
snoch229_n8_α:
# IR_LIT_scalar
bb133_α:
 jmp snoch229_n10_α
 snoch229_n8_β:
 jmp snoch229_n9_α
snoch229_n9_α:
# IR_VAR
bb134_α:
 mov rdi, qword ptr [rip + .Lx256_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xgvarg254_done
 xgvarg254_β:
 jmp snoch229_n12_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "node"
xgvarg254_done:
bb135_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+320] -> [r12+352]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lbynamefn258: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn258]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je snoch229_n12_α
 jmp snoch229_n11_α
snoch229_n9_β:
 jmp snoch229_n12_α
snoch229_n10_α:
# IR_LIT_S
bb136_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 376], rax
 jmp xgvcat259_1d
 xgvcat259_1b:
 jmp snoch229_n9_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "( "
xgvcat259_1d:
bb137_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch229_n13_α
 snoch229_n10_β:
 jmp snoch229_n9_α
snoch229_n11_α:
bb138_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S40]
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_gvar_assign_descr@PLT
 jmp snoch229_n12_α
 snoch229_n11_β:
 jmp snoch229_n12_α
snoch229_n12_α:
# IR_VAR
bb139_α:
 mov rdi, qword ptr [rip + .Lx265_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg263_done
 xgvarg263_β:
 jmp snoch229_n15_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "c"
xgvarg263_done:
bb140_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lbynamefn267: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn267]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch229_n15_α
 jmp snoch229_n14_α
snoch229_n12_β:
 jmp snoch229_n15_α
snoch229_n13_α:
# IR_LIT_scalar
bb141_α:
 jmp snoch229_n16_α
 snoch229_n13_β:
 jmp snoch229_n9_α
snoch229_n14_α:
# IR_VAR
bb142_α:
 mov rdi, qword ptr [rip + .Lx271_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xgvarg269_done
 xgvarg269_β:
 jmp snoch229_n18_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "c"
xgvarg269_done:
bb143_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+448] -> [r12+480]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lbynamefn273: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn273]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je snoch229_n18_α
 jmp snoch229_n17_α
snoch229_n14_β:
 jmp snoch229_n18_α
snoch229_n15_α:
bb144_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch229_n19_α
 snoch229_n15_β:
 jmp snoch229_n19_α
snoch229_n16_α:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [r12 + 504], rax
 jmp xgvcat275_1d
 xgvcat275_1b:
 jmp snoch229_n9_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "'"
xgvcat275_1d:
bb146_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp snoch229_n20_α
 snoch229_n16_β:
 jmp snoch229_n9_α
snoch229_n17_α:
bb147_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S46]
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_gvar_assign_descr@PLT
 jmp snoch229_n18_α
 snoch229_n17_β:
 jmp snoch229_n18_α
snoch229_n18_α:
# IR_VAR
bb148_α:
 mov rdi, qword ptr [rip + .Lx281_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xgvarg279_done
 xgvarg279_β:
 jmp snoch229_n22_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "nxt"
xgvarg279_done:
bb149_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+528] -> [r12+560]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lbynamefn283: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn283]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch229_n22_α
 jmp snoch229_n21_α
snoch229_n18_β:
 jmp snoch229_n22_α
snoch229_n19_α:
# IR_VAR
bb150_α:
 mov rdi, qword ptr [rip + .Lx285_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch229_n23_α
 snoch229_n19_β:
 jmp snoch229_n24_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "INPUT"
snoch229_n20_α:
# IR_VAR
bb151_α:
 mov rdi, qword ptr [rip + .Lx288_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xgvarg286_done
 xgvarg286_β:
 jmp snoch229_n9_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "node"
xgvarg286_done:
bb152_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+592] -> [r12+624]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lbynamefn290: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn290]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je snoch229_n9_α
 jmp snoch229_n25_α
snoch229_n20_β:
 jmp snoch229_n9_α
snoch229_n21_α:
# IR_VAR
bb153_α:
 mov rdi, qword ptr [rip + .Lx294_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xgvarg292_done
 xgvarg292_β:
 jmp snoch229_n26_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "c"
xgvarg292_done:
bb154_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+640] -> [r12+672]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lbynamefn296: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn296]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je snoch229_n26_α
 jmp xgvarg291_done
xgvarg291_β:
 jmp snoch229_n26_α
xgvarg291_done:
xgvarg297_done:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 696], rax
 jmp xgvarg298_done
 xgvarg298_β:
 jmp snoch229_n26_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string ","
xgvarg298_done:
bb156_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+656] -> [r12+720]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+736]
   lea rdi, [rip + .S44]
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
  .section .rodata
  .Lprocfn301: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn301]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je snoch229_n26_α
 jmp snoch229_n26_α
snoch229_n21_β:
 jmp snoch229_n26_α
snoch229_n22_α:
# IR_VAR
bb157_α:
 mov rdi, qword ptr [rip + .Lx305_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xgvarg303_done
 xgvarg303_β:
 jmp snoch229_n7_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "c"
xgvarg303_done:
bb158_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+784] -> [r12+816]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lbynamefn307: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn307]
 lea rsi, [r12 + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je snoch229_n7_α
 jmp xgvarg302_done
xgvarg302_β:
 jmp snoch229_n7_α
xgvarg302_done:
xgvarg308_done:
xgvarg309_done:
bb159_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+800] -> [r12+848]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+864]
   lea rdi, [rip + .S44]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 896], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 896]
 add rax, rcx
 mov qword ptr [r12 + 864], 6
 mov qword ptr [r12 + 872], rax
# marshal arg2 = nested producer-box slot [r12+880] -> [r12+880]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lprocfn311: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn311]
 lea rsi, [r12 + 848]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je snoch229_n7_α
 jmp snoch229_n7_α
snoch229_n22_β:
 jmp snoch229_n7_α
snoch229_n23_α:
bb160_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S25]
 lea rsi, [rip + .S26]
 call rt_gvar_assign_var@PLT
 jmp snoch229_n27_α
 snoch229_n23_β:
 jmp snoch229_n24_α
snoch229_n24_α:
# IR_VAR
bb161_α:
 mov rdi, qword ptr [rip + .Lx314_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch229_n28_α
 snoch229_n24_β:
 jmp snoch229_n29_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "src"
snoch229_n25_α:
bb162_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp snoch229_n30_α
 snoch229_n25_β:
 jmp snoch229_n9_α
snoch229_n26_α:
# IR_VAR
bb163_α:
 mov rdi, qword ptr [rip + .Lx317_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp snoch229_n31_α
 snoch229_n26_β:
 jmp snoch229_n12_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "nxt"
snoch229_n27_α:
bb164_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 960], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 968], rax
 mov dword ptr [r12 + 976], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 984], rax
 mov dword ptr [r12 + 992], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1000], rax
 lea rdi, [rip + .S27]
 lea rsi, [r12 + 960]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch229_n19_α
 snoch229_n27_β:
 jmp snoch229_n19_α
snoch229_n28_α:
# IR_SUBJECT
bb165_α:
 lea rdi, [rip + .S27]
 lea rsi, [r12 + 1008]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan319_sγ
 xscan319_sβ:
 jmp snoch229_n29_α
xscan319_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb166_α:
 mov r13, qword ptr [r12 + 1008]
 mov r15d, dword ptr [r12 + 1016]
 mov dword ptr [r12 + 1024], 0
 lea r10, [r12 + 1032]
 jmp smatch322_retry
 snoch229_n28_β:
 jmp xscan319_dfail
smatch322_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1024]
# IR_MATCH_DEFER
bb168_α:
 lea rdi, [rip + .S29]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx325_0
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
 jne smatch322_adv
 jmp xscan319_dok
.Lx325_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch322_adv
 mov r14d, eax
 jmp xscan319_dok
 smatch322_elemb:
 jmp smatch322_adv
smatch322_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1024], 1
 mov eax, dword ptr [r12 + 1024]
 cmp eax, r15d
 jg xscan319_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan319_dfail
 jmp smatch322_retry
xscan319_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch229_n32_α
xscan319_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch229_n29_α
snoch229_n29_α:
# IR_LIT_scalar
bb170_α:
 jmp snoch229_n33_α
 snoch229_n29_β:
 jmp pp_node_γ
snoch229_n30_α:
# IR_LIT_scalar
bb171_α:
 jmp snoch229_n34_α
 snoch229_n30_β:
 jmp snoch229_n9_α
snoch229_n31_α:
bb172_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S40]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch229_n12_α
 snoch229_n31_β:
 jmp snoch229_n12_α
snoch229_n32_α:
bb173_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn331: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn331]
 lea rsi, [r12 + 1040]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch229_n35_α
snoch229_n32_β:
 jmp pp_node_γ
snoch229_n33_α:
bb174_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_str@PLT
 jmp pp_node_γ
 snoch229_n33_β:
 jmp pp_node_γ
snoch229_n34_α:
# IR_LIT_S
bb175_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [r12 + 1064], rax
 jmp xgvcat333_1d
 xgvcat333_1b:
 jmp snoch229_n9_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "',"
xgvcat333_1d:
bb176_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp snoch229_n36_α
 snoch229_n34_β:
 jmp snoch229_n9_α
snoch229_n35_α:
bb177_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch229_n35_β:
 jmp pp_node_γ
snoch229_n36_α:
bb178_α:
# IR_ASSIGN
 lea rdi, [rip + .S30]
 mov rsi, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 call rt_gvar_assign_descr@PLT
 jmp snoch229_n9_α
 snoch229_n36_β:
 jmp snoch229_n9_α
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
snoch339_n0_α:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx342_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg340_done
 xgvarg340_β:
 jmp snoch339_n1_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "bank"
xgvarg340_done:
# IR_LIT_I
bb180_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg343_done
 xgvarg343_β:
 jmp snoch339_n1_α
.Lx344_0:
 .quad 0
xgvarg343_done:
# IR_LIT_S
bb181_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg345_done
 xgvarg345_β:
 jmp snoch339_n1_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string ""
xgvarg345_done:
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
  .section .rodata
  .Lprocfn348: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn348]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch339_n1_α
 jmp snoch339_n1_α
snoch339_n0_β:
 jmp snoch339_n1_α
snoch339_n1_α:
# IR_VAR
bb183_α:
 mov rdi, qword ptr [rip + .Lx350_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch339_n2_α
 snoch339_n1_β:
 jmp snoch339_n3_α
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string ""
snoch339_n2_α:
bb184_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S47]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch339_n3_α
 snoch339_n2_β:
 jmp snoch339_n3_α
snoch339_n3_α:
snoch339_n3_β:
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
  .Lpnames0:
  .quad .Lpp0_0
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
  .Lpnames3:
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
  .Lpnames15:
  .quad .Lpp15_0
  .quad 0
  .Lpn16: .string "pp_node"
  .Lpp16_0: .string "node"
  .Lpp16_1: .string "indent"
  .Lpp16_2: .string "suffix"
  .Lpnames16:
  .quad .Lpp16_0
  .quad .Lpp16_1
  .quad .Lpp16_2
  .quad 0
  .Lpn17: .string "pp_bank"
  .Lpnames17:
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
  mov edx, 0
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
  mov esi, 64
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
  mov esi, 64
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
  mov esi, 64
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
  mov esi, 64
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + .Lpnames15]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + node_repr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn15]
  mov esi, 560
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + .Lpnames16]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn16]
  mov esi, 1088
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn17]
  lea rsi, [rip + .Lpnames17]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn17]
  lea rsi, [rip + pp_bank_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn17]
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
snoch352_n0_α:
# IR_VAR
bb185_α:
 mov rdi, qword ptr [rip + .Lx354_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch352_n1_α
 snoch352_n0_β:
 jmp snoch352_n2_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "ALPHABET"
snoch352_n1_α:
# IR_SUBJECT
bb186_α:
 lea rdi, [rip + .S48]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan355_sγ
 xscan355_sβ:
 jmp snoch352_n2_α
xscan355_sγ:
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
 jmp smatch358_retry
 snoch352_n1_β:
 jmp xscan355_dfail
smatch358_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb189_α:
 cmp r14d, 10
 jne xcat361_ω
 jmp xcat361_γ
 xcat361_left_β:
 jmp xcat361_ω
xcat361_γ:
# IR_MATCH_CAPTURE_SAVE
bb190_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb191_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat361_right_ω
 add r14d, 1
 jmp xcap363_γ
 xcat361_right_β:
 jmp xcat361_right_ω
xcap363_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S28]
 mov esi, dword ptr [r12 + 48]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan355_dok
xcat361_right_ω:
 jmp xcat361_left_β
smatch358_elemb:
 jmp xcat361_right_β
xcat361_ω:
 jmp smatch358_adv
smatch358_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan355_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan355_dfail
 jmp smatch358_retry
xscan355_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch352_n2_α
xscan355_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch352_n2_α
snoch352_n2_α:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg369_done
 xgvarg369_β:
 jmp snoch352_n3_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "list(head,tail)"
xgvarg369_done:
bb196_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn372: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn372]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch352_n3_α
 jmp snoch352_n3_α
snoch352_n2_β:
 jmp snoch352_n3_α
snoch352_n3_α:
bb197_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S49]
 call rt_proc_define@PLT
 jmp snoch352_n4_α
 snoch352_n3_β:
 jmp snoch352_n4_α
snoch352_n4_α:
bb198_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S50]
 call rt_proc_define@PLT
 jmp snoch352_n5_α
 snoch352_n4_β:
 jmp snoch352_n5_α
snoch352_n5_α:
bb199_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S51]
 call rt_proc_define@PLT
 jmp snoch352_n6_α
 snoch352_n5_β:
 jmp snoch352_n6_α
snoch352_n6_α:
bb200_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S52]
 call rt_proc_define@PLT
 jmp snoch352_n7_α
 snoch352_n6_β:
 jmp snoch352_n7_α
snoch352_n7_α:
bb201_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S53]
 call rt_proc_define@PLT
 jmp snoch352_n8_α
 snoch352_n7_β:
 jmp snoch352_n8_α
snoch352_n8_α:
bb202_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S54]
 call rt_proc_define@PLT
 jmp snoch352_n9_α
 snoch352_n8_β:
 jmp snoch352_n9_α
snoch352_n9_α:
bb203_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S55]
 call rt_proc_define@PLT
 jmp snoch352_n10_α
 snoch352_n9_β:
 jmp snoch352_n10_α
snoch352_n10_α:
bb204_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch352_n11_α
 snoch352_n10_β:
 jmp snoch352_n11_α
snoch352_n11_α:
bb205_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch352_n12_α
 snoch352_n11_β:
 jmp snoch352_n12_α
snoch352_n12_α:
bb206_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch352_n13_α
 snoch352_n12_β:
 jmp snoch352_n13_α
snoch352_n13_α:
bb207_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch352_n14_α
 snoch352_n13_β:
 jmp snoch352_n14_α
snoch352_n14_α:
bb208_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch352_n15_α
 snoch352_n14_β:
 jmp snoch352_n15_α
snoch352_n15_α:
bb209_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch352_n16_α
 snoch352_n15_β:
 jmp snoch352_n16_α
snoch352_n16_α:
bb210_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S20]
 call rt_proc_define@PLT
 jmp snoch352_n17_α
 snoch352_n16_β:
 jmp snoch352_n17_α
snoch352_n17_α:
bb211_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S21]
 call rt_proc_define@PLT
 jmp snoch352_n18_α
 snoch352_n17_β:
 jmp snoch352_n18_α
snoch352_n18_α:
bb212_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S22]
 call rt_proc_define@PLT
 jmp snoch352_n19_α
 snoch352_n18_β:
 jmp snoch352_n19_α
snoch352_n19_α:
bb213_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch352_n20_α
 snoch352_n19_β:
 jmp snoch352_n20_α
snoch352_n20_α:
bb214_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch352_n21_α
 snoch352_n20_β:
 jmp snoch352_n21_α
snoch352_n21_α:
# IR_VAR
bb215_α:
 mov rdi, qword ptr [rip + .Lx392_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch352_n22_α
 snoch352_n21_β:
 jmp snoch352_n23_α
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "INPUT"
snoch352_n22_α:
bb216_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S25]
 lea rsi, [rip + .S26]
 call rt_gvar_assign_var@PLT
 jmp snoch352_n24_α
 snoch352_n22_β:
 jmp snoch352_n23_α
snoch352_n23_α:
# IR_VAR
bb217_α:
 mov rdi, qword ptr [rip + .Lx395_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch352_n25_α
 snoch352_n23_β:
 jmp snoch352_n26_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "src"
snoch352_n24_α:
bb218_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 144], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 152], rax
 mov dword ptr [r12 + 160], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 168], rax
 mov dword ptr [r12 + 176], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 184], rax
 lea rdi, [rip + .S27]
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
 jmp snoch352_n21_α
 snoch352_n24_β:
 jmp snoch352_n21_α
snoch352_n25_α:
# IR_SUBJECT
bb219_α:
 lea rdi, [rip + .S27]
 lea rsi, [r12 + 192]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan397_sγ
 xscan397_sβ:
 jmp snoch352_n26_α
xscan397_sγ:
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
 jmp smatch400_retry
 snoch352_n25_β:
 jmp xscan397_dfail
smatch400_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 208]
# IR_MATCH_DEFER
bb222_α:
 lea rdi, [rip + .S29]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx403_0
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
 jne smatch400_adv
 jmp xscan397_dok
.Lx403_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch400_adv
 mov r14d, eax
 jmp xscan397_dok
 smatch400_elemb:
 jmp smatch400_adv
smatch400_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 208], 1
 mov eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jg xscan397_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan397_dfail
 jmp smatch400_retry
xscan397_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch352_n27_α
xscan397_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch352_n26_α
snoch352_n26_α:
# IR_LIT_scalar
bb224_α:
 jmp snoch352_n28_α
 snoch352_n26_β:
 jmp flat_γ
snoch352_n27_α:
bb225_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn407: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn407]
 lea rsi, [r12 + 224]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch352_n29_α
snoch352_n27_β:
 jmp flat_γ
snoch352_n28_α:
bb226_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_str@PLT
 jmp flat_γ
 snoch352_n28_β:
 jmp flat_γ
snoch352_n29_α:
bb227_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch352_n29_β:
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
.S13: .string "Init_list"
.S14: .string "dummy"
.S15: .string "push_list"
.S16: .string "Push_list"
.S17: .string "push_item"
.S18: .string "Push_item"
.S19: .string "pop_list"
.S20: .string "pop_final(v)"
.S21: .string "Pop_final(vs)"
.S22: .string "node_repr(node)r,c,sep"
.S23: .string "pp_node(node,indent,suffix)r,pad,c,nxt"
.S24: .string "pp_bank()cur"
.S25: .string "line"
.S26: .string "INPUT"
.S27: .string "src"
.S28: .string "nl"
.S29: .string "treebank"
.S30: .string "OUTPUT"
.S31: .string "Pattern match failed"
.S32: .string "pop_final"
.S33: .string "Pop_final"
.S34: .string "node_repr"
.S35: .string "'"
.S36: .string "node"
.S37: .string "r"
.S38: .string "("
.S39: .string "sep"
.S40: .string "c"
.S41: .string ")"
.S42: .string ", "
.S43: .string "pad"
.S44: .string "indent"
.S45: .string "suffix"
.S46: .string "nxt"
.S47: .string "pp_bank"
.S48: .string "ALPHABET"
.S49: .string "list_reverse(lst)acc,cur"
.S50: .string "stk_push_frame(v)"
.S51: .string "stk_push_item(v)"
.S52: .string "stk_pop_into_parent()child"
.S53: .string "stk_pop_final(var)"
.S54: .string "init_list(v)"
.S55: .string "Init_list(vs)"
.S56: .string "push_list(v)"
.S57: .string "Push_list(vs)"
.S58: .string "push_item(v)"
.S59: .string "Push_item(vs)"
.S60: .string "pop_list()"
.S61: .string "Pop_list()"
.text
