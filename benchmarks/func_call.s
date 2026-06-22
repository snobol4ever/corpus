  .intel_syntax noprefix
  .text
INC_α:
#=======================================================================================================================
    .global INC_α
    .global INC_β
    .global INC_γ
    .global INC_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
INC_α_body:
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
 .string "N"
snoch0_n1_α:
# IR_LIT_scalar
bb2_α:
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
snoch0_n2_β:
jmp INC_γ
jmp INC_γ
snoch0_n3_α:
bb3_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 16], rax
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
bb4_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 16]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n4_β:
 jmp snoch0_n2_α
INC_β:
jmp INC_ω
INC_γ:
mov eax, 1
xor edx, edx
pop r12
ret
INC_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "INC"
  .Lpp0_0: .string "N"
  .Lpnames0:
  .quad .Lpp0_0
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
  lea rsi, [rip + INC_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 24
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
snoch7_n0_α:
# IR_LIT_scalar
bb5_α:
 jmp snoch7_n1_α
 snoch7_n0_β:
 jmp snoch7_n2_α
snoch7_n1_α:
bb6_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch7_n2_α
 snoch7_n1_β:
 jmp snoch7_n2_α
snoch7_n2_α:
# IR_LIT_scalar
bb7_α:
 jmp snoch7_n3_α
 snoch7_n2_β:
 jmp snoch7_n4_α
snoch7_n3_α:
bb8_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch7_n4_α
 snoch7_n3_β:
 jmp snoch7_n4_α
snoch7_n4_α:
bb9_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch7_n5_α
 snoch7_n4_β:
 jmp snoch7_n5_α
snoch7_n5_α:
bb10_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn14: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch7_n7_α
 jmp snoch7_n6_α
 snoch7_n5_β:
 jmp snoch7_n7_α
snoch7_n6_α:
bb11_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch7_n7_α
 snoch7_n6_β:
 jmp snoch7_n7_α
snoch7_n7_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch7_n8_α
 snoch7_n7_β:
 jmp snoch7_n9_α
snoch7_n8_α:
bb13_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch7_n9_α
 snoch7_n8_β:
 jmp snoch7_n9_α
snoch7_n9_α:
# IR_LIT_scalar
bb14_α:
 jmp snoch7_n10_α
 snoch7_n9_β:
 jmp snoch7_n11_α
snoch7_n10_α:
bb15_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch7_n11_α
 snoch7_n10_β:
 jmp snoch7_n11_α
snoch7_n11_α:
# IR_VAR
bb16_α:
 mov rdi, qword ptr [rip + .Lx22_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg20_done
 xgvarg20_β:
 jmp snoch7_n13_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "N"
xgvarg20_done:
# IR_LIT_I
bb17_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg23_done
 xgvarg23_β:
 jmp snoch7_n13_α
.Lx24_0:
 .quad 10000000
xgvarg23_done:
bb18_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn26: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn26]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch7_n13_α
 jmp snoch7_n12_α
snoch7_n11_β:
 jmp snoch7_n13_α
snoch7_n12_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx28_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch7_n14_α
 snoch7_n12_β:
 jmp snoch7_n13_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "N"
snoch7_n13_α:
bb20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch7_n16_α
 jmp snoch7_n15_α
 snoch7_n13_β:
 jmp snoch7_n16_α
snoch7_n14_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch7_n17_α
 snoch7_n14_β:
 jmp snoch7_n13_α
snoch7_n15_α:
bb22_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch7_n16_α
 snoch7_n15_β:
 jmp snoch7_n16_α
snoch7_n16_α:
bb23_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 128], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 136], rax
 mov dword ptr [r12 + 144], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 152], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 128]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch7_n18_α
 snoch7_n16_β:
 jmp snoch7_n18_α
snoch7_n17_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 160], rax
 jmp snoch7_n19_α
 snoch7_n17_β:
 jmp snoch7_n13_α
snoch7_n18_α:
# IR_LIT_scalar
bb25_α:
 jmp snoch7_n20_α
 snoch7_n18_β:
 jmp flat_γ
snoch7_n19_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx39_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch7_n13_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "N"
xgvarg37_done:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg40_done
 xgvarg40_β:
 jmp snoch7_n13_α
.Lx41_0:
 .quad 10000000
xgvarg40_done:
bb28_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+200]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 208], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+216]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lbynamefn43: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn43]
 lea rsi, [r12 + 200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je snoch7_n13_α
 jmp xgvcat36_0d
xgvcat36_0b:
 jmp snoch7_n13_α
xgvcat36_0d:
bb29_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp xgvcat44_1d
 xgvcat44_1b:
 jmp snoch7_n13_α
xgvcat44_1d:
bb30_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 160]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch7_n21_α
 snoch7_n19_β:
 jmp snoch7_n13_α
snoch7_n20_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx48_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp snoch7_n22_α
 snoch7_n20_β:
 jmp flat_γ
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "T2"
snoch7_n21_α:
bb32_α:
# IR_ASSIGN
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_gvar_assign_descr@PLT
 jmp snoch7_n23_α
 snoch7_n21_β:
 jmp snoch7_n13_α
snoch7_n22_α:
# IR_VAR
bb33_α:
 mov rdi, qword ptr [rip + .Lx52_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch7_n24_α
 snoch7_n22_β:
 jmp flat_γ
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "T1"
snoch7_n23_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx55_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xgvarg53_done
 xgvarg53_β:
 jmp snoch7_n11_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "R"
xgvarg53_done:
bb35_α:
# BOX IR_CALL INC(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+288] -> [r12+320]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lprocfn57: .string "INC"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn57]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je snoch7_n11_α
 jmp snoch7_n25_α
snoch7_n23_β:
 jmp snoch7_n11_α
snoch7_n24_α:
bb36_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp snoch7_n26_α
 snoch7_n24_β:
 jmp flat_γ
snoch7_n25_α:
bb37_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_gvar_assign_descr@PLT
 jmp snoch7_n11_α
 snoch7_n25_β:
 jmp snoch7_n11_α
snoch7_n26_α:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 352], rax
 jmp xgvcat60_0d
 xgvcat60_0b:
 jmp flat_γ
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "ms: "
xgvcat60_0d:
bb39_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 360], rax
 jmp xgvcat62_1d
 xgvcat62_1b:
 jmp flat_γ
xgvcat62_1d:
bb40_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch7_n27_α
 snoch7_n26_β:
 jmp flat_γ
snoch7_n27_α:
bb41_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch7_n27_β:
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
.S0: .string "N"
.S1: .string "INC"
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "INC(N)"
.S5: .string "T1"
.S6: .string "R"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.text
