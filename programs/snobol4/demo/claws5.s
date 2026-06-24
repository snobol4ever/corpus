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
# IR_VAR
bb17_α:
 mov rdi, qword ptr [rip + .Lx28_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch13_n10_α
 snoch13_n8_β:
 jmp snoch13_n11_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "ns"
snoch13_n9_α:
bb18_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 96], rax
 jmp snoch13_n12_α
 snoch13_n9_β:
 jmp snoch13_n8_α
snoch13_n10_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch13_n13_α
 snoch13_n10_β:
 jmp snoch13_n11_α
snoch13_n11_α:
# IR_LIT_scalar
bb20_α:
 jmp snoch13_n14_α
 snoch13_n11_β:
 jmp snoch13_n15_α
snoch13_n12_α:
bb21_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 96]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n8_α
 snoch13_n12_β:
 jmp snoch13_n8_α
snoch13_n13_α:
bb22_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 104], rax
 jmp snoch13_n16_α
 snoch13_n13_β:
 jmp snoch13_n11_α
snoch13_n14_α:
bb23_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n15_α
 snoch13_n14_β:
 jmp snoch13_n15_α
snoch13_n15_α:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx37_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch13_n17_α
 snoch13_n15_β:
 jmp snoch13_n18_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "si"
snoch13_n16_α:
bb25_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 104]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n11_α
 snoch13_n16_β:
 jmp snoch13_n11_α
snoch13_n17_α:
# IR_LIT_scalar
bb26_α:
 jmp snoch13_n19_α
 snoch13_n17_β:
 jmp snoch13_n18_α
snoch13_n18_α:
bb27_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call subscript_get@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch13_n20_α
 snoch13_n18_β:
 jmp snoch13_n21_α
snoch13_n19_α:
bb28_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 160], rax
 jmp snoch13_n22_α
 snoch13_n19_β:
 jmp snoch13_n18_α
snoch13_n20_α:
bb29_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n23_α
 snoch13_n20_β:
 jmp snoch13_n21_α
snoch13_n21_α:
# IR_VAR
bb30_α:
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch13_n24_α
 snoch13_n21_β:
 jmp snoch13_n25_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string ""
snoch13_n22_α:
bb31_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 160]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n18_α
 snoch13_n22_β:
 jmp snoch13_n18_α
snoch13_n23_α:
# IR_LIT_scalar
bb32_α:
 jmp snoch13_n26_α
 snoch13_n23_β:
 jmp snoch13_n27_α
snoch13_n24_α:
bb33_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_var@PLT
 jmp snoch13_n25_α
 snoch13_n24_β:
 jmp snoch13_n25_α
snoch13_n25_α:
snoch13_n25_β:
jmp pp_mem_γ
jmp pp_mem_γ
snoch13_n26_α:
bb34_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n27_α
 snoch13_n26_β:
 jmp snoch13_n27_α
snoch13_n27_α:
# IR_VAR
bb35_α:
 mov rdi, qword ptr [rip + .Lx53_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp xgvarg51_done
 xgvarg51_β:
 jmp snoch13_n29_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "si"
xgvarg51_done:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx56_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xgvarg54_done
 xgvarg54_β:
 jmp snoch13_n29_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "ns"
xgvarg54_done:
bb37_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+184] -> [r12+232]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
# marshal arg1 = producer-box slot [r12+200] -> [r12+248]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 256], rax
  .section .rodata
  .Lbynamefn58: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn58]
 lea rsi, [r12 + 232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je snoch13_n29_α
 jmp snoch13_n28_α
snoch13_n27_β:
 jmp snoch13_n29_α
snoch13_n28_α:
# IR_LIT_scalar
bb38_α:
 jmp snoch13_n30_α
 snoch13_n28_β:
 jmp snoch13_n29_α
snoch13_n29_α:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 264], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 272], rax
 jmp xgvarg60_done
 xgvarg60_β:
 jmp snoch13_n32_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string " "
xgvarg60_done:
xgvarg62_done:
bb40_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+264] -> [r12+296]
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 304], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+312]
# marshal arg0 = gvar NV_GET -> [r12+360]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
  .section .rodata
  .Lcallfn64: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn64]
 lea rsi, [r12 + 360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 328], rax
 mov rcx, 4
 mov rax, qword ptr [r12 + 328]
 add rax, rcx
 mov qword ptr [r12 + 312], 6
 mov qword ptr [r12 + 320], rax
  .section .rodata
  .Lbynamefn65: .string "DUPL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn65]
 lea rsi, [r12 + 296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je snoch13_n32_α
 jmp snoch13_n31_α
snoch13_n29_β:
 jmp snoch13_n32_α
snoch13_n30_α:
# IR_LIT_I
bb41_α:
 mov qword ptr [r12 + 376], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 384], rax
 jmp xgvcat66_1d
 xgvcat66_1b:
 jmp snoch13_n29_α
.Lx67_0:
 .quad 1
xgvcat66_1d:
bb42_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 216]
 mov rsi, qword ptr [r12 + 224]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 jmp snoch13_n33_α
 snoch13_n30_β:
 jmp snoch13_n29_α
snoch13_n31_α:
bb43_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n32_α
 snoch13_n31_β:
 jmp snoch13_n32_α
snoch13_n32_α:
# IR_VAR
bb44_α:
 mov rdi, qword ptr [rip + .Lx72_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 jmp xgvarg70_done
 xgvarg70_β:
 jmp snoch13_n35_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "si"
xgvarg70_done:
# IR_LIT_I
bb45_α:
 mov qword ptr [r12 + 424], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 432], rax
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch13_n35_α
.Lx74_0:
 .quad 1
xgvarg73_done:
bb46_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 456], rax
 mov rcx, 1
 mov qword ptr [r12 + 440], 0
 mov qword ptr [r12 + 448], 0
 mov rax, qword ptr [r12 + 456]
 cmp rax, rcx
 jne snoch13_n35_α
 jmp snoch13_n34_α
 snoch13_n32_β:
 jmp snoch13_n35_α
snoch13_n33_α:
bb47_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n29_α
 snoch13_n33_β:
 jmp snoch13_n29_α
snoch13_n34_α:
# IR_LIT_scalar
bb48_α:
 jmp snoch13_n36_α
 snoch13_n34_β:
 jmp snoch13_n35_α
snoch13_n35_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx81_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 jmp xgvarg79_done
 xgvarg79_β:
 jmp snoch13_n38_α
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "si"
xgvarg79_done:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 488], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 496], rax
 jmp xgvarg82_done
 xgvarg82_β:
 jmp snoch13_n38_α
.Lx83_0:
 .quad 1
xgvarg82_done:
bb51_α:
# BOX IR_CALL NE(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 520], rax
 mov rcx, 1
 mov qword ptr [r12 + 504], 0
 mov qword ptr [r12 + 512], 0
 mov rax, qword ptr [r12 + 520]
 cmp rax, rcx
 je snoch13_n38_α
 jmp snoch13_n37_α
 snoch13_n35_β:
 jmp snoch13_n38_α
snoch13_n36_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 536], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 544], rax
 jmp xgvcat85_1d
 xgvcat85_1b:
 jmp snoch13_n35_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "{"
xgvcat85_1d:
bb53_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 440]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 544]
 call str_concat_d@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 jmp snoch13_n39_α
 snoch13_n36_β:
 jmp snoch13_n35_α
snoch13_n37_α:
# IR_LIT_scalar
bb54_α:
 jmp snoch13_n40_α
 snoch13_n37_β:
 jmp snoch13_n38_α
snoch13_n38_α:
bb55_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S11]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 568]
 mov rsi, qword ptr [r12 + 576]
 call subscript_get@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp xgvarg89_done
 xgvarg89_β:
 jmp snoch13_n42_α
xgvarg89_done:
bb56_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+584] -> [r12+616]
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lbynamefn92: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn92]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je snoch13_n42_α
 jmp snoch13_n41_α
snoch13_n38_β:
 jmp snoch13_n42_α
snoch13_n39_α:
# IR_VAR
bb57_α:
 mov rdi, qword ptr [rip + .Lx94_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 jmp snoch13_n43_α
 snoch13_n39_β:
 jmp snoch13_n35_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "sentno"
snoch13_n40_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 648], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 656], rax
 jmp xgvcat95_1d
 xgvcat95_1b:
 jmp snoch13_n38_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string " "
xgvcat95_1d:
bb59_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 504]
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 656]
 call str_concat_d@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp snoch13_n44_α
 snoch13_n40_β:
 jmp snoch13_n38_α
snoch13_n41_α:
bb60_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S12]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n42_α
 snoch13_n41_β:
 jmp snoch13_n42_α
snoch13_n42_α:
# IR_LIT_scalar
bb61_α:
 jmp snoch13_n45_α
 snoch13_n42_β:
 jmp snoch13_n46_α
snoch13_n43_α:
bb62_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 632]
 mov rcx, qword ptr [r12 + 640]
 call str_concat_d@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
 jmp snoch13_n47_α
 snoch13_n43_β:
 jmp snoch13_n35_α
snoch13_n44_α:
# IR_VAR
bb63_α:
 mov rdi, qword ptr [rip + .Lx102_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 jmp snoch13_n48_α
 snoch13_n44_β:
 jmp snoch13_n38_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "sentno"
snoch13_n45_α:
bb64_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n46_α
 snoch13_n45_β:
 jmp snoch13_n46_α
snoch13_n46_α:
# IR_VAR
bb65_α:
 mov rdi, qword ptr [rip + .Lx105_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 jmp snoch13_n49_α
 snoch13_n46_β:
 jmp snoch13_n50_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "wi"
snoch13_n47_α:
# IR_LIT_scalar
bb66_α:
 jmp snoch13_n51_α
 snoch13_n47_β:
 jmp snoch13_n35_α
snoch13_n48_α:
bb67_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 696]
 mov rcx, qword ptr [r12 + 704]
 call str_concat_d@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 jmp snoch13_n52_α
 snoch13_n48_β:
 jmp snoch13_n38_α
snoch13_n49_α:
# IR_LIT_scalar
bb68_α:
 jmp snoch13_n53_α
 snoch13_n49_β:
 jmp snoch13_n50_α
snoch13_n50_α:
bb69_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S12]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 744]
 mov rsi, qword ptr [r12 + 752]
 call subscript_get@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 jmp snoch13_n54_α
 snoch13_n50_β:
 jmp snoch13_n15_α
snoch13_n51_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 776], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [r12 + 784], rax
 jmp xgvcat110_1d
 xgvcat110_1b:
 jmp snoch13_n35_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string ": {"
xgvcat110_1d:
bb71_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 776]
 mov rcx, qword ptr [r12 + 784]
 call str_concat_d@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 jmp snoch13_n55_α
 snoch13_n51_β:
 jmp snoch13_n35_α
snoch13_n52_α:
# IR_LIT_scalar
bb72_α:
 jmp snoch13_n56_α
 snoch13_n52_β:
 jmp snoch13_n38_α
snoch13_n53_α:
bb73_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 808], rax
 jmp snoch13_n57_α
 snoch13_n53_β:
 jmp snoch13_n50_α
snoch13_n54_α:
bb74_α:
# IR_ASSIGN
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n58_α
 snoch13_n54_β:
 jmp snoch13_n15_α
snoch13_n55_α:
bb75_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n35_α
 snoch13_n55_β:
 jmp snoch13_n35_α
snoch13_n56_α:
# IR_LIT_S
bb76_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [r12 + 824], rax
 jmp xgvcat118_1d
 xgvcat118_1b:
 jmp snoch13_n38_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string ": {"
xgvcat118_1d:
bb77_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 call str_concat_d@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp snoch13_n59_α
 snoch13_n56_β:
 jmp snoch13_n38_α
snoch13_n57_α:
bb78_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 808]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n50_α
 snoch13_n57_β:
 jmp snoch13_n50_α
snoch13_n58_α:
# IR_LIT_scalar
bb79_α:
 jmp snoch13_n60_α
 snoch13_n58_β:
 jmp snoch13_n61_α
snoch13_n59_α:
bb80_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n38_α
 snoch13_n59_β:
 jmp snoch13_n38_α
snoch13_n60_α:
bb81_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S3]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n61_α
 snoch13_n60_β:
 jmp snoch13_n61_α
snoch13_n61_α:
# IR_VAR
bb82_α:
 mov rdi, qword ptr [rip + .Lx128_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp snoch13_n62_α
 snoch13_n61_β:
 jmp snoch13_n63_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "wkey"
snoch13_n62_α:
bb83_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S14]
 call rt_gvar_assign_var@PLT
 jmp snoch13_n63_α
 snoch13_n62_β:
 jmp snoch13_n63_α
snoch13_n63_α:
# IR_LIT_scalar
bb84_α:
 jmp snoch13_n64_α
 snoch13_n63_β:
 jmp snoch13_n65_α
snoch13_n64_α:
# IR_SUBJECT
bb85_α:
 lea rdi, [rip + .S17]
 lea rsi, [r12 + 864]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan131_sγ
 xscan131_sβ:
 jmp snoch13_n65_α
xscan131_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb86_α:
 mov r13, qword ptr [r12 + 864]
 mov r15d, dword ptr [r12 + 872]
 mov dword ptr [r12 + 880], 0
 lea r10, [r12 + 888]
 jmp smatch134_retry
 snoch13_n64_β:
 jmp xscan131_dfail
smatch134_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 880]
# IR_MATCH_ARB
bb88_α:
 mov dword ptr [r12 + 896], 0
 mov eax, r14d
 mov dword ptr [r12 + 900], eax
 jmp xcat137_γ
 xcat137_left_β:
 add dword ptr [r12 + 896], 1
 mov eax, dword ptr [r12 + 900]
 add eax, dword ptr [r12 + 896]
 cmp eax, r15d
 jg xcat137_ω
 mov r14d, eax
 jmp xcat137_γ
xcat137_γ:
# IR_LIT
bb89_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat137_right_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S18]
 mov rdx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xcat137_right_ω
 add r14d, 1
 jmp xscan131_dok
 xcat137_right_β:
 sub r14d, 1
 jmp xcat137_right_ω
xcat137_right_ω:
 jmp xcat137_left_β
smatch134_elemb:
 jmp xcat137_right_β
xcat137_ω:
 jmp smatch134_adv
smatch134_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 880], 1
 mov eax, dword ptr [r12 + 880]
 cmp eax, r15d
 jg xscan131_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan131_dfail
 jmp smatch134_retry
xscan131_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S17]
 mov esi, dword ptr [r12 + 880]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch13_n66_α
xscan131_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch13_n65_α
snoch13_n65_α:
bb92_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 904], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 912], rax
 mov dword ptr [r12 + 920], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 928], rax
 mov dword ptr [r12 + 936], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 944], rax
 lea rdi, [rip + .S19]
 lea rsi, [r12 + 904]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n67_α
 snoch13_n65_β:
 jmp snoch13_n67_α
snoch13_n66_α:
bb93_α:
# IR_ASSIGN_CONCAT 3 parts
 mov dword ptr [r12 + 952], 0
 lea rax, [rip + .S20]
 mov qword ptr [r12 + 960], rax
 mov dword ptr [r12 + 968], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 976], rax
 mov dword ptr [r12 + 984], 0
 lea rax, [rip + .S20]
 mov qword ptr [r12 + 992], rax
 lea rdi, [rip + .S19]
 lea rsi, [r12 + 952]
 mov edx, 3
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n67_α
 snoch13_n66_β:
 jmp snoch13_n67_α
snoch13_n67_α:
# IR_SUCCEED
bb94_α:
 jmp xgvarg144_done
 xgvarg144_β:
 jmp snoch13_n69_α
xgvarg144_done:
bb95_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+1032] -> [r12+1016]
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1024], rax
  .section .rodata
  .Lbynamefn147: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn147]
 lea rsi, [r12 + 1016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1000], rax
 mov qword ptr [r12 + 1008], rdx
 cmp eax, 99
 je snoch13_n69_α
 jmp snoch13_n68_α
snoch13_n67_β:
 jmp snoch13_n69_α
snoch13_n68_α:
bb96_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n69_α
 snoch13_n68_β:
 jmp snoch13_n69_α
snoch13_n69_α:
# IR_LIT_scalar
bb97_α:
 jmp snoch13_n70_α
 snoch13_n69_β:
 jmp snoch13_n71_α
snoch13_n70_α:
bb98_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S22]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n71_α
 snoch13_n70_β:
 jmp snoch13_n71_α
snoch13_n71_α:
# IR_LIT_scalar
bb99_α:
 jmp snoch13_n72_α
 snoch13_n71_β:
 jmp snoch13_n73_α
snoch13_n72_α:
bb100_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S23]
 lea rsi, [rip + .S24]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n73_α
 snoch13_n72_β:
 jmp snoch13_n73_α
snoch13_n73_α:
# IR_VAR
bb101_α:
 mov rdi, qword ptr [rip + .Lx154_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1048], rax
 mov qword ptr [r12 + 1056], rdx
 jmp snoch13_n74_α
 snoch13_n73_β:
 jmp snoch13_n75_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "ti"
snoch13_n74_α:
# IR_LIT_scalar
bb102_α:
 jmp snoch13_n76_α
 snoch13_n74_β:
 jmp snoch13_n75_α
snoch13_n75_α:
bb103_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S21]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1064], rax
 mov qword ptr [r12 + 1072], rdx
 lea rdi, [rip + .S22]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 1064]
 mov rsi, qword ptr [r12 + 1072]
 call subscript_get@PLT
 mov qword ptr [r12 + 1080], rax
 mov qword ptr [r12 + 1088], rdx
 jmp snoch13_n77_α
 snoch13_n75_β:
 jmp snoch13_n78_α
snoch13_n76_α:
bb104_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S22]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1096], rax
 jmp snoch13_n79_α
 snoch13_n76_β:
 jmp snoch13_n75_α
snoch13_n77_α:
bb105_α:
# IR_ASSIGN
 lea rdi, [rip + .S25]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n80_α
 snoch13_n77_β:
 jmp snoch13_n78_α
snoch13_n78_α:
bb106_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1104], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1112], rax
 mov dword ptr [r12 + 1120], 0
 lea rax, [rip + .S26]
 mov qword ptr [r12 + 1128], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1104]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n81_α
 snoch13_n78_β:
 jmp snoch13_n81_α
snoch13_n79_α:
bb107_α:
# IR_ASSIGN
 lea rdi, [rip + .S22]
 mov rsi, qword ptr [r12 + 1096]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n75_α
 snoch13_n79_β:
 jmp snoch13_n75_α
snoch13_n80_α:
# IR_VAR
bb108_α:
 mov rdi, qword ptr [rip + .Lx164_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xgvarg162_done
 xgvarg162_β:
 jmp snoch13_n83_α
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "tline"
xgvarg162_done:
# IR_LIT_S
bb109_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 1160], rax
 jmp xgvarg165_done
 xgvarg165_β:
 jmp snoch13_n83_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "{"
xgvarg165_done:
bb110_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1136] -> [r12+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1152] -> [r12+1200]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lbynamefn168: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn168]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je snoch13_n83_α
 jmp snoch13_n82_α
snoch13_n80_β:
 jmp snoch13_n83_α
snoch13_n81_α:
# IR_VAR
bb111_α:
 mov rdi, qword ptr [rip + .Lx172_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xgvarg170_done
 xgvarg170_β:
 jmp snoch13_n85_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "next_wkey"
xgvarg170_done:
bb112_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1216] -> [r12+1248]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lbynamefn174: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn174]
 lea rsi, [r12 + 1248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je snoch13_n85_α
 jmp xgvarg169_done
xgvarg169_β:
 jmp snoch13_n85_α
xgvarg169_done:
# IR_LIT_I
bb113_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 1272], rax
 jmp xgvarg175_done
 xgvarg175_β:
 jmp snoch13_n85_α
.Lx176_0:
 .quad 0
xgvarg175_done:
bb114_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
# marshal arg0 = gvar NV_GET -> [r12+1328]
   lea rdi, [rip + .S16]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
  .section .rodata
  .Lcallfn178: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn178]
 lea rsi, [r12 + 1328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1296], rax
 mov rcx, 0
 mov qword ptr [r12 + 1280], 0
 mov qword ptr [r12 + 1288], 0
 mov rax, qword ptr [r12 + 1296]
 cmp rax, rcx
 jle snoch13_n85_α
 jmp snoch13_n84_α
 snoch13_n81_β:
 jmp snoch13_n85_α
snoch13_n82_α:
bb115_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1344], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1352], rax
 mov dword ptr [r12 + 1360], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 1368], rax
 mov dword ptr [r12 + 1376], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1384], rax
 mov dword ptr [r12 + 1392], 0
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1400], rax
 mov dword ptr [r12 + 1408], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1416], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1344]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n73_α
 snoch13_n82_β:
 jmp snoch13_n73_α
snoch13_n83_α:
bb116_α:
# IR_ASSIGN_CONCAT 6 parts
 mov dword ptr [r12 + 1424], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1432], rax
 mov dword ptr [r12 + 1440], 0
 lea rax, [rip + .S29]
 mov qword ptr [r12 + 1448], rax
 mov dword ptr [r12 + 1456], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 1464], rax
 mov dword ptr [r12 + 1472], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1480], rax
 mov dword ptr [r12 + 1488], 0
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1496], rax
 mov dword ptr [r12 + 1504], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1512], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1424]
 mov edx, 6
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n73_α
 snoch13_n83_β:
 jmp snoch13_n73_α
snoch13_n84_α:
# IR_VAR
bb117_α:
 mov rdi, qword ptr [rip + .Lx183_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xgvarg181_done
 xgvarg181_β:
 jmp snoch13_n87_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "wi"
xgvarg181_done:
# IR_LIT_I
bb118_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [r12 + 1544], rax
 jmp xgvarg184_done
 xgvarg184_β:
 jmp snoch13_n87_α
.Lx185_0:
 .quad 1
xgvarg184_done:
bb119_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1520] -> [r12+1568]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [r12+1536] -> [r12+1584]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lbynamefn187: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn187]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je snoch13_n87_α
 jmp snoch13_n86_α
snoch13_n84_β:
 jmp snoch13_n87_α
snoch13_n85_α:
# IR_VAR
bb120_α:
 mov rdi, qword ptr [rip + .Lx190_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xgvarg188_done
 xgvarg188_β:
 jmp snoch13_n89_α
.Lx190_0:
 .quad .Lx190_0_s
.Lx190_0_s:
 .string "wi"
xgvarg188_done:
# IR_LIT_I
bb121_α:
 mov qword ptr [r12 + 1616], 6
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [r12 + 1624], rax
 jmp xgvarg191_done
 xgvarg191_β:
 jmp snoch13_n89_α
.Lx192_0:
 .quad 1
xgvarg191_done:
bb122_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1600] -> [r12+1648]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = producer-box slot [r12+1616] -> [r12+1664]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1672], rax
  .section .rodata
  .Lbynamefn194: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn194]
 lea rsi, [r12 + 1648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je snoch13_n89_α
 jmp snoch13_n88_α
snoch13_n85_β:
 jmp snoch13_n89_α
snoch13_n86_α:
bb123_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1680], 1
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 1688], rax
 mov dword ptr [r12 + 1696], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1704], rax
 mov dword ptr [r12 + 1712], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1720], rax
 mov dword ptr [r12 + 1728], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1736], rax
 mov dword ptr [r12 + 1744], 0
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1752], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1680]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n46_α
 snoch13_n86_β:
 jmp snoch13_n46_α
snoch13_n87_α:
bb124_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1760], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 1768], rax
 mov dword ptr [r12 + 1776], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1784], rax
 mov dword ptr [r12 + 1792], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1800], rax
 mov dword ptr [r12 + 1808], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1816], rax
 mov dword ptr [r12 + 1824], 0
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1832], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1760]
 mov edx, 5
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n46_α
 snoch13_n87_β:
 jmp snoch13_n46_α
snoch13_n88_α:
bb125_α:
# IR_ASSIGN_CONCAT 4 parts
 mov dword ptr [r12 + 1840], 1
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 1848], rax
 mov dword ptr [r12 + 1856], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1864], rax
 mov dword ptr [r12 + 1872], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1880], rax
 mov dword ptr [r12 + 1888], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1896], rax
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1840]
 mov edx, 4
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n90_α
 snoch13_n88_β:
 jmp snoch13_n90_α
snoch13_n89_α:
bb126_α:
# IR_ASSIGN_CONCAT 4 parts
 mov dword ptr [r12 + 1904], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 1912], rax
 mov dword ptr [r12 + 1920], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1928], rax
 mov dword ptr [r12 + 1936], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1944], rax
 mov dword ptr [r12 + 1952], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1960], rax
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1904]
 mov edx, 4
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n90_α
 snoch13_n89_β:
 jmp snoch13_n90_α
snoch13_n90_α:
# IR_VAR
bb127_α:
 mov rdi, qword ptr [rip + .Lx201_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xgvarg199_done
 xgvarg199_β:
 jmp snoch13_n92_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "last_sent"
xgvarg199_done:
# IR_LIT_I
bb128_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 1992], rax
 jmp xgvarg202_done
 xgvarg202_β:
 jmp snoch13_n92_α
.Lx203_0:
 .quad 1
xgvarg202_done:
bb129_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1968] -> [r12+2016]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [r12+1984] -> [r12+2032]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lbynamefn205: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn205]
 lea rsi, [r12 + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je snoch13_n92_α
 jmp snoch13_n91_α
snoch13_n90_β:
 jmp snoch13_n92_α
snoch13_n91_α:
bb130_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 2048], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 2056], rax
 mov dword ptr [r12 + 2064], 0
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 2072], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 2048]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n15_α
 snoch13_n91_β:
 jmp snoch13_n15_α
snoch13_n92_α:
bb131_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 2080], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 2088], rax
 mov dword ptr [r12 + 2096], 0
 lea rax, [rip + .S35]
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
 jmp snoch13_n15_α
 snoch13_n92_β:
 jmp snoch13_n15_α
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
  mov esi, 2112
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
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
snoch208_n0_α:
# IR_VAR
bb132_α:
 mov rdi, qword ptr [rip + .Lx210_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch208_n1_α
 snoch208_n0_β:
 jmp snoch208_n2_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "ALPHABET"
snoch208_n1_α:
# IR_SUBJECT
bb133_α:
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
 jmp xscan211_sγ
 xscan211_sβ:
 jmp snoch208_n2_α
xscan211_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb134_α:
 mov r13, qword ptr [r12 + 16]
 mov r15d, dword ptr [r12 + 24]
 mov dword ptr [r12 + 32], 0
 lea r10, [r12 + 40]
 jmp smatch214_retry
 snoch208_n1_β:
 jmp xscan211_dfail
smatch214_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb136_α:
 cmp r14d, 10
 jne xcat217_ω
 jmp xcat217_γ
 xcat217_left_β:
 jmp xcat217_ω
xcat217_γ:
# IR_MATCH_CAPTURE_SAVE
bb137_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb138_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat217_right_ω
 add r14d, 1
 jmp xcap219_γ
 xcat217_right_β:
 jmp xcat217_right_ω
xcap219_γ:
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
 jmp xscan211_dok
xcat217_right_ω:
 jmp xcat217_left_β
smatch214_elemb:
 jmp xcat217_right_β
xcat217_ω:
 jmp smatch214_adv
smatch214_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan211_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan211_dfail
 jmp smatch214_retry
xscan211_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch208_n2_α
xscan211_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch208_n2_α
snoch208_n2_α:
# IR_LIT_scalar
bb142_α:
 jmp snoch208_n3_α
 snoch208_n2_β:
 jmp snoch208_n4_α
snoch208_n3_α:
bb143_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S38]
 lea rsi, [rip + .S39]
 call rt_gvar_assign_str@PLT
 jmp snoch208_n4_α
 snoch208_n3_β:
 jmp snoch208_n4_α
snoch208_n4_α:
# IR_LIT_scalar
bb144_α:
 jmp snoch208_n5_α
 snoch208_n4_β:
 jmp snoch208_n6_α
snoch208_n5_α:
bb145_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S40]
 lea rsi, [rip + .S41]
 call rt_gvar_assign_str@PLT
 jmp snoch208_n6_α
 snoch208_n5_β:
 jmp snoch208_n6_α
snoch208_n6_α:
bb146_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S42]
 call rt_proc_define@PLT
 jmp snoch208_n7_α
 snoch208_n6_β:
 jmp snoch208_n7_α
snoch208_n7_α:
bb147_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S43]
 call rt_proc_define@PLT
 jmp snoch208_n8_α
 snoch208_n7_β:
 jmp snoch208_n8_α
snoch208_n8_α:
bb148_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S44]
 call rt_proc_define@PLT
 jmp snoch208_n9_α
 snoch208_n8_β:
 jmp snoch208_n9_α
snoch208_n9_α:
# IR_VAR
bb149_α:
 mov rdi, qword ptr [rip + .Lx233_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch208_n10_α
 snoch208_n9_β:
 jmp snoch208_n11_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "INPUT"
snoch208_n10_α:
bb150_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch208_n12_α
 snoch208_n10_β:
 jmp snoch208_n11_α
snoch208_n11_α:
bb151_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn236: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn236]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch208_n14_α
 jmp snoch208_n13_α
snoch208_n11_β:
 jmp snoch208_n14_α
snoch208_n12_α:
bb152_α:
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
 jmp snoch208_n9_α
 snoch208_n12_β:
 jmp snoch208_n9_α
snoch208_n13_α:
bb153_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov qword ptr [rbx + 432], rax
 mov qword ptr [rbx + 440], rcx
 jmp snoch208_n14_α
 snoch208_n13_β:
 jmp snoch208_n14_α
snoch208_n14_α:
# IR_VAR gva
bb154_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch208_n15_α
 snoch208_n14_β:
 jmp snoch208_n16_α
snoch208_n15_α:
# IR_SUBJECT
bb155_α:
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
 jmp xscan241_sγ
 xscan241_sβ:
 jmp snoch208_n16_α
xscan241_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb156_α:
 mov r13, qword ptr [r12 + 144]
 mov r15d, dword ptr [r12 + 152]
 mov dword ptr [r12 + 160], 0
 lea r10, [r12 + 168]
 jmp smatch244_retry
 snoch208_n15_β:
 jmp xscan241_dfail
smatch244_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 160]
# IR_MATCH_DEFER
bb158_α:
 lea rdi, [rip + .S48]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx247_0
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
 jne smatch244_adv
 jmp xscan241_dok
.Lx247_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch244_adv
 mov r14d, eax
 jmp xscan241_dok
 smatch244_elemb:
 jmp smatch244_adv
smatch244_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 160], 1
 mov eax, dword ptr [r12 + 160]
 cmp eax, r15d
 jg xscan241_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan241_dfail
 jmp smatch244_retry
xscan241_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch208_n17_α
xscan241_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch208_n16_α
snoch208_n16_α:
# IR_LIT_scalar
bb160_α:
 jmp snoch208_n18_α
 snoch208_n16_β:
 jmp flat_γ
snoch208_n17_α:
# IR_VAR gva
bb161_α:
 mov rax, qword ptr [rbx + 432]
 mov rdx, qword ptr [rbx + 440]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg250_done
 xgvarg250_β:
 jmp flat_γ
xgvarg250_done:
bb162_α:
# BOX IR_CALL pp_mem(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lprocfn254: .string "pp_mem"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn254]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je flat_γ
 jmp flat_γ
snoch208_n17_β:
 jmp flat_γ
snoch208_n18_α:
bb163_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S49]
 call rt_gvar_assign_str@PLT
 jmp flat_γ
 snoch208_n18_β:
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
