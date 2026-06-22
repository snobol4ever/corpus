  .intel_syntax noprefix
  .text
ROMAN_α:
#=======================================================================================================================
    .global ROMAN_α
    .global ROMAN_β
    .global ROMAN_γ
    .global ROMAN_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
ROMAN_α_body:
snoch0_n0_α:
# IR_LIT_scalar
bb1_α:
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
snoch0_n2_α:
snoch0_n2_β:
jmp ROMAN_γ
jmp ROMAN_γ
snoch0_n3_α:
# IR_LIT_scalar
bb3_α:
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n5_α
snoch0_n4_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
snoch0_n5_α:
snoch0_n5_β:
jmp ROMAN_ω
jmp ROMAN_ω
snoch0_n6_α:
# IR_VAR
bb5_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg6_done
 xgvarg6_β:
 jmp snoch0_n5_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "N"
xgvarg6_done:
bb6_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn10: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn10]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvarg5_done
xgvarg5_β:
 jmp snoch0_n5_α
xgvarg5_done:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg11_done
 xgvarg11_β:
 jmp snoch0_n5_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "IVXLCDM"
xgvarg11_done:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg13_done
 xgvarg13_β:
 jmp snoch0_n5_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "XLCDM**"
xgvarg13_done:
bb9_α:
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
  .Lbynamefn16: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn16]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n7_α
snoch0_n6_β:
 jmp snoch0_n5_α
snoch0_n7_α:
# IR_VAR
bb10_α:
 mov rdi, qword ptr [rip + .Lx18_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "T"
snoch0_n8_α:
# IR_VAR
bb11_α:
 mov rdi, qword ptr [rip + .Lx23_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg21_done
 xgvarg21_β:
 jmp snoch0_n5_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "N"
xgvarg21_done:
bb12_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+208]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lprocfn25: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn25]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvarg20_done
xgvarg20_β:
 jmp snoch0_n5_α
xgvarg20_done:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg26_done
 xgvarg26_β:
 jmp snoch0_n5_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "IVXLCDM"
xgvarg26_done:
# IR_LIT_S
bb14_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg28_done
 xgvarg28_β:
 jmp snoch0_n5_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "XLCDM**"
xgvarg28_done:
bb15_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+32] -> [r12+272]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+64] -> [r12+288]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 296], rax
# marshal arg2 = producer-box slot [r12+80] -> [r12+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lbynamefn31: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn31]
 lea rsi, [r12 + 272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvcat19_0d
xgvcat19_0b:
 jmp snoch0_n5_α
xgvcat19_0d:
# IR_VAR
bb16_α:
 mov rdi, qword ptr [rip + .Lx34_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xgvcat32_1d
 xgvcat32_1b:
 jmp snoch0_n5_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "T"
xgvcat32_1d:
bb17_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call str_concat_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n5_α
snoch0_n9_α:
bb18_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n2_α
 snoch0_n9_β:
 jmp snoch0_n5_α
ROMAN_β:
jmp ROMAN_ω
ROMAN_γ:
mov eax, 1
xor edx, edx
pop r12
ret
ROMAN_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "ROMAN"
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
  lea rsi, [rip + ROMAN_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 352
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
snoch38_n0_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch38_n1_α
 snoch38_n0_β:
 jmp snoch38_n2_α
snoch38_n1_α:
bb20_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch38_n2_α
 snoch38_n1_β:
 jmp snoch38_n2_α
snoch38_n2_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch38_n3_α
 snoch38_n2_β:
 jmp snoch38_n4_α
snoch38_n3_α:
bb22_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch38_n4_α
 snoch38_n3_β:
 jmp snoch38_n4_α
snoch38_n4_α:
bb23_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch38_n5_α
 snoch38_n4_β:
 jmp snoch38_n5_α
snoch38_n5_α:
bb24_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn45: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch38_n7_α
 jmp snoch38_n6_α
 snoch38_n5_β:
 jmp snoch38_n7_α
snoch38_n6_α:
bb25_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch38_n7_α
 snoch38_n6_β:
 jmp snoch38_n7_α
snoch38_n7_α:
# IR_LIT_scalar
bb26_α:
 jmp snoch38_n8_α
 snoch38_n7_β:
 jmp snoch38_n9_α
snoch38_n8_α:
bb27_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch38_n9_α
 snoch38_n8_β:
 jmp snoch38_n9_α
snoch38_n9_α:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg49_done
 xgvarg49_β:
 jmp snoch38_n11_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "1776"
xgvarg49_done:
bb29_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn52: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn52]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch38_n11_α
 jmp snoch38_n10_α
snoch38_n9_β:
 jmp snoch38_n11_α
snoch38_n10_α:
bb30_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch38_n11_α
 snoch38_n10_β:
 jmp snoch38_n11_α
snoch38_n11_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx56_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg54_done
 xgvarg54_β:
 jmp snoch38_n13_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "N"
xgvarg54_done:
# IR_LIT_I
bb32_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg57_done
 xgvarg57_β:
 jmp snoch38_n13_α
.Lx58_0:
 .quad 100000
xgvarg57_done:
bb33_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn60: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn60]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch38_n13_α
 jmp snoch38_n12_α
snoch38_n11_β:
 jmp snoch38_n13_α
snoch38_n12_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx62_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch38_n14_α
 snoch38_n12_β:
 jmp snoch38_n13_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "N"
snoch38_n13_α:
bb35_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn64: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn64]
 lea rsi, [r12 + 176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je snoch38_n16_α
 jmp snoch38_n15_α
 snoch38_n13_β:
 jmp snoch38_n16_α
snoch38_n14_α:
# IR_LIT_scalar
bb36_α:
 jmp snoch38_n17_α
 snoch38_n14_β:
 jmp snoch38_n13_α
snoch38_n15_α:
bb37_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_gvar_assign_descr@PLT
 jmp snoch38_n16_α
 snoch38_n15_β:
 jmp snoch38_n16_α
snoch38_n16_α:
bb38_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 176], 0
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 184], rax
 mov dword ptr [r12 + 192], 1
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 200], rax
 lea rdi, [rip + .S9]
 lea rsi, [r12 + 176]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch38_n18_α
 snoch38_n16_β:
 jmp snoch38_n18_α
snoch38_n17_α:
bb39_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 208], rax
 jmp snoch38_n19_α
 snoch38_n17_β:
 jmp snoch38_n13_α
snoch38_n18_α:
# IR_LIT_scalar
bb40_α:
 jmp snoch38_n20_α
 snoch38_n18_β:
 jmp flat_γ
snoch38_n19_α:
# IR_VAR
bb41_α:
 mov rdi, qword ptr [rip + .Lx73_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg71_done
 xgvarg71_β:
 jmp snoch38_n13_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "N"
xgvarg71_done:
# IR_LIT_I
bb42_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg74_done
 xgvarg74_β:
 jmp snoch38_n13_α
.Lx75_0:
 .quad 100000
xgvarg74_done:
bb43_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+248]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 256], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lbynamefn77: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn77]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je snoch38_n13_α
 jmp xgvcat70_0d
xgvcat70_0b:
 jmp snoch38_n13_α
xgvcat70_0d:
bb44_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 280], rax
 jmp xgvcat78_1d
 xgvcat78_1b:
 jmp snoch38_n13_α
xgvcat78_1d:
bb45_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 208]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch38_n21_α
 snoch38_n19_β:
 jmp snoch38_n13_α
snoch38_n20_α:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch38_n22_α
 snoch38_n20_β:
 jmp flat_γ
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "T2"
snoch38_n21_α:
bb47_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch38_n9_α
 snoch38_n21_β:
 jmp snoch38_n13_α
snoch38_n22_α:
# IR_VAR
bb48_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch38_n23_α
 snoch38_n22_β:
 jmp flat_γ
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "T1"
snoch38_n23_α:
bb49_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp snoch38_n24_α
 snoch38_n23_β:
 jmp flat_γ
snoch38_n24_α:
# IR_LIT_S
bb50_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 352], rax
 jmp xgvcat88_0d
 xgvcat88_0b:
 jmp flat_γ
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "ms: "
xgvcat88_0d:
bb51_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 360], rax
 jmp xgvcat90_1d
 xgvcat90_1b:
 jmp flat_γ
xgvcat90_1d:
bb52_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch38_n25_α
 snoch38_n24_β:
 jmp flat_γ
snoch38_n25_α:
bb53_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch38_n25_β:
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
.S0: .string "bb_scan: TEXT(mode-4) non-literal pattern needs native PB-RB graph (pending)"
.S1: .string "ROMAN"
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "ROMAN(N)T"
.S5: .string "T1"
.S6: .string "N"
.S7: .string "R"
.S8: .string "T2"
.S9: .string "OUTPUT"
.S10: .string "result: "
.text
