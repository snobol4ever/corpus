  .intel_syntax noprefix
  .text
new_sent_α:
#=======================================================================================================================
    .global new_sent_α
    .global new_sent_β
    .global new_sent_γ
    .global new_sent_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
new_sent_α_body:
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
 .string "num"
snoch0_n1_α:
bb2_α:
# IR_UNOP_GVAR_SLOT
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 16], rax
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_VAR
bb3_α:
 mov rdi, qword ptr [rip + .Lx5_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 24], rax
 mov qword ptr [r12 + 32], rdx
 jmp snoch0_n4_α
 snoch0_n2_β:
 jmp snoch0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string ""
snoch0_n3_α:
bb4_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 16]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
bb5_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S2]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch0_n5_α
 snoch0_n4_β:
 jmp snoch0_n5_α
snoch0_n5_α:
snoch0_n5_β:
jmp new_sent_γ
jmp new_sent_γ
new_sent_β:
jmp new_sent_ω
new_sent_γ:
mov eax, 1
xor edx, edx
pop r12
ret
new_sent_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
add_tok_α:
#=======================================================================================================================
    .global add_tok_α
    .global add_tok_β
    .global add_tok_γ
    .global add_tok_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
add_tok_α_body:
snoch9_n0_α:
# IR_VAR
bb6_α:
 mov rdi, qword ptr [rip + .Lx11_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch9_n1_α
 snoch9_n0_β:
 jmp snoch9_n2_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string ""
snoch9_n1_α:
bb7_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch9_n2_α
 snoch9_n1_β:
 jmp snoch9_n2_α
snoch9_n2_α:
snoch9_n2_β:
jmp add_tok_γ
jmp add_tok_γ
add_tok_β:
jmp add_tok_ω
add_tok_γ:
mov eax, 1
xor edx, edx
pop r12
ret
add_tok_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
pp_mem_α:
#=======================================================================================================================
    .global pp_mem_α
    .global pp_mem_β
    .global pp_mem_γ
    .global pp_mem_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
pp_mem_α_body:
snoch13_n0_α:
# IR_VAR
bb8_α:
 mov rdi, qword ptr [rip + .Lx16_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg14_done
 xgvarg14_β:
 jmp snoch13_n2_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "mem"
xgvarg14_done:
bb9_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn18: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch13_n2_α
 jmp snoch13_n1_α
snoch13_n0_β:
 jmp snoch13_n2_α
snoch13_n1_α:
bb10_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n2_α
 snoch13_n1_β:
 jmp snoch13_n2_α
snoch13_n2_α:
# IR_LIT_scalar
bb11_α:
 jmp snoch13_n3_α
 snoch13_n2_β:
 jmp snoch13_n4_α
snoch13_n3_α:
bb12_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n4_α
 snoch13_n3_β:
 jmp snoch13_n4_α
snoch13_n4_α:
# IR_LIT_scalar
bb13_α:
 jmp snoch13_n5_α
 snoch13_n4_β:
 jmp snoch13_n6_α
snoch13_n5_α:
bb14_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S7]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n6_α
 snoch13_n5_β:
 jmp snoch13_n6_α
snoch13_n6_α:
# IR_VAR
bb15_α:
 mov rdi, qword ptr [rip + .Lx25_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch13_n7_α
 snoch13_n6_β:
 jmp snoch13_n8_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "ns"
snoch13_n7_α:
# IR_LIT_scalar
bb16_α:
 jmp snoch13_n9_α
 snoch13_n7_β:
 jmp snoch13_n8_α
snoch13_n8_α:
bb17_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx28_0
 mov r8, qword ptr [r12 + 80]
 cmp r8d, 6
 jne .Lx28_0
 mov rcx, qword ptr [r12 + 88]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx28_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx28_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch13_n6_α
.Lx28_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 call subscript_get@PLT
 cmp eax, 99
 je snoch13_n10_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch13_n6_α
 snoch13_n8_β:
 jmp snoch13_n10_α
snoch13_n9_α:
bb18_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 112], rax
 jmp snoch13_n11_α
 snoch13_n9_β:
 jmp snoch13_n8_α
snoch13_n10_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx32_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp snoch13_n12_α
 snoch13_n10_β:
 jmp snoch13_n13_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "ns"
snoch13_n11_α:
bb20_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 112]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n8_α
 snoch13_n11_β:
 jmp snoch13_n8_α
snoch13_n12_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch13_n14_α
 snoch13_n12_β:
 jmp snoch13_n13_α
snoch13_n13_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch13_n15_α
 snoch13_n13_β:
 jmp snoch13_n16_α
snoch13_n14_α:
bb23_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 136], rax
 jmp snoch13_n17_α
 snoch13_n14_β:
 jmp snoch13_n13_α
snoch13_n15_α:
bb24_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n16_α
 snoch13_n15_β:
 jmp snoch13_n16_α
snoch13_n16_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx41_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch13_n18_α
 snoch13_n16_β:
 jmp snoch13_n19_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "si"
snoch13_n17_α:
bb26_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 136]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n13_α
 snoch13_n17_β:
 jmp snoch13_n13_α
snoch13_n18_α:
# IR_LIT_scalar
bb27_α:
 jmp snoch13_n20_α
 snoch13_n18_β:
 jmp snoch13_n19_α
snoch13_n19_α:
bb28_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx46_0
 mov r8, qword ptr [r12 + 160]
 cmp r8d, 6
 jne .Lx46_0
 mov rcx, qword ptr [r12 + 168]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx46_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx46_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch13_n21_α
.Lx46_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call subscript_get@PLT
 cmp eax, 99
 je snoch13_n22_α
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch13_n21_α
 snoch13_n19_β:
 jmp snoch13_n22_α
snoch13_n20_α:
bb29_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 192], rax
 jmp snoch13_n23_α
 snoch13_n20_β:
 jmp snoch13_n19_α
snoch13_n21_α:
bb30_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n24_α
 snoch13_n21_β:
 jmp snoch13_n22_α
snoch13_n22_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx51_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch13_n25_α
 snoch13_n22_β:
 jmp snoch13_n26_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string ""
snoch13_n23_α:
bb32_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 192]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n19_α
 snoch13_n23_β:
 jmp snoch13_n19_α
snoch13_n24_α:
# IR_LIT_scalar
bb33_α:
 jmp snoch13_n27_α
 snoch13_n24_β:
 jmp snoch13_n28_α
snoch13_n25_α:
bb34_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch13_n26_α
 snoch13_n25_β:
 jmp snoch13_n26_α
snoch13_n26_α:
snoch13_n26_β:
jmp pp_mem_γ
jmp pp_mem_γ
snoch13_n27_α:
bb35_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n28_α
 snoch13_n27_β:
 jmp snoch13_n28_α
snoch13_n28_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx59_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg57_done
 xgvarg57_β:
 jmp snoch13_n30_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "si"
xgvarg57_done:
# IR_VAR
bb37_α:
 mov rdi, qword ptr [rip + .Lx62_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xgvarg60_done
 xgvarg60_β:
 jmp snoch13_n30_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "ns"
xgvarg60_done:
bb38_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+216] -> [r12+264]
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 272], rax
# marshal arg1 = producer-box slot [r12+232] -> [r12+280]
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 288], rax
  .section .rodata
  .Lbynamefn64: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn64]
 lea rsi, [r12 + 264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 cmp eax, 99
 je snoch13_n30_α
 jmp snoch13_n29_α
snoch13_n28_β:
 jmp snoch13_n30_α
snoch13_n29_α:
# IR_LIT_scalar
bb39_α:
 jmp snoch13_n31_α
 snoch13_n29_β:
 jmp snoch13_n30_α
snoch13_n30_α:
# IR_LIT_S
bb40_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 304], rax
 jmp xgvarg66_done
 xgvarg66_β:
 jmp snoch13_n33_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string " "
xgvarg66_done:
xgvarg68_done:
bb41_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+296] -> [r12+328]
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+344]
# marshal arg0 = gvar NV_GET -> [r12+392]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
  .section .rodata
  .Lcallfn70: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn70]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 360], rax
 mov rcx, 4
 mov rax, qword ptr [r12 + 360]
 add rax, rcx
 mov qword ptr [r12 + 344], 6
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lbynamefn71: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn71]
 lea rsi, [r12 + 328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je snoch13_n33_α
 jmp snoch13_n32_α
snoch13_n30_β:
 jmp snoch13_n33_α
snoch13_n31_α:
# IR_LIT_I
bb42_α:
 mov qword ptr [r12 + 408], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 416], rax
 jmp xgvcat72_1d
 xgvcat72_1b:
 jmp snoch13_n30_α
.Lx73_0:
 .quad 1
xgvcat72_1d:
bb43_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 248]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 416]
 call str_concat_d@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 jmp snoch13_n34_α
 snoch13_n31_β:
 jmp snoch13_n30_α
snoch13_n32_α:
bb44_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n33_α
 snoch13_n32_β:
 jmp snoch13_n33_α
snoch13_n33_α:
# IR_VAR
bb45_α:
 mov rdi, qword ptr [rip + .Lx78_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 jmp xgvarg76_done
 xgvarg76_β:
 jmp snoch13_n36_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "si"
xgvarg76_done:
# IR_LIT_I
bb46_α:
 mov qword ptr [r12 + 456], 6
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 464], rax
 jmp xgvarg79_done
 xgvarg79_β:
 jmp snoch13_n36_α
.Lx80_0:
 .quad 1
xgvarg79_done:
bb47_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 488], rax
 mov rcx, 1
 mov qword ptr [r12 + 472], 0
 mov qword ptr [r12 + 480], 0
 mov rax, qword ptr [r12 + 488]
 cmp rax, rcx
 jne snoch13_n36_α
 jmp snoch13_n35_α
 snoch13_n33_β:
 jmp snoch13_n36_α
snoch13_n34_α:
bb48_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n30_α
 snoch13_n34_β:
 jmp snoch13_n30_α
snoch13_n35_α:
# IR_LIT_scalar
bb49_α:
 jmp snoch13_n37_α
 snoch13_n35_β:
 jmp snoch13_n36_α
snoch13_n36_α:
# IR_VAR
bb50_α:
 mov rdi, qword ptr [rip + .Lx88_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp xgvarg86_done
 xgvarg86_β:
 jmp snoch13_n39_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "si"
xgvarg86_done:
# IR_LIT_I
bb51_α:
 mov qword ptr [r12 + 520], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 528], rax
 jmp xgvarg89_done
 xgvarg89_β:
 jmp snoch13_n39_α
.Lx90_0:
 .quad 1
xgvarg89_done:
bb52_α:
# BOX IR_CALL NE(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 552], rax
 mov rcx, 1
 mov qword ptr [r12 + 536], 0
 mov qword ptr [r12 + 544], 0
 mov rax, qword ptr [r12 + 552]
 cmp rax, rcx
 je snoch13_n39_α
 jmp snoch13_n38_α
 snoch13_n36_β:
 jmp snoch13_n39_α
snoch13_n37_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 568], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 576], rax
 jmp xgvcat93_1d
 xgvcat93_1b:
 jmp snoch13_n36_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "{"
xgvcat93_1d:
bb54_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 472]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 576]
 call str_concat_d@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp snoch13_n40_α
 snoch13_n37_β:
 jmp snoch13_n36_α
snoch13_n38_α:
# IR_LIT_scalar
bb55_α:
 jmp snoch13_n41_α
 snoch13_n38_β:
 jmp snoch13_n39_α
snoch13_n39_α:
bb56_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 lea rdi, [rip + .S11]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx99_0
 mov r8, qword ptr [r12 + 600]
 cmp r8d, 6
 jne .Lx99_0
 mov rcx, qword ptr [r12 + 608]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx99_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx99_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 jmp xgvarg97_done
.Lx99_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 608]
 call subscript_get@PLT
 cmp eax, 99
 je snoch13_n43_α
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 jmp xgvarg97_done
 xgvarg97_β:
 jmp snoch13_n43_α
xgvarg97_done:
bb57_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+616] -> [r12+648]
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 656], rax
  .section .rodata
  .Lbynamefn101: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn101]
 lea rsi, [r12 + 648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 cmp eax, 99
 je snoch13_n43_α
 jmp snoch13_n42_α
snoch13_n39_β:
 jmp snoch13_n43_α
snoch13_n40_α:
# IR_VAR
bb58_α:
 mov rdi, qword ptr [rip + .Lx103_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp snoch13_n44_α
 snoch13_n40_β:
 jmp snoch13_n36_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "sentno"
snoch13_n41_α:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 680], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 688], rax
 jmp xgvcat104_1d
 xgvcat104_1b:
 jmp snoch13_n39_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string " "
xgvcat104_1d:
bb60_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 536]
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 680]
 mov rcx, qword ptr [r12 + 688]
 call str_concat_d@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 jmp snoch13_n45_α
 snoch13_n41_β:
 jmp snoch13_n39_α
snoch13_n42_α:
bb61_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S12]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n43_α
 snoch13_n42_β:
 jmp snoch13_n43_α
snoch13_n43_α:
# IR_LIT_scalar
bb62_α:
 jmp snoch13_n46_α
 snoch13_n43_β:
 jmp snoch13_n47_α
snoch13_n44_α:
bb63_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 672]
 call str_concat_d@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 jmp snoch13_n48_α
 snoch13_n44_β:
 jmp snoch13_n36_α
snoch13_n45_α:
# IR_VAR
bb64_α:
 mov rdi, qword ptr [rip + .Lx111_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 jmp snoch13_n49_α
 snoch13_n45_β:
 jmp snoch13_n39_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "sentno"
snoch13_n46_α:
bb65_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n47_α
 snoch13_n46_β:
 jmp snoch13_n47_α
snoch13_n47_α:
# IR_VAR
bb66_α:
 mov rdi, qword ptr [rip + .Lx114_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rdx
 jmp snoch13_n50_α
 snoch13_n47_β:
 jmp snoch13_n51_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "wi"
snoch13_n48_α:
# IR_LIT_scalar
bb67_α:
 jmp snoch13_n52_α
 snoch13_n48_β:
 jmp snoch13_n36_α
snoch13_n49_α:
bb68_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 728]
 mov rcx, qword ptr [r12 + 736]
 call str_concat_d@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 jmp snoch13_n53_α
 snoch13_n49_β:
 jmp snoch13_n39_α
snoch13_n50_α:
# IR_LIT_scalar
bb69_α:
 jmp snoch13_n54_α
 snoch13_n50_β:
 jmp snoch13_n51_α
snoch13_n51_α:
bb70_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 776], rax
 mov qword ptr [r12 + 784], rdx
 lea rdi, [rip + .S12]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx119_0
 mov r8, qword ptr [r12 + 776]
 cmp r8d, 6
 jne .Lx119_0
 mov rcx, qword ptr [r12 + 784]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx119_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx119_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 jmp snoch13_n55_α
.Lx119_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 776]
 mov rcx, qword ptr [r12 + 784]
 call subscript_get@PLT
 cmp eax, 99
 je snoch13_n16_α
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 jmp snoch13_n55_α
 snoch13_n51_β:
 jmp snoch13_n16_α
snoch13_n52_α:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 808], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [r12 + 816], rax
 jmp xgvcat120_1d
 xgvcat120_1b:
 jmp snoch13_n36_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string ": {"
xgvcat120_1d:
bb72_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 816]
 call str_concat_d@PLT
 mov qword ptr [r12 + 824], rax
 mov qword ptr [r12 + 832], rdx
 jmp snoch13_n56_α
 snoch13_n52_β:
 jmp snoch13_n36_α
snoch13_n53_α:
# IR_LIT_scalar
bb73_α:
 jmp snoch13_n57_α
 snoch13_n53_β:
 jmp snoch13_n39_α
snoch13_n54_α:
bb74_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 840], rax
 jmp snoch13_n58_α
 snoch13_n54_β:
 jmp snoch13_n51_α
snoch13_n55_α:
bb75_α:
# IR_ASSIGN
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n59_α
 snoch13_n55_β:
 jmp snoch13_n16_α
snoch13_n56_α:
bb76_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n36_α
 snoch13_n56_β:
 jmp snoch13_n36_α
snoch13_n57_α:
# IR_LIT_S
bb77_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 856], rax
 jmp xgvcat129_1d
 xgvcat129_1b:
 jmp snoch13_n39_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string ": {"
xgvcat129_1d:
bb78_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call str_concat_d@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp snoch13_n60_α
 snoch13_n57_β:
 jmp snoch13_n39_α
snoch13_n58_α:
bb79_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 840]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n51_α
 snoch13_n58_β:
 jmp snoch13_n51_α
snoch13_n59_α:
# IR_LIT_scalar
bb80_α:
 jmp snoch13_n61_α
 snoch13_n59_β:
 jmp snoch13_n62_α
snoch13_n60_α:
bb81_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n39_α
 snoch13_n60_β:
 jmp snoch13_n39_α
snoch13_n61_α:
bb82_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n62_α
 snoch13_n61_β:
 jmp snoch13_n62_α
snoch13_n62_α:
# IR_VAR
bb83_α:
 mov rdi, qword ptr [rip + .Lx139_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp snoch13_n63_α
 snoch13_n62_β:
 jmp snoch13_n64_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "wkey"
snoch13_n63_α:
bb84_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S14]
 call rt_gvar_assign_var@PLT
 jmp snoch13_n64_α
 snoch13_n63_β:
 jmp snoch13_n64_α
snoch13_n64_α:
# IR_LIT_scalar
bb85_α:
 jmp snoch13_n65_α
 snoch13_n64_β:
 jmp snoch13_n66_α
snoch13_n65_α:
# IR_SUBJECT
bb86_α:
 lea rdi, [rip + .S17]
 lea rsi, [r12 + 896]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan142_sγ
 xscan142_sβ:
 jmp snoch13_n66_α
xscan142_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb87_α:
 mov r13, qword ptr [r12 + 896]
 mov r15d, dword ptr [r12 + 904]
 mov dword ptr [r12 + 912], 0
 lea r10, [r12 + 920]
 jmp smatch145_retry
 snoch13_n65_β:
 jmp xscan142_dfail
smatch145_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 912]
# IR_MATCH_ARB
bb89_α:
 mov dword ptr [r12 + 928], 0
 mov eax, r14d
 mov dword ptr [r12 + 932], eax
 jmp xcat148_γ
 xcat148_left_β:
 add dword ptr [r12 + 928], 1
 mov eax, dword ptr [r12 + 932]
 add eax, dword ptr [r12 + 928]
 cmp eax, r15d
 jg xcat148_ω
 mov r14d, eax
 jmp xcat148_γ
xcat148_γ:
# IR_LIT
bb90_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat148_right_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S18]
 mov rdx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xcat148_right_ω
 add r14d, 1
 jmp xscan142_dok
 xcat148_right_β:
 sub r14d, 1
 jmp xcat148_right_ω
xcat148_right_ω:
 jmp xcat148_left_β
smatch145_elemb:
 jmp xcat148_right_β
xcat148_ω:
 jmp smatch145_adv
smatch145_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 912], 1
 mov eax, dword ptr [r12 + 912]
 cmp eax, r15d
 jg xscan142_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan142_dfail
 jmp smatch145_retry
xscan142_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S17]
 mov esi, dword ptr [r12 + 912]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch13_n67_α
xscan142_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch13_n66_α
snoch13_n66_α:
bb93_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 936], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 944], rax
 mov dword ptr [r12 + 952], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 960], rax
 mov dword ptr [r12 + 968], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 976], rax
 lea rdi, [rip + .S19]
 lea rsi, [r12 + 936]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n68_α
 snoch13_n66_β:
 jmp snoch13_n68_α
snoch13_n67_α:
bb94_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 984], 0
 lea rax, [rip + .S20]
 mov qword ptr [r12 + 992], rax
 mov dword ptr [r12 + 1000], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 1008], rax
 mov dword ptr [r12 + 1016], 0
 lea rax, [rip + .S20]
 mov qword ptr [r12 + 1024], rax
 lea rdi, [rip + .S19]
 lea rsi, [r12 + 984]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n68_α
 snoch13_n67_β:
 jmp snoch13_n68_α
snoch13_n68_α:
# IR_SUCCEED
bb95_α:
 jmp xgvarg155_done
 xgvarg155_β:
 jmp snoch13_n70_α
xgvarg155_done:
bb96_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+1064] -> [r12+1048]
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1048], rax
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1056], rax
  .section .rodata
  .Lbynamefn158: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn158]
 lea rsi, [r12 + 1048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je snoch13_n70_α
 jmp snoch13_n69_α
snoch13_n68_β:
 jmp snoch13_n70_α
snoch13_n69_α:
bb97_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n70_α
 snoch13_n69_β:
 jmp snoch13_n70_α
snoch13_n70_α:
# IR_LIT_scalar
bb98_α:
 jmp snoch13_n71_α
 snoch13_n70_β:
 jmp snoch13_n72_α
snoch13_n71_α:
bb99_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S22]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n72_α
 snoch13_n71_β:
 jmp snoch13_n72_α
snoch13_n72_α:
# IR_LIT_scalar
bb100_α:
 jmp snoch13_n73_α
 snoch13_n72_β:
 jmp snoch13_n74_α
snoch13_n73_α:
bb101_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S23]
 lea rsi, [rip + .S24]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n74_α
 snoch13_n73_β:
 jmp snoch13_n74_α
snoch13_n74_α:
# IR_VAR
bb102_α:
 mov rdi, qword ptr [rip + .Lx165_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1080], rax
 mov qword ptr [r12 + 1088], rdx
 jmp snoch13_n75_α
 snoch13_n74_β:
 jmp snoch13_n76_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "ti"
snoch13_n75_α:
# IR_LIT_scalar
bb103_α:
 jmp snoch13_n77_α
 snoch13_n75_β:
 jmp snoch13_n76_α
snoch13_n76_α:
bb104_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S22]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 lea rdi, [rip + .S21]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx168_0
 mov r8, qword ptr [r12 + 1096]
 cmp r8d, 6
 jne .Lx168_0
 mov rcx, qword ptr [r12 + 1104]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx168_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx168_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 1112], rax
 mov qword ptr [r12 + 1120], rdx
 jmp snoch13_n78_α
.Lx168_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 1096]
 mov rcx, qword ptr [r12 + 1104]
 call subscript_get@PLT
 cmp eax, 99
 je snoch13_n79_α
 mov qword ptr [r12 + 1112], rax
 mov qword ptr [r12 + 1120], rdx
 jmp snoch13_n78_α
 snoch13_n76_β:
 jmp snoch13_n79_α
snoch13_n77_α:
bb105_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S22]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1128], rax
 jmp snoch13_n80_α
 snoch13_n77_β:
 jmp snoch13_n76_α
snoch13_n78_α:
bb106_α:
# IR_ASSIGN
 lea rdi, [rip + .S25]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1120]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n81_α
 snoch13_n78_β:
 jmp snoch13_n79_α
snoch13_n79_α:
bb107_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1136], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1144], rax
 mov dword ptr [r12 + 1152], 0
 lea rax, [rip + .S26]
 mov qword ptr [r12 + 1160], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1136]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n82_α
 snoch13_n79_β:
 jmp snoch13_n82_α
snoch13_n80_α:
bb108_α:
# IR_ASSIGN
 lea rdi, [rip + .S22]
 mov rsi, qword ptr [r12 + 1128]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n76_α
 snoch13_n80_β:
 jmp snoch13_n76_α
snoch13_n81_α:
# IR_VAR
bb109_α:
 mov rdi, qword ptr [rip + .Lx177_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xgvarg175_done
 xgvarg175_β:
 jmp snoch13_n84_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "tline"
xgvarg175_done:
# IR_LIT_S
bb110_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 1192], rax
 jmp xgvarg178_done
 xgvarg178_β:
 jmp snoch13_n84_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "{"
xgvarg178_done:
bb111_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1168] -> [r12+1216]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = producer-box slot [r12+1184] -> [r12+1232]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lbynamefn181: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn181]
 lea rsi, [r12 + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je snoch13_n84_α
 jmp snoch13_n83_α
snoch13_n81_β:
 jmp snoch13_n84_α
snoch13_n82_α:
# IR_VAR
bb112_α:
 mov rdi, qword ptr [rip + .Lx185_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xgvarg183_done
 xgvarg183_β:
 jmp snoch13_n86_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "next_wkey"
xgvarg183_done:
bb113_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1280]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lbynamefn187: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn187]
 lea rsi, [r12 + 1280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je snoch13_n86_α
 jmp xgvarg182_done
xgvarg182_β:
 jmp snoch13_n86_α
xgvarg182_done:
# IR_LIT_I
bb114_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 1304], rax
 jmp xgvarg188_done
 xgvarg188_β:
 jmp snoch13_n86_α
.Lx189_0:
 .quad 0
xgvarg188_done:
bb115_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
# marshal arg0 = gvar NV_GET -> [r12+1360]
   lea rdi, [rip + .S16]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
  .section .rodata
  .Lcallfn192: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn192]
 lea rsi, [r12 + 1360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1328], rax
 mov rcx, 0
 mov qword ptr [r12 + 1312], 0
 mov qword ptr [r12 + 1320], 0
 mov rax, qword ptr [r12 + 1328]
 cmp rax, rcx
 jle snoch13_n86_α
 jmp snoch13_n85_α
 snoch13_n82_β:
 jmp snoch13_n86_α
snoch13_n83_α:
bb116_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1376], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1384], rax
 mov dword ptr [r12 + 1392], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 1400], rax
 mov dword ptr [r12 + 1408], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1416], rax
 mov dword ptr [r12 + 1424], 0
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1432], rax
 mov dword ptr [r12 + 1440], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1448], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1376]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n74_α
 snoch13_n83_β:
 jmp snoch13_n74_α
snoch13_n84_α:
bb117_α:
# IR_ASSIGN_CONCAT 6 parts
 mov dword ptr [r12 + 1456], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1464], rax
 mov dword ptr [r12 + 1472], 0
 lea rax, [rip + .S29]
 mov qword ptr [r12 + 1480], rax
 mov dword ptr [r12 + 1488], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 1496], rax
 mov dword ptr [r12 + 1504], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1512], rax
 mov dword ptr [r12 + 1520], 0
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1528], rax
 mov dword ptr [r12 + 1536], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1544], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1456]
 mov edx, 6
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n74_α
 snoch13_n84_β:
 jmp snoch13_n74_α
snoch13_n85_α:
# IR_VAR
bb118_α:
 mov rdi, qword ptr [rip + .Lx197_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xgvarg195_done
 xgvarg195_β:
 jmp snoch13_n88_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "wi"
xgvarg195_done:
# IR_LIT_I
bb119_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 1576], rax
 jmp xgvarg198_done
 xgvarg198_β:
 jmp snoch13_n88_α
.Lx199_0:
 .quad 1
xgvarg198_done:
bb120_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1552] -> [r12+1600]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [r12+1568] -> [r12+1616]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lbynamefn201: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn201]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je snoch13_n88_α
 jmp snoch13_n87_α
snoch13_n85_β:
 jmp snoch13_n88_α
snoch13_n86_α:
# IR_VAR
bb121_α:
 mov rdi, qword ptr [rip + .Lx204_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xgvarg202_done
 xgvarg202_β:
 jmp snoch13_n90_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "wi"
xgvarg202_done:
# IR_LIT_I
bb122_α:
 mov qword ptr [r12 + 1648], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [r12 + 1656], rax
 jmp xgvarg205_done
 xgvarg205_β:
 jmp snoch13_n90_α
.Lx206_0:
 .quad 1
xgvarg205_done:
bb123_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1680]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1696]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lbynamefn208: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn208]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je snoch13_n90_α
 jmp snoch13_n89_α
snoch13_n86_β:
 jmp snoch13_n90_α
snoch13_n87_α:
bb124_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1712], 1
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 1720], rax
 mov dword ptr [r12 + 1728], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1736], rax
 mov dword ptr [r12 + 1744], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1752], rax
 mov dword ptr [r12 + 1760], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1768], rax
 mov dword ptr [r12 + 1776], 0
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1784], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1712]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n47_α
 snoch13_n87_β:
 jmp snoch13_n47_α
snoch13_n88_α:
bb125_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1792], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 1800], rax
 mov dword ptr [r12 + 1808], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1816], rax
 mov dword ptr [r12 + 1824], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1832], rax
 mov dword ptr [r12 + 1840], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1848], rax
 mov dword ptr [r12 + 1856], 0
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1864], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1792]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n47_α
 snoch13_n88_β:
 jmp snoch13_n47_α
snoch13_n89_α:
bb126_α:
# IR_ASSIGN_CONCAT 4 parts
 mov dword ptr [r12 + 1872], 1
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 1880], rax
 mov dword ptr [r12 + 1888], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1896], rax
 mov dword ptr [r12 + 1904], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1912], rax
 mov dword ptr [r12 + 1920], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1928], rax
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1872]
 mov edx, 4
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n91_α
 snoch13_n89_β:
 jmp snoch13_n91_α
snoch13_n90_α:
bb127_α:
# IR_ASSIGN_CONCAT 4 parts
 mov dword ptr [r12 + 1936], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 1944], rax
 mov dword ptr [r12 + 1952], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1960], rax
 mov dword ptr [r12 + 1968], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1976], rax
 mov dword ptr [r12 + 1984], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1992], rax
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1936]
 mov edx, 4
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n91_α
 snoch13_n90_β:
 jmp snoch13_n91_α
snoch13_n91_α:
# IR_VAR
bb128_α:
 mov rdi, qword ptr [rip + .Lx215_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xgvarg213_done
 xgvarg213_β:
 jmp snoch13_n93_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "last_sent"
xgvarg213_done:
# IR_LIT_I
bb129_α:
 mov qword ptr [r12 + 2016], 6
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 2024], rax
 jmp xgvarg216_done
 xgvarg216_β:
 jmp snoch13_n93_α
.Lx217_0:
 .quad 1
xgvarg216_done:
bb130_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+2000] -> [r12+2048]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [r12+2016] -> [r12+2064]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lbynamefn219: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn219]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je snoch13_n93_α
 jmp snoch13_n92_α
snoch13_n91_β:
 jmp snoch13_n93_α
snoch13_n92_α:
bb131_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 2080], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 2088], rax
 mov dword ptr [r12 + 2096], 0
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 2104], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 2080]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n16_α
 snoch13_n92_β:
 jmp snoch13_n16_α
snoch13_n93_α:
bb132_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 2112], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 2120], rax
 mov dword ptr [r12 + 2128], 0
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 2136], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 2112]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n16_α
 snoch13_n93_β:
 jmp snoch13_n16_α
pp_mem_β:
jmp pp_mem_ω
pp_mem_γ:
mov eax, 1
xor edx, edx
pop r12
ret
pp_mem_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "new_sent"
  .Lpnames0:
  .quad 0
  .Lpn1: .string "add_tok"
  .Lpnames1:
  .quad 0
  .Lpn2: .string "pp_mem"
  .Lpp2_0: .string "mem"
  .Lpp2_1: .string "ssk"
  .Lpp2_2: .string "si"
  .Lpp2_3: .string "sentno"
  .Lpp2_4: .string "wsk"
  .Lpp2_5: .string "wi"
  .Lpp2_6: .string "wkey"
  .Lpp2_7: .string "wq"
  .Lpp2_8: .string "wrd"
  .Lpp2_9: .string "tsk"
  .Lpp2_10: .string "ti"
  .Lpp2_11: .string "tag"
  .Lpp2_12: .string "tv"
  .Lpp2_13: .string "tline"
  .Lpp2_14: .string "pfx"
  .Lpp2_15: .string "pad"
  .Lpp2_16: .string "next_wkey"
  .Lpp2_17: .string "last_sent"
  .Lpp2_18: .string "lline"
  .Lpp2_19: .string "ns"
  .Lpnames2:
  .quad .Lpp2_0
  .quad .Lpp2_1
  .quad .Lpp2_2
  .quad .Lpp2_3
  .quad .Lpp2_4
  .quad .Lpp2_5
  .quad .Lpp2_6
  .quad .Lpp2_7
  .quad .Lpp2_8
  .quad .Lpp2_9
  .quad .Lpp2_10
  .quad .Lpp2_11
  .quad .Lpp2_12
  .quad .Lpp2_13
  .quad .Lpp2_14
  .quad .Lpp2_15
  .quad .Lpp2_16
  .quad .Lpp2_17
  .quad .Lpp2_18
  .quad .Lpp2_19
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
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + new_sent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 40
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + .Lpnames1]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + add_tok_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn1]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + .Lpnames2]
  mov edx, 20
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + pp_mem_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn2]
  mov esi, 2144
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "DIGITS"
  .Lgvan1: .string "UCASE"
  .Lgvan2: .string "sentno"
  .Lgvan3: .string "num"
  .Lgvan4: .string "new_sent"
  .Lgvan5: .string "add_tok"
  .Lgvan6: .string "ssk"
  .Lgvan7: .string "si"
  .Lgvan8: .string "ns"
  .Lgvan9: .string "last_sent"
  .Lgvan10: .string "pad"
  .Lgvan11: .string "pfx"
  .Lgvan12: .string "wsk"
  .Lgvan13: .string "wi"
  .Lgvan14: .string "wkey"
  .Lgvan15: .string "next_wkey"
  .Lgvan16: .string "wrd"
  .Lgvan17: .string "wq"
  .Lgvan18: .string "tsk"
  .Lgvan19: .string "ti"
  .Lgvan20: .string "tline"
  .Lgvan21: .string "tag"
  .Lgvan22: .string "tv"
  .Lgvan23: .string "lline"
  .Lgvan24: .string "pp_mem"
  .Lgvan25: .string "line"
  .Lgvan26: .string "src"
  .Lgvan27: .string "mem"
  .Lgvan28: .string "claws"
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
  .section .bss
  .align 16
__gva: .space 464, 0
  .section .text
  .intel_syntax noprefix
  .section .rodata
  .Lprocn0: .string "pp_mem"
  .align 8
__proc_names:
  .quad .Lprocn0
  .section .bss
  .align 8
__proc: .space 8, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __proc]
  lea rsi, [rip + __proc_names]
  mov edx, 1
  call rt_proc_table_fill@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 29
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
snoch222_n0_α:
# IR_VAR
bb133_α:
 mov rdi, qword ptr [rip + .Lx224_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch222_n1_α
 snoch222_n0_β:
 jmp snoch222_n2_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "ALPHABET"
snoch222_n1_α:
# IR_SUBJECT
bb134_α:
 lea rdi, [rip + .S36]
 lea rsi, [r12 + 16]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan225_sγ
 xscan225_sβ:
 jmp snoch222_n2_α
xscan225_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb135_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch228_retry
 snoch222_n1_β:
 jmp xscan225_dfail
smatch228_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb137_α:
 cmp r14d, 10
 jne xcat231_ω
 jmp xcat231_γ
 xcat231_left_β:
 jmp xcat231_ω
xcat231_γ:
# IR_MATCH_CAPTURE_SAVE
bb138_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb139_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat231_right_ω
 add r14d, 1
 jmp xcap233_γ
 xcat231_right_β:
 jmp xcat231_right_ω
xcap233_γ:
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
 jmp xscan225_dok
xcat231_right_ω:
 jmp xcat231_left_β
smatch228_elemb:
 jmp xcat231_right_β
xcat231_ω:
 jmp smatch228_adv
smatch228_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan225_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan225_dfail
 jmp smatch228_retry
xscan225_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch222_n2_α
xscan225_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch222_n2_α
snoch222_n2_α:
# IR_LIT_scalar
bb143_α:
 jmp snoch222_n3_α
 snoch222_n2_β:
 jmp snoch222_n4_α
snoch222_n3_α:
bb144_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S38]
 lea rsi, [rip + .S39]
 call rt_gvar_assign_str@PLT
 jmp snoch222_n4_α
 snoch222_n3_β:
 jmp snoch222_n4_α
snoch222_n4_α:
# IR_LIT_scalar
bb145_α:
 jmp snoch222_n5_α
 snoch222_n4_β:
 jmp snoch222_n6_α
snoch222_n5_α:
bb146_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S40]
 lea rsi, [rip + .S41]
 call rt_gvar_assign_str@PLT
 jmp snoch222_n6_α
 snoch222_n5_β:
 jmp snoch222_n6_α
snoch222_n6_α:
bb147_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S42]
 call rt_proc_define@PLT
 jmp snoch222_n7_α
 snoch222_n6_β:
 jmp snoch222_n7_α
snoch222_n7_α:
bb148_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S43]
 call rt_proc_define@PLT
 jmp snoch222_n8_α
 snoch222_n7_β:
 jmp snoch222_n8_α
snoch222_n8_α:
bb149_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S44]
 call rt_proc_define@PLT
 jmp snoch222_n9_α
 snoch222_n8_β:
 jmp snoch222_n9_α
snoch222_n9_α:
# IR_VAR
bb150_α:
 mov rdi, qword ptr [rip + .Lx247_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch222_n10_α
 snoch222_n9_β:
 jmp snoch222_n11_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "INPUT"
snoch222_n10_α:
bb151_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch222_n12_α
 snoch222_n10_β:
 jmp snoch222_n11_α
snoch222_n11_α:
bb152_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn250: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn250]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch222_n14_α
 jmp snoch222_n13_α
snoch222_n11_β:
 jmp snoch222_n14_α
snoch222_n12_α:
bb153_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 96], 1
 lea rax, [rip + .S47]
 mov qword ptr [r12 + 104], rax
 mov dword ptr [r12 + 112], 1
 lea rax, [rip + .S45]
 mov qword ptr [r12 + 120], rax
 lea rdi, [rip + .S47]
 lea rsi, [r12 + 96]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch222_n9_α
 snoch222_n12_β:
 jmp snoch222_n9_α
snoch222_n13_α:
bb154_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov qword ptr [rbx + 432], rax
 mov qword ptr [rbx + 440], rcx
 jmp snoch222_n14_α
 snoch222_n13_β:
 jmp snoch222_n14_α
snoch222_n14_α:
# IR_VAR gva
bb155_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch222_n15_α
 snoch222_n14_β:
 jmp snoch222_n16_α
snoch222_n15_α:
# IR_SUBJECT
bb156_α:
 lea rdi, [rip + .S47]
 lea rsi, [r12 + 144]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan255_sγ
 xscan255_sβ:
 jmp snoch222_n16_α
xscan255_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb157_α:
 mov r13, qword ptr [r12 + 144]
 mov r15d, dword ptr [r12 + 152]
 mov dword ptr [r12 + 160], 0
 lea r10, [r12 + 168]
 jmp smatch258_retry
 snoch222_n15_β:
 jmp xscan255_dfail
smatch258_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 160]
# IR_MATCH_DEFER
bb159_α:
 lea rdi, [rip + .S48]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx261_0
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
 jne smatch258_adv
 jmp xscan255_dok
.Lx261_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch258_adv
 mov r14d, eax
 jmp xscan255_dok
 smatch258_elemb:
 jmp smatch258_adv
smatch258_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 160], 1
 mov eax, dword ptr [r12 + 160]
 cmp eax, r15d
 jg xscan255_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan255_dfail
 jmp smatch258_retry
xscan255_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch222_n17_α
xscan255_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch222_n16_α
snoch222_n16_α:
# IR_LIT_scalar
bb161_α:
 jmp snoch222_n18_α
 snoch222_n16_β:
 jmp flat_γ
snoch222_n17_α:
# IR_VAR gva
bb162_α:
 mov rax, qword ptr [rbx + 432]
 mov rdx, qword ptr [rbx + 440]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg264_done
 xgvarg264_β:
 jmp flat_γ
xgvarg264_done:
bb163_α:
# BOX IR_CALL pp_mem(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je flat_γ
 jmp flat_γ
snoch222_n17_β:
 jmp flat_γ
snoch222_n18_α:
bb164_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S49]
 call rt_gvar_assign_str@PLT
 jmp flat_γ
 snoch222_n18_β:
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
.S0: .string "num"
.S1: .string "sentno"
.S2: .string "new_sent"
.S3: .string ""
.S4: .string "add_tok"
.S5: .string "ssk"
.S6: .string "si"
.S7: .string "ns"
.S8: .string "pp_mem"
.S9: .string "last_sent"
.S10: .string "pad"
.S11: .string "mem"
.S12: .string "wsk"
.S13: .string "wi"
.S14: .string "wkey"
.S15: .string "pfx"
.S16: .string "next_wkey"
.S17: .string "wrd"
.S18: .string "'"
.S19: .string "wq"
.S20: .string "\""
.S21: .string "tsk"
.S22: .string "ti"
.S23: .string "tline"
.S24: .string "{"
.S25: .string "tag"
.S26: .string "}"
.S27: .string "': "
.S28: .string "tv"
.S29: .string ", "
.S30: .string "OUTPUT"
.S31: .string ": "
.S32: .string ","
.S33: .string "lline"
.S34: .string "}}"
.S35: .string "},"
.S36: .string "ALPHABET"
.S37: .string "nl"
.S38: .string "DIGITS"
.S39: .string "0123456789"
.S40: .string "UCASE"
.S41: .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.S42: .string "new_sent()"
.S43: .string "add_tok()"
.S44: .string "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
.S45: .string "line"
.S46: .string "INPUT"
.S47: .string "src"
.S48: .string "claws"
.S49: .string "Pattern match failed"
.text
