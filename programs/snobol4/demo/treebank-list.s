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
# IR_VAR
bb112_α:
 mov rdi, qword ptr [rip + .Lx212_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvcat210_0d
 xgvcat210_0b:
 jmp snoch173_n13_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "r"
xgvcat210_0d:
# IR_VAR
bb113_α:
 mov rdi, qword ptr [rip + .Lx215_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xgvcat213_1d
 xgvcat213_1b:
 jmp snoch173_n13_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "sep"
xgvcat213_1d:
bb114_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp snoch173_n17_α
 snoch173_n14_β:
 jmp snoch173_n13_α
snoch173_n15_α:
bb115_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S39]
 lea rsi, [rip + .S42]
 call rt_gvar_assign_str@PLT
 jmp snoch173_n16_α
 snoch173_n15_β:
 jmp snoch173_n16_α
snoch173_n16_α:
# IR_VAR
bb116_α:
 mov rdi, qword ptr [rip + .Lx220_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xgvarg218_done
 xgvarg218_β:
 jmp snoch173_n9_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "c"
xgvarg218_done:
bb117_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+448] -> [r12+480]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lbynamefn222: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn222]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je snoch173_n9_α
 jmp snoch173_n18_α
snoch173_n16_β:
 jmp snoch173_n9_α
snoch173_n17_α:
# IR_VAR
bb118_α:
 mov rdi, qword ptr [rip + .Lx226_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xgvarg224_done
 xgvarg224_β:
 jmp snoch173_n13_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "c"
xgvarg224_done:
bb119_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+496] -> [r12+528]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lbynamefn228: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn228]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je snoch173_n13_α
 jmp xgvarg223_done
xgvarg223_β:
 jmp snoch173_n13_α
xgvarg223_done:
bb120_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+512] -> [r12+560]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lprocfn230: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn230]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je snoch173_n13_α
 jmp snoch173_n19_α
snoch173_n17_β:
 jmp snoch173_n13_α
snoch173_n18_α:
bb121_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S40]
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_gvar_assign_descr@PLT
 jmp snoch173_n9_α
 snoch173_n18_β:
 jmp snoch173_n9_α
snoch173_n19_α:
# IR_VAR
bb122_α:
 mov rdi, qword ptr [rip + .Lx235_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xgvcat233_0d
 xgvcat233_0b:
 jmp snoch173_n13_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "r"
xgvcat233_0d:
# IR_VAR
bb123_α:
 mov rdi, qword ptr [rip + .Lx238_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xgvcat236_1d
 xgvcat236_1b:
 jmp snoch173_n13_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "sep"
xgvcat236_1d:
bb124_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xgvcat232_0d
 xgvcat232_0b:
 jmp snoch173_n13_α
xgvcat232_0d:
# IR_VAR
bb125_α:
 mov rdi, qword ptr [rip + .Lx244_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xgvarg242_done
 xgvarg242_β:
 jmp snoch173_n13_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "c"
xgvarg242_done:
bb126_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+496] -> [r12+656]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lbynamefn246: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn246]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je snoch173_n13_α
 jmp xgvarg241_done
xgvarg241_β:
 jmp snoch173_n13_α
xgvarg241_done:
bb127_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+512] -> [r12+688]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lprocfn248: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn248]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je snoch173_n13_α
 jmp xgvcat240_1d
xgvcat240_1b:
 jmp snoch173_n13_α
xgvcat240_1d:
bb128_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call str_concat_d@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch173_n20_α
 snoch173_n19_β:
 jmp snoch173_n13_α
snoch173_n20_α:
bb129_α:
# IR_ASSIGN
 lea rdi, [rip + .S37]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
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
snoch252_n0_α:
# IR_VAR
bb130_α:
 mov rdi, qword ptr [rip + .Lx255_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg253_done
 xgvarg253_β:
 jmp snoch252_n2_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "node"
xgvarg253_done:
bb131_α:
# BOX IR_CALL node_repr(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn257: .string "node_repr"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn257]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch252_n2_α
 jmp snoch252_n1_α
snoch252_n0_β:
 jmp snoch252_n2_α
snoch252_n1_α:
bb132_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S37]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch252_n2_α
 snoch252_n1_β:
 jmp snoch252_n2_α
snoch252_n2_α:
# IR_LIT_S
bb133_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg259_done
 xgvarg259_β:
 jmp snoch252_n4_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string " "
xgvarg259_done:
# IR_VAR
bb134_α:
 mov rdi, qword ptr [rip + .Lx263_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg261_done
 xgvarg261_β:
 jmp snoch252_n4_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "indent"
xgvarg261_done:
bb135_α:
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
  .Lbynamefn265: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn265]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch252_n4_α
 jmp snoch252_n3_α
snoch252_n2_β:
 jmp snoch252_n4_α
snoch252_n3_α:
bb136_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S43]
 mov rsi, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 call rt_gvar_assign_descr@PLT
 jmp snoch252_n4_α
 snoch252_n3_β:
 jmp snoch252_n4_α
snoch252_n4_α:
# IR_LIT_I
bb137_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 152], rax
 jmp xgvarg267_done
 xgvarg267_β:
 jmp snoch252_n6_α
.Lx268_0:
 .quad 80
xgvarg267_done:
xgvarg269_done:
bb138_α:
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
  .Lcallfn271: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn271]
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
  .Lbynamefn272: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn272]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je snoch252_n6_α
 jmp snoch252_n5_α
snoch252_n4_β:
 jmp snoch252_n6_α
snoch252_n5_α:
bb139_α:
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
 jmp snoch252_n7_α
 snoch252_n5_β:
 jmp snoch252_n7_α
snoch252_n6_α:
# IR_VAR
bb140_α:
 mov rdi, qword ptr [rip + .Lx275_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch252_n8_α
 snoch252_n6_β:
 jmp snoch252_n9_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "pad"
snoch252_n7_α:
snoch252_n7_β:
jmp pp_node_γ
jmp pp_node_γ
snoch252_n8_α:
# IR_LIT_scalar
bb141_α:
 jmp snoch252_n10_α
 snoch252_n8_β:
 jmp snoch252_n9_α
snoch252_n9_α:
# IR_VAR
bb142_α:
 mov rdi, qword ptr [rip + .Lx279_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xgvarg277_done
 xgvarg277_β:
 jmp snoch252_n12_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "node"
xgvarg277_done:
bb143_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+320] -> [r12+352]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lbynamefn281: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn281]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je snoch252_n12_α
 jmp snoch252_n11_α
snoch252_n9_β:
 jmp snoch252_n12_α
snoch252_n10_α:
# IR_VAR
bb144_α:
 mov rdi, qword ptr [rip + .Lx284_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvcat282_0d
 xgvcat282_0b:
 jmp snoch252_n9_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "pad"
xgvcat282_0d:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [r12 + 392], rax
 jmp xgvcat285_1d
 xgvcat285_1b:
 jmp snoch252_n9_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "( "
xgvcat285_1d:
bb146_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch252_n13_α
 snoch252_n10_β:
 jmp snoch252_n9_α
snoch252_n11_α:
bb147_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S40]
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_gvar_assign_descr@PLT
 jmp snoch252_n12_α
 snoch252_n11_β:
 jmp snoch252_n12_α
snoch252_n12_α:
# IR_VAR
bb148_α:
 mov rdi, qword ptr [rip + .Lx291_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xgvarg289_done
 xgvarg289_β:
 jmp snoch252_n15_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "c"
xgvarg289_done:
bb149_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+416] -> [r12+448]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lbynamefn293: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn293]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je snoch252_n15_α
 jmp snoch252_n14_α
snoch252_n12_β:
 jmp snoch252_n15_α
snoch252_n13_α:
# IR_LIT_scalar
bb150_α:
 jmp snoch252_n16_α
 snoch252_n13_β:
 jmp snoch252_n9_α
snoch252_n14_α:
# IR_VAR
bb151_α:
 mov rdi, qword ptr [rip + .Lx297_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xgvarg295_done
 xgvarg295_β:
 jmp snoch252_n18_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "c"
xgvarg295_done:
bb152_α:
# BOX IR_CALL tail(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+464] -> [r12+496]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lbynamefn299: .string "tail"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn299]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je snoch252_n18_α
 jmp snoch252_n17_α
snoch252_n14_β:
 jmp snoch252_n18_α
snoch252_n15_α:
bb153_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch252_n19_α
 snoch252_n15_β:
 jmp snoch252_n19_α
snoch252_n16_α:
# IR_VAR
bb154_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xgvcat302_0d
 xgvcat302_0b:
 jmp snoch252_n9_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "pad"
xgvcat302_0d:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 536], rax
 jmp xgvcat305_1d
 xgvcat305_1b:
 jmp snoch252_n9_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "( "
xgvcat305_1d:
bb156_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xgvcat301_0d
 xgvcat301_0b:
 jmp snoch252_n9_α
xgvcat301_0d:
# IR_LIT_S
bb157_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [r12 + 568], rax
 jmp xgvcat308_1d
 xgvcat308_1b:
 jmp snoch252_n9_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "'"
xgvcat308_1d:
bb158_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call str_concat_d@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch252_n20_α
 snoch252_n16_β:
 jmp snoch252_n9_α
snoch252_n17_α:
bb159_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S46]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_gvar_assign_descr@PLT
 jmp snoch252_n18_α
 snoch252_n17_β:
 jmp snoch252_n18_α
snoch252_n18_α:
# IR_VAR
bb160_α:
 mov rdi, qword ptr [rip + .Lx314_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xgvarg312_done
 xgvarg312_β:
 jmp snoch252_n22_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "nxt"
xgvarg312_done:
bb161_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+592] -> [r12+624]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lbynamefn316: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn316]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je snoch252_n22_α
 jmp snoch252_n21_α
snoch252_n18_β:
 jmp snoch252_n22_α
snoch252_n19_α:
# IR_VAR
bb162_α:
 mov rdi, qword ptr [rip + .Lx318_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp snoch252_n23_α
 snoch252_n19_β:
 jmp snoch252_n24_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "INPUT"
snoch252_n20_α:
# IR_VAR
bb163_α:
 mov rdi, qword ptr [rip + .Lx321_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xgvarg319_done
 xgvarg319_β:
 jmp snoch252_n9_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "node"
xgvarg319_done:
bb164_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+656] -> [r12+688]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lbynamefn323: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn323]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je snoch252_n9_α
 jmp snoch252_n25_α
snoch252_n20_β:
 jmp snoch252_n9_α
snoch252_n21_α:
# IR_VAR
bb165_α:
 mov rdi, qword ptr [rip + .Lx327_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xgvarg325_done
 xgvarg325_β:
 jmp snoch252_n26_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "c"
xgvarg325_done:
bb166_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+704] -> [r12+736]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lbynamefn329: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn329]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je snoch252_n26_α
 jmp xgvarg324_done
xgvarg324_β:
 jmp snoch252_n26_α
xgvarg324_done:
xgvarg330_done:
# IR_LIT_S
bb167_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [r12 + 760], rax
 jmp xgvarg331_done
 xgvarg331_β:
 jmp snoch252_n26_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string ","
xgvarg331_done:
bb168_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+720] -> [r12+784]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+800]
   lea rdi, [rip + .S44]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 832], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 832]
 add rax, rcx
 mov qword ptr [r12 + 800], 6
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+752] -> [r12+816]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lprocfn334: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn334]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je snoch252_n26_α
 jmp snoch252_n26_α
snoch252_n21_β:
 jmp snoch252_n26_α
snoch252_n22_α:
# IR_VAR
bb169_α:
 mov rdi, qword ptr [rip + .Lx338_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvarg336_done
 xgvarg336_β:
 jmp snoch252_n7_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "c"
xgvarg336_done:
bb170_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+848] -> [r12+880]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lbynamefn340: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn340]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je snoch252_n7_α
 jmp xgvarg335_done
xgvarg335_β:
 jmp snoch252_n7_α
xgvarg335_done:
xgvarg341_done:
xgvarg342_done:
bb171_α:
# BOX IR_CALL pp_node(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+864] -> [r12+912]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+928]
   lea rdi, [rip + .S44]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 960], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 960]
 add rax, rcx
 mov qword ptr [r12 + 928], 6
 mov qword ptr [r12 + 936], rax
# marshal arg2 = nested producer-box slot [r12+944] -> [r12+944]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lprocfn344: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn344]
 lea rsi, [r12 + 912]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je snoch252_n7_α
 jmp snoch252_n7_α
snoch252_n22_β:
 jmp snoch252_n7_α
snoch252_n23_α:
bb172_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S25]
 lea rsi, [rip + .S26]
 call rt_gvar_assign_var@PLT
 jmp snoch252_n27_α
 snoch252_n23_β:
 jmp snoch252_n24_α
snoch252_n24_α:
# IR_VAR
bb173_α:
 mov rdi, qword ptr [rip + .Lx347_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp snoch252_n28_α
 snoch252_n24_β:
 jmp snoch252_n29_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "src"
snoch252_n25_α:
# IR_VAR
bb174_α:
 mov rdi, qword ptr [rip + .Lx352_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xgvcat350_0d
 xgvcat350_0b:
 jmp snoch252_n9_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "pad"
xgvcat350_0d:
# IR_LIT_S
bb175_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 1016], rax
 jmp xgvcat353_1d
 xgvcat353_1b:
 jmp snoch252_n9_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "( "
xgvcat353_1d:
bb176_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xgvcat349_0d
 xgvcat349_0b:
 jmp snoch252_n9_α
xgvcat349_0d:
# IR_LIT_S
bb177_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 1048], rax
 jmp xgvcat356_1d
 xgvcat356_1b:
 jmp snoch252_n9_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "'"
xgvcat356_1d:
bb178_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xgvcat348_0d
 xgvcat348_0b:
 jmp snoch252_n9_α
xgvcat348_0d:
# IR_VAR
bb179_α:
 mov rdi, qword ptr [rip + .Lx362_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xgvarg360_done
 xgvarg360_β:
 jmp snoch252_n9_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "node"
xgvarg360_done:
bb180_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+656] -> [r12+1104]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lbynamefn364: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn364]
 lea rsi, [r12 + 1104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je snoch252_n9_α
 jmp xgvcat359_1d
xgvcat359_1b:
 jmp snoch252_n9_α
xgvcat359_1d:
bb181_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp snoch252_n30_α
 snoch252_n25_β:
 jmp snoch252_n9_α
snoch252_n26_α:
# IR_VAR
bb182_α:
 mov rdi, qword ptr [rip + .Lx367_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp snoch252_n31_α
 snoch252_n26_β:
 jmp snoch252_n12_α
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "nxt"
snoch252_n27_α:
bb183_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 1152], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1160], rax
 mov dword ptr [r12 + 1168], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1176], rax
 mov dword ptr [r12 + 1184], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1192], rax
 lea rdi, [rip + .S27]
 lea rsi, [r12 + 1152]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch252_n19_α
 snoch252_n27_β:
 jmp snoch252_n19_α
snoch252_n28_α:
# IR_SUBJECT
bb184_α:
 lea rdi, [rip + .S27]
 lea rsi, [r12 + 1200]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan369_sγ
 xscan369_sβ:
 jmp snoch252_n29_α
xscan369_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb185_α:
 mov r13, qword ptr [r12 + 1200]
 mov r15d, dword ptr [r12 + 1208]
 mov dword ptr [r12 + 1216], 0
 lea r10, [r12 + 1224]
 jmp smatch372_retry
 snoch252_n28_β:
 jmp xscan369_dfail
smatch372_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1216]
# IR_MATCH_DEFER
bb187_α:
 lea rdi, [rip + .S29]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx375_0
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
 jne smatch372_adv
 jmp xscan369_dok
.Lx375_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch372_adv
 mov r14d, eax
 jmp xscan369_dok
 smatch372_elemb:
 jmp smatch372_adv
smatch372_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1216], 1
 mov eax, dword ptr [r12 + 1216]
 cmp eax, r15d
 jg xscan369_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan369_dfail
 jmp smatch372_retry
xscan369_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch252_n32_α
xscan369_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch252_n29_α
snoch252_n29_α:
# IR_LIT_scalar
bb189_α:
 jmp snoch252_n33_α
 snoch252_n29_β:
 jmp pp_node_γ
snoch252_n30_α:
# IR_LIT_scalar
bb190_α:
 jmp snoch252_n34_α
 snoch252_n30_β:
 jmp snoch252_n9_α
snoch252_n31_α:
bb191_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S40]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch252_n12_α
 snoch252_n31_β:
 jmp snoch252_n12_α
snoch252_n32_α:
bb192_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn381: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn381]
 lea rsi, [r12 + 1232]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je pp_node_γ
 jmp snoch252_n35_α
snoch252_n32_β:
 jmp pp_node_γ
snoch252_n33_α:
bb193_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_str@PLT
 jmp pp_node_γ
 snoch252_n33_β:
 jmp pp_node_γ
snoch252_n34_α:
# IR_VAR
bb194_α:
 mov rdi, qword ptr [rip + .Lx388_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xgvcat386_0d
 xgvcat386_0b:
 jmp snoch252_n9_α
.Lx388_0:
 .quad .Lx388_0_s
.Lx388_0_s:
 .string "pad"
xgvcat386_0d:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [r12 + 1272], rax
 jmp xgvcat389_1d
 xgvcat389_1b:
 jmp snoch252_n9_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "( "
xgvcat389_1d:
bb196_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xgvcat385_0d
 xgvcat385_0b:
 jmp snoch252_n9_α
xgvcat385_0d:
# IR_LIT_S
bb197_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [r12 + 1304], rax
 jmp xgvcat392_1d
 xgvcat392_1b:
 jmp snoch252_n9_α
.Lx393_0:
 .quad .Lx393_0_s
.Lx393_0_s:
 .string "'"
xgvcat392_1d:
bb198_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xgvcat384_0d
 xgvcat384_0b:
 jmp snoch252_n9_α
xgvcat384_0d:
# IR_VAR
bb199_α:
 mov rdi, qword ptr [rip + .Lx398_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xgvarg396_done
 xgvarg396_β:
 jmp snoch252_n9_α
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "node"
xgvarg396_done:
bb200_α:
# BOX IR_CALL head(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+656] -> [r12+1360]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lbynamefn400: .string "head"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn400]
 lea rsi, [r12 + 1360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je snoch252_n9_α
 jmp xgvcat395_1d
xgvcat395_1b:
 jmp snoch252_n9_α
xgvcat395_1d:
bb201_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xgvcat383_0d
 xgvcat383_0b:
 jmp snoch252_n9_α
xgvcat383_0d:
# IR_LIT_S
bb202_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 1400], rax
 jmp xgvcat402_1d
 xgvcat402_1b:
 jmp snoch252_n9_α
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "',"
xgvcat402_1d:
bb203_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp snoch252_n36_α
 snoch252_n34_β:
 jmp snoch252_n9_α
snoch252_n35_α:
bb204_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_gvar_assign_descr@PLT
 jmp pp_node_γ
 snoch252_n35_β:
 jmp pp_node_γ
snoch252_n36_α:
bb205_α:
# IR_ASSIGN
 lea rdi, [rip + .S30]
 mov rsi, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 call rt_gvar_assign_descr@PLT
 jmp snoch252_n9_α
 snoch252_n36_β:
 jmp snoch252_n9_α
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
snoch408_n0_α:
# IR_VAR
bb206_α:
 mov rdi, qword ptr [rip + .Lx411_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg409_done
 xgvarg409_β:
 jmp snoch408_n1_α
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "bank"
xgvarg409_done:
# IR_LIT_I
bb207_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg412_done
 xgvarg412_β:
 jmp snoch408_n1_α
.Lx413_0:
 .quad 0
xgvarg412_done:
# IR_LIT_S
bb208_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg414_done
 xgvarg414_β:
 jmp snoch408_n1_α
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string ""
xgvarg414_done:
bb209_α:
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
  .Lprocfn417: .string "pp_node"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn417]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch408_n1_α
 jmp snoch408_n1_α
snoch408_n0_β:
 jmp snoch408_n1_α
snoch408_n1_α:
# IR_VAR
bb210_α:
 mov rdi, qword ptr [rip + .Lx419_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch408_n2_α
 snoch408_n1_β:
 jmp snoch408_n3_α
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string ""
snoch408_n2_α:
bb211_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S47]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_var@PLT
 jmp snoch408_n3_α
 snoch408_n2_β:
 jmp snoch408_n3_α
snoch408_n3_α:
snoch408_n3_β:
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
  mov esi, 720
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + .Lpnames16]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn16]
  mov esi, 1424
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
snoch421_n0_α:
# IR_VAR
bb212_α:
 mov rdi, qword ptr [rip + .Lx423_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch421_n1_α
 snoch421_n0_β:
 jmp snoch421_n2_α
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "ALPHABET"
snoch421_n1_α:
# IR_SUBJECT
bb213_α:
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
 jmp xscan424_sγ
 xscan424_sβ:
 jmp snoch421_n2_α
xscan424_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb214_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch427_retry
 snoch421_n1_β:
 jmp xscan424_dfail
smatch427_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb216_α:
 cmp r14d, 10
 jne xcat430_ω
 jmp xcat430_γ
 xcat430_left_β:
 jmp xcat430_ω
xcat430_γ:
# IR_MATCH_CAPTURE_SAVE
bb217_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb218_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat430_right_ω
 add r14d, 1
 jmp xcap432_γ
 xcat430_right_β:
 jmp xcat430_right_ω
xcap432_γ:
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
 jmp xscan424_dok
xcat430_right_ω:
 jmp xcat430_left_β
smatch427_elemb:
 jmp xcat430_right_β
xcat430_ω:
 jmp smatch427_adv
smatch427_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan424_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan424_dfail
 jmp smatch427_retry
xscan424_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch421_n2_α
xscan424_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch421_n2_α
snoch421_n2_α:
# IR_LIT_S
bb222_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg438_done
 xgvarg438_β:
 jmp snoch421_n3_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "list(head,tail)"
xgvarg438_done:
bb223_α:
# BOX IR_CALL DATA(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn441: .string "DATA"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn441]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch421_n3_α
 jmp snoch421_n3_α
snoch421_n2_β:
 jmp snoch421_n3_α
snoch421_n3_α:
bb224_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S49]
 call rt_proc_define@PLT
 jmp snoch421_n4_α
 snoch421_n3_β:
 jmp snoch421_n4_α
snoch421_n4_α:
bb225_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S50]
 call rt_proc_define@PLT
 jmp snoch421_n5_α
 snoch421_n4_β:
 jmp snoch421_n5_α
snoch421_n5_α:
bb226_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S51]
 call rt_proc_define@PLT
 jmp snoch421_n6_α
 snoch421_n5_β:
 jmp snoch421_n6_α
snoch421_n6_α:
bb227_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S52]
 call rt_proc_define@PLT
 jmp snoch421_n7_α
 snoch421_n6_β:
 jmp snoch421_n7_α
snoch421_n7_α:
bb228_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S53]
 call rt_proc_define@PLT
 jmp snoch421_n8_α
 snoch421_n7_β:
 jmp snoch421_n8_α
snoch421_n8_α:
bb229_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S54]
 call rt_proc_define@PLT
 jmp snoch421_n9_α
 snoch421_n8_β:
 jmp snoch421_n9_α
snoch421_n9_α:
bb230_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S55]
 call rt_proc_define@PLT
 jmp snoch421_n10_α
 snoch421_n9_β:
 jmp snoch421_n10_α
snoch421_n10_α:
bb231_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S56]
 call rt_proc_define@PLT
 jmp snoch421_n11_α
 snoch421_n10_β:
 jmp snoch421_n11_α
snoch421_n11_α:
bb232_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S57]
 call rt_proc_define@PLT
 jmp snoch421_n12_α
 snoch421_n11_β:
 jmp snoch421_n12_α
snoch421_n12_α:
bb233_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S58]
 call rt_proc_define@PLT
 jmp snoch421_n13_α
 snoch421_n12_β:
 jmp snoch421_n13_α
snoch421_n13_α:
bb234_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S59]
 call rt_proc_define@PLT
 jmp snoch421_n14_α
 snoch421_n13_β:
 jmp snoch421_n14_α
snoch421_n14_α:
bb235_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S60]
 call rt_proc_define@PLT
 jmp snoch421_n15_α
 snoch421_n14_β:
 jmp snoch421_n15_α
snoch421_n15_α:
bb236_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S61]
 call rt_proc_define@PLT
 jmp snoch421_n16_α
 snoch421_n15_β:
 jmp snoch421_n16_α
snoch421_n16_α:
bb237_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S20]
 call rt_proc_define@PLT
 jmp snoch421_n17_α
 snoch421_n16_β:
 jmp snoch421_n17_α
snoch421_n17_α:
bb238_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S21]
 call rt_proc_define@PLT
 jmp snoch421_n18_α
 snoch421_n17_β:
 jmp snoch421_n18_α
snoch421_n18_α:
bb239_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S22]
 call rt_proc_define@PLT
 jmp snoch421_n19_α
 snoch421_n18_β:
 jmp snoch421_n19_α
snoch421_n19_α:
bb240_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S23]
 call rt_proc_define@PLT
 jmp snoch421_n20_α
 snoch421_n19_β:
 jmp snoch421_n20_α
snoch421_n20_α:
bb241_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S24]
 call rt_proc_define@PLT
 jmp snoch421_n21_α
 snoch421_n20_β:
 jmp snoch421_n21_α
snoch421_n21_α:
# IR_VAR
bb242_α:
 mov rdi, qword ptr [rip + .Lx461_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch421_n22_α
 snoch421_n21_β:
 jmp snoch421_n23_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "INPUT"
snoch421_n22_α:
bb243_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S25]
 lea rsi, [rip + .S26]
 call rt_gvar_assign_var@PLT
 jmp snoch421_n24_α
 snoch421_n22_β:
 jmp snoch421_n23_α
snoch421_n23_α:
# IR_VAR
bb244_α:
 mov rdi, qword ptr [rip + .Lx464_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch421_n25_α
 snoch421_n23_β:
 jmp snoch421_n26_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "src"
snoch421_n24_α:
bb245_α:
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
 jmp snoch421_n21_α
 snoch421_n24_β:
 jmp snoch421_n21_α
snoch421_n25_α:
# IR_SUBJECT
bb246_α:
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
 jmp xscan466_sγ
 xscan466_sβ:
 jmp snoch421_n26_α
xscan466_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb247_α:
 mov r13, qword ptr [r12 + 192]
 mov r15d, dword ptr [r12 + 200]
 mov dword ptr [r12 + 208], 0
 lea r10, [r12 + 216]
 jmp smatch469_retry
 snoch421_n25_β:
 jmp xscan466_dfail
smatch469_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 208]
# IR_MATCH_DEFER
bb249_α:
 lea rdi, [rip + .S29]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx472_0
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
 jne smatch469_adv
 jmp xscan466_dok
.Lx472_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch469_adv
 mov r14d, eax
 jmp xscan466_dok
 smatch469_elemb:
 jmp smatch469_adv
smatch469_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 208], 1
 mov eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jg xscan466_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan466_dfail
 jmp smatch469_retry
xscan466_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch421_n27_α
xscan466_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch421_n26_α
snoch421_n26_α:
# IR_LIT_scalar
bb251_α:
 jmp snoch421_n28_α
 snoch421_n26_β:
 jmp flat_γ
snoch421_n27_α:
bb252_α:
# BOX IR_CALL pp_bank(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn476: .string "pp_bank"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn476]
 lea rsi, [r12 + 224]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je flat_γ
 jmp snoch421_n29_α
snoch421_n27_β:
 jmp flat_γ
snoch421_n28_α:
bb253_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S31]
 call rt_gvar_assign_str@PLT
 jmp flat_γ
 snoch421_n28_β:
 jmp flat_γ
snoch421_n29_α:
bb254_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch421_n29_β:
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
