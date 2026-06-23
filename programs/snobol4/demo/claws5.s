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
# BOX IR_CALL EQ(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+408] -> [r12+456]
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 464], rax
# marshal arg1 = producer-box slot [r12+424] -> [r12+472]
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 480], rax
  .section .rodata
  .Lbynamefn76: .string "EQ"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn76]
 lea rsi, [r12 + 456]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 cmp eax, 99
 je snoch13_n35_α
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
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xgvarg80_done
 xgvarg80_β:
 jmp snoch13_n38_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "si"
xgvarg80_done:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 504], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 512], rax
 jmp xgvarg83_done
 xgvarg83_β:
 jmp snoch13_n38_α
.Lx84_0:
 .quad 1
xgvarg83_done:
bb51_α:
# BOX IR_CALL NE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+488] -> [r12+536]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 544], rax
# marshal arg1 = producer-box slot [r12+504] -> [r12+552]
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 552], rax
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 560], rax
  .section .rodata
  .Lbynamefn86: .string "NE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn86]
 lea rsi, [r12 + 536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 cmp eax, 99
 je snoch13_n38_α
 jmp snoch13_n37_α
snoch13_n35_β:
 jmp snoch13_n38_α
snoch13_n36_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 568], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 576], rax
 jmp xgvcat87_1d
 xgvcat87_1b:
 jmp snoch13_n35_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "{"
xgvcat87_1d:
bb53_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 440]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 576]
 call str_concat_d@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
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
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 600]
 mov rsi, qword ptr [r12 + 608]
 call subscript_get@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 jmp xgvarg91_done
 xgvarg91_β:
 jmp snoch13_n42_α
xgvarg91_done:
bb56_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+616] -> [r12+648]
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 656], rax
  .section .rodata
  .Lbynamefn94: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn94]
 lea rsi, [r12 + 648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 cmp eax, 99
 je snoch13_n42_α
 jmp snoch13_n41_α
snoch13_n38_β:
 jmp snoch13_n42_α
snoch13_n39_α:
# IR_VAR
bb57_α:
 mov rdi, qword ptr [rip + .Lx96_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp snoch13_n43_α
 snoch13_n39_β:
 jmp snoch13_n35_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "sentno"
snoch13_n40_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 680], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 688], rax
 jmp xgvcat97_1d
 xgvcat97_1b:
 jmp snoch13_n38_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string " "
xgvcat97_1d:
bb59_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 520]
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 680]
 mov rcx, qword ptr [r12 + 688]
 call str_concat_d@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 jmp snoch13_n44_α
 snoch13_n40_β:
 jmp snoch13_n38_α
snoch13_n41_α:
bb60_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S12]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
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
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 672]
 call str_concat_d@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 jmp snoch13_n47_α
 snoch13_n43_β:
 jmp snoch13_n35_α
snoch13_n44_α:
# IR_VAR
bb63_α:
 mov rdi, qword ptr [rip + .Lx104_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 jmp snoch13_n48_α
 snoch13_n44_β:
 jmp snoch13_n38_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
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
 mov rdi, qword ptr [rip + .Lx107_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rdx
 jmp snoch13_n49_α
 snoch13_n46_β:
 jmp snoch13_n50_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
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
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 728]
 mov rcx, qword ptr [r12 + 736]
 call str_concat_d@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
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
 mov qword ptr [r12 + 776], rax
 mov qword ptr [r12 + 784], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 776]
 mov rsi, qword ptr [r12 + 784]
 call subscript_get@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 jmp snoch13_n54_α
 snoch13_n50_β:
 jmp snoch13_n15_α
snoch13_n51_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 808], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [r12 + 816], rax
 jmp xgvcat112_1d
 xgvcat112_1b:
 jmp snoch13_n35_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string ": {"
xgvcat112_1d:
bb71_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 816]
 call str_concat_d@PLT
 mov qword ptr [r12 + 824], rax
 mov qword ptr [r12 + 832], rdx
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
 mov qword ptr [r12 + 840], rax
 jmp snoch13_n57_α
 snoch13_n53_β:
 jmp snoch13_n50_α
snoch13_n54_α:
bb74_α:
# IR_ASSIGN
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n58_α
 snoch13_n54_β:
 jmp snoch13_n15_α
snoch13_n55_α:
bb75_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n35_α
 snoch13_n55_β:
 jmp snoch13_n35_α
snoch13_n56_α:
# IR_LIT_S
bb76_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [r12 + 856], rax
 jmp xgvcat120_1d
 xgvcat120_1b:
 jmp snoch13_n38_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string ": {"
xgvcat120_1d:
bb77_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, 6
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call str_concat_d@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp snoch13_n59_α
 snoch13_n56_β:
 jmp snoch13_n38_α
snoch13_n57_α:
bb78_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 840]
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
 mov rsi, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
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
 mov rdi, qword ptr [rip + .Lx130_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp snoch13_n62_α
 snoch13_n61_β:
 jmp snoch13_n63_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
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
 lea rsi, [r12 + 896]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan133_sγ
 xscan133_sβ:
 jmp snoch13_n65_α
xscan133_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb86_α:
 mov r13, qword ptr [r12 + 896]
 mov r15d, dword ptr [r12 + 904]
 mov dword ptr [r12 + 912], 0
 lea r10, [r12 + 920]
 jmp smatch136_retry
 snoch13_n64_β:
 jmp xscan133_dfail
smatch136_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 912]
# IR_MATCH_ARB
bb88_α:
 mov dword ptr [r12 + 928], 0
 mov eax, r14d
 mov dword ptr [r12 + 932], eax
 jmp xcat139_γ
 xcat139_left_β:
 add dword ptr [r12 + 928], 1
 mov eax, dword ptr [r12 + 932]
 add eax, dword ptr [r12 + 928]
 cmp eax, r15d
 jg xcat139_ω
 mov r14d, eax
 jmp xcat139_γ
xcat139_γ:
# IR_LIT
bb89_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat139_right_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S18]
 mov rdx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xcat139_right_ω
 add r14d, 1
 jmp xscan133_dok
 xcat139_right_β:
 sub r14d, 1
 jmp xcat139_right_ω
xcat139_right_ω:
 jmp xcat139_left_β
smatch136_elemb:
 jmp xcat139_right_β
xcat139_ω:
 jmp smatch136_adv
smatch136_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 912], 1
 mov eax, dword ptr [r12 + 912]
 cmp eax, r15d
 jg xscan133_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan133_dfail
 jmp smatch136_retry
xscan133_dok:
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
jmp snoch13_n66_α
xscan133_dfail:
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
 jmp snoch13_n67_α
 snoch13_n65_β:
 jmp snoch13_n67_α
snoch13_n66_α:
bb93_α:
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
 jmp snoch13_n67_α
 snoch13_n66_β:
 jmp snoch13_n67_α
snoch13_n67_α:
# IR_SUCCEED
bb94_α:
 jmp xgvarg146_done
 xgvarg146_β:
 jmp snoch13_n69_α
xgvarg146_done:
bb95_α:
# BOX IR_CALL SORT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+1064] -> [r12+1048]
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1048], rax
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1056], rax
  .section .rodata
  .Lbynamefn149: .string "SORT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn149]
 lea rsi, [r12 + 1048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je snoch13_n69_α
 jmp snoch13_n68_α
snoch13_n67_β:
 jmp snoch13_n69_α
snoch13_n68_α:
bb96_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S21]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
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
 mov rdi, qword ptr [rip + .Lx156_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1080], rax
 mov qword ptr [r12 + 1088], rdx
 jmp snoch13_n74_α
 snoch13_n73_β:
 jmp snoch13_n75_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
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
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 lea rdi, [rip + .S22]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 1096]
 mov rsi, qword ptr [r12 + 1104]
 call subscript_get@PLT
 mov qword ptr [r12 + 1112], rax
 mov qword ptr [r12 + 1120], rdx
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
 mov qword ptr [r12 + 1128], rax
 jmp snoch13_n79_α
 snoch13_n76_β:
 jmp snoch13_n75_α
snoch13_n77_α:
bb105_α:
# IR_ASSIGN
 lea rdi, [rip + .S25]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1120]
 call rt_gvar_assign_descr@PLT
 jmp snoch13_n80_α
 snoch13_n77_β:
 jmp snoch13_n78_α
snoch13_n78_α:
bb106_α:
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
 jmp snoch13_n81_α
 snoch13_n78_β:
 jmp snoch13_n81_α
snoch13_n79_α:
bb107_α:
# IR_ASSIGN
 lea rdi, [rip + .S22]
 mov rsi, qword ptr [r12 + 1128]
 call rt_gvar_assign_int@PLT
 jmp snoch13_n75_α
 snoch13_n79_β:
 jmp snoch13_n75_α
snoch13_n80_α:
# IR_VAR
bb108_α:
 mov rdi, qword ptr [rip + .Lx166_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xgvarg164_done
 xgvarg164_β:
 jmp snoch13_n83_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "tline"
xgvarg164_done:
# IR_LIT_S
bb109_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 1192], rax
 jmp xgvarg167_done
 xgvarg167_β:
 jmp snoch13_n83_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "{"
xgvarg167_done:
bb110_α:
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
  .Lbynamefn170: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn170]
 lea rsi, [r12 + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je snoch13_n83_α
 jmp snoch13_n82_α
snoch13_n80_β:
 jmp snoch13_n83_α
snoch13_n81_α:
# IR_VAR
bb111_α:
 mov rdi, qword ptr [rip + .Lx174_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xgvarg172_done
 xgvarg172_β:
 jmp snoch13_n85_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "next_wkey"
xgvarg172_done:
bb112_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1280]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lbynamefn176: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn176]
 lea rsi, [r12 + 1280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je snoch13_n85_α
 jmp xgvarg171_done
xgvarg171_β:
 jmp snoch13_n85_α
xgvarg171_done:
# IR_LIT_I
bb113_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 1304], rax
 jmp xgvarg177_done
 xgvarg177_β:
 jmp snoch13_n85_α
.Lx178_0:
 .quad 0
xgvarg177_done:
bb114_α:
# BOX IR_CALL GT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1264] -> [r12+1328]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [r12+1296] -> [r12+1344]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lbynamefn180: .string "GT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn180]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je snoch13_n85_α
 jmp snoch13_n84_α
snoch13_n81_β:
 jmp snoch13_n85_α
snoch13_n82_α:
bb115_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1360], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1368], rax
 mov dword ptr [r12 + 1376], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 1384], rax
 mov dword ptr [r12 + 1392], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1400], rax
 mov dword ptr [r12 + 1408], 0
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1416], rax
 mov dword ptr [r12 + 1424], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1432], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1360]
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
 mov dword ptr [r12 + 1440], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1448], rax
 mov dword ptr [r12 + 1456], 0
 lea rax, [rip + .S29]
 mov qword ptr [r12 + 1464], rax
 mov dword ptr [r12 + 1472], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 1480], rax
 mov dword ptr [r12 + 1488], 1
 lea rax, [rip + .S25]
 mov qword ptr [r12 + 1496], rax
 mov dword ptr [r12 + 1504], 0
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1512], rax
 mov dword ptr [r12 + 1520], 1
 lea rax, [rip + .S28]
 mov qword ptr [r12 + 1528], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 1440]
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
 mov rdi, qword ptr [rip + .Lx185_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xgvarg183_done
 xgvarg183_β:
 jmp snoch13_n87_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "wi"
xgvarg183_done:
# IR_LIT_I
bb118_α:
 mov qword ptr [r12 + 1552], 6
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 1560], rax
 jmp xgvarg186_done
 xgvarg186_β:
 jmp snoch13_n87_α
.Lx187_0:
 .quad 1
xgvarg186_done:
bb119_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1536] -> [r12+1584]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1592], rax
# marshal arg1 = producer-box slot [r12+1552] -> [r12+1600]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lbynamefn189: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn189]
 lea rsi, [r12 + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je snoch13_n87_α
 jmp snoch13_n86_α
snoch13_n84_β:
 jmp snoch13_n87_α
snoch13_n85_α:
# IR_VAR
bb120_α:
 mov rdi, qword ptr [rip + .Lx192_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xgvarg190_done
 xgvarg190_β:
 jmp snoch13_n89_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "wi"
xgvarg190_done:
# IR_LIT_I
bb121_α:
 mov qword ptr [r12 + 1632], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 1640], rax
 jmp xgvarg193_done
 xgvarg193_β:
 jmp snoch13_n89_α
.Lx194_0:
 .quad 1
xgvarg193_done:
bb122_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1616] -> [r12+1664]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1672], rax
# marshal arg1 = producer-box slot [r12+1632] -> [r12+1680]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lbynamefn196: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn196]
 lea rsi, [r12 + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je snoch13_n89_α
 jmp snoch13_n88_α
snoch13_n85_β:
 jmp snoch13_n89_α
snoch13_n86_α:
bb123_α:
# IR_ASSIGN_CONCAT 5 parts
 mov dword ptr [r12 + 1696], 1
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 1704], rax
 mov dword ptr [r12 + 1712], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1720], rax
 mov dword ptr [r12 + 1728], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1736], rax
 mov dword ptr [r12 + 1744], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1752], rax
 mov dword ptr [r12 + 1760], 0
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1768], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1696]
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
 mov dword ptr [r12 + 1776], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 1784], rax
 mov dword ptr [r12 + 1792], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1800], rax
 mov dword ptr [r12 + 1808], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1816], rax
 mov dword ptr [r12 + 1824], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1832], rax
 mov dword ptr [r12 + 1840], 0
 lea rax, [rip + .S32]
 mov qword ptr [r12 + 1848], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 1776]
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
 mov dword ptr [r12 + 1856], 1
 lea rax, [rip + .S15]
 mov qword ptr [r12 + 1864], rax
 mov dword ptr [r12 + 1872], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1880], rax
 mov dword ptr [r12 + 1888], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1896], rax
 mov dword ptr [r12 + 1904], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1912], rax
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1856]
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
 mov dword ptr [r12 + 1920], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 1928], rax
 mov dword ptr [r12 + 1936], 1
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 1944], rax
 mov dword ptr [r12 + 1952], 0
 lea rax, [rip + .S31]
 mov qword ptr [r12 + 1960], rax
 mov dword ptr [r12 + 1968], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1976], rax
 lea rdi, [rip + .S33]
 lea rsi, [r12 + 1920]
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
 mov rdi, qword ptr [rip + .Lx203_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xgvarg201_done
 xgvarg201_β:
 jmp snoch13_n92_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "last_sent"
xgvarg201_done:
# IR_LIT_I
bb128_α:
 mov qword ptr [r12 + 2000], 6
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 2008], rax
 jmp xgvarg204_done
 xgvarg204_β:
 jmp snoch13_n92_α
.Lx205_0:
 .quad 1
xgvarg204_done:
bb129_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1984] -> [r12+2032]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [r12+2000] -> [r12+2048]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lbynamefn207: .string "IDENT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn207]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je snoch13_n92_α
 jmp snoch13_n91_α
snoch13_n90_β:
 jmp snoch13_n92_α
snoch13_n91_α:
bb130_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 2064], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 2072], rax
 mov dword ptr [r12 + 2080], 0
 lea rax, [rip + .S34]
 mov qword ptr [r12 + 2088], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 2064]
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
 mov dword ptr [r12 + 2096], 1
 lea rax, [rip + .S33]
 mov qword ptr [r12 + 2104], rax
 mov dword ptr [r12 + 2112], 0
 lea rax, [rip + .S35]
 mov qword ptr [r12 + 2120], rax
 lea rdi, [rip + .S30]
 lea rsi, [r12 + 2096]
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
  .Lpnames2:
  .quad .Lpp2_0
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
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + pp_mem_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn2]
  mov esi, 2128
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
snoch210_n0_α:
# IR_VAR
bb132_α:
 mov rdi, qword ptr [rip + .Lx212_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch210_n1_α
 snoch210_n0_β:
 jmp snoch210_n2_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "ALPHABET"
snoch210_n1_α:
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
 jmp xscan213_sγ
 xscan213_sβ:
 jmp snoch210_n2_α
xscan213_sγ:
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
 jmp smatch216_retry
 snoch210_n1_β:
 jmp xscan213_dfail
smatch216_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 32]
# IR_MATCH_POS
bb136_α:
 cmp r14d, 10
 jne xcat219_ω
 jmp xcat219_γ
 xcat219_left_β:
 jmp xcat219_ω
xcat219_γ:
# IR_MATCH_CAPTURE_SAVE
bb137_α:
 mov dword ptr [r12 + 48], r14d
# IR_MATCH_LEN
bb138_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat219_right_ω
 add r14d, 1
 jmp xcap221_γ
 xcat219_right_β:
 jmp xcat219_right_ω
xcap221_γ:
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
 jmp xscan213_dok
xcat219_right_ω:
 jmp xcat219_left_β
smatch216_elemb:
 jmp xcat219_right_β
xcat219_ω:
 jmp smatch216_adv
smatch216_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 32], 1
 mov eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jg xscan213_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan213_dfail
 jmp smatch216_retry
xscan213_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch210_n2_α
xscan213_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch210_n2_α
snoch210_n2_α:
# IR_LIT_scalar
bb142_α:
 jmp snoch210_n3_α
 snoch210_n2_β:
 jmp snoch210_n4_α
snoch210_n3_α:
bb143_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S38]
 lea rsi, [rip + .S39]
 call rt_gvar_assign_str@PLT
 jmp snoch210_n4_α
 snoch210_n3_β:
 jmp snoch210_n4_α
snoch210_n4_α:
# IR_LIT_scalar
bb144_α:
 jmp snoch210_n5_α
 snoch210_n4_β:
 jmp snoch210_n6_α
snoch210_n5_α:
bb145_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S40]
 lea rsi, [rip + .S41]
 call rt_gvar_assign_str@PLT
 jmp snoch210_n6_α
 snoch210_n5_β:
 jmp snoch210_n6_α
snoch210_n6_α:
bb146_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S42]
 call rt_proc_define@PLT
 jmp snoch210_n7_α
 snoch210_n6_β:
 jmp snoch210_n7_α
snoch210_n7_α:
bb147_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S43]
 call rt_proc_define@PLT
 jmp snoch210_n8_α
 snoch210_n7_β:
 jmp snoch210_n8_α
snoch210_n8_α:
bb148_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S44]
 call rt_proc_define@PLT
 jmp snoch210_n9_α
 snoch210_n8_β:
 jmp snoch210_n9_α
snoch210_n9_α:
# IR_VAR
bb149_α:
 mov rdi, qword ptr [rip + .Lx235_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch210_n10_α
 snoch210_n9_β:
 jmp snoch210_n11_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "INPUT"
snoch210_n10_α:
bb150_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_var@PLT
 jmp snoch210_n12_α
 snoch210_n10_β:
 jmp snoch210_n11_α
snoch210_n11_α:
bb151_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn238: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn238]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch210_n14_α
 jmp snoch210_n13_α
snoch210_n11_β:
 jmp snoch210_n14_α
snoch210_n12_α:
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
 jmp snoch210_n9_α
 snoch210_n12_β:
 jmp snoch210_n9_α
snoch210_n13_α:
bb153_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_gvar_assign_descr@PLT
 jmp snoch210_n14_α
 snoch210_n13_β:
 jmp snoch210_n14_α
snoch210_n14_α:
# IR_VAR
bb154_α:
 mov rdi, qword ptr [rip + .Lx242_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch210_n15_α
 snoch210_n14_β:
 jmp snoch210_n16_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "src"
snoch210_n15_α:
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
 jmp xscan243_sγ
 xscan243_sβ:
 jmp snoch210_n16_α
xscan243_sγ:
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
 jmp smatch246_retry
 snoch210_n15_β:
 jmp xscan243_dfail
smatch246_retry:
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
 jz .Lx249_0
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
 jne smatch246_adv
 jmp xscan243_dok
.Lx249_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch246_adv
 mov r14d, eax
 jmp xscan243_dok
 smatch246_elemb:
 jmp smatch246_adv
smatch246_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 160], 1
 mov eax, dword ptr [r12 + 160]
 cmp eax, r15d
 jg xscan243_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan243_dfail
 jmp smatch246_retry
xscan243_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch210_n17_α
xscan243_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch210_n16_α
snoch210_n16_α:
# IR_LIT_scalar
bb160_α:
 jmp snoch210_n18_α
 snoch210_n16_β:
 jmp flat_γ
snoch210_n17_α:
# IR_VAR
bb161_α:
 mov rdi, qword ptr [rip + .Lx254_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg252_done
 xgvarg252_β:
 jmp flat_γ
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "mem"
xgvarg252_done:
bb162_α:
# BOX IR_CALL pp_mem(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lprocfn256: .string "pp_mem"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn256]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je flat_γ
 jmp flat_γ
snoch210_n17_β:
 jmp flat_γ
snoch210_n18_α:
bb163_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S49]
 call rt_gvar_assign_str@PLT
 jmp flat_γ
 snoch210_n18_β:
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
