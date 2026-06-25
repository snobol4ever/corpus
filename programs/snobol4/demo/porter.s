  .intel_syntax noprefix
  .text
cons_c0_α:
#=======================================================================================================================
    .global cons_c0_α
    .global cons_c0_β
    .global cons_c0_γ
    .global cons_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
cons_c0_α_body:
# IR_MATCH_RTAB
bb1_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat0_ω
 mov r14d, ecx
 jmp xcat0_γ
 xcat0_left_β:
 jmp xcat0_ω
xcat0_γ:
# IR_LIT
bb2_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt2_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt2_c0_ω
 add r14d, 2
 jmp xcat0_mid1_γ
 alt2_c0_β:
 sub r14d, 2
 jmp alt2_c0_ω
alt2_c0_ω:
# IR_LIT
bb3_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt2_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt2_c1_ω
 add r14d, 2
 jmp xcat0_mid1_γ
 alt2_c1_β:
 sub r14d, 2
 jmp alt2_c1_ω
alt2_c1_ω:
# IR_LIT
bb4_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt2_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt2_c2_ω
 add r14d, 2
 jmp xcat0_mid1_γ
 alt2_c2_β:
 sub r14d, 2
 jmp alt2_c2_ω
alt2_c2_ω:
 jmp xcat0_left_β
xcat0_mid1_β:
 jmp alt2_c0_β
xcat0_mid1_γ:
# IR_MATCH_RPOS
bb6_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat0_mid1_β
 jmp cons_c0_γ
 xcat0_mid2_β:
 jmp xcat0_mid1_β
xcat0_right_ω:
 jmp xcat0_left_β
cons_c0_β:
 jmp xcat0_mid2_β
xcat0_ω:
 jmp cons_c0_ω
cons_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
cons_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
cons_α:
#=======================================================================================================================
    .global cons_α
    .global cons_β
    .global cons_γ
    .global cons_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
cons_α_body:
snoch9_n0_α:
# IR_VAR
bb8_α:
 mov rdi, qword ptr [rip + .Lx12_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg10_done
 xgvarg10_β:
 jmp snoch9_n2_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "stem"
xgvarg10_done:
# IR_VAR
bb9_α:
 mov rdi, qword ptr [rip + .Lx15_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xgvarg13_done
 xgvarg13_β:
 jmp snoch9_n2_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "i"
xgvarg13_done:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg16_done
 xgvarg16_β:
 jmp snoch9_n2_α
.Lx17_0:
 .quad 1
xgvarg16_done:
bb11_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn19: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn19]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch9_n2_α
 jmp snoch9_n1_α
snoch9_n0_β:
 jmp snoch9_n2_α
snoch9_n1_α:
bb12_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_gvar_assign_descr@PLT
 jmp snoch9_n2_α
 snoch9_n1_β:
 jmp snoch9_n2_α
snoch9_n2_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx22_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch9_n3_α
 snoch9_n2_β:
 jmp snoch9_n4_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "c"
snoch9_n3_α:
# IR_SUBJECT
bb14_α:
 lea rdi, [rip + .S3]
 lea rsi, [r12 + 144]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan23_sγ
 xscan23_sβ:
 jmp snoch9_n4_α
xscan23_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb15_α:
 mov r13, qword ptr [r12 + 144]
 mov r15d, dword ptr [r12 + 152]
 mov dword ptr [r12 + 160], 0
 lea r10, [r12 + 168]
 jmp smatch26_retry
 snoch9_n3_β:
 jmp xscan23_dfail
smatch26_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 160]
# IR_MATCH_ANY
bb17_α:
 mov eax, r14d
 cmp eax, r15d
 jge smatch26_adv
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S4]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je smatch26_adv
 add r14d, 1
 jmp xscan23_dok
 smatch26_elemb:
 sub r14d, 1
 jmp smatch26_adv
smatch26_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 160], 1
 mov eax, dword ptr [r12 + 160]
 cmp eax, r15d
 jg xscan23_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan23_dfail
 jmp smatch26_retry
xscan23_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch9_n5_α
xscan23_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch9_n4_α
snoch9_n4_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx33_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg31_done
 xgvarg31_β:
 jmp snoch9_n7_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "c"
xgvarg31_done:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg34_done
 xgvarg34_β:
 jmp snoch9_n7_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "y"
xgvarg34_done:
bb21_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lbynamefn37: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn37]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch9_n7_α
 jmp snoch9_n6_α
snoch9_n4_β:
 jmp snoch9_n7_α
snoch9_n5_α:
snoch9_n5_β:
jmp cons_ω
jmp cons_ω
snoch9_n6_α:
snoch9_n6_β:
jmp cons_γ
jmp cons_γ
snoch9_n7_α:
# IR_VAR
bb22_α:
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xgvarg38_done
 xgvarg38_β:
 jmp snoch9_n8_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "i"
xgvarg38_done:
# IR_LIT_I
bb23_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg41_done
 xgvarg41_β:
 jmp snoch9_n8_α
.Lx42_0:
 .quad 1
xgvarg41_done:
bb24_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 304], rax
 mov rcx, 1
 mov qword ptr [r12 + 288], 0
 mov qword ptr [r12 + 296], 0
 mov rax, qword ptr [r12 + 304]
 cmp rax, rcx
 jne snoch9_n8_α
 jmp snoch9_n6_α
 snoch9_n7_β:
 jmp snoch9_n8_α
snoch9_n8_α:
xgvarg44_done:
bb25_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+336]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 352], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 352]
 sub rax, rcx
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lprocfn46: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn46]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch9_n6_α
 jmp snoch9_n5_α
snoch9_n8_β:
 jmp snoch9_n6_α
cons_β:
jmp cons_ω
cons_γ:
mov eax, 1
xor edx, edx
pop r12
ret
cons_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
m_c0_α:
#=======================================================================================================================
    .global m_c0_α
    .global m_c0_β
    .global m_c0_γ
    .global m_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
m_c0_α_body:
# IR_MATCH_RTAB
bb26_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat47_ω
 mov r14d, ecx
 jmp xcat47_γ
 xcat47_left_β:
 jmp xcat47_ω
xcat47_γ:
# IR_LIT
bb27_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt49_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt49_c0_ω
 add r14d, 2
 jmp xcat47_mid1_γ
 alt49_c0_β:
 sub r14d, 2
 jmp alt49_c0_ω
alt49_c0_ω:
# IR_LIT
bb28_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt49_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt49_c1_ω
 add r14d, 2
 jmp xcat47_mid1_γ
 alt49_c1_β:
 sub r14d, 2
 jmp alt49_c1_ω
alt49_c1_ω:
# IR_LIT
bb29_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt49_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt49_c2_ω
 add r14d, 2
 jmp xcat47_mid1_γ
 alt49_c2_β:
 sub r14d, 2
 jmp alt49_c2_ω
alt49_c2_ω:
 jmp xcat47_left_β
xcat47_mid1_β:
 jmp alt49_c0_β
xcat47_mid1_γ:
# IR_MATCH_RPOS
bb31_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat47_mid1_β
 jmp m_c0_γ
 xcat47_mid2_β:
 jmp xcat47_mid1_β
xcat47_right_ω:
 jmp xcat47_left_β
m_c0_β:
 jmp xcat47_mid2_β
xcat47_ω:
 jmp m_c0_ω
m_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
m_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
m_α:
#=======================================================================================================================
    .global m_α
    .global m_β
    .global m_γ
    .global m_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
m_α_body:
snoch56_n0_α:
# IR_VAR
bb33_α:
 mov rdi, qword ptr [rip + .Lx59_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg57_done
 xgvarg57_β:
 jmp snoch56_n2_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "stem"
xgvarg57_done:
bb34_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn61: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn61]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch56_n2_α
 jmp snoch56_n1_α
snoch56_n0_β:
 jmp snoch56_n2_α
snoch56_n1_α:
bb35_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch56_n2_α
 snoch56_n1_β:
 jmp snoch56_n2_α
snoch56_n2_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx65_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg63_done
 xgvarg63_β:
 jmp snoch56_n4_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "L"
xgvarg63_done:
# IR_LIT_I
bb37_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg66_done
 xgvarg66_β:
 jmp snoch56_n4_α
.Lx67_0:
 .quad 0
xgvarg66_done:
bb38_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 112], rax
 mov rcx, 0
 mov qword ptr [r12 + 96], 0
 mov qword ptr [r12 + 104], 0
 mov rax, qword ptr [r12 + 112]
 cmp rax, rcx
 jne snoch56_n4_α
 jmp snoch56_n3_α
 snoch56_n2_β:
 jmp snoch56_n4_α
snoch56_n3_α:
snoch56_n3_β:
jmp m_γ
jmp m_γ
snoch56_n4_α:
# IR_LIT_scalar
bb39_α:
 jmp snoch56_n5_α
 snoch56_n4_β:
 jmp snoch56_n6_α
snoch56_n5_α:
bb40_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch56_n6_α
 snoch56_n5_β:
 jmp snoch56_n6_α
snoch56_n6_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch56_n7_α
 snoch56_n6_β:
 jmp snoch56_n8_α
snoch56_n7_α:
bb42_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S7]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch56_n8_α
 snoch56_n7_β:
 jmp snoch56_n8_α
snoch56_n8_α:
# IR_VAR
bb43_α:
 mov rdi, qword ptr [rip + .Lx75_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch56_n9_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "i"
xgvarg73_done:
# IR_VAR
bb44_α:
 mov rdi, qword ptr [rip + .Lx78_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xgvarg76_done
 xgvarg76_β:
 jmp snoch56_n9_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "L"
xgvarg76_done:
bb45_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 176], rax
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 mov rax, qword ptr [r12 + 176]
 cmp rax, rcx
 jle snoch56_n9_α
 jmp snoch56_n3_α
 snoch56_n8_β:
 jmp snoch56_n9_α
snoch56_n9_α:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvarg80_done
 xgvarg80_β:
 jmp snoch56_n11_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "i"
xgvarg80_done:
bb47_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lprocfn84: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn84]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch56_n11_α
 jmp snoch56_n10_α
snoch56_n9_β:
 jmp snoch56_n11_α
snoch56_n10_α:
# IR_VAR
bb48_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch56_n12_α
 snoch56_n10_β:
 jmp snoch56_n8_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "i"
snoch56_n11_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx88_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp snoch56_n13_α
 snoch56_n11_β:
 jmp snoch56_n14_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "i"
snoch56_n12_α:
# IR_LIT_scalar
bb50_α:
 jmp snoch56_n15_α
 snoch56_n12_β:
 jmp snoch56_n8_α
snoch56_n13_α:
# IR_LIT_scalar
bb51_α:
 jmp snoch56_n16_α
 snoch56_n13_β:
 jmp snoch56_n14_α
snoch56_n14_α:
# IR_VAR
bb52_α:
 mov rdi, qword ptr [rip + .Lx93_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xgvarg91_done
 xgvarg91_β:
 jmp snoch56_n17_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "i"
xgvarg91_done:
# IR_VAR
bb53_α:
 mov rdi, qword ptr [rip + .Lx96_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xgvarg94_done
 xgvarg94_β:
 jmp snoch56_n17_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "L"
xgvarg94_done:
bb54_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 320], rax
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 304], 0
 mov qword ptr [r12 + 312], 0
 mov rax, qword ptr [r12 + 320]
 cmp rax, rcx
 jle snoch56_n17_α
 jmp snoch56_n3_α
 snoch56_n14_β:
 jmp snoch56_n17_α
snoch56_n15_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 336], rax
 jmp snoch56_n18_α
 snoch56_n15_β:
 jmp snoch56_n8_α
snoch56_n16_α:
bb56_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 344], rax
 jmp snoch56_n19_α
 snoch56_n16_β:
 jmp snoch56_n14_α
snoch56_n17_α:
# IR_VAR
bb57_α:
 mov rdi, qword ptr [rip + .Lx104_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xgvarg102_done
 xgvarg102_β:
 jmp snoch56_n21_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "i"
xgvarg102_done:
bb58_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lprocfn106: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn106]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch56_n21_α
 jmp snoch56_n20_α
snoch56_n17_β:
 jmp snoch56_n21_α
snoch56_n18_α:
bb59_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 336]
 call rt_gvar_assign_int@PLT
 jmp snoch56_n8_α
 snoch56_n18_β:
 jmp snoch56_n8_α
snoch56_n19_α:
bb60_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 344]
 call rt_gvar_assign_int@PLT
 jmp snoch56_n14_α
 snoch56_n19_β:
 jmp snoch56_n14_α
snoch56_n20_α:
# IR_VAR
bb61_α:
 mov rdi, qword ptr [rip + .Lx112_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch56_n22_α
 snoch56_n20_β:
 jmp snoch56_n23_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "i"
snoch56_n21_α:
# IR_VAR
bb62_α:
 mov rdi, qword ptr [rip + .Lx114_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp snoch56_n24_α
 snoch56_n21_β:
 jmp snoch56_n14_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "i"
snoch56_n22_α:
# IR_LIT_scalar
bb63_α:
 jmp snoch56_n25_α
 snoch56_n22_β:
 jmp snoch56_n23_α
snoch56_n23_α:
# IR_VAR
bb64_α:
 mov rdi, qword ptr [rip + .Lx117_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp snoch56_n26_α
 snoch56_n23_β:
 jmp snoch56_n27_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "n"
snoch56_n24_α:
# IR_LIT_scalar
bb65_α:
 jmp snoch56_n28_α
 snoch56_n24_β:
 jmp snoch56_n14_α
snoch56_n25_α:
bb66_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 448], rax
 jmp snoch56_n29_α
 snoch56_n25_β:
 jmp snoch56_n23_α
snoch56_n26_α:
# IR_LIT_scalar
bb67_α:
 jmp snoch56_n30_α
 snoch56_n26_β:
 jmp snoch56_n27_α
snoch56_n27_α:
# IR_VAR
bb68_α:
 mov rdi, qword ptr [rip + .Lx123_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 jmp snoch56_n31_α
 snoch56_n27_β:
 jmp snoch56_n32_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "n"
snoch56_n28_α:
bb69_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 472], rax
 jmp snoch56_n33_α
 snoch56_n28_β:
 jmp snoch56_n14_α
snoch56_n29_α:
bb70_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 448]
 call rt_gvar_assign_int@PLT
 jmp snoch56_n23_α
 snoch56_n29_β:
 jmp snoch56_n23_α
snoch56_n30_α:
bb71_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 480], rax
 jmp snoch56_n34_α
 snoch56_n30_β:
 jmp snoch56_n27_α
snoch56_n31_α:
bb72_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S7]
 call rt_gvar_assign_var@PLT
 jmp snoch56_n32_α
 snoch56_n31_β:
 jmp snoch56_n32_α
snoch56_n32_α:
# IR_VAR
bb73_α:
 mov rdi, qword ptr [rip + .Lx133_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xgvarg131_done
 xgvarg131_β:
 jmp snoch56_n35_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "i"
xgvarg131_done:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx136_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp xgvarg134_done
 xgvarg134_β:
 jmp snoch56_n35_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "L"
xgvarg134_done:
bb75_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 536], rax
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 520], 0
 mov qword ptr [r12 + 528], 0
 mov rax, qword ptr [r12 + 536]
 cmp rax, rcx
 jle snoch56_n35_α
 jmp snoch56_n3_α
 snoch56_n32_β:
 jmp snoch56_n35_α
snoch56_n33_α:
bb76_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 472]
 call rt_gvar_assign_int@PLT
 jmp snoch56_n14_α
 snoch56_n33_β:
 jmp snoch56_n14_α
snoch56_n34_α:
bb77_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 480]
 call rt_gvar_assign_int@PLT
 jmp snoch56_n27_α
 snoch56_n34_β:
 jmp snoch56_n27_α
snoch56_n35_α:
# IR_VAR
bb78_α:
 mov rdi, qword ptr [rip + .Lx144_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 jmp xgvarg142_done
 xgvarg142_β:
 jmp snoch56_n11_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "i"
xgvarg142_done:
bb79_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+552] -> [r12+584]
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 592], rax
  .section .rodata
  .Lprocfn146: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn146]
 lea rsi, [r12 + 584]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 cmp eax, 99
 je snoch56_n11_α
 jmp snoch56_n36_α
snoch56_n35_β:
 jmp snoch56_n11_α
snoch56_n36_α:
# IR_VAR
bb80_α:
 mov rdi, qword ptr [rip + .Lx148_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp snoch56_n37_α
 snoch56_n36_β:
 jmp snoch56_n32_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "i"
snoch56_n37_α:
# IR_LIT_scalar
bb81_α:
 jmp snoch56_n38_α
 snoch56_n37_β:
 jmp snoch56_n32_α
snoch56_n38_α:
bb82_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 616], rax
 jmp snoch56_n39_α
 snoch56_n38_β:
 jmp snoch56_n32_α
snoch56_n39_α:
bb83_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 616]
 call rt_gvar_assign_int@PLT
 jmp snoch56_n32_α
 snoch56_n39_β:
 jmp snoch56_n32_α
m_β:
jmp m_ω
m_γ:
mov eax, 1
xor edx, edx
pop r12
ret
m_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
vowelinstem_c0_α:
#=======================================================================================================================
    .global vowelinstem_c0_α
    .global vowelinstem_c0_β
    .global vowelinstem_c0_γ
    .global vowelinstem_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
vowelinstem_c0_α_body:
# IR_MATCH_RTAB
bb84_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat154_ω
 mov r14d, ecx
 jmp xcat154_γ
 xcat154_left_β:
 jmp xcat154_ω
xcat154_γ:
# IR_LIT
bb85_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt156_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt156_c0_ω
 add r14d, 2
 jmp xcat154_mid1_γ
 alt156_c0_β:
 sub r14d, 2
 jmp alt156_c0_ω
alt156_c0_ω:
# IR_LIT
bb86_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt156_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt156_c1_ω
 add r14d, 2
 jmp xcat154_mid1_γ
 alt156_c1_β:
 sub r14d, 2
 jmp alt156_c1_ω
alt156_c1_ω:
# IR_LIT
bb87_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt156_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt156_c2_ω
 add r14d, 2
 jmp xcat154_mid1_γ
 alt156_c2_β:
 sub r14d, 2
 jmp alt156_c2_ω
alt156_c2_ω:
 jmp xcat154_left_β
xcat154_mid1_β:
 jmp alt156_c0_β
xcat154_mid1_γ:
# IR_MATCH_RPOS
bb89_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat154_mid1_β
 jmp vowelinstem_c0_γ
 xcat154_mid2_β:
 jmp xcat154_mid1_β
xcat154_right_ω:
 jmp xcat154_left_β
vowelinstem_c0_β:
 jmp xcat154_mid2_β
xcat154_ω:
 jmp vowelinstem_c0_ω
vowelinstem_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
vowelinstem_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
vowelinstem_α:
#=======================================================================================================================
    .global vowelinstem_α
    .global vowelinstem_β
    .global vowelinstem_γ
    .global vowelinstem_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
vowelinstem_α_body:
snoch163_n0_α:
# IR_VAR
bb91_α:
 mov rdi, qword ptr [rip + .Lx166_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg164_done
 xgvarg164_β:
 jmp snoch163_n2_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "stem"
xgvarg164_done:
bb92_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn168: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn168]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch163_n2_α
 jmp snoch163_n1_α
snoch163_n0_β:
 jmp snoch163_n2_α
snoch163_n1_α:
bb93_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch163_n2_α
 snoch163_n1_β:
 jmp snoch163_n2_α
snoch163_n2_α:
# IR_LIT_scalar
bb94_α:
 jmp snoch163_n3_α
 snoch163_n2_β:
 jmp snoch163_n4_α
snoch163_n3_α:
bb95_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch163_n4_α
 snoch163_n3_β:
 jmp snoch163_n4_α
snoch163_n4_α:
# IR_VAR
bb96_α:
 mov rdi, qword ptr [rip + .Lx174_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg172_done
 xgvarg172_β:
 jmp snoch163_n6_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "i"
xgvarg172_done:
# IR_VAR
bb97_α:
 mov rdi, qword ptr [rip + .Lx177_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg175_done
 xgvarg175_β:
 jmp snoch163_n6_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "L"
xgvarg175_done:
bb98_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 112], rax
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 96], 0
 mov qword ptr [r12 + 104], 0
 mov rax, qword ptr [r12 + 112]
 cmp rax, rcx
 jle snoch163_n6_α
 jmp snoch163_n5_α
 snoch163_n4_β:
 jmp snoch163_n6_α
snoch163_n5_α:
snoch163_n5_β:
jmp vowelinstem_ω
jmp vowelinstem_ω
snoch163_n6_α:
# IR_VAR
bb99_α:
 mov rdi, qword ptr [rip + .Lx181_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvarg179_done
 xgvarg179_β:
 jmp snoch163_n8_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "i"
xgvarg179_done:
bb100_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+128] -> [r12+160]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lprocfn183: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn183]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch163_n8_α
 jmp snoch163_n7_α
snoch163_n6_β:
 jmp snoch163_n8_α
snoch163_n7_α:
# IR_VAR
bb101_α:
 mov rdi, qword ptr [rip + .Lx185_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch163_n9_α
 snoch163_n7_β:
 jmp snoch163_n4_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "i"
snoch163_n8_α:
snoch163_n8_β:
jmp vowelinstem_γ
jmp vowelinstem_γ
snoch163_n9_α:
# IR_LIT_scalar
bb102_α:
 jmp snoch163_n10_α
 snoch163_n9_β:
 jmp snoch163_n4_α
snoch163_n10_α:
bb103_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 192], rax
 jmp snoch163_n11_α
 snoch163_n10_β:
 jmp snoch163_n4_α
snoch163_n11_α:
bb104_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 192]
 call rt_gvar_assign_int@PLT
 jmp snoch163_n4_α
 snoch163_n11_β:
 jmp snoch163_n4_α
vowelinstem_β:
jmp vowelinstem_ω
vowelinstem_γ:
mov eax, 1
xor edx, edx
pop r12
ret
vowelinstem_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
doublec_c0_α:
#=======================================================================================================================
    .global doublec_c0_α
    .global doublec_c0_β
    .global doublec_c0_γ
    .global doublec_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
doublec_c0_α_body:
# IR_MATCH_RTAB
bb105_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat191_ω
 mov r14d, ecx
 jmp xcat191_γ
 xcat191_left_β:
 jmp xcat191_ω
xcat191_γ:
# IR_LIT
bb106_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt193_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt193_c0_ω
 add r14d, 2
 jmp xcat191_mid1_γ
 alt193_c0_β:
 sub r14d, 2
 jmp alt193_c0_ω
alt193_c0_ω:
# IR_LIT
bb107_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt193_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt193_c1_ω
 add r14d, 2
 jmp xcat191_mid1_γ
 alt193_c1_β:
 sub r14d, 2
 jmp alt193_c1_ω
alt193_c1_ω:
# IR_LIT
bb108_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt193_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt193_c2_ω
 add r14d, 2
 jmp xcat191_mid1_γ
 alt193_c2_β:
 sub r14d, 2
 jmp alt193_c2_ω
alt193_c2_ω:
 jmp xcat191_left_β
xcat191_mid1_β:
 jmp alt193_c0_β
xcat191_mid1_γ:
# IR_MATCH_RPOS
bb110_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat191_mid1_β
 jmp doublec_c0_γ
 xcat191_mid2_β:
 jmp xcat191_mid1_β
xcat191_right_ω:
 jmp xcat191_left_β
doublec_c0_β:
 jmp xcat191_mid2_β
xcat191_ω:
 jmp doublec_c0_ω
doublec_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
doublec_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
doublec_α:
#=======================================================================================================================
    .global doublec_α
    .global doublec_β
    .global doublec_γ
    .global doublec_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
doublec_α_body:
snoch200_n0_α:
# IR_VAR
bb112_α:
 mov rdi, qword ptr [rip + .Lx203_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg201_done
 xgvarg201_β:
 jmp snoch200_n2_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "j"
xgvarg201_done:
# IR_LIT_I
bb113_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg204_done
 xgvarg204_β:
 jmp snoch200_n2_α
.Lx205_0:
 .quad 2
xgvarg204_done:
bb114_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 64], rax
 mov rcx, 2
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jge snoch200_n2_α
 jmp snoch200_n1_α
 snoch200_n0_β:
 jmp snoch200_n2_α
snoch200_n1_α:
snoch200_n1_β:
jmp doublec_ω
jmp doublec_ω
snoch200_n2_α:
# IR_VAR
bb115_α:
 mov rdi, qword ptr [rip + .Lx210_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg208_done
 xgvarg208_β:
 jmp snoch200_n3_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "stem"
xgvarg208_done:
# IR_VAR
bb116_α:
 mov rdi, qword ptr [rip + .Lx213_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xgvarg211_done
 xgvarg211_β:
 jmp snoch200_n3_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "j"
xgvarg211_done:
# IR_LIT_I
bb117_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg214_done
 xgvarg214_β:
 jmp snoch200_n3_α
.Lx215_0:
 .quad 1
xgvarg214_done:
bb118_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+80] -> [r12+144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+160]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = producer-box slot [r12+112] -> [r12+176]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lbynamefn217: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn217]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch200_n3_α
 jmp xgvarg207_done
xgvarg207_β:
 jmp snoch200_n3_α
xgvarg207_done:
# IR_VAR
bb119_α:
 mov rdi, qword ptr [rip + .Lx221_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvarg219_done
 xgvarg219_β:
 jmp snoch200_n3_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "stem"
xgvarg219_done:
xgvarg222_done:
# IR_LIT_I
bb120_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 216], rax
 jmp xgvarg223_done
 xgvarg223_β:
 jmp snoch200_n3_α
.Lx224_0:
 .quad 1
xgvarg223_done:
bb121_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+192] -> [r12+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = inline gvar-arith subexpr -> [r12+256]
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 288], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 288]
 sub rax, rcx
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
# marshal arg2 = producer-box slot [r12+208] -> [r12+272]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lbynamefn226: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn226]
 lea rsi, [r12 + 240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je snoch200_n3_α
 jmp xgvarg218_done
xgvarg218_β:
 jmp snoch200_n3_α
xgvarg218_done:
bb122_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+128] -> [r12+320]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+336]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lbynamefn228: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn228]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je snoch200_n3_α
 jmp snoch200_n1_α
snoch200_n2_β:
 jmp snoch200_n3_α
snoch200_n3_α:
# IR_VAR
bb123_α:
 mov rdi, qword ptr [rip + .Lx231_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xgvarg229_done
 xgvarg229_β:
 jmp snoch200_n1_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "j"
xgvarg229_done:
bb124_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lprocfn233: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn233]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch200_n1_α
 jmp snoch200_n4_α
snoch200_n3_β:
 jmp snoch200_n1_α
snoch200_n4_α:
snoch200_n4_β:
jmp doublec_γ
jmp doublec_γ
doublec_β:
jmp doublec_ω
doublec_γ:
mov eax, 1
xor edx, edx
pop r12
ret
doublec_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
cvc_c0_α:
#=======================================================================================================================
    .global cvc_c0_α
    .global cvc_c0_β
    .global cvc_c0_γ
    .global cvc_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
cvc_c0_α_body:
# IR_MATCH_RTAB
bb125_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat234_ω
 mov r14d, ecx
 jmp xcat234_γ
 xcat234_left_β:
 jmp xcat234_ω
xcat234_γ:
# IR_LIT
bb126_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt236_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt236_c0_ω
 add r14d, 2
 jmp xcat234_mid1_γ
 alt236_c0_β:
 sub r14d, 2
 jmp alt236_c0_ω
alt236_c0_ω:
# IR_LIT
bb127_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt236_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt236_c1_ω
 add r14d, 2
 jmp xcat234_mid1_γ
 alt236_c1_β:
 sub r14d, 2
 jmp alt236_c1_ω
alt236_c1_ω:
# IR_LIT
bb128_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt236_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt236_c2_ω
 add r14d, 2
 jmp xcat234_mid1_γ
 alt236_c2_β:
 sub r14d, 2
 jmp alt236_c2_ω
alt236_c2_ω:
 jmp xcat234_left_β
xcat234_mid1_β:
 jmp alt236_c0_β
xcat234_mid1_γ:
# IR_MATCH_RPOS
bb130_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat234_mid1_β
 jmp cvc_c0_γ
 xcat234_mid2_β:
 jmp xcat234_mid1_β
xcat234_right_ω:
 jmp xcat234_left_β
cvc_c0_β:
 jmp xcat234_mid2_β
xcat234_ω:
 jmp cvc_c0_ω
cvc_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
cvc_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
cvc_α:
#=======================================================================================================================
    .global cvc_α
    .global cvc_β
    .global cvc_γ
    .global cvc_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
cvc_α_body:
snoch243_n0_α:
# IR_VAR
bb132_α:
 mov rdi, qword ptr [rip + .Lx246_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg244_done
 xgvarg244_β:
 jmp snoch243_n2_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "i"
xgvarg244_done:
# IR_LIT_I
bb133_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg247_done
 xgvarg247_β:
 jmp snoch243_n2_α
.Lx248_0:
 .quad 3
xgvarg247_done:
bb134_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 64], rax
 mov rcx, 3
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jge snoch243_n2_α
 jmp snoch243_n1_α
 snoch243_n0_β:
 jmp snoch243_n2_α
snoch243_n1_α:
snoch243_n1_β:
jmp cvc_ω
jmp cvc_ω
snoch243_n2_α:
# IR_VAR
bb135_α:
 mov rdi, qword ptr [rip + .Lx252_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg250_done
 xgvarg250_β:
 jmp snoch243_n1_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "i"
xgvarg250_done:
bb136_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lprocfn254: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn254]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch243_n1_α
 jmp snoch243_n3_α
snoch243_n2_β:
 jmp snoch243_n1_α
snoch243_n3_α:
xgvarg255_done:
bb137_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+144]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 160], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 160]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn257: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn257]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch243_n4_α
 jmp snoch243_n1_α
snoch243_n3_β:
 jmp snoch243_n4_α
snoch243_n4_α:
xgvarg258_done:
bb138_α:
# BOX IR_CALL cons(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+192]
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 208], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 208]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lprocfn260: .string "cons"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn260]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch243_n1_α
 jmp snoch243_n5_α
snoch243_n4_β:
 jmp snoch243_n1_α
snoch243_n5_α:
# IR_VAR
bb139_α:
 mov rdi, qword ptr [rip + .Lx263_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xgvarg261_done
 xgvarg261_β:
 jmp snoch243_n7_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "stem"
xgvarg261_done:
# IR_VAR
bb140_α:
 mov rdi, qword ptr [rip + .Lx266_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg264_done
 xgvarg264_β:
 jmp snoch243_n7_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "i"
xgvarg264_done:
# IR_LIT_I
bb141_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 264], rax
 jmp xgvarg267_done
 xgvarg267_β:
 jmp snoch243_n7_α
.Lx268_0:
 .quad 1
xgvarg267_done:
bb142_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+224] -> [r12+288]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+304]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 312], rax
# marshal arg2 = producer-box slot [r12+256] -> [r12+320]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lbynamefn270: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn270]
 lea rsi, [r12 + 288]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je snoch243_n7_α
 jmp snoch243_n6_α
snoch243_n5_β:
 jmp snoch243_n7_α
snoch243_n6_α:
bb143_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_gvar_assign_descr@PLT
 jmp snoch243_n7_α
 snoch243_n6_β:
 jmp snoch243_n7_α
snoch243_n7_α:
# IR_VAR
bb144_α:
 mov rdi, qword ptr [rip + .Lx273_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch243_n8_α
 snoch243_n7_β:
 jmp snoch243_n9_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "c"
snoch243_n8_α:
# IR_SUBJECT
bb145_α:
 lea rdi, [rip + .S3]
 lea rsi, [r12 + 352]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan274_sγ
 xscan274_sβ:
 jmp snoch243_n9_α
xscan274_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb146_α:
 mov r13, qword ptr [r12 + 352]
 mov r15d, dword ptr [r12 + 360]
 mov dword ptr [r12 + 368], 0
 lea r10, [r12 + 376]
 jmp smatch277_retry
 snoch243_n8_β:
 jmp xscan274_dfail
smatch277_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 368]
# IR_MATCH_ANY
bb148_α:
 mov eax, r14d
 cmp eax, r15d
 jge smatch277_adv
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S10]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je smatch277_adv
 add r14d, 1
 jmp xscan274_dok
 smatch277_elemb:
 sub r14d, 1
 jmp smatch277_adv
smatch277_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 368], 1
 mov eax, dword ptr [r12 + 368]
 cmp eax, r15d
 jg xscan274_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan274_dfail
 jmp smatch277_retry
xscan274_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch243_n1_α
xscan274_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch243_n9_α
snoch243_n9_α:
snoch243_n9_β:
jmp cvc_γ
jmp cvc_γ
cvc_β:
jmp cvc_ω
cvc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
cvc_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_vis_c0_α:
#=======================================================================================================================
    .global g_vis_c0_α
    .global g_vis_c0_β
    .global g_vis_c0_γ
    .global g_vis_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_vis_c0_α_body:
# IR_MATCH_RTAB
bb150_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat282_ω
 mov r14d, ecx
 jmp xcat282_γ
 xcat282_left_β:
 jmp xcat282_ω
xcat282_γ:
# IR_LIT
bb151_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt284_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt284_c0_ω
 add r14d, 2
 jmp xcat282_mid1_γ
 alt284_c0_β:
 sub r14d, 2
 jmp alt284_c0_ω
alt284_c0_ω:
# IR_LIT
bb152_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt284_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt284_c1_ω
 add r14d, 2
 jmp xcat282_mid1_γ
 alt284_c1_β:
 sub r14d, 2
 jmp alt284_c1_ω
alt284_c1_ω:
# IR_LIT
bb153_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt284_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt284_c2_ω
 add r14d, 2
 jmp xcat282_mid1_γ
 alt284_c2_β:
 sub r14d, 2
 jmp alt284_c2_ω
alt284_c2_ω:
 jmp xcat282_left_β
xcat282_mid1_β:
 jmp alt284_c0_β
xcat282_mid1_γ:
# IR_MATCH_RPOS
bb155_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat282_mid1_β
 jmp g_vis_c0_γ
 xcat282_mid2_β:
 jmp xcat282_mid1_β
xcat282_right_ω:
 jmp xcat282_left_β
g_vis_c0_β:
 jmp xcat282_mid2_β
xcat282_ω:
 jmp g_vis_c0_ω
g_vis_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_vis_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_vis_α:
#=======================================================================================================================
    .global g_vis_α
    .global g_vis_β
    .global g_vis_γ
    .global g_vis_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_vis_α_body:
snoch291_n0_α:
bb157_α:
# BOX IR_CALL vowelinstem(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn293: .string "vowelinstem"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn293]
 lea rsi, [r12 + 0]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch291_n2_α
 jmp snoch291_n1_α
snoch291_n0_β:
 jmp snoch291_n2_α
snoch291_n1_α:
# IR_LIT_scalar
bb158_α:
 jmp snoch291_n3_α
 snoch291_n1_β:
 jmp snoch291_n4_α
snoch291_n2_α:
bb159_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch291_n2_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch291_n3_α:
bb160_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S12]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch291_n4_α
 snoch291_n3_β:
 jmp snoch291_n4_α
snoch291_n4_α:
snoch291_n4_β:
jmp g_vis_γ
jmp g_vis_γ
snoch291_n5_α:
bb161_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch291_n5_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
g_vis_β:
jmp g_vis_ω
g_vis_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_vis_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_gt_0_c0_α:
#=======================================================================================================================
    .global g_m_gt_0_c0_α
    .global g_m_gt_0_c0_β
    .global g_m_gt_0_c0_γ
    .global g_m_gt_0_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_gt_0_c0_α_body:
# IR_MATCH_RTAB
bb162_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat299_ω
 mov r14d, ecx
 jmp xcat299_γ
 xcat299_left_β:
 jmp xcat299_ω
xcat299_γ:
# IR_LIT
bb163_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt301_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt301_c0_ω
 add r14d, 2
 jmp xcat299_mid1_γ
 alt301_c0_β:
 sub r14d, 2
 jmp alt301_c0_ω
alt301_c0_ω:
# IR_LIT
bb164_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt301_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt301_c1_ω
 add r14d, 2
 jmp xcat299_mid1_γ
 alt301_c1_β:
 sub r14d, 2
 jmp alt301_c1_ω
alt301_c1_ω:
# IR_LIT
bb165_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt301_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt301_c2_ω
 add r14d, 2
 jmp xcat299_mid1_γ
 alt301_c2_β:
 sub r14d, 2
 jmp alt301_c2_ω
alt301_c2_ω:
 jmp xcat299_left_β
xcat299_mid1_β:
 jmp alt301_c0_β
xcat299_mid1_γ:
# IR_MATCH_RPOS
bb167_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat299_mid1_β
 jmp g_m_gt_0_c0_γ
 xcat299_mid2_β:
 jmp xcat299_mid1_β
xcat299_right_ω:
 jmp xcat299_left_β
g_m_gt_0_c0_β:
 jmp xcat299_mid2_β
xcat299_ω:
 jmp g_m_gt_0_c0_ω
g_m_gt_0_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_gt_0_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_gt_0_α:
#=======================================================================================================================
    .global g_m_gt_0_α
    .global g_m_gt_0_β
    .global g_m_gt_0_γ
    .global g_m_gt_0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_gt_0_α_body:
snoch308_n0_α:
bb169_α:
# BOX IR_CALL m(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn311: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn311]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch308_n2_α
 jmp xgvarg309_done
xgvarg309_β:
 jmp snoch308_n2_α
xgvarg309_done:
# IR_LIT_I
bb170_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg312_done
 xgvarg312_β:
 jmp snoch308_n2_α
.Lx313_0:
 .quad 0
xgvarg312_done:
bb171_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
  .section .rodata
  .Lcallfn315: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn315]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
 mov rcx, 0
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jle snoch308_n2_α
 jmp snoch308_n1_α
 snoch308_n0_β:
 jmp snoch308_n2_α
snoch308_n1_α:
# IR_LIT_scalar
bb172_α:
 jmp snoch308_n3_α
 snoch308_n1_β:
 jmp snoch308_n4_α
snoch308_n2_α:
bb173_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch308_n2_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch308_n3_α:
bb174_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S14]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch308_n4_α
 snoch308_n3_β:
 jmp snoch308_n4_α
snoch308_n4_α:
snoch308_n4_β:
jmp g_m_gt_0_γ
jmp g_m_gt_0_γ
snoch308_n5_α:
bb175_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch308_n5_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
g_m_gt_0_β:
jmp g_m_gt_0_ω
g_m_gt_0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_gt_0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_gt_1_c0_α:
#=======================================================================================================================
    .global g_m_gt_1_c0_α
    .global g_m_gt_1_c0_β
    .global g_m_gt_1_c0_γ
    .global g_m_gt_1_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_gt_1_c0_α_body:
# IR_MATCH_RTAB
bb176_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat321_ω
 mov r14d, ecx
 jmp xcat321_γ
 xcat321_left_β:
 jmp xcat321_ω
xcat321_γ:
# IR_LIT
bb177_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt323_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt323_c0_ω
 add r14d, 2
 jmp xcat321_mid1_γ
 alt323_c0_β:
 sub r14d, 2
 jmp alt323_c0_ω
alt323_c0_ω:
# IR_LIT
bb178_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt323_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt323_c1_ω
 add r14d, 2
 jmp xcat321_mid1_γ
 alt323_c1_β:
 sub r14d, 2
 jmp alt323_c1_ω
alt323_c1_ω:
# IR_LIT
bb179_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt323_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt323_c2_ω
 add r14d, 2
 jmp xcat321_mid1_γ
 alt323_c2_β:
 sub r14d, 2
 jmp alt323_c2_ω
alt323_c2_ω:
 jmp xcat321_left_β
xcat321_mid1_β:
 jmp alt323_c0_β
xcat321_mid1_γ:
# IR_MATCH_RPOS
bb181_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat321_mid1_β
 jmp g_m_gt_1_c0_γ
 xcat321_mid2_β:
 jmp xcat321_mid1_β
xcat321_right_ω:
 jmp xcat321_left_β
g_m_gt_1_c0_β:
 jmp xcat321_mid2_β
xcat321_ω:
 jmp g_m_gt_1_c0_ω
g_m_gt_1_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_gt_1_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_gt_1_α:
#=======================================================================================================================
    .global g_m_gt_1_α
    .global g_m_gt_1_β
    .global g_m_gt_1_γ
    .global g_m_gt_1_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_gt_1_α_body:
snoch330_n0_α:
bb183_α:
# BOX IR_CALL m(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn333: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn333]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch330_n2_α
 jmp xgvarg331_done
xgvarg331_β:
 jmp snoch330_n2_α
xgvarg331_done:
# IR_LIT_I
bb184_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg334_done
 xgvarg334_β:
 jmp snoch330_n2_α
.Lx335_0:
 .quad 1
xgvarg334_done:
bb185_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
  .section .rodata
  .Lcallfn337: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn337]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
 mov rcx, 1
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jle snoch330_n2_α
 jmp snoch330_n1_α
 snoch330_n0_β:
 jmp snoch330_n2_α
snoch330_n1_α:
# IR_LIT_scalar
bb186_α:
 jmp snoch330_n3_α
 snoch330_n1_β:
 jmp snoch330_n4_α
snoch330_n2_α:
bb187_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch330_n2_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch330_n3_α:
bb188_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch330_n4_α
 snoch330_n3_β:
 jmp snoch330_n4_α
snoch330_n4_α:
snoch330_n4_β:
jmp g_m_gt_1_γ
jmp g_m_gt_1_γ
snoch330_n5_α:
bb189_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch330_n5_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
g_m_gt_1_β:
jmp g_m_gt_1_ω
g_m_gt_1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_gt_1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_eq_1_c0_α:
#=======================================================================================================================
    .global g_m_eq_1_c0_α
    .global g_m_eq_1_c0_β
    .global g_m_eq_1_c0_γ
    .global g_m_eq_1_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_eq_1_c0_α_body:
# IR_MATCH_RTAB
bb190_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat343_ω
 mov r14d, ecx
 jmp xcat343_γ
 xcat343_left_β:
 jmp xcat343_ω
xcat343_γ:
# IR_LIT
bb191_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt345_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt345_c0_ω
 add r14d, 2
 jmp xcat343_mid1_γ
 alt345_c0_β:
 sub r14d, 2
 jmp alt345_c0_ω
alt345_c0_ω:
# IR_LIT
bb192_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt345_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt345_c1_ω
 add r14d, 2
 jmp xcat343_mid1_γ
 alt345_c1_β:
 sub r14d, 2
 jmp alt345_c1_ω
alt345_c1_ω:
# IR_LIT
bb193_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt345_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt345_c2_ω
 add r14d, 2
 jmp xcat343_mid1_γ
 alt345_c2_β:
 sub r14d, 2
 jmp alt345_c2_ω
alt345_c2_ω:
 jmp xcat343_left_β
xcat343_mid1_β:
 jmp alt345_c0_β
xcat343_mid1_γ:
# IR_MATCH_RPOS
bb195_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat343_mid1_β
 jmp g_m_eq_1_c0_γ
 xcat343_mid2_β:
 jmp xcat343_mid1_β
xcat343_right_ω:
 jmp xcat343_left_β
g_m_eq_1_c0_β:
 jmp xcat343_mid2_β
xcat343_ω:
 jmp g_m_eq_1_c0_ω
g_m_eq_1_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_eq_1_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_eq_1_α:
#=======================================================================================================================
    .global g_m_eq_1_α
    .global g_m_eq_1_β
    .global g_m_eq_1_γ
    .global g_m_eq_1_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_eq_1_α_body:
snoch352_n0_α:
bb197_α:
# BOX IR_CALL m(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn355: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn355]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je snoch352_n2_α
 jmp xgvarg353_done
xgvarg353_β:
 jmp snoch352_n2_α
xgvarg353_done:
# IR_LIT_I
bb198_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg356_done
 xgvarg356_β:
 jmp snoch352_n2_α
.Lx357_0:
 .quad 1
xgvarg356_done:
bb199_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
  .section .rodata
  .Lcallfn359: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn359]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
 mov rcx, 1
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jne snoch352_n2_α
 jmp snoch352_n1_α
 snoch352_n0_β:
 jmp snoch352_n2_α
snoch352_n1_α:
# IR_LIT_scalar
bb200_α:
 jmp snoch352_n3_α
 snoch352_n1_β:
 jmp snoch352_n4_α
snoch352_n2_α:
bb201_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch352_n2_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch352_n3_α:
bb202_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch352_n4_α
 snoch352_n3_β:
 jmp snoch352_n4_α
snoch352_n4_α:
snoch352_n4_β:
jmp g_m_eq_1_γ
jmp g_m_eq_1_γ
snoch352_n5_α:
bb203_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch352_n5_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
g_m_eq_1_β:
jmp g_m_eq_1_ω
g_m_eq_1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_eq_1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_not_cvc_last_c0_α:
#=======================================================================================================================
    .global g_not_cvc_last_c0_α
    .global g_not_cvc_last_c0_β
    .global g_not_cvc_last_c0_γ
    .global g_not_cvc_last_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_not_cvc_last_c0_α_body:
# IR_MATCH_RTAB
bb204_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat365_ω
 mov r14d, ecx
 jmp xcat365_γ
 xcat365_left_β:
 jmp xcat365_ω
xcat365_γ:
# IR_LIT
bb205_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt367_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt367_c0_ω
 add r14d, 2
 jmp xcat365_mid1_γ
 alt367_c0_β:
 sub r14d, 2
 jmp alt367_c0_ω
alt367_c0_ω:
# IR_LIT
bb206_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt367_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt367_c1_ω
 add r14d, 2
 jmp xcat365_mid1_γ
 alt367_c1_β:
 sub r14d, 2
 jmp alt367_c1_ω
alt367_c1_ω:
# IR_LIT
bb207_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt367_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt367_c2_ω
 add r14d, 2
 jmp xcat365_mid1_γ
 alt367_c2_β:
 sub r14d, 2
 jmp alt367_c2_ω
alt367_c2_ω:
 jmp xcat365_left_β
xcat365_mid1_β:
 jmp alt367_c0_β
xcat365_mid1_γ:
# IR_MATCH_RPOS
bb209_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat365_mid1_β
 jmp g_not_cvc_last_c0_γ
 xcat365_mid2_β:
 jmp xcat365_mid1_β
xcat365_right_ω:
 jmp xcat365_left_β
g_not_cvc_last_c0_β:
 jmp xcat365_mid2_β
xcat365_ω:
 jmp g_not_cvc_last_c0_ω
g_not_cvc_last_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_not_cvc_last_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_not_cvc_last_α:
#=======================================================================================================================
    .global g_not_cvc_last_α
    .global g_not_cvc_last_β
    .global g_not_cvc_last_γ
    .global g_not_cvc_last_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_not_cvc_last_α_body:
snoch374_n0_α:
# IR_VAR
bb211_α:
 mov rdi, qword ptr [rip + .Lx377_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg375_done
 xgvarg375_β:
 jmp snoch374_n2_α
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "stem"
xgvarg375_done:
bb212_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn379: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn379]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch374_n2_α
 jmp snoch374_n1_α
snoch374_n0_β:
 jmp snoch374_n2_α
snoch374_n1_α:
bb213_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch374_n2_α
 snoch374_n1_β:
 jmp snoch374_n2_α
snoch374_n2_α:
# IR_VAR
bb214_α:
 mov rdi, qword ptr [rip + .Lx383_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg381_done
 xgvarg381_β:
 jmp snoch374_n4_α
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "L"
xgvarg381_done:
bb215_α:
# BOX IR_CALL cvc(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lprocfn385: .string "cvc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn385]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je snoch374_n4_α
 jmp snoch374_n3_α
snoch374_n2_β:
 jmp snoch374_n4_α
snoch374_n3_α:
bb216_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch374_n3_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch374_n4_α:
# IR_LIT_scalar
bb217_α:
 jmp snoch374_n7_α
 snoch374_n4_β:
 jmp snoch374_n6_α
snoch374_n5_α:
bb218_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch374_n5_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch374_n6_α:
snoch374_n6_β:
jmp g_not_cvc_last_γ
jmp g_not_cvc_last_γ
snoch374_n7_α:
bb219_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch374_n6_α
 snoch374_n7_β:
 jmp snoch374_n6_α
g_not_cvc_last_β:
jmp g_not_cvc_last_ω
g_not_cvc_last_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_not_cvc_last_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_stem_not_m_c0_α:
#=======================================================================================================================
    .global g_stem_not_m_c0_α
    .global g_stem_not_m_c0_β
    .global g_stem_not_m_c0_γ
    .global g_stem_not_m_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_stem_not_m_c0_α_body:
# IR_MATCH_RTAB
bb220_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat391_ω
 mov r14d, ecx
 jmp xcat391_γ
 xcat391_left_β:
 jmp xcat391_ω
xcat391_γ:
# IR_LIT
bb221_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt393_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt393_c0_ω
 add r14d, 2
 jmp xcat391_mid1_γ
 alt393_c0_β:
 sub r14d, 2
 jmp alt393_c0_ω
alt393_c0_ω:
# IR_LIT
bb222_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt393_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt393_c1_ω
 add r14d, 2
 jmp xcat391_mid1_γ
 alt393_c1_β:
 sub r14d, 2
 jmp alt393_c1_ω
alt393_c1_ω:
# IR_LIT
bb223_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt393_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt393_c2_ω
 add r14d, 2
 jmp xcat391_mid1_γ
 alt393_c2_β:
 sub r14d, 2
 jmp alt393_c2_ω
alt393_c2_ω:
 jmp xcat391_left_β
xcat391_mid1_β:
 jmp alt393_c0_β
xcat391_mid1_γ:
# IR_MATCH_RPOS
bb225_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat391_mid1_β
 jmp g_stem_not_m_c0_γ
 xcat391_mid2_β:
 jmp xcat391_mid1_β
xcat391_right_ω:
 jmp xcat391_left_β
g_stem_not_m_c0_β:
 jmp xcat391_mid2_β
xcat391_ω:
 jmp g_stem_not_m_c0_ω
g_stem_not_m_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_stem_not_m_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_stem_not_m_α:
#=======================================================================================================================
    .global g_stem_not_m_α
    .global g_stem_not_m_β
    .global g_stem_not_m_γ
    .global g_stem_not_m_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_stem_not_m_α_body:
snoch400_n0_α:
# IR_VAR
bb227_α:
 mov rdi, qword ptr [rip + .Lx403_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg401_done
 xgvarg401_β:
 jmp snoch400_n2_α
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "stem"
xgvarg401_done:
bb228_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn405: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn405]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch400_n2_α
 jmp snoch400_n1_α
snoch400_n0_β:
 jmp snoch400_n2_α
snoch400_n1_α:
bb229_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch400_n2_α
 snoch400_n1_β:
 jmp snoch400_n2_α
snoch400_n2_α:
# IR_VAR
bb230_α:
 mov rdi, qword ptr [rip + .Lx410_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg408_done
 xgvarg408_β:
 jmp snoch400_n4_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "stem"
xgvarg408_done:
# IR_VAR
bb231_α:
 mov rdi, qword ptr [rip + .Lx413_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg411_done
 xgvarg411_β:
 jmp snoch400_n4_α
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string "L"
xgvarg411_done:
# IR_LIT_I
bb232_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg414_done
 xgvarg414_β:
 jmp snoch400_n4_α
.Lx415_0:
 .quad 1
xgvarg414_done:
bb233_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+128]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 152], rax
# marshal arg2 = producer-box slot [r12+96] -> [r12+160]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lbynamefn417: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn417]
 lea rsi, [r12 + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch400_n4_α
 jmp xgvarg407_done
xgvarg407_β:
 jmp snoch400_n4_α
xgvarg407_done:
# IR_LIT_S
bb234_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvarg418_done
 xgvarg418_β:
 jmp snoch400_n4_α
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "m"
xgvarg418_done:
bb235_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+208]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lbynamefn421: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn421]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je snoch400_n4_α
 jmp snoch400_n3_α
snoch400_n2_β:
 jmp snoch400_n4_α
snoch400_n3_α:
# IR_LIT_scalar
bb236_α:
 jmp snoch400_n5_α
 snoch400_n3_β:
 jmp snoch400_n6_α
snoch400_n4_α:
bb237_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch400_n4_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch400_n5_α:
bb238_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S18]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch400_n6_α
 snoch400_n5_β:
 jmp snoch400_n6_α
snoch400_n6_α:
snoch400_n6_β:
jmp g_stem_not_m_γ
jmp g_stem_not_m_γ
snoch400_n7_α:
bb239_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch400_n7_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
g_stem_not_m_β:
jmp g_stem_not_m_ω
g_stem_not_m_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_stem_not_m_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_stem_last_st_c0_α:
#=======================================================================================================================
    .global g_stem_last_st_c0_α
    .global g_stem_last_st_c0_β
    .global g_stem_last_st_c0_γ
    .global g_stem_last_st_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_stem_last_st_c0_α_body:
# IR_MATCH_RTAB
bb240_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat427_ω
 mov r14d, ecx
 jmp xcat427_γ
 xcat427_left_β:
 jmp xcat427_ω
xcat427_γ:
# IR_LIT
bb241_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt429_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt429_c0_ω
 add r14d, 2
 jmp xcat427_mid1_γ
 alt429_c0_β:
 sub r14d, 2
 jmp alt429_c0_ω
alt429_c0_ω:
# IR_LIT
bb242_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt429_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt429_c1_ω
 add r14d, 2
 jmp xcat427_mid1_γ
 alt429_c1_β:
 sub r14d, 2
 jmp alt429_c1_ω
alt429_c1_ω:
# IR_LIT
bb243_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt429_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt429_c2_ω
 add r14d, 2
 jmp xcat427_mid1_γ
 alt429_c2_β:
 sub r14d, 2
 jmp alt429_c2_ω
alt429_c2_ω:
 jmp xcat427_left_β
xcat427_mid1_β:
 jmp alt429_c0_β
xcat427_mid1_γ:
# IR_MATCH_RPOS
bb245_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat427_mid1_β
 jmp g_stem_last_st_c0_γ
 xcat427_mid2_β:
 jmp xcat427_mid1_β
xcat427_right_ω:
 jmp xcat427_left_β
g_stem_last_st_c0_β:
 jmp xcat427_mid2_β
xcat427_ω:
 jmp g_stem_last_st_c0_ω
g_stem_last_st_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_stem_last_st_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_stem_last_st_α:
#=======================================================================================================================
    .global g_stem_last_st_α
    .global g_stem_last_st_β
    .global g_stem_last_st_γ
    .global g_stem_last_st_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_stem_last_st_α_body:
snoch436_n0_α:
# IR_VAR
bb247_α:
 mov rdi, qword ptr [rip + .Lx439_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg437_done
 xgvarg437_β:
 jmp snoch436_n2_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "stem"
xgvarg437_done:
bb248_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn441: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn441]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch436_n2_α
 jmp snoch436_n1_α
snoch436_n0_β:
 jmp snoch436_n2_α
snoch436_n1_α:
bb249_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch436_n2_α
 snoch436_n1_β:
 jmp snoch436_n2_α
snoch436_n2_α:
# IR_VAR
bb250_α:
 mov rdi, qword ptr [rip + .Lx445_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg443_done
 xgvarg443_β:
 jmp snoch436_n4_α
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "stem"
xgvarg443_done:
# IR_VAR
bb251_α:
 mov rdi, qword ptr [rip + .Lx448_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg446_done
 xgvarg446_β:
 jmp snoch436_n4_α
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
 .string "L"
xgvarg446_done:
# IR_LIT_I
bb252_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx450_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg449_done
 xgvarg449_β:
 jmp snoch436_n4_α
.Lx450_0:
 .quad 1
xgvarg449_done:
bb253_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+128]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+144]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 152], rax
# marshal arg2 = producer-box slot [r12+96] -> [r12+160]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lbynamefn452: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn452]
 lea rsi, [r12 + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch436_n4_α
 jmp snoch436_n3_α
snoch436_n2_β:
 jmp snoch436_n4_α
snoch436_n3_α:
bb254_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch436_n4_α
 snoch436_n3_β:
 jmp snoch436_n4_α
snoch436_n4_α:
# IR_VAR
bb255_α:
 mov rdi, qword ptr [rip + .Lx455_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch436_n5_α
 snoch436_n4_β:
 jmp snoch436_n6_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "last"
snoch436_n5_α:
# IR_SUBJECT
bb256_α:
 lea rdi, [rip + .S19]
 lea rsi, [r12 + 192]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan456_sγ
 xscan456_sβ:
 jmp snoch436_n6_α
xscan456_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb257_α:
 mov r13, qword ptr [r12 + 192]
 mov r15d, dword ptr [r12 + 200]
 mov dword ptr [r12 + 208], 0
 lea r10, [r12 + 216]
 jmp smatch459_retry
 snoch436_n5_β:
 jmp xscan456_dfail
smatch459_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 208]
# IR_MATCH_ANY
bb259_α:
 mov eax, r14d
 cmp eax, r15d
 jge smatch459_adv
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S20]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je smatch459_adv
 add r14d, 1
 jmp xscan456_dok
 smatch459_elemb:
 sub r14d, 1
 jmp smatch459_adv
smatch459_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 208], 1
 mov eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jg xscan456_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan456_dfail
 jmp smatch459_retry
xscan456_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch436_n7_α
xscan456_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch436_n6_α
snoch436_n6_α:
bb261_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch436_n6_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch436_n7_α:
# IR_LIT_scalar
bb262_α:
 jmp snoch436_n10_α
 snoch436_n7_β:
 jmp snoch436_n9_α
snoch436_n8_α:
bb263_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch436_n8_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch436_n9_α:
snoch436_n9_β:
jmp g_stem_last_st_γ
jmp g_stem_last_st_γ
snoch436_n10_α:
bb264_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S21]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch436_n9_α
 snoch436_n10_β:
 jmp snoch436_n9_α
g_stem_last_st_β:
jmp g_stem_last_st_ω
g_stem_last_st_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_stem_last_st_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_ll_gt_1_c0_α:
#=======================================================================================================================
    .global g_m_ll_gt_1_c0_α
    .global g_m_ll_gt_1_c0_β
    .global g_m_ll_gt_1_c0_γ
    .global g_m_ll_gt_1_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_ll_gt_1_c0_α_body:
# IR_MATCH_RTAB
bb265_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat469_ω
 mov r14d, ecx
 jmp xcat469_γ
 xcat469_left_β:
 jmp xcat469_ω
xcat469_γ:
# IR_LIT
bb266_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt471_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt471_c0_ω
 add r14d, 2
 jmp xcat469_mid1_γ
 alt471_c0_β:
 sub r14d, 2
 jmp alt471_c0_ω
alt471_c0_ω:
# IR_LIT
bb267_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt471_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt471_c1_ω
 add r14d, 2
 jmp xcat469_mid1_γ
 alt471_c1_β:
 sub r14d, 2
 jmp alt471_c1_ω
alt471_c1_ω:
# IR_LIT
bb268_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt471_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt471_c2_ω
 add r14d, 2
 jmp xcat469_mid1_γ
 alt471_c2_β:
 sub r14d, 2
 jmp alt471_c2_ω
alt471_c2_ω:
 jmp xcat469_left_β
xcat469_mid1_β:
 jmp alt471_c0_β
xcat469_mid1_γ:
# IR_MATCH_RPOS
bb270_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat469_mid1_β
 jmp g_m_ll_gt_1_c0_γ
 xcat469_mid2_β:
 jmp xcat469_mid1_β
xcat469_right_ω:
 jmp xcat469_left_β
g_m_ll_gt_1_c0_β:
 jmp xcat469_mid2_β
xcat469_ω:
 jmp g_m_ll_gt_1_c0_ω
g_m_ll_gt_1_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_ll_gt_1_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
g_m_ll_gt_1_α:
#=======================================================================================================================
    .global g_m_ll_gt_1_α
    .global g_m_ll_gt_1_β
    .global g_m_ll_gt_1_γ
    .global g_m_ll_gt_1_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
g_m_ll_gt_1_α_body:
snoch478_n0_α:
# IR_VAR
bb272_α:
 mov rdi, qword ptr [rip + .Lx480_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch478_n1_α
 snoch478_n0_β:
 jmp snoch478_n2_α
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "stem"
snoch478_n1_α:
bb273_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S22]
 lea rsi, [rip + .S23]
 call rt_gvar_assign_var@PLT
 jmp snoch478_n2_α
 snoch478_n1_β:
 jmp snoch478_n2_α
snoch478_n2_α:
bb274_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 16], 1
 lea rax, [rip + .S22]
 mov qword ptr [r12 + 24], rax
 mov dword ptr [r12 + 32], 0
 lea rax, [rip + .S24]
 mov qword ptr [r12 + 40], rax
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 16]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch478_n3_α
 snoch478_n2_β:
 jmp snoch478_n3_α
snoch478_n3_α:
bb275_α:
# BOX IR_CALL m(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn484: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn484]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch478_n5_α
 jmp snoch478_n4_α
snoch478_n3_β:
 jmp snoch478_n5_α
snoch478_n4_α:
bb276_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S25]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_gvar_assign_descr@PLT
 jmp snoch478_n5_α
 snoch478_n4_β:
 jmp snoch478_n5_α
snoch478_n5_α:
# IR_VAR
bb277_α:
 mov rdi, qword ptr [rip + .Lx487_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch478_n6_α
 snoch478_n5_β:
 jmp snoch478_n7_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "save"
snoch478_n6_α:
bb278_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S23]
 lea rsi, [rip + .S22]
 call rt_gvar_assign_var@PLT
 jmp snoch478_n7_α
 snoch478_n6_β:
 jmp snoch478_n7_α
snoch478_n7_α:
# IR_VAR
bb279_α:
 mov rdi, qword ptr [rip + .Lx491_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg489_done
 xgvarg489_β:
 jmp snoch478_n9_α
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "r"
xgvarg489_done:
# IR_LIT_I
bb280_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx493_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg492_done
 xgvarg492_β:
 jmp snoch478_n9_α
.Lx493_0:
 .quad 1
xgvarg492_done:
bb281_α:
# BOX IR_CALL GT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S25]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 128], rax
 mov rcx, 1
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 mov rax, qword ptr [r12 + 128]
 cmp rax, rcx
 jle snoch478_n9_α
 jmp snoch478_n8_α
 snoch478_n7_β:
 jmp snoch478_n9_α
snoch478_n8_α:
# IR_LIT_scalar
bb282_α:
 jmp snoch478_n10_α
 snoch478_n8_β:
 jmp snoch478_n11_α
snoch478_n9_α:
bb283_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch478_n9_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch478_n10_α:
bb284_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S26]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch478_n11_α
 snoch478_n10_β:
 jmp snoch478_n11_α
snoch478_n11_α:
snoch478_n11_β:
jmp g_m_ll_gt_1_γ
jmp g_m_ll_gt_1_γ
snoch478_n12_α:
bb285_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
 snoch478_n12_β:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
g_m_ll_gt_1_β:
jmp g_m_ll_gt_1_ω
g_m_ll_gt_1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
g_m_ll_gt_1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ss_c0_α:
#=======================================================================================================================
    .global s_ss_c0_α
    .global s_ss_c0_β
    .global s_ss_c0_γ
    .global s_ss_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ss_c0_α_body:
# IR_MATCH_RTAB
bb286_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat500_ω
 mov r14d, ecx
 jmp xcat500_γ
 xcat500_left_β:
 jmp xcat500_ω
xcat500_γ:
# IR_LIT
bb287_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt502_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt502_c0_ω
 add r14d, 2
 jmp xcat500_mid1_γ
 alt502_c0_β:
 sub r14d, 2
 jmp alt502_c0_ω
alt502_c0_ω:
# IR_LIT
bb288_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt502_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt502_c1_ω
 add r14d, 2
 jmp xcat500_mid1_γ
 alt502_c1_β:
 sub r14d, 2
 jmp alt502_c1_ω
alt502_c1_ω:
# IR_LIT
bb289_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt502_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt502_c2_ω
 add r14d, 2
 jmp xcat500_mid1_γ
 alt502_c2_β:
 sub r14d, 2
 jmp alt502_c2_ω
alt502_c2_ω:
 jmp xcat500_left_β
xcat500_mid1_β:
 jmp alt502_c0_β
xcat500_mid1_γ:
# IR_MATCH_RPOS
bb291_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat500_mid1_β
 jmp s_ss_c0_γ
 xcat500_mid2_β:
 jmp xcat500_mid1_β
xcat500_right_ω:
 jmp xcat500_left_β
s_ss_c0_β:
 jmp xcat500_mid2_β
xcat500_ω:
 jmp s_ss_c0_ω
s_ss_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ss_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ss_α:
#=======================================================================================================================
    .global s_ss_α
    .global s_ss_β
    .global s_ss_γ
    .global s_ss_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ss_α_body:
snoch509_n0_α:
# IR_LIT_scalar
bb293_α:
 jmp snoch509_n1_α
 snoch509_n0_β:
 jmp snoch509_n2_α
snoch509_n1_α:
bb294_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S28]
 call rt_gvar_assign_str@PLT
 jmp snoch509_n2_α
 snoch509_n1_β:
 jmp snoch509_n2_α
snoch509_n2_α:
# IR_VAR
bb295_α:
 mov rdi, qword ptr [rip + .Lx513_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch509_n3_α
 snoch509_n2_β:
 jmp snoch509_n4_α
.Lx513_0:
 .quad .Lx513_0_s
.Lx513_0_s:
 .string ""
snoch509_n3_α:
bb296_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S29]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch509_n4_α
 snoch509_n3_β:
 jmp snoch509_n4_α
snoch509_n4_α:
snoch509_n4_β:
jmp s_ss_γ
jmp s_ss_γ
s_ss_β:
jmp s_ss_ω
s_ss_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ss_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_i_c0_α:
#=======================================================================================================================
    .global s_i_c0_α
    .global s_i_c0_β
    .global s_i_c0_γ
    .global s_i_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_i_c0_α_body:
# IR_MATCH_RTAB
bb297_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat515_ω
 mov r14d, ecx
 jmp xcat515_γ
 xcat515_left_β:
 jmp xcat515_ω
xcat515_γ:
# IR_LIT
bb298_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt517_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt517_c0_ω
 add r14d, 2
 jmp xcat515_mid1_γ
 alt517_c0_β:
 sub r14d, 2
 jmp alt517_c0_ω
alt517_c0_ω:
# IR_LIT
bb299_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt517_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt517_c1_ω
 add r14d, 2
 jmp xcat515_mid1_γ
 alt517_c1_β:
 sub r14d, 2
 jmp alt517_c1_ω
alt517_c1_ω:
# IR_LIT
bb300_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt517_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt517_c2_ω
 add r14d, 2
 jmp xcat515_mid1_γ
 alt517_c2_β:
 sub r14d, 2
 jmp alt517_c2_ω
alt517_c2_ω:
 jmp xcat515_left_β
xcat515_mid1_β:
 jmp alt517_c0_β
xcat515_mid1_γ:
# IR_MATCH_RPOS
bb302_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat515_mid1_β
 jmp s_i_c0_γ
 xcat515_mid2_β:
 jmp xcat515_mid1_β
xcat515_right_ω:
 jmp xcat515_left_β
s_i_c0_β:
 jmp xcat515_mid2_β
xcat515_ω:
 jmp s_i_c0_ω
s_i_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_i_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_i_α:
#=======================================================================================================================
    .global s_i_α
    .global s_i_β
    .global s_i_γ
    .global s_i_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_i_α_body:
snoch524_n0_α:
# IR_LIT_scalar
bb304_α:
 jmp snoch524_n1_α
 snoch524_n0_β:
 jmp snoch524_n2_α
snoch524_n1_α:
bb305_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S5]
 call rt_gvar_assign_str@PLT
 jmp snoch524_n2_α
 snoch524_n1_β:
 jmp snoch524_n2_α
snoch524_n2_α:
# IR_VAR
bb306_α:
 mov rdi, qword ptr [rip + .Lx528_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch524_n3_α
 snoch524_n2_β:
 jmp snoch524_n4_α
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string ""
snoch524_n3_α:
bb307_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S30]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch524_n4_α
 snoch524_n3_β:
 jmp snoch524_n4_α
snoch524_n4_α:
snoch524_n4_β:
jmp s_i_γ
jmp s_i_γ
s_i_β:
jmp s_i_ω
s_i_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_i_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_empty_c0_α:
#=======================================================================================================================
    .global s_empty_c0_α
    .global s_empty_c0_β
    .global s_empty_c0_γ
    .global s_empty_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_empty_c0_α_body:
# IR_MATCH_RTAB
bb308_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat530_ω
 mov r14d, ecx
 jmp xcat530_γ
 xcat530_left_β:
 jmp xcat530_ω
xcat530_γ:
# IR_LIT
bb309_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt532_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt532_c0_ω
 add r14d, 2
 jmp xcat530_mid1_γ
 alt532_c0_β:
 sub r14d, 2
 jmp alt532_c0_ω
alt532_c0_ω:
# IR_LIT
bb310_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt532_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt532_c1_ω
 add r14d, 2
 jmp xcat530_mid1_γ
 alt532_c1_β:
 sub r14d, 2
 jmp alt532_c1_ω
alt532_c1_ω:
# IR_LIT
bb311_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt532_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt532_c2_ω
 add r14d, 2
 jmp xcat530_mid1_γ
 alt532_c2_β:
 sub r14d, 2
 jmp alt532_c2_ω
alt532_c2_ω:
 jmp xcat530_left_β
xcat530_mid1_β:
 jmp alt532_c0_β
xcat530_mid1_γ:
# IR_MATCH_RPOS
bb313_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat530_mid1_β
 jmp s_empty_c0_γ
 xcat530_mid2_β:
 jmp xcat530_mid1_β
xcat530_right_ω:
 jmp xcat530_left_β
s_empty_c0_β:
 jmp xcat530_mid2_β
xcat530_ω:
 jmp s_empty_c0_ω
s_empty_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_empty_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_empty_α:
#=======================================================================================================================
    .global s_empty_α
    .global s_empty_β
    .global s_empty_γ
    .global s_empty_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_empty_α_body:
snoch539_n0_α:
# IR_LIT_scalar
bb315_α:
 jmp snoch539_n1_α
 snoch539_n0_β:
 jmp snoch539_n2_α
snoch539_n1_α:
bb316_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch539_n2_α
 snoch539_n1_β:
 jmp snoch539_n2_α
snoch539_n2_α:
# IR_VAR
bb317_α:
 mov rdi, qword ptr [rip + .Lx543_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch539_n3_α
 snoch539_n2_β:
 jmp snoch539_n4_α
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string ""
snoch539_n3_α:
bb318_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S31]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch539_n4_α
 snoch539_n3_β:
 jmp snoch539_n4_α
snoch539_n4_α:
snoch539_n4_β:
jmp s_empty_γ
jmp s_empty_γ
s_empty_β:
jmp s_empty_ω
s_empty_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_empty_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ee_c0_α:
#=======================================================================================================================
    .global s_ee_c0_α
    .global s_ee_c0_β
    .global s_ee_c0_γ
    .global s_ee_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ee_c0_α_body:
# IR_MATCH_RTAB
bb319_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat545_ω
 mov r14d, ecx
 jmp xcat545_γ
 xcat545_left_β:
 jmp xcat545_ω
xcat545_γ:
# IR_LIT
bb320_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt547_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt547_c0_ω
 add r14d, 2
 jmp xcat545_mid1_γ
 alt547_c0_β:
 sub r14d, 2
 jmp alt547_c0_ω
alt547_c0_ω:
# IR_LIT
bb321_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt547_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt547_c1_ω
 add r14d, 2
 jmp xcat545_mid1_γ
 alt547_c1_β:
 sub r14d, 2
 jmp alt547_c1_ω
alt547_c1_ω:
# IR_LIT
bb322_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt547_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt547_c2_ω
 add r14d, 2
 jmp xcat545_mid1_γ
 alt547_c2_β:
 sub r14d, 2
 jmp alt547_c2_ω
alt547_c2_ω:
 jmp xcat545_left_β
xcat545_mid1_β:
 jmp alt547_c0_β
xcat545_mid1_γ:
# IR_MATCH_RPOS
bb324_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat545_mid1_β
 jmp s_ee_c0_γ
 xcat545_mid2_β:
 jmp xcat545_mid1_β
xcat545_right_ω:
 jmp xcat545_left_β
s_ee_c0_β:
 jmp xcat545_mid2_β
xcat545_ω:
 jmp s_ee_c0_ω
s_ee_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ee_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ee_α:
#=======================================================================================================================
    .global s_ee_α
    .global s_ee_β
    .global s_ee_γ
    .global s_ee_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ee_α_body:
snoch554_n0_α:
# IR_LIT_scalar
bb326_α:
 jmp snoch554_n1_α
 snoch554_n0_β:
 jmp snoch554_n2_α
snoch554_n1_α:
bb327_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S32]
 call rt_gvar_assign_str@PLT
 jmp snoch554_n2_α
 snoch554_n1_β:
 jmp snoch554_n2_α
snoch554_n2_α:
# IR_VAR
bb328_α:
 mov rdi, qword ptr [rip + .Lx558_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch554_n3_α
 snoch554_n2_β:
 jmp snoch554_n4_α
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string ""
snoch554_n3_α:
bb329_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S33]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch554_n4_α
 snoch554_n3_β:
 jmp snoch554_n4_α
snoch554_n4_α:
snoch554_n4_β:
jmp s_ee_γ
jmp s_ee_γ
s_ee_β:
jmp s_ee_ω
s_ee_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ee_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ate_c0_α:
#=======================================================================================================================
    .global s_ate_c0_α
    .global s_ate_c0_β
    .global s_ate_c0_γ
    .global s_ate_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ate_c0_α_body:
# IR_MATCH_RTAB
bb330_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat560_ω
 mov r14d, ecx
 jmp xcat560_γ
 xcat560_left_β:
 jmp xcat560_ω
xcat560_γ:
# IR_LIT
bb331_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt562_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt562_c0_ω
 add r14d, 2
 jmp xcat560_mid1_γ
 alt562_c0_β:
 sub r14d, 2
 jmp alt562_c0_ω
alt562_c0_ω:
# IR_LIT
bb332_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt562_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt562_c1_ω
 add r14d, 2
 jmp xcat560_mid1_γ
 alt562_c1_β:
 sub r14d, 2
 jmp alt562_c1_ω
alt562_c1_ω:
# IR_LIT
bb333_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt562_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt562_c2_ω
 add r14d, 2
 jmp xcat560_mid1_γ
 alt562_c2_β:
 sub r14d, 2
 jmp alt562_c2_ω
alt562_c2_ω:
 jmp xcat560_left_β
xcat560_mid1_β:
 jmp alt562_c0_β
xcat560_mid1_γ:
# IR_MATCH_RPOS
bb335_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat560_mid1_β
 jmp s_ate_c0_γ
 xcat560_mid2_β:
 jmp xcat560_mid1_β
xcat560_right_ω:
 jmp xcat560_left_β
s_ate_c0_β:
 jmp xcat560_mid2_β
xcat560_ω:
 jmp s_ate_c0_ω
s_ate_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ate_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ate_α:
#=======================================================================================================================
    .global s_ate_α
    .global s_ate_β
    .global s_ate_γ
    .global s_ate_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ate_α_body:
snoch569_n0_α:
# IR_LIT_scalar
bb337_α:
 jmp snoch569_n1_α
 snoch569_n0_β:
 jmp snoch569_n2_α
snoch569_n1_α:
bb338_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S34]
 call rt_gvar_assign_str@PLT
 jmp snoch569_n2_α
 snoch569_n1_β:
 jmp snoch569_n2_α
snoch569_n2_α:
# IR_VAR
bb339_α:
 mov rdi, qword ptr [rip + .Lx573_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch569_n3_α
 snoch569_n2_β:
 jmp snoch569_n4_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string ""
snoch569_n3_α:
bb340_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S35]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch569_n4_α
 snoch569_n3_β:
 jmp snoch569_n4_α
snoch569_n4_α:
snoch569_n4_β:
jmp s_ate_γ
jmp s_ate_γ
s_ate_β:
jmp s_ate_ω
s_ate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_tion_c0_α:
#=======================================================================================================================
    .global s_tion_c0_α
    .global s_tion_c0_β
    .global s_tion_c0_γ
    .global s_tion_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_tion_c0_α_body:
# IR_MATCH_RTAB
bb341_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat575_ω
 mov r14d, ecx
 jmp xcat575_γ
 xcat575_left_β:
 jmp xcat575_ω
xcat575_γ:
# IR_LIT
bb342_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt577_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt577_c0_ω
 add r14d, 2
 jmp xcat575_mid1_γ
 alt577_c0_β:
 sub r14d, 2
 jmp alt577_c0_ω
alt577_c0_ω:
# IR_LIT
bb343_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt577_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt577_c1_ω
 add r14d, 2
 jmp xcat575_mid1_γ
 alt577_c1_β:
 sub r14d, 2
 jmp alt577_c1_ω
alt577_c1_ω:
# IR_LIT
bb344_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt577_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt577_c2_ω
 add r14d, 2
 jmp xcat575_mid1_γ
 alt577_c2_β:
 sub r14d, 2
 jmp alt577_c2_ω
alt577_c2_ω:
 jmp xcat575_left_β
xcat575_mid1_β:
 jmp alt577_c0_β
xcat575_mid1_γ:
# IR_MATCH_RPOS
bb346_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat575_mid1_β
 jmp s_tion_c0_γ
 xcat575_mid2_β:
 jmp xcat575_mid1_β
xcat575_right_ω:
 jmp xcat575_left_β
s_tion_c0_β:
 jmp xcat575_mid2_β
xcat575_ω:
 jmp s_tion_c0_ω
s_tion_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_tion_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_tion_α:
#=======================================================================================================================
    .global s_tion_α
    .global s_tion_β
    .global s_tion_γ
    .global s_tion_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_tion_α_body:
snoch584_n0_α:
# IR_LIT_scalar
bb348_α:
 jmp snoch584_n1_α
 snoch584_n0_β:
 jmp snoch584_n2_α
snoch584_n1_α:
bb349_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S36]
 call rt_gvar_assign_str@PLT
 jmp snoch584_n2_α
 snoch584_n1_β:
 jmp snoch584_n2_α
snoch584_n2_α:
# IR_VAR
bb350_α:
 mov rdi, qword ptr [rip + .Lx588_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch584_n3_α
 snoch584_n2_β:
 jmp snoch584_n4_α
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string ""
snoch584_n3_α:
bb351_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S37]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch584_n4_α
 snoch584_n3_β:
 jmp snoch584_n4_α
snoch584_n4_α:
snoch584_n4_β:
jmp s_tion_γ
jmp s_tion_γ
s_tion_β:
jmp s_tion_ω
s_tion_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_tion_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ence_c0_α:
#=======================================================================================================================
    .global s_ence_c0_α
    .global s_ence_c0_β
    .global s_ence_c0_γ
    .global s_ence_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ence_c0_α_body:
# IR_MATCH_RTAB
bb352_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat590_ω
 mov r14d, ecx
 jmp xcat590_γ
 xcat590_left_β:
 jmp xcat590_ω
xcat590_γ:
# IR_LIT
bb353_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt592_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt592_c0_ω
 add r14d, 2
 jmp xcat590_mid1_γ
 alt592_c0_β:
 sub r14d, 2
 jmp alt592_c0_ω
alt592_c0_ω:
# IR_LIT
bb354_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt592_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt592_c1_ω
 add r14d, 2
 jmp xcat590_mid1_γ
 alt592_c1_β:
 sub r14d, 2
 jmp alt592_c1_ω
alt592_c1_ω:
# IR_LIT
bb355_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt592_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt592_c2_ω
 add r14d, 2
 jmp xcat590_mid1_γ
 alt592_c2_β:
 sub r14d, 2
 jmp alt592_c2_ω
alt592_c2_ω:
 jmp xcat590_left_β
xcat590_mid1_β:
 jmp alt592_c0_β
xcat590_mid1_γ:
# IR_MATCH_RPOS
bb357_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat590_mid1_β
 jmp s_ence_c0_γ
 xcat590_mid2_β:
 jmp xcat590_mid1_β
xcat590_right_ω:
 jmp xcat590_left_β
s_ence_c0_β:
 jmp xcat590_mid2_β
xcat590_ω:
 jmp s_ence_c0_ω
s_ence_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ence_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ence_α:
#=======================================================================================================================
    .global s_ence_α
    .global s_ence_β
    .global s_ence_γ
    .global s_ence_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ence_α_body:
snoch599_n0_α:
# IR_LIT_scalar
bb359_α:
 jmp snoch599_n1_α
 snoch599_n0_β:
 jmp snoch599_n2_α
snoch599_n1_α:
bb360_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S38]
 call rt_gvar_assign_str@PLT
 jmp snoch599_n2_α
 snoch599_n1_β:
 jmp snoch599_n2_α
snoch599_n2_α:
# IR_VAR
bb361_α:
 mov rdi, qword ptr [rip + .Lx603_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch599_n3_α
 snoch599_n2_β:
 jmp snoch599_n4_α
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string ""
snoch599_n3_α:
bb362_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S39]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch599_n4_α
 snoch599_n3_β:
 jmp snoch599_n4_α
snoch599_n4_α:
snoch599_n4_β:
jmp s_ence_γ
jmp s_ence_γ
s_ence_β:
jmp s_ence_ω
s_ence_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ence_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ance_c0_α:
#=======================================================================================================================
    .global s_ance_c0_α
    .global s_ance_c0_β
    .global s_ance_c0_γ
    .global s_ance_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ance_c0_α_body:
# IR_MATCH_RTAB
bb363_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat605_ω
 mov r14d, ecx
 jmp xcat605_γ
 xcat605_left_β:
 jmp xcat605_ω
xcat605_γ:
# IR_LIT
bb364_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt607_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt607_c0_ω
 add r14d, 2
 jmp xcat605_mid1_γ
 alt607_c0_β:
 sub r14d, 2
 jmp alt607_c0_ω
alt607_c0_ω:
# IR_LIT
bb365_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt607_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt607_c1_ω
 add r14d, 2
 jmp xcat605_mid1_γ
 alt607_c1_β:
 sub r14d, 2
 jmp alt607_c1_ω
alt607_c1_ω:
# IR_LIT
bb366_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt607_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt607_c2_ω
 add r14d, 2
 jmp xcat605_mid1_γ
 alt607_c2_β:
 sub r14d, 2
 jmp alt607_c2_ω
alt607_c2_ω:
 jmp xcat605_left_β
xcat605_mid1_β:
 jmp alt607_c0_β
xcat605_mid1_γ:
# IR_MATCH_RPOS
bb368_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat605_mid1_β
 jmp s_ance_c0_γ
 xcat605_mid2_β:
 jmp xcat605_mid1_β
xcat605_right_ω:
 jmp xcat605_left_β
s_ance_c0_β:
 jmp xcat605_mid2_β
xcat605_ω:
 jmp s_ance_c0_ω
s_ance_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ance_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ance_α:
#=======================================================================================================================
    .global s_ance_α
    .global s_ance_β
    .global s_ance_γ
    .global s_ance_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ance_α_body:
snoch614_n0_α:
# IR_LIT_scalar
bb370_α:
 jmp snoch614_n1_α
 snoch614_n0_β:
 jmp snoch614_n2_α
snoch614_n1_α:
bb371_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S40]
 call rt_gvar_assign_str@PLT
 jmp snoch614_n2_α
 snoch614_n1_β:
 jmp snoch614_n2_α
snoch614_n2_α:
# IR_VAR
bb372_α:
 mov rdi, qword ptr [rip + .Lx618_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch614_n3_α
 snoch614_n2_β:
 jmp snoch614_n4_α
.Lx618_0:
 .quad .Lx618_0_s
.Lx618_0_s:
 .string ""
snoch614_n3_α:
bb373_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S41]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch614_n4_α
 snoch614_n3_β:
 jmp snoch614_n4_α
snoch614_n4_α:
snoch614_n4_β:
jmp s_ance_γ
jmp s_ance_γ
s_ance_β:
jmp s_ance_ω
s_ance_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ance_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ize_c0_α:
#=======================================================================================================================
    .global s_ize_c0_α
    .global s_ize_c0_β
    .global s_ize_c0_γ
    .global s_ize_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ize_c0_α_body:
# IR_MATCH_RTAB
bb374_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat620_ω
 mov r14d, ecx
 jmp xcat620_γ
 xcat620_left_β:
 jmp xcat620_ω
xcat620_γ:
# IR_LIT
bb375_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt622_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt622_c0_ω
 add r14d, 2
 jmp xcat620_mid1_γ
 alt622_c0_β:
 sub r14d, 2
 jmp alt622_c0_ω
alt622_c0_ω:
# IR_LIT
bb376_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt622_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt622_c1_ω
 add r14d, 2
 jmp xcat620_mid1_γ
 alt622_c1_β:
 sub r14d, 2
 jmp alt622_c1_ω
alt622_c1_ω:
# IR_LIT
bb377_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt622_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt622_c2_ω
 add r14d, 2
 jmp xcat620_mid1_γ
 alt622_c2_β:
 sub r14d, 2
 jmp alt622_c2_ω
alt622_c2_ω:
 jmp xcat620_left_β
xcat620_mid1_β:
 jmp alt622_c0_β
xcat620_mid1_γ:
# IR_MATCH_RPOS
bb379_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat620_mid1_β
 jmp s_ize_c0_γ
 xcat620_mid2_β:
 jmp xcat620_mid1_β
xcat620_right_ω:
 jmp xcat620_left_β
s_ize_c0_β:
 jmp xcat620_mid2_β
xcat620_ω:
 jmp s_ize_c0_ω
s_ize_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ize_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ize_α:
#=======================================================================================================================
    .global s_ize_α
    .global s_ize_β
    .global s_ize_γ
    .global s_ize_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ize_α_body:
snoch629_n0_α:
# IR_LIT_scalar
bb381_α:
 jmp snoch629_n1_α
 snoch629_n0_β:
 jmp snoch629_n2_α
snoch629_n1_α:
bb382_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S42]
 call rt_gvar_assign_str@PLT
 jmp snoch629_n2_α
 snoch629_n1_β:
 jmp snoch629_n2_α
snoch629_n2_α:
# IR_VAR
bb383_α:
 mov rdi, qword ptr [rip + .Lx633_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch629_n3_α
 snoch629_n2_β:
 jmp snoch629_n4_α
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string ""
snoch629_n3_α:
bb384_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S43]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch629_n4_α
 snoch629_n3_β:
 jmp snoch629_n4_α
snoch629_n4_α:
snoch629_n4_β:
jmp s_ize_γ
jmp s_ize_γ
s_ize_β:
jmp s_ize_ω
s_ize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ize_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ble_c0_α:
#=======================================================================================================================
    .global s_ble_c0_α
    .global s_ble_c0_β
    .global s_ble_c0_γ
    .global s_ble_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ble_c0_α_body:
# IR_MATCH_RTAB
bb385_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat635_ω
 mov r14d, ecx
 jmp xcat635_γ
 xcat635_left_β:
 jmp xcat635_ω
xcat635_γ:
# IR_LIT
bb386_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt637_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt637_c0_ω
 add r14d, 2
 jmp xcat635_mid1_γ
 alt637_c0_β:
 sub r14d, 2
 jmp alt637_c0_ω
alt637_c0_ω:
# IR_LIT
bb387_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt637_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt637_c1_ω
 add r14d, 2
 jmp xcat635_mid1_γ
 alt637_c1_β:
 sub r14d, 2
 jmp alt637_c1_ω
alt637_c1_ω:
# IR_LIT
bb388_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt637_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt637_c2_ω
 add r14d, 2
 jmp xcat635_mid1_γ
 alt637_c2_β:
 sub r14d, 2
 jmp alt637_c2_ω
alt637_c2_ω:
 jmp xcat635_left_β
xcat635_mid1_β:
 jmp alt637_c0_β
xcat635_mid1_γ:
# IR_MATCH_RPOS
bb390_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat635_mid1_β
 jmp s_ble_c0_γ
 xcat635_mid2_β:
 jmp xcat635_mid1_β
xcat635_right_ω:
 jmp xcat635_left_β
s_ble_c0_β:
 jmp xcat635_mid2_β
xcat635_ω:
 jmp s_ble_c0_ω
s_ble_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ble_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ble_α:
#=======================================================================================================================
    .global s_ble_α
    .global s_ble_β
    .global s_ble_γ
    .global s_ble_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ble_α_body:
snoch644_n0_α:
# IR_LIT_scalar
bb392_α:
 jmp snoch644_n1_α
 snoch644_n0_β:
 jmp snoch644_n2_α
snoch644_n1_α:
bb393_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S44]
 call rt_gvar_assign_str@PLT
 jmp snoch644_n2_α
 snoch644_n1_β:
 jmp snoch644_n2_α
snoch644_n2_α:
# IR_VAR
bb394_α:
 mov rdi, qword ptr [rip + .Lx648_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch644_n3_α
 snoch644_n2_β:
 jmp snoch644_n4_α
.Lx648_0:
 .quad .Lx648_0_s
.Lx648_0_s:
 .string ""
snoch644_n3_α:
bb395_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S45]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch644_n4_α
 snoch644_n3_β:
 jmp snoch644_n4_α
snoch644_n4_α:
snoch644_n4_β:
jmp s_ble_γ
jmp s_ble_γ
s_ble_β:
jmp s_ble_ω
s_ble_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ble_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_al_c0_α:
#=======================================================================================================================
    .global s_al_c0_α
    .global s_al_c0_β
    .global s_al_c0_γ
    .global s_al_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_al_c0_α_body:
# IR_MATCH_RTAB
bb396_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat650_ω
 mov r14d, ecx
 jmp xcat650_γ
 xcat650_left_β:
 jmp xcat650_ω
xcat650_γ:
# IR_LIT
bb397_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt652_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt652_c0_ω
 add r14d, 2
 jmp xcat650_mid1_γ
 alt652_c0_β:
 sub r14d, 2
 jmp alt652_c0_ω
alt652_c0_ω:
# IR_LIT
bb398_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt652_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt652_c1_ω
 add r14d, 2
 jmp xcat650_mid1_γ
 alt652_c1_β:
 sub r14d, 2
 jmp alt652_c1_ω
alt652_c1_ω:
# IR_LIT
bb399_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt652_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt652_c2_ω
 add r14d, 2
 jmp xcat650_mid1_γ
 alt652_c2_β:
 sub r14d, 2
 jmp alt652_c2_ω
alt652_c2_ω:
 jmp xcat650_left_β
xcat650_mid1_β:
 jmp alt652_c0_β
xcat650_mid1_γ:
# IR_MATCH_RPOS
bb401_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat650_mid1_β
 jmp s_al_c0_γ
 xcat650_mid2_β:
 jmp xcat650_mid1_β
xcat650_right_ω:
 jmp xcat650_left_β
s_al_c0_β:
 jmp xcat650_mid2_β
xcat650_ω:
 jmp s_al_c0_ω
s_al_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_al_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_al_α:
#=======================================================================================================================
    .global s_al_α
    .global s_al_β
    .global s_al_γ
    .global s_al_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_al_α_body:
snoch659_n0_α:
# IR_LIT_scalar
bb403_α:
 jmp snoch659_n1_α
 snoch659_n0_β:
 jmp snoch659_n2_α
snoch659_n1_α:
bb404_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S46]
 call rt_gvar_assign_str@PLT
 jmp snoch659_n2_α
 snoch659_n1_β:
 jmp snoch659_n2_α
snoch659_n2_α:
# IR_VAR
bb405_α:
 mov rdi, qword ptr [rip + .Lx663_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch659_n3_α
 snoch659_n2_β:
 jmp snoch659_n4_α
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string ""
snoch659_n3_α:
bb406_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S47]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch659_n4_α
 snoch659_n3_β:
 jmp snoch659_n4_α
snoch659_n4_α:
snoch659_n4_β:
jmp s_al_γ
jmp s_al_γ
s_al_β:
jmp s_al_ω
s_al_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_al_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ent_c0_α:
#=======================================================================================================================
    .global s_ent_c0_α
    .global s_ent_c0_β
    .global s_ent_c0_γ
    .global s_ent_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ent_c0_α_body:
# IR_MATCH_RTAB
bb407_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat665_ω
 mov r14d, ecx
 jmp xcat665_γ
 xcat665_left_β:
 jmp xcat665_ω
xcat665_γ:
# IR_LIT
bb408_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt667_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt667_c0_ω
 add r14d, 2
 jmp xcat665_mid1_γ
 alt667_c0_β:
 sub r14d, 2
 jmp alt667_c0_ω
alt667_c0_ω:
# IR_LIT
bb409_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt667_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt667_c1_ω
 add r14d, 2
 jmp xcat665_mid1_γ
 alt667_c1_β:
 sub r14d, 2
 jmp alt667_c1_ω
alt667_c1_ω:
# IR_LIT
bb410_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt667_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt667_c2_ω
 add r14d, 2
 jmp xcat665_mid1_γ
 alt667_c2_β:
 sub r14d, 2
 jmp alt667_c2_ω
alt667_c2_ω:
 jmp xcat665_left_β
xcat665_mid1_β:
 jmp alt667_c0_β
xcat665_mid1_γ:
# IR_MATCH_RPOS
bb412_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat665_mid1_β
 jmp s_ent_c0_γ
 xcat665_mid2_β:
 jmp xcat665_mid1_β
xcat665_right_ω:
 jmp xcat665_left_β
s_ent_c0_β:
 jmp xcat665_mid2_β
xcat665_ω:
 jmp s_ent_c0_ω
s_ent_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ent_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ent_α:
#=======================================================================================================================
    .global s_ent_α
    .global s_ent_β
    .global s_ent_γ
    .global s_ent_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ent_α_body:
snoch674_n0_α:
# IR_LIT_scalar
bb414_α:
 jmp snoch674_n1_α
 snoch674_n0_β:
 jmp snoch674_n2_α
snoch674_n1_α:
bb415_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S48]
 call rt_gvar_assign_str@PLT
 jmp snoch674_n2_α
 snoch674_n1_β:
 jmp snoch674_n2_α
snoch674_n2_α:
# IR_VAR
bb416_α:
 mov rdi, qword ptr [rip + .Lx678_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch674_n3_α
 snoch674_n2_β:
 jmp snoch674_n4_α
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string ""
snoch674_n3_α:
bb417_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S49]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch674_n4_α
 snoch674_n3_β:
 jmp snoch674_n4_α
snoch674_n4_α:
snoch674_n4_β:
jmp s_ent_γ
jmp s_ent_γ
s_ent_β:
jmp s_ent_ω
s_ent_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ent_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_e_c0_α:
#=======================================================================================================================
    .global s_e_c0_α
    .global s_e_c0_β
    .global s_e_c0_γ
    .global s_e_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_e_c0_α_body:
# IR_MATCH_RTAB
bb418_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat680_ω
 mov r14d, ecx
 jmp xcat680_γ
 xcat680_left_β:
 jmp xcat680_ω
xcat680_γ:
# IR_LIT
bb419_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt682_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt682_c0_ω
 add r14d, 2
 jmp xcat680_mid1_γ
 alt682_c0_β:
 sub r14d, 2
 jmp alt682_c0_ω
alt682_c0_ω:
# IR_LIT
bb420_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt682_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt682_c1_ω
 add r14d, 2
 jmp xcat680_mid1_γ
 alt682_c1_β:
 sub r14d, 2
 jmp alt682_c1_ω
alt682_c1_ω:
# IR_LIT
bb421_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt682_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt682_c2_ω
 add r14d, 2
 jmp xcat680_mid1_γ
 alt682_c2_β:
 sub r14d, 2
 jmp alt682_c2_ω
alt682_c2_ω:
 jmp xcat680_left_β
xcat680_mid1_β:
 jmp alt682_c0_β
xcat680_mid1_γ:
# IR_MATCH_RPOS
bb423_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat680_mid1_β
 jmp s_e_c0_γ
 xcat680_mid2_β:
 jmp xcat680_mid1_β
xcat680_right_ω:
 jmp xcat680_left_β
s_e_c0_β:
 jmp xcat680_mid2_β
xcat680_ω:
 jmp s_e_c0_ω
s_e_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_e_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_e_α:
#=======================================================================================================================
    .global s_e_α
    .global s_e_β
    .global s_e_γ
    .global s_e_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_e_α_body:
snoch689_n0_α:
# IR_LIT_scalar
bb425_α:
 jmp snoch689_n1_α
 snoch689_n0_β:
 jmp snoch689_n2_α
snoch689_n1_α:
bb426_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S50]
 call rt_gvar_assign_str@PLT
 jmp snoch689_n2_α
 snoch689_n1_β:
 jmp snoch689_n2_α
snoch689_n2_α:
# IR_VAR
bb427_α:
 mov rdi, qword ptr [rip + .Lx693_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch689_n3_α
 snoch689_n2_β:
 jmp snoch689_n4_α
.Lx693_0:
 .quad .Lx693_0_s
.Lx693_0_s:
 .string ""
snoch689_n3_α:
bb428_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S51]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch689_n4_α
 snoch689_n3_β:
 jmp snoch689_n4_α
snoch689_n4_α:
snoch689_n4_β:
jmp s_e_γ
jmp s_e_γ
s_e_β:
jmp s_e_ω
s_e_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_e_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ous_c0_α:
#=======================================================================================================================
    .global s_ous_c0_α
    .global s_ous_c0_β
    .global s_ous_c0_γ
    .global s_ous_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ous_c0_α_body:
# IR_MATCH_RTAB
bb429_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat695_ω
 mov r14d, ecx
 jmp xcat695_γ
 xcat695_left_β:
 jmp xcat695_ω
xcat695_γ:
# IR_LIT
bb430_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt697_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt697_c0_ω
 add r14d, 2
 jmp xcat695_mid1_γ
 alt697_c0_β:
 sub r14d, 2
 jmp alt697_c0_ω
alt697_c0_ω:
# IR_LIT
bb431_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt697_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt697_c1_ω
 add r14d, 2
 jmp xcat695_mid1_γ
 alt697_c1_β:
 sub r14d, 2
 jmp alt697_c1_ω
alt697_c1_ω:
# IR_LIT
bb432_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt697_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt697_c2_ω
 add r14d, 2
 jmp xcat695_mid1_γ
 alt697_c2_β:
 sub r14d, 2
 jmp alt697_c2_ω
alt697_c2_ω:
 jmp xcat695_left_β
xcat695_mid1_β:
 jmp alt697_c0_β
xcat695_mid1_γ:
# IR_MATCH_RPOS
bb434_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat695_mid1_β
 jmp s_ous_c0_γ
 xcat695_mid2_β:
 jmp xcat695_mid1_β
xcat695_right_ω:
 jmp xcat695_left_β
s_ous_c0_β:
 jmp xcat695_mid2_β
xcat695_ω:
 jmp s_ous_c0_ω
s_ous_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ous_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ous_α:
#=======================================================================================================================
    .global s_ous_α
    .global s_ous_β
    .global s_ous_γ
    .global s_ous_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ous_α_body:
snoch704_n0_α:
# IR_LIT_scalar
bb436_α:
 jmp snoch704_n1_α
 snoch704_n0_β:
 jmp snoch704_n2_α
snoch704_n1_α:
bb437_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S52]
 call rt_gvar_assign_str@PLT
 jmp snoch704_n2_α
 snoch704_n1_β:
 jmp snoch704_n2_α
snoch704_n2_α:
# IR_VAR
bb438_α:
 mov rdi, qword ptr [rip + .Lx708_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch704_n3_α
 snoch704_n2_β:
 jmp snoch704_n4_α
.Lx708_0:
 .quad .Lx708_0_s
.Lx708_0_s:
 .string ""
snoch704_n3_α:
bb439_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S53]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch704_n4_α
 snoch704_n3_β:
 jmp snoch704_n4_α
snoch704_n4_α:
snoch704_n4_β:
jmp s_ous_γ
jmp s_ous_γ
s_ous_β:
jmp s_ous_ω
s_ous_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ous_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ive_c0_α:
#=======================================================================================================================
    .global s_ive_c0_α
    .global s_ive_c0_β
    .global s_ive_c0_γ
    .global s_ive_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ive_c0_α_body:
# IR_MATCH_RTAB
bb440_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat710_ω
 mov r14d, ecx
 jmp xcat710_γ
 xcat710_left_β:
 jmp xcat710_ω
xcat710_γ:
# IR_LIT
bb441_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt712_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt712_c0_ω
 add r14d, 2
 jmp xcat710_mid1_γ
 alt712_c0_β:
 sub r14d, 2
 jmp alt712_c0_ω
alt712_c0_ω:
# IR_LIT
bb442_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt712_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt712_c1_ω
 add r14d, 2
 jmp xcat710_mid1_γ
 alt712_c1_β:
 sub r14d, 2
 jmp alt712_c1_ω
alt712_c1_ω:
# IR_LIT
bb443_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt712_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt712_c2_ω
 add r14d, 2
 jmp xcat710_mid1_γ
 alt712_c2_β:
 sub r14d, 2
 jmp alt712_c2_ω
alt712_c2_ω:
 jmp xcat710_left_β
xcat710_mid1_β:
 jmp alt712_c0_β
xcat710_mid1_γ:
# IR_MATCH_RPOS
bb445_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat710_mid1_β
 jmp s_ive_c0_γ
 xcat710_mid2_β:
 jmp xcat710_mid1_β
xcat710_right_ω:
 jmp xcat710_left_β
s_ive_c0_β:
 jmp xcat710_mid2_β
xcat710_ω:
 jmp s_ive_c0_ω
s_ive_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ive_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ive_α:
#=======================================================================================================================
    .global s_ive_α
    .global s_ive_β
    .global s_ive_γ
    .global s_ive_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ive_α_body:
snoch719_n0_α:
# IR_LIT_scalar
bb447_α:
 jmp snoch719_n1_α
 snoch719_n0_β:
 jmp snoch719_n2_α
snoch719_n1_α:
bb448_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S54]
 call rt_gvar_assign_str@PLT
 jmp snoch719_n2_α
 snoch719_n1_β:
 jmp snoch719_n2_α
snoch719_n2_α:
# IR_VAR
bb449_α:
 mov rdi, qword ptr [rip + .Lx723_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch719_n3_α
 snoch719_n2_β:
 jmp snoch719_n4_α
.Lx723_0:
 .quad .Lx723_0_s
.Lx723_0_s:
 .string ""
snoch719_n3_α:
bb450_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S55]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch719_n4_α
 snoch719_n3_β:
 jmp snoch719_n4_α
snoch719_n4_α:
snoch719_n4_β:
jmp s_ive_γ
jmp s_ive_γ
s_ive_β:
jmp s_ive_ω
s_ive_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ive_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ful_c0_α:
#=======================================================================================================================
    .global s_ful_c0_α
    .global s_ful_c0_β
    .global s_ful_c0_γ
    .global s_ful_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ful_c0_α_body:
# IR_MATCH_RTAB
bb451_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat725_ω
 mov r14d, ecx
 jmp xcat725_γ
 xcat725_left_β:
 jmp xcat725_ω
xcat725_γ:
# IR_LIT
bb452_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt727_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt727_c0_ω
 add r14d, 2
 jmp xcat725_mid1_γ
 alt727_c0_β:
 sub r14d, 2
 jmp alt727_c0_ω
alt727_c0_ω:
# IR_LIT
bb453_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt727_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt727_c1_ω
 add r14d, 2
 jmp xcat725_mid1_γ
 alt727_c1_β:
 sub r14d, 2
 jmp alt727_c1_ω
alt727_c1_ω:
# IR_LIT
bb454_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt727_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt727_c2_ω
 add r14d, 2
 jmp xcat725_mid1_γ
 alt727_c2_β:
 sub r14d, 2
 jmp alt727_c2_ω
alt727_c2_ω:
 jmp xcat725_left_β
xcat725_mid1_β:
 jmp alt727_c0_β
xcat725_mid1_γ:
# IR_MATCH_RPOS
bb456_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat725_mid1_β
 jmp s_ful_c0_γ
 xcat725_mid2_β:
 jmp xcat725_mid1_β
xcat725_right_ω:
 jmp xcat725_left_β
s_ful_c0_β:
 jmp xcat725_mid2_β
xcat725_ω:
 jmp s_ful_c0_ω
s_ful_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ful_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ful_α:
#=======================================================================================================================
    .global s_ful_α
    .global s_ful_β
    .global s_ful_γ
    .global s_ful_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ful_α_body:
snoch734_n0_α:
# IR_LIT_scalar
bb458_α:
 jmp snoch734_n1_α
 snoch734_n0_β:
 jmp snoch734_n2_α
snoch734_n1_α:
bb459_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S56]
 call rt_gvar_assign_str@PLT
 jmp snoch734_n2_α
 snoch734_n1_β:
 jmp snoch734_n2_α
snoch734_n2_α:
# IR_VAR
bb460_α:
 mov rdi, qword ptr [rip + .Lx738_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch734_n3_α
 snoch734_n2_β:
 jmp snoch734_n4_α
.Lx738_0:
 .quad .Lx738_0_s
.Lx738_0_s:
 .string ""
snoch734_n3_α:
bb461_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S57]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch734_n4_α
 snoch734_n3_β:
 jmp snoch734_n4_α
snoch734_n4_α:
snoch734_n4_β:
jmp s_ful_γ
jmp s_ful_γ
s_ful_β:
jmp s_ful_ω
s_ful_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ful_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_log_c0_α:
#=======================================================================================================================
    .global s_log_c0_α
    .global s_log_c0_β
    .global s_log_c0_γ
    .global s_log_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_log_c0_α_body:
# IR_MATCH_RTAB
bb462_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat740_ω
 mov r14d, ecx
 jmp xcat740_γ
 xcat740_left_β:
 jmp xcat740_ω
xcat740_γ:
# IR_LIT
bb463_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt742_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt742_c0_ω
 add r14d, 2
 jmp xcat740_mid1_γ
 alt742_c0_β:
 sub r14d, 2
 jmp alt742_c0_ω
alt742_c0_ω:
# IR_LIT
bb464_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt742_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt742_c1_ω
 add r14d, 2
 jmp xcat740_mid1_γ
 alt742_c1_β:
 sub r14d, 2
 jmp alt742_c1_ω
alt742_c1_ω:
# IR_LIT
bb465_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt742_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt742_c2_ω
 add r14d, 2
 jmp xcat740_mid1_γ
 alt742_c2_β:
 sub r14d, 2
 jmp alt742_c2_ω
alt742_c2_ω:
 jmp xcat740_left_β
xcat740_mid1_β:
 jmp alt742_c0_β
xcat740_mid1_γ:
# IR_MATCH_RPOS
bb467_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat740_mid1_β
 jmp s_log_c0_γ
 xcat740_mid2_β:
 jmp xcat740_mid1_β
xcat740_right_ω:
 jmp xcat740_left_β
s_log_c0_β:
 jmp xcat740_mid2_β
xcat740_ω:
 jmp s_log_c0_ω
s_log_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_log_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_log_α:
#=======================================================================================================================
    .global s_log_α
    .global s_log_β
    .global s_log_γ
    .global s_log_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_log_α_body:
snoch749_n0_α:
# IR_LIT_scalar
bb469_α:
 jmp snoch749_n1_α
 snoch749_n0_β:
 jmp snoch749_n2_α
snoch749_n1_α:
bb470_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S58]
 call rt_gvar_assign_str@PLT
 jmp snoch749_n2_α
 snoch749_n1_β:
 jmp snoch749_n2_α
snoch749_n2_α:
# IR_VAR
bb471_α:
 mov rdi, qword ptr [rip + .Lx753_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch749_n3_α
 snoch749_n2_β:
 jmp snoch749_n4_α
.Lx753_0:
 .quad .Lx753_0_s
.Lx753_0_s:
 .string ""
snoch749_n3_α:
bb472_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S59]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch749_n4_α
 snoch749_n3_β:
 jmp snoch749_n4_α
snoch749_n4_α:
snoch749_n4_β:
jmp s_log_γ
jmp s_log_γ
s_log_β:
jmp s_log_ω
s_log_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_log_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ic_c0_α:
#=======================================================================================================================
    .global s_ic_c0_α
    .global s_ic_c0_β
    .global s_ic_c0_γ
    .global s_ic_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ic_c0_α_body:
# IR_MATCH_RTAB
bb473_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat755_ω
 mov r14d, ecx
 jmp xcat755_γ
 xcat755_left_β:
 jmp xcat755_ω
xcat755_γ:
# IR_LIT
bb474_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt757_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt757_c0_ω
 add r14d, 2
 jmp xcat755_mid1_γ
 alt757_c0_β:
 sub r14d, 2
 jmp alt757_c0_ω
alt757_c0_ω:
# IR_LIT
bb475_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt757_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt757_c1_ω
 add r14d, 2
 jmp xcat755_mid1_γ
 alt757_c1_β:
 sub r14d, 2
 jmp alt757_c1_ω
alt757_c1_ω:
# IR_LIT
bb476_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt757_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt757_c2_ω
 add r14d, 2
 jmp xcat755_mid1_γ
 alt757_c2_β:
 sub r14d, 2
 jmp alt757_c2_ω
alt757_c2_ω:
 jmp xcat755_left_β
xcat755_mid1_β:
 jmp alt757_c0_β
xcat755_mid1_γ:
# IR_MATCH_RPOS
bb478_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat755_mid1_β
 jmp s_ic_c0_γ
 xcat755_mid2_β:
 jmp xcat755_mid1_β
xcat755_right_ω:
 jmp xcat755_left_β
s_ic_c0_β:
 jmp xcat755_mid2_β
xcat755_ω:
 jmp s_ic_c0_ω
s_ic_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ic_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_ic_α:
#=======================================================================================================================
    .global s_ic_α
    .global s_ic_β
    .global s_ic_γ
    .global s_ic_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_ic_α_body:
snoch764_n0_α:
# IR_LIT_scalar
bb480_α:
 jmp snoch764_n1_α
 snoch764_n0_β:
 jmp snoch764_n2_α
snoch764_n1_α:
bb481_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S60]
 call rt_gvar_assign_str@PLT
 jmp snoch764_n2_α
 snoch764_n1_β:
 jmp snoch764_n2_α
snoch764_n2_α:
# IR_VAR
bb482_α:
 mov rdi, qword ptr [rip + .Lx768_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch764_n3_α
 snoch764_n2_β:
 jmp snoch764_n4_α
.Lx768_0:
 .quad .Lx768_0_s
.Lx768_0_s:
 .string ""
snoch764_n3_α:
bb483_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S61]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch764_n4_α
 snoch764_n3_β:
 jmp snoch764_n4_α
snoch764_n4_α:
snoch764_n4_β:
jmp s_ic_γ
jmp s_ic_γ
s_ic_β:
jmp s_ic_ω
s_ic_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_ic_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_l_c0_α:
#=======================================================================================================================
    .global s_l_c0_α
    .global s_l_c0_β
    .global s_l_c0_γ
    .global s_l_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_l_c0_α_body:
# IR_MATCH_RTAB
bb484_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat770_ω
 mov r14d, ecx
 jmp xcat770_γ
 xcat770_left_β:
 jmp xcat770_ω
xcat770_γ:
# IR_LIT
bb485_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt772_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt772_c0_ω
 add r14d, 2
 jmp xcat770_mid1_γ
 alt772_c0_β:
 sub r14d, 2
 jmp alt772_c0_ω
alt772_c0_ω:
# IR_LIT
bb486_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt772_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt772_c1_ω
 add r14d, 2
 jmp xcat770_mid1_γ
 alt772_c1_β:
 sub r14d, 2
 jmp alt772_c1_ω
alt772_c1_ω:
# IR_LIT
bb487_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt772_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt772_c2_ω
 add r14d, 2
 jmp xcat770_mid1_γ
 alt772_c2_β:
 sub r14d, 2
 jmp alt772_c2_ω
alt772_c2_ω:
 jmp xcat770_left_β
xcat770_mid1_β:
 jmp alt772_c0_β
xcat770_mid1_γ:
# IR_MATCH_RPOS
bb489_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat770_mid1_β
 jmp s_l_c0_γ
 xcat770_mid2_β:
 jmp xcat770_mid1_β
xcat770_right_ω:
 jmp xcat770_left_β
s_l_c0_β:
 jmp xcat770_mid2_β
xcat770_ω:
 jmp s_l_c0_ω
s_l_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_l_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
s_l_α:
#=======================================================================================================================
    .global s_l_α
    .global s_l_β
    .global s_l_γ
    .global s_l_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
s_l_α_body:
snoch779_n0_α:
# IR_LIT_scalar
bb491_α:
 jmp snoch779_n1_α
 snoch779_n0_β:
 jmp snoch779_n2_α
snoch779_n1_α:
bb492_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S62]
 call rt_gvar_assign_str@PLT
 jmp snoch779_n2_α
 snoch779_n1_β:
 jmp snoch779_n2_α
snoch779_n2_α:
# IR_VAR
bb493_α:
 mov rdi, qword ptr [rip + .Lx783_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch779_n3_α
 snoch779_n2_β:
 jmp snoch779_n4_α
.Lx783_0:
 .quad .Lx783_0_s
.Lx783_0_s:
 .string ""
snoch779_n3_α:
bb494_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S63]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch779_n4_α
 snoch779_n3_β:
 jmp snoch779_n4_α
snoch779_n4_α:
snoch779_n4_β:
jmp s_l_γ
jmp s_l_γ
s_l_β:
jmp s_l_ω
s_l_γ:
mov eax, 1
xor edx, edx
pop r12
ret
s_l_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
a_s1ab_cleanup_c0_α:
#=======================================================================================================================
    .global a_s1ab_cleanup_c0_α
    .global a_s1ab_cleanup_c0_β
    .global a_s1ab_cleanup_c0_γ
    .global a_s1ab_cleanup_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
a_s1ab_cleanup_c0_α_body:
# IR_MATCH_RTAB
bb495_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat785_ω
 mov r14d, ecx
 jmp xcat785_γ
 xcat785_left_β:
 jmp xcat785_ω
xcat785_γ:
# IR_LIT
bb496_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt787_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt787_c0_ω
 add r14d, 2
 jmp xcat785_mid1_γ
 alt787_c0_β:
 sub r14d, 2
 jmp alt787_c0_ω
alt787_c0_ω:
# IR_LIT
bb497_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt787_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt787_c1_ω
 add r14d, 2
 jmp xcat785_mid1_γ
 alt787_c1_β:
 sub r14d, 2
 jmp alt787_c1_ω
alt787_c1_ω:
# IR_LIT
bb498_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt787_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt787_c2_ω
 add r14d, 2
 jmp xcat785_mid1_γ
 alt787_c2_β:
 sub r14d, 2
 jmp alt787_c2_ω
alt787_c2_ω:
 jmp xcat785_left_β
xcat785_mid1_β:
 jmp alt787_c0_β
xcat785_mid1_γ:
# IR_MATCH_RPOS
bb500_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat785_mid1_β
 jmp a_s1ab_cleanup_c0_γ
 xcat785_mid2_β:
 jmp xcat785_mid1_β
xcat785_right_ω:
 jmp xcat785_left_β
a_s1ab_cleanup_c0_β:
 jmp xcat785_mid2_β
xcat785_ω:
 jmp a_s1ab_cleanup_c0_ω
a_s1ab_cleanup_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
a_s1ab_cleanup_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
a_s1ab_cleanup_α:
#=======================================================================================================================
    .global a_s1ab_cleanup_α
    .global a_s1ab_cleanup_β
    .global a_s1ab_cleanup_γ
    .global a_s1ab_cleanup_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
a_s1ab_cleanup_α_body:
snoch794_n0_α:
# IR_VAR
bb502_α:
 mov rdi, qword ptr [rip + .Lx797_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg795_done
 xgvarg795_β:
 jmp snoch794_n2_α
.Lx797_0:
 .quad .Lx797_0_s
.Lx797_0_s:
 .string "stem"
xgvarg795_done:
bb503_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn799: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn799]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch794_n2_α
 jmp snoch794_n1_α
snoch794_n0_β:
 jmp snoch794_n2_α
snoch794_n1_α:
bb504_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch794_n2_α
 snoch794_n1_β:
 jmp snoch794_n2_α
snoch794_n2_α:
# IR_REF_INVARIANT frozen-pattern store
bb505_α:
 lea rdi, [rip + .S64]
 lea rsi, [rip + a_s1ab_cleanup_c0_α]
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_pat@PLT
 mov rsp, rbx
 pop rbx
 jmp snoch794_n3_α
snoch794_n2_β:
 jmp snoch794_n3_α
snoch794_n3_α:
# IR_VAR
bb506_α:
 mov rdi, qword ptr [rip + .Lx803_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch794_n4_α
 snoch794_n3_β:
 jmp snoch794_n5_α
.Lx803_0:
 .quad .Lx803_0_s
.Lx803_0_s:
 .string "stem"
snoch794_n4_α:
# IR_SUBJECT
bb507_α:
 lea rdi, [rip + .S23]
 lea rsi, [r12 + 80]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan804_sγ
 xscan804_sβ:
 jmp snoch794_n5_α
xscan804_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb508_α:
 mov r13, qword ptr [r12 + 80]
 mov r15d, dword ptr [r12 + 88]
 mov dword ptr [r12 + 96], 0
 lea r10, [r12 + 104]
 jmp smatch807_retry
 snoch794_n4_β:
 jmp xscan804_dfail
smatch807_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 96]
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
bb510_α:
 lea rax, [rip + a_s1ab_cleanup_c0_α]
 test rax, rax
 jz .Lx810_0
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
 jne smatch807_adv
 jmp xscan804_dok
.Lx810_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch807_adv
 mov r14d, eax
 jmp xscan804_dok
 smatch807_elemb:
 jmp smatch807_adv
smatch807_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 96], 1
 mov eax, dword ptr [r12 + 96]
 cmp eax, r15d
 jg xscan804_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan804_dfail
 jmp smatch807_retry
xscan804_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch794_n6_α
xscan804_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch794_n5_α
snoch794_n5_α:
# IR_VAR
bb512_α:
 mov rdi, qword ptr [rip + .Lx814_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg812_done
 xgvarg812_β:
 jmp snoch794_n8_α
.Lx814_0:
 .quad .Lx814_0_s
.Lx814_0_s:
 .string "L"
xgvarg812_done:
bb513_α:
# BOX IR_CALL doublec(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn816: .string "doublec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn816]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch794_n8_α
 jmp snoch794_n7_α
snoch794_n5_β:
 jmp snoch794_n8_α
snoch794_n6_α:
# IR_LIT_scalar
bb514_α:
 jmp snoch794_n9_α
 snoch794_n6_β:
 jmp snoch794_n10_α
snoch794_n7_α:
# IR_VAR
bb515_α:
 mov rdi, qword ptr [rip + .Lx820_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xgvarg818_done
 xgvarg818_β:
 jmp snoch794_n12_α
.Lx820_0:
 .quad .Lx820_0_s
.Lx820_0_s:
 .string "stem"
xgvarg818_done:
# IR_VAR
bb516_α:
 mov rdi, qword ptr [rip + .Lx823_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg821_done
 xgvarg821_β:
 jmp snoch794_n12_α
.Lx823_0:
 .quad .Lx823_0_s
.Lx823_0_s:
 .string "L"
xgvarg821_done:
# IR_LIT_I
bb517_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx825_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg824_done
 xgvarg824_β:
 jmp snoch794_n12_α
.Lx825_0:
 .quad 1
xgvarg824_done:
bb518_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+160] -> [r12+224]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+256]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lbynamefn827: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn827]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch794_n12_α
 jmp snoch794_n11_α
snoch794_n7_β:
 jmp snoch794_n12_α
snoch794_n8_α:
bb519_α:
# BOX IR_CALL m(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
  .section .rodata
  .Lprocfn830: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn830]
 lea rsi, [r12 + 272]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je snoch794_n14_α
 jmp xgvarg828_done
xgvarg828_β:
 jmp snoch794_n14_α
xgvarg828_done:
# IR_LIT_I
bb520_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx832_0]
 mov qword ptr [r12 + 296], rax
 jmp xgvarg831_done
 xgvarg831_β:
 jmp snoch794_n14_α
.Lx832_0:
 .quad 1
xgvarg831_done:
bb521_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
  .section .rodata
  .Lcallfn834: .string "m"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn834]
 lea rsi, [r12 + 352]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 320], rax
 mov rcx, 1
 mov qword ptr [r12 + 304], 0
 mov qword ptr [r12 + 312], 0
 mov rax, qword ptr [r12 + 320]
 cmp rax, rcx
 jne snoch794_n14_α
 jmp snoch794_n13_α
 snoch794_n8_β:
 jmp snoch794_n14_α
snoch794_n9_α:
bb522_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S50]
 call rt_gvar_assign_str@PLT
 jmp snoch794_n10_α
 snoch794_n9_β:
 jmp snoch794_n10_α
snoch794_n10_α:
# IR_VAR
bb523_α:
 mov rdi, qword ptr [rip + .Lx837_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch794_n15_α
 snoch794_n10_β:
 jmp snoch794_n16_α
.Lx837_0:
 .quad .Lx837_0_s
.Lx837_0_s:
 .string ""
snoch794_n11_α:
bb524_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S19]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch794_n12_α
 snoch794_n11_β:
 jmp snoch794_n12_α
snoch794_n12_α:
# IR_VAR
bb525_α:
 mov rdi, qword ptr [rip + .Lx840_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch794_n17_α
 snoch794_n12_β:
 jmp snoch794_n18_α
.Lx840_0:
 .quad .Lx840_0_s
.Lx840_0_s:
 .string "last"
snoch794_n13_α:
# IR_VAR
bb526_α:
 mov rdi, qword ptr [rip + .Lx843_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xgvarg841_done
 xgvarg841_β:
 jmp snoch794_n14_α
.Lx843_0:
 .quad .Lx843_0_s
.Lx843_0_s:
 .string "L"
xgvarg841_done:
bb527_α:
# BOX IR_CALL cvc(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+400] -> [r12+432]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lprocfn845: .string "cvc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn845]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je snoch794_n14_α
 jmp snoch794_n19_α
snoch794_n13_β:
 jmp snoch794_n14_α
snoch794_n14_α:
# IR_LIT_scalar
bb528_α:
 jmp snoch794_n20_α
 snoch794_n14_β:
 jmp snoch794_n10_α
snoch794_n15_α:
bb529_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S65]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_var@PLT
 jmp snoch794_n16_α
 snoch794_n15_β:
 jmp snoch794_n16_α
snoch794_n16_α:
snoch794_n16_β:
jmp a_s1ab_cleanup_γ
jmp a_s1ab_cleanup_γ
snoch794_n17_α:
# IR_SUBJECT
bb530_α:
 lea rdi, [rip + .S19]
 lea rsi, [r12 + 448]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan848_sγ
 xscan848_sβ:
 jmp snoch794_n18_α
xscan848_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb531_α:
 mov r13, qword ptr [r12 + 448]
 mov r15d, dword ptr [r12 + 456]
 mov dword ptr [r12 + 464], 0
 lea r10, [r12 + 472]
 jmp smatch851_retry
 snoch794_n17_β:
 jmp xscan848_dfail
smatch851_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 464]
# IR_MATCH_ANY
bb533_α:
 mov eax, r14d
 cmp eax, r15d
 jge smatch851_adv
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S66]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je smatch851_adv
 add r14d, 1
 jmp xscan848_dok
 smatch851_elemb:
 sub r14d, 1
 jmp smatch851_adv
smatch851_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 464], 1
 mov eax, dword ptr [r12 + 464]
 cmp eax, r15d
 jg xscan848_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan848_dfail
 jmp smatch851_retry
xscan848_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch794_n8_α
xscan848_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch794_n18_α
snoch794_n18_α:
# IR_VAR
bb535_α:
 mov rdi, qword ptr [rip + .Lx858_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xgvarg856_done
 xgvarg856_β:
 jmp snoch794_n22_α
.Lx858_0:
 .quad .Lx858_0_s
.Lx858_0_s:
 .string "stem"
xgvarg856_done:
# IR_LIT_I
bb536_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx860_0]
 mov qword ptr [r12 + 504], rax
 jmp xgvarg859_done
 xgvarg859_β:
 jmp snoch794_n22_α
.Lx860_0:
 .quad 1
xgvarg859_done:
xgvarg861_done:
bb537_α:
# BOX IR_CALL SUBSTR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+480] -> [r12+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+544]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 552], rax
# marshal arg2 = inline gvar-arith subexpr -> [r12+560]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 576], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 576]
 sub rax, rcx
 mov qword ptr [r12 + 560], 6
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lbynamefn863: .string "SUBSTR"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn863]
 lea rsi, [r12 + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je snoch794_n22_α
 jmp snoch794_n21_α
snoch794_n18_β:
 jmp snoch794_n22_α
snoch794_n19_α:
# IR_LIT_scalar
bb538_α:
 jmp snoch794_n23_α
 snoch794_n19_β:
 jmp snoch794_n10_α
snoch794_n20_α:
bb539_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch794_n10_α
 snoch794_n20_β:
 jmp snoch794_n10_α
snoch794_n21_α:
bb540_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S23]
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_gvar_assign_descr@PLT
 jmp snoch794_n22_α
 snoch794_n21_β:
 jmp snoch794_n22_α
snoch794_n22_α:
# IR_LIT_scalar
bb541_α:
 jmp snoch794_n24_α
 snoch794_n22_β:
 jmp snoch794_n10_α
snoch794_n23_α:
bb542_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S50]
 call rt_gvar_assign_str@PLT
 jmp snoch794_n10_α
 snoch794_n23_β:
 jmp snoch794_n10_α
snoch794_n24_α:
bb543_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch794_n10_α
 snoch794_n24_β:
 jmp snoch794_n10_α
a_s1ab_cleanup_β:
jmp a_s1ab_cleanup_ω
a_s1ab_cleanup_γ:
mov eax, 1
xor edx, edx
pop r12
ret
a_s1ab_cleanup_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
stemmer_c0_α:
#=======================================================================================================================
    .global stemmer_c0_α
    .global stemmer_c0_β
    .global stemmer_c0_γ
    .global stemmer_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
stemmer_c0_α_body:
# IR_MATCH_RTAB
bb544_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat870_ω
 mov r14d, ecx
 jmp xcat870_γ
 xcat870_left_β:
 jmp xcat870_ω
xcat870_γ:
# IR_LIT
bb545_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt872_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt872_c0_ω
 add r14d, 2
 jmp xcat870_mid1_γ
 alt872_c0_β:
 sub r14d, 2
 jmp alt872_c0_ω
alt872_c0_ω:
# IR_LIT
bb546_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt872_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt872_c1_ω
 add r14d, 2
 jmp xcat870_mid1_γ
 alt872_c1_β:
 sub r14d, 2
 jmp alt872_c1_ω
alt872_c1_ω:
# IR_LIT
bb547_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt872_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt872_c2_ω
 add r14d, 2
 jmp xcat870_mid1_γ
 alt872_c2_β:
 sub r14d, 2
 jmp alt872_c2_ω
alt872_c2_ω:
 jmp xcat870_left_β
xcat870_mid1_β:
 jmp alt872_c0_β
xcat870_mid1_γ:
# IR_MATCH_RPOS
bb549_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat870_mid1_β
 jmp stemmer_c0_γ
 xcat870_mid2_β:
 jmp xcat870_mid1_β
xcat870_right_ω:
 jmp xcat870_left_β
stemmer_c0_β:
 jmp xcat870_mid2_β
xcat870_ω:
 jmp stemmer_c0_ω
stemmer_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
stemmer_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
stemmer_α:
#=======================================================================================================================
    .global stemmer_α
    .global stemmer_β
    .global stemmer_γ
    .global stemmer_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
stemmer_α_body:
snoch879_n0_α:
# IR_VAR
bb551_α:
 mov rdi, qword ptr [rip + .Lx883_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg881_done
 xgvarg881_β:
 jmp snoch879_n2_α
.Lx883_0:
 .quad .Lx883_0_s
.Lx883_0_s:
 .string "token"
xgvarg881_done:
bb552_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn885: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn885]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch879_n2_α
 jmp xgvarg880_done
xgvarg880_β:
 jmp snoch879_n2_α
xgvarg880_done:
# IR_LIT_I
bb553_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx887_0]
 mov qword ptr [r12 + 72], rax
 jmp xgvarg886_done
 xgvarg886_β:
 jmp snoch879_n2_α
.Lx887_0:
 .quad 2
xgvarg886_done:
bb554_α:
# BOX IR_CALL LE(...) inline integer relop [four-port, FAIL->ω]
# marshal arg0 = gvar NV_GET -> [r12+128]
   lea rdi, [rip + .S67]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
  .section .rodata
  .Lcallfn889: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn889]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 96], rax
 mov rcx, 2
 mov qword ptr [r12 + 80], 0
 mov qword ptr [r12 + 88], 0
 mov rax, qword ptr [r12 + 96]
 cmp rax, rcx
 jg snoch879_n2_α
 jmp snoch879_n1_α
 snoch879_n0_β:
 jmp snoch879_n2_α
snoch879_n1_α:
# IR_VAR
bb555_α:
 mov rdi, qword ptr [rip + .Lx891_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch879_n3_α
 snoch879_n1_β:
 jmp snoch879_n4_α
.Lx891_0:
 .quad .Lx891_0_s
.Lx891_0_s:
 .string "token"
snoch879_n2_α:
# IR_VAR
bb556_α:
 mov rdi, qword ptr [rip + .Lx894_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xgvarg892_done
 xgvarg892_β:
 jmp snoch879_n6_α
.Lx894_0:
 .quad .Lx894_0_s
.Lx894_0_s:
 .string "token"
xgvarg892_done:
# IR_KEYWORD_read
bb557_α:
 mov rdi, qword ptr [rip + .Lx896_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg895_done
 xgvarg895_β:
 jmp snoch879_n6_α
.Lx896_0:
 .quad .Lx896_0_s
.Lx896_0_s:
 .string "UCASE"
xgvarg895_done:
# IR_VAR
bb558_α:
 mov rdi, qword ptr [rip + .Lx899_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xgvarg897_done
 xgvarg897_β:
 jmp snoch879_n6_α
.Lx899_0:
 .quad .Lx899_0_s
.Lx899_0_s:
 .string "LC"
xgvarg897_done:
bb559_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+160] -> [r12+224]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+256]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lbynamefn901: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn901]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch879_n6_α
 jmp snoch879_n5_α
snoch879_n2_β:
 jmp snoch879_n6_α
snoch879_n3_α:
bb560_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S68]
 lea rsi, [rip + .S67]
 call rt_gvar_assign_var@PLT
 jmp snoch879_n4_α
 snoch879_n3_β:
 jmp snoch879_n4_α
snoch879_n4_α:
snoch879_n4_β:
jmp stemmer_γ
jmp stemmer_γ
snoch879_n5_α:
bb561_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S67]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_gvar_assign_descr@PLT
 jmp snoch879_n6_α
 snoch879_n5_β:
 jmp snoch879_n6_α
snoch879_n6_α:
# IR_LIT_scalar
bb562_α:
 jmp snoch879_n7_α
 snoch879_n6_β:
 jmp snoch879_n8_α
snoch879_n7_α:
bb563_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n8_α
 snoch879_n7_β:
 jmp snoch879_n8_α
snoch879_n8_α:
# IR_VAR
bb564_α:
 mov rdi, qword ptr [rip + .Lx907_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch879_n9_α
 snoch879_n8_β:
 jmp snoch879_n10_α
.Lx907_0:
 .quad .Lx907_0_s
.Lx907_0_s:
 .string "token"
snoch879_n9_α:
# IR_SUBJECT
bb565_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 288]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan908_sγ
 xscan908_sβ:
 jmp snoch879_n10_α
xscan908_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb566_α:
 mov r13, qword ptr [r12 + 288]
 mov r15d, dword ptr [r12 + 296]
 mov dword ptr [r12 + 304], 0
 lea r10, [r12 + 312]
 jmp smatch911_retry
 snoch879_n9_β:
 jmp xscan908_dfail
smatch911_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 304]
# IR_MATCH_DEFER
bb568_α:
 lea rdi, [rip + .S70]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx914_0
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
 jne smatch911_adv
 jmp xscan908_dok
.Lx914_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch911_adv
 mov r14d, eax
 jmp xscan908_dok
 smatch911_elemb:
 jmp smatch911_adv
smatch911_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 304], 1
 mov eax, dword ptr [r12 + 304]
 cmp eax, r15d
 jg xscan908_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan908_dfail
 jmp smatch911_retry
xscan908_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n11_α
xscan908_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n10_α
snoch879_n10_α:
# IR_LIT_scalar
bb570_α:
 jmp snoch879_n12_α
 snoch879_n10_β:
 jmp snoch879_n13_α
snoch879_n11_α:
# IR_VAR
bb571_α:
 mov rdi, qword ptr [rip + .Lx919_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xgvarg917_done
 xgvarg917_β:
 jmp snoch879_n10_α
.Lx919_0:
 .quad .Lx919_0_s
.Lx919_0_s:
 .string "target"
xgvarg917_done:
# IR_LIT_S
bb572_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx921_0]
 mov qword ptr [r12 + 344], rax
 jmp xgvarg920_done
 xgvarg920_β:
 jmp snoch879_n10_α
.Lx921_0:
 .quad .Lx921_0_s
.Lx921_0_s:
 .string "UNSET"
xgvarg920_done:
bb573_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+320] -> [r12+368]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+384]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lbynamefn923: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn923]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je snoch879_n10_α
 jmp snoch879_n14_α
snoch879_n11_β:
 jmp snoch879_n10_α
snoch879_n12_α:
bb574_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n13_α
 snoch879_n12_β:
 jmp snoch879_n13_α
snoch879_n13_α:
# IR_VAR
bb575_α:
 mov rdi, qword ptr [rip + .Lx926_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch879_n15_α
 snoch879_n13_β:
 jmp snoch879_n16_α
.Lx926_0:
 .quad .Lx926_0_s
.Lx926_0_s:
 .string "token"
snoch879_n14_α:
bb576_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 416], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 424], rax
 mov dword ptr [r12 + 432], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 440], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 416]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n10_α
 snoch879_n14_β:
 jmp snoch879_n10_α
snoch879_n15_α:
# IR_SUBJECT
bb577_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 448]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan928_sγ
 xscan928_sβ:
 jmp snoch879_n16_α
xscan928_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb578_α:
 mov r13, qword ptr [r12 + 448]
 mov r15d, dword ptr [r12 + 456]
 mov dword ptr [r12 + 464], 0
 lea r10, [r12 + 472]
 jmp smatch931_retry
 snoch879_n15_β:
 jmp xscan928_dfail
smatch931_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 464]
# IR_MATCH_DEFER
bb580_α:
 lea rdi, [rip + .S71]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx934_0
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
 jne smatch931_adv
 jmp xscan928_dok
.Lx934_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch931_adv
 mov r14d, eax
 jmp xscan928_dok
 smatch931_elemb:
 jmp smatch931_adv
smatch931_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 464], 1
 mov eax, dword ptr [r12 + 464]
 cmp eax, r15d
 jg xscan928_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan928_dfail
 jmp smatch931_retry
xscan928_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n17_α
xscan928_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n16_α
snoch879_n16_α:
# IR_LIT_scalar
bb582_α:
 jmp snoch879_n18_α
 snoch879_n16_β:
 jmp snoch879_n19_α
snoch879_n17_α:
# IR_VAR
bb583_α:
 mov rdi, qword ptr [rip + .Lx939_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xgvarg937_done
 xgvarg937_β:
 jmp snoch879_n16_α
.Lx939_0:
 .quad .Lx939_0_s
.Lx939_0_s:
 .string "target"
xgvarg937_done:
# IR_LIT_S
bb584_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx941_0]
 mov qword ptr [r12 + 504], rax
 jmp xgvarg940_done
 xgvarg940_β:
 jmp snoch879_n16_α
.Lx941_0:
 .quad .Lx941_0_s
.Lx941_0_s:
 .string "UNSET"
xgvarg940_done:
bb585_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+480] -> [r12+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+544]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lbynamefn943: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn943]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je snoch879_n16_α
 jmp snoch879_n20_α
snoch879_n17_β:
 jmp snoch879_n16_α
snoch879_n18_α:
bb586_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n19_α
 snoch879_n18_β:
 jmp snoch879_n19_α
snoch879_n19_α:
# IR_VAR
bb587_α:
 mov rdi, qword ptr [rip + .Lx946_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp snoch879_n21_α
 snoch879_n19_β:
 jmp snoch879_n22_α
.Lx946_0:
 .quad .Lx946_0_s
.Lx946_0_s:
 .string "token"
snoch879_n20_α:
bb588_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 576], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 584], rax
 mov dword ptr [r12 + 592], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 600], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 576]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n16_α
 snoch879_n20_β:
 jmp snoch879_n16_α
snoch879_n21_α:
# IR_SUBJECT
bb589_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 608]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan948_sγ
 xscan948_sβ:
 jmp snoch879_n22_α
xscan948_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb590_α:
 mov r13, qword ptr [r12 + 608]
 mov r15d, dword ptr [r12 + 616]
 mov dword ptr [r12 + 624], 0
 lea r10, [r12 + 632]
 jmp smatch951_retry
 snoch879_n21_β:
 jmp xscan948_dfail
smatch951_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 624]
# IR_MATCH_DEFER
bb592_α:
 lea rdi, [rip + .S72]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx954_0
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
 jne smatch951_adv
 jmp xscan948_dok
.Lx954_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch951_adv
 mov r14d, eax
 jmp xscan948_dok
 smatch951_elemb:
 jmp smatch951_adv
smatch951_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 624], 1
 mov eax, dword ptr [r12 + 624]
 cmp eax, r15d
 jg xscan948_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan948_dfail
 jmp smatch951_retry
xscan948_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n23_α
xscan948_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n22_α
snoch879_n22_α:
# IR_LIT_scalar
bb594_α:
 jmp snoch879_n24_α
 snoch879_n22_β:
 jmp snoch879_n25_α
snoch879_n23_α:
# IR_VAR
bb595_α:
 mov rdi, qword ptr [rip + .Lx959_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xgvarg957_done
 xgvarg957_β:
 jmp snoch879_n22_α
.Lx959_0:
 .quad .Lx959_0_s
.Lx959_0_s:
 .string "target"
xgvarg957_done:
# IR_LIT_S
bb596_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx961_0]
 mov qword ptr [r12 + 664], rax
 jmp xgvarg960_done
 xgvarg960_β:
 jmp snoch879_n22_α
.Lx961_0:
 .quad .Lx961_0_s
.Lx961_0_s:
 .string "UNSET"
xgvarg960_done:
bb597_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+640] -> [r12+688]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+656] -> [r12+704]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lbynamefn963: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn963]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je snoch879_n22_α
 jmp snoch879_n26_α
snoch879_n23_β:
 jmp snoch879_n22_α
snoch879_n24_α:
bb598_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n25_α
 snoch879_n24_β:
 jmp snoch879_n25_α
snoch879_n25_α:
# IR_VAR
bb599_α:
 mov rdi, qword ptr [rip + .Lx966_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp snoch879_n27_α
 snoch879_n25_β:
 jmp snoch879_n28_α
.Lx966_0:
 .quad .Lx966_0_s
.Lx966_0_s:
 .string "token"
snoch879_n26_α:
bb600_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 736], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 744], rax
 mov dword ptr [r12 + 752], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 760], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 736]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n22_α
 snoch879_n26_β:
 jmp snoch879_n22_α
snoch879_n27_α:
# IR_SUBJECT
bb601_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 768]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan968_sγ
 xscan968_sβ:
 jmp snoch879_n28_α
xscan968_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb602_α:
 mov r13, qword ptr [r12 + 768]
 mov r15d, dword ptr [r12 + 776]
 mov dword ptr [r12 + 784], 0
 lea r10, [r12 + 792]
 jmp smatch971_retry
 snoch879_n27_β:
 jmp xscan968_dfail
smatch971_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 784]
# IR_MATCH_DEFER
bb604_α:
 lea rdi, [rip + .S73]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx974_0
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
 jne smatch971_adv
 jmp xscan968_dok
.Lx974_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch971_adv
 mov r14d, eax
 jmp xscan968_dok
 smatch971_elemb:
 jmp smatch971_adv
smatch971_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 784], 1
 mov eax, dword ptr [r12 + 784]
 cmp eax, r15d
 jg xscan968_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan968_dfail
 jmp smatch971_retry
xscan968_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n29_α
xscan968_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n28_α
snoch879_n28_α:
# IR_LIT_scalar
bb606_α:
 jmp snoch879_n30_α
 snoch879_n28_β:
 jmp snoch879_n31_α
snoch879_n29_α:
# IR_VAR
bb607_α:
 mov rdi, qword ptr [rip + .Lx979_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xgvarg977_done
 xgvarg977_β:
 jmp snoch879_n28_α
.Lx979_0:
 .quad .Lx979_0_s
.Lx979_0_s:
 .string "target"
xgvarg977_done:
# IR_LIT_S
bb608_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx981_0]
 mov qword ptr [r12 + 824], rax
 jmp xgvarg980_done
 xgvarg980_β:
 jmp snoch879_n28_α
.Lx981_0:
 .quad .Lx981_0_s
.Lx981_0_s:
 .string "UNSET"
xgvarg980_done:
bb609_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+800] -> [r12+848]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [r12+816] -> [r12+864]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lbynamefn983: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn983]
 lea rsi, [r12 + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je snoch879_n28_α
 jmp snoch879_n32_α
snoch879_n29_β:
 jmp snoch879_n28_α
snoch879_n30_α:
bb610_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n31_α
 snoch879_n30_β:
 jmp snoch879_n31_α
snoch879_n31_α:
# IR_VAR
bb611_α:
 mov rdi, qword ptr [rip + .Lx986_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp snoch879_n33_α
 snoch879_n31_β:
 jmp snoch879_n34_α
.Lx986_0:
 .quad .Lx986_0_s
.Lx986_0_s:
 .string "token"
snoch879_n32_α:
bb612_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 896], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 904], rax
 mov dword ptr [r12 + 912], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 920], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 896]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n28_α
 snoch879_n32_β:
 jmp snoch879_n28_α
snoch879_n33_α:
# IR_SUBJECT
bb613_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 928]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan988_sγ
 xscan988_sβ:
 jmp snoch879_n34_α
xscan988_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb614_α:
 mov r13, qword ptr [r12 + 928]
 mov r15d, dword ptr [r12 + 936]
 mov dword ptr [r12 + 944], 0
 lea r10, [r12 + 952]
 jmp smatch991_retry
 snoch879_n33_β:
 jmp xscan988_dfail
smatch991_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 944]
# IR_MATCH_DEFER
bb616_α:
 lea rdi, [rip + .S74]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx994_0
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
 jne smatch991_adv
 jmp xscan988_dok
.Lx994_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch991_adv
 mov r14d, eax
 jmp xscan988_dok
 smatch991_elemb:
 jmp smatch991_adv
smatch991_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 944], 1
 mov eax, dword ptr [r12 + 944]
 cmp eax, r15d
 jg xscan988_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan988_dfail
 jmp smatch991_retry
xscan988_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n35_α
xscan988_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n34_α
snoch879_n34_α:
# IR_LIT_scalar
bb618_α:
 jmp snoch879_n36_α
 snoch879_n34_β:
 jmp snoch879_n37_α
snoch879_n35_α:
# IR_VAR
bb619_α:
 mov rdi, qword ptr [rip + .Lx999_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xgvarg997_done
 xgvarg997_β:
 jmp snoch879_n34_α
.Lx999_0:
 .quad .Lx999_0_s
.Lx999_0_s:
 .string "target"
xgvarg997_done:
# IR_LIT_S
bb620_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx1001_0]
 mov qword ptr [r12 + 984], rax
 jmp xgvarg1000_done
 xgvarg1000_β:
 jmp snoch879_n34_α
.Lx1001_0:
 .quad .Lx1001_0_s
.Lx1001_0_s:
 .string "UNSET"
xgvarg1000_done:
bb621_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+960] -> [r12+1008]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [r12+976] -> [r12+1024]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lbynamefn1003: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1003]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je snoch879_n34_α
 jmp snoch879_n38_α
snoch879_n35_β:
 jmp snoch879_n34_α
snoch879_n36_α:
bb622_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n37_α
 snoch879_n36_β:
 jmp snoch879_n37_α
snoch879_n37_α:
# IR_VAR
bb623_α:
 mov rdi, qword ptr [rip + .Lx1006_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp snoch879_n39_α
 snoch879_n37_β:
 jmp snoch879_n40_α
.Lx1006_0:
 .quad .Lx1006_0_s
.Lx1006_0_s:
 .string "token"
snoch879_n38_α:
bb624_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1056], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1064], rax
 mov dword ptr [r12 + 1072], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1080], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1056]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n34_α
 snoch879_n38_β:
 jmp snoch879_n34_α
snoch879_n39_α:
# IR_SUBJECT
bb625_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1088]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan1008_sγ
 xscan1008_sβ:
 jmp snoch879_n40_α
xscan1008_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb626_α:
 mov r13, qword ptr [r12 + 1088]
 mov r15d, dword ptr [r12 + 1096]
 mov dword ptr [r12 + 1104], 0
 lea r10, [r12 + 1112]
 jmp smatch1011_retry
 snoch879_n39_β:
 jmp xscan1008_dfail
smatch1011_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1104]
# IR_MATCH_DEFER
bb628_α:
 lea rdi, [rip + .S75]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx1014_0
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
 jne smatch1011_adv
 jmp xscan1008_dok
.Lx1014_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch1011_adv
 mov r14d, eax
 jmp xscan1008_dok
 smatch1011_elemb:
 jmp smatch1011_adv
smatch1011_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1104], 1
 mov eax, dword ptr [r12 + 1104]
 cmp eax, r15d
 jg xscan1008_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan1008_dfail
 jmp smatch1011_retry
xscan1008_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n41_α
xscan1008_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n40_α
snoch879_n40_α:
# IR_LIT_scalar
bb630_α:
 jmp snoch879_n42_α
 snoch879_n40_β:
 jmp snoch879_n43_α
snoch879_n41_α:
# IR_VAR
bb631_α:
 mov rdi, qword ptr [rip + .Lx1019_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xgvarg1017_done
 xgvarg1017_β:
 jmp snoch879_n40_α
.Lx1019_0:
 .quad .Lx1019_0_s
.Lx1019_0_s:
 .string "target"
xgvarg1017_done:
# IR_LIT_S
bb632_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx1021_0]
 mov qword ptr [r12 + 1144], rax
 jmp xgvarg1020_done
 xgvarg1020_β:
 jmp snoch879_n40_α
.Lx1021_0:
 .quad .Lx1021_0_s
.Lx1021_0_s:
 .string "UNSET"
xgvarg1020_done:
bb633_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lbynamefn1023: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1023]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je snoch879_n40_α
 jmp snoch879_n44_α
snoch879_n41_β:
 jmp snoch879_n40_α
snoch879_n42_α:
bb634_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n43_α
 snoch879_n42_β:
 jmp snoch879_n43_α
snoch879_n43_α:
# IR_VAR
bb635_α:
 mov rdi, qword ptr [rip + .Lx1026_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp snoch879_n45_α
 snoch879_n43_β:
 jmp snoch879_n46_α
.Lx1026_0:
 .quad .Lx1026_0_s
.Lx1026_0_s:
 .string "token"
snoch879_n44_α:
bb636_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1216], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1224], rax
 mov dword ptr [r12 + 1232], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1240], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1216]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n40_α
 snoch879_n44_β:
 jmp snoch879_n40_α
snoch879_n45_α:
# IR_SUBJECT
bb637_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1248]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan1028_sγ
 xscan1028_sβ:
 jmp snoch879_n46_α
xscan1028_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb638_α:
 mov r13, qword ptr [r12 + 1248]
 mov r15d, dword ptr [r12 + 1256]
 mov dword ptr [r12 + 1264], 0
 lea r10, [r12 + 1272]
 jmp smatch1031_retry
 snoch879_n45_β:
 jmp xscan1028_dfail
smatch1031_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1264]
# IR_MATCH_DEFER
bb640_α:
 lea rdi, [rip + .S76]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx1034_0
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
 jne smatch1031_adv
 jmp xscan1028_dok
.Lx1034_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch1031_adv
 mov r14d, eax
 jmp xscan1028_dok
 smatch1031_elemb:
 jmp smatch1031_adv
smatch1031_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1264], 1
 mov eax, dword ptr [r12 + 1264]
 cmp eax, r15d
 jg xscan1028_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan1028_dfail
 jmp smatch1031_retry
xscan1028_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n47_α
xscan1028_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n46_α
snoch879_n46_α:
# IR_LIT_scalar
bb642_α:
 jmp snoch879_n48_α
 snoch879_n46_β:
 jmp snoch879_n49_α
snoch879_n47_α:
# IR_VAR
bb643_α:
 mov rdi, qword ptr [rip + .Lx1039_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xgvarg1037_done
 xgvarg1037_β:
 jmp snoch879_n46_α
.Lx1039_0:
 .quad .Lx1039_0_s
.Lx1039_0_s:
 .string "target"
xgvarg1037_done:
# IR_LIT_S
bb644_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx1041_0]
 mov qword ptr [r12 + 1304], rax
 jmp xgvarg1040_done
 xgvarg1040_β:
 jmp snoch879_n46_α
.Lx1041_0:
 .quad .Lx1041_0_s
.Lx1041_0_s:
 .string "UNSET"
xgvarg1040_done:
bb645_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1280] -> [r12+1328]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [r12+1296] -> [r12+1344]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lbynamefn1043: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1043]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je snoch879_n46_α
 jmp snoch879_n50_α
snoch879_n47_β:
 jmp snoch879_n46_α
snoch879_n48_α:
bb646_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S27]
 lea rsi, [rip + .S69]
 call rt_gvar_assign_str@PLT
 jmp snoch879_n49_α
 snoch879_n48_β:
 jmp snoch879_n49_α
snoch879_n49_α:
# IR_VAR
bb647_α:
 mov rdi, qword ptr [rip + .Lx1046_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp snoch879_n51_α
 snoch879_n49_β:
 jmp snoch879_n52_α
.Lx1046_0:
 .quad .Lx1046_0_s
.Lx1046_0_s:
 .string "token"
snoch879_n50_α:
bb648_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1376], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1384], rax
 mov dword ptr [r12 + 1392], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1400], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1376]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n46_α
 snoch879_n50_β:
 jmp snoch879_n46_α
snoch879_n51_α:
# IR_SUBJECT
bb649_α:
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1408]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan1048_sγ
 xscan1048_sβ:
 jmp snoch879_n52_α
xscan1048_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb650_α:
 mov r13, qword ptr [r12 + 1408]
 mov r15d, dword ptr [r12 + 1416]
 mov dword ptr [r12 + 1424], 0
 lea r10, [r12 + 1432]
 jmp smatch1051_retry
 snoch879_n51_β:
 jmp xscan1048_dfail
smatch1051_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 1424]
# IR_MATCH_DEFER
bb652_α:
 lea rdi, [rip + .S77]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx1054_0
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
 jne smatch1051_adv
 jmp xscan1048_dok
.Lx1054_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch1051_adv
 mov r14d, eax
 jmp xscan1048_dok
 smatch1051_elemb:
 jmp smatch1051_adv
smatch1051_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 1424], 1
 mov eax, dword ptr [r12 + 1424]
 cmp eax, r15d
 jg xscan1048_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan1048_dfail
 jmp smatch1051_retry
xscan1048_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n53_α
xscan1048_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch879_n52_α
snoch879_n52_α:
# IR_VAR
bb654_α:
 mov rdi, qword ptr [rip + .Lx1057_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp snoch879_n54_α
 snoch879_n52_β:
 jmp snoch879_n4_α
.Lx1057_0:
 .quad .Lx1057_0_s
.Lx1057_0_s:
 .string "token"
snoch879_n53_α:
# IR_VAR
bb655_α:
 mov rdi, qword ptr [rip + .Lx1060_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xgvarg1058_done
 xgvarg1058_β:
 jmp snoch879_n52_α
.Lx1060_0:
 .quad .Lx1060_0_s
.Lx1060_0_s:
 .string "target"
xgvarg1058_done:
# IR_LIT_S
bb656_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx1062_0]
 mov qword ptr [r12 + 1480], rax
 jmp xgvarg1061_done
 xgvarg1061_β:
 jmp snoch879_n52_α
.Lx1062_0:
 .quad .Lx1062_0_s
.Lx1062_0_s:
 .string "UNSET"
xgvarg1061_done:
bb657_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1456] -> [r12+1504]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1512], rax
# marshal arg1 = producer-box slot [r12+1472] -> [r12+1520]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lbynamefn1064: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1064]
 lea rsi, [r12 + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je snoch879_n52_α
 jmp snoch879_n55_α
snoch879_n53_β:
 jmp snoch879_n52_α
snoch879_n54_α:
bb658_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S68]
 lea rsi, [rip + .S67]
 call rt_gvar_assign_var@PLT
 jmp snoch879_n4_α
 snoch879_n54_β:
 jmp snoch879_n4_α
snoch879_n55_α:
bb659_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 1536], 1
 lea rax, [rip + .S23]
 mov qword ptr [r12 + 1544], rax
 mov dword ptr [r12 + 1552], 1
 lea rax, [rip + .S27]
 mov qword ptr [r12 + 1560], rax
 lea rdi, [rip + .S67]
 lea rsi, [r12 + 1536]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch879_n52_α
 snoch879_n55_β:
 jmp snoch879_n52_α
stemmer_β:
jmp stemmer_ω
stemmer_γ:
mov eax, 1
xor edx, edx
pop r12
ret
stemmer_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "cons"
  .Lpp0_0: .string "i"
  .Lpp0_1: .string "c"
  .Lpnames0:
  .quad .Lpp0_0
  .quad .Lpp0_1
  .quad 0
  .Lpn1: .string "m"
  .Lpp1_0: .string "i"
  .Lpp1_1: .string "n"
  .Lpp1_2: .string "L"
  .Lpnames1:
  .quad .Lpp1_0
  .quad .Lpp1_1
  .quad .Lpp1_2
  .quad 0
  .Lpn2: .string "vowelinstem"
  .Lpp2_0: .string "i"
  .Lpp2_1: .string "L"
  .Lpnames2:
  .quad .Lpp2_0
  .quad .Lpp2_1
  .quad 0
  .Lpn3: .string "doublec"
  .Lpp3_0: .string "j"
  .Lpnames3:
  .quad .Lpp3_0
  .quad 0
  .Lpn4: .string "cvc"
  .Lpp4_0: .string "i"
  .Lpp4_1: .string "c"
  .Lpnames4:
  .quad .Lpp4_0
  .quad .Lpp4_1
  .quad 0
  .Lpn5: .string "g_vis"
  .Lpnames5:
  .quad 0
  .Lpn6: .string "g_m_gt_0"
  .Lpnames6:
  .quad 0
  .Lpn7: .string "g_m_gt_1"
  .Lpnames7:
  .quad 0
  .Lpn8: .string "g_m_eq_1"
  .Lpnames8:
  .quad 0
  .Lpn9: .string "g_not_cvc_last"
  .Lpp9_0: .string "L"
  .Lpnames9:
  .quad .Lpp9_0
  .quad 0
  .Lpn10: .string "g_stem_not_m"
  .Lpp10_0: .string "L"
  .Lpnames10:
  .quad .Lpp10_0
  .quad 0
  .Lpn11: .string "g_stem_last_st"
  .Lpp11_0: .string "L"
  .Lpp11_1: .string "last"
  .Lpnames11:
  .quad .Lpp11_0
  .quad .Lpp11_1
  .quad 0
  .Lpn12: .string "g_m_ll_gt_1"
  .Lpp12_0: .string "save"
  .Lpp12_1: .string "r"
  .Lpnames12:
  .quad .Lpp12_0
  .quad .Lpp12_1
  .quad 0
  .Lpn13: .string "s_ss"
  .Lpnames13:
  .quad 0
  .Lpn14: .string "s_i"
  .Lpnames14:
  .quad 0
  .Lpn15: .string "s_empty"
  .Lpnames15:
  .quad 0
  .Lpn16: .string "s_ee"
  .Lpnames16:
  .quad 0
  .Lpn17: .string "s_ate"
  .Lpnames17:
  .quad 0
  .Lpn18: .string "s_tion"
  .Lpnames18:
  .quad 0
  .Lpn19: .string "s_ence"
  .Lpnames19:
  .quad 0
  .Lpn20: .string "s_ance"
  .Lpnames20:
  .quad 0
  .Lpn21: .string "s_ize"
  .Lpnames21:
  .quad 0
  .Lpn22: .string "s_ble"
  .Lpnames22:
  .quad 0
  .Lpn23: .string "s_al"
  .Lpnames23:
  .quad 0
  .Lpn24: .string "s_ent"
  .Lpnames24:
  .quad 0
  .Lpn25: .string "s_e"
  .Lpnames25:
  .quad 0
  .Lpn26: .string "s_ous"
  .Lpnames26:
  .quad 0
  .Lpn27: .string "s_ive"
  .Lpnames27:
  .quad 0
  .Lpn28: .string "s_ful"
  .Lpnames28:
  .quad 0
  .Lpn29: .string "s_log"
  .Lpnames29:
  .quad 0
  .Lpn30: .string "s_ic"
  .Lpnames30:
  .quad 0
  .Lpn31: .string "s_l"
  .Lpnames31:
  .quad 0
  .Lpn32: .string "a_s1ab_cleanup"
  .Lpp32_0: .string "L"
  .Lpp32_1: .string "last"
  .Lpp32_2: .string "P"
  .Lpnames32:
  .quad .Lpp32_0
  .quad .Lpp32_1
  .quad .Lpp32_2
  .quad 0
  .Lpn33: .string "stemmer"
  .Lpp33_0: .string "token"
  .Lpnames33:
  .quad .Lpp33_0
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
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + cons_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + .Lpnames1]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn1]
  lea rsi, [rip + m_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn1]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + .Lpnames2]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn2]
  lea rsi, [rip + vowelinstem_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn2]
  mov esi, 200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn3]
  lea rsi, [rip + .Lpnames3]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn3]
  lea rsi, [rip + doublec_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn3]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn4]
  lea rsi, [rip + .Lpnames4]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn4]
  lea rsi, [rip + cvc_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn4]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn5]
  lea rsi, [rip + .Lpnames5]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn5]
  lea rsi, [rip + g_vis_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn5]
  mov esi, 40
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn6]
  lea rsi, [rip + .Lpnames6]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn6]
  lea rsi, [rip + g_m_gt_0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn6]
  mov esi, 136
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn7]
  lea rsi, [rip + .Lpnames7]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn7]
  lea rsi, [rip + g_m_gt_1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn7]
  mov esi, 136
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn8]
  lea rsi, [rip + .Lpnames8]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn8]
  lea rsi, [rip + g_m_eq_1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn8]
  mov esi, 136
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn9]
  lea rsi, [rip + .Lpnames9]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn9]
  lea rsi, [rip + g_not_cvc_last_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn9]
  mov esi, 136
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn10]
  lea rsi, [rip + .Lpnames10]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn10]
  lea rsi, [rip + g_stem_not_m_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn10]
  mov esi, 264
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn11]
  lea rsi, [rip + .Lpnames11]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn11]
  lea rsi, [rip + g_stem_last_st_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn11]
  mov esi, 248
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn12]
  lea rsi, [rip + .Lpnames12]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn12]
  lea rsi, [rip + g_m_ll_gt_1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn12]
  mov esi, 168
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn13]
  lea rsi, [rip + .Lpnames13]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn13]
  lea rsi, [rip + s_ss_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn13]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + .Lpnames14]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn14]
  lea rsi, [rip + s_i_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn14]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + .Lpnames15]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn15]
  lea rsi, [rip + s_empty_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn15]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + .Lpnames16]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn16]
  lea rsi, [rip + s_ee_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn16]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn17]
  lea rsi, [rip + .Lpnames17]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn17]
  lea rsi, [rip + s_ate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn17]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn18]
  lea rsi, [rip + .Lpnames18]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn18]
  lea rsi, [rip + s_tion_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn18]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn19]
  lea rsi, [rip + .Lpnames19]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn19]
  lea rsi, [rip + s_ence_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn19]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn20]
  lea rsi, [rip + .Lpnames20]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn20]
  lea rsi, [rip + s_ance_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn20]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn21]
  lea rsi, [rip + .Lpnames21]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn21]
  lea rsi, [rip + s_ize_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn21]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn22]
  lea rsi, [rip + .Lpnames22]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn22]
  lea rsi, [rip + s_ble_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn22]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn23]
  lea rsi, [rip + .Lpnames23]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn23]
  lea rsi, [rip + s_al_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn23]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn24]
  lea rsi, [rip + .Lpnames24]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn24]
  lea rsi, [rip + s_ent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn24]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn25]
  lea rsi, [rip + .Lpnames25]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn25]
  lea rsi, [rip + s_e_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn25]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn26]
  lea rsi, [rip + .Lpnames26]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn26]
  lea rsi, [rip + s_ous_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn26]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn27]
  lea rsi, [rip + .Lpnames27]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn27]
  lea rsi, [rip + s_ive_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn27]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn28]
  lea rsi, [rip + .Lpnames28]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn28]
  lea rsi, [rip + s_ful_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn28]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn29]
  lea rsi, [rip + .Lpnames29]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn29]
  lea rsi, [rip + s_log_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn29]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn30]
  lea rsi, [rip + .Lpnames30]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn30]
  lea rsi, [rip + s_ic_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn30]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn31]
  lea rsi, [rip + .Lpnames31]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn31]
  lea rsi, [rip + s_l_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn31]
  mov esi, 16
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn32]
  lea rsi, [rip + .Lpnames32]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn32]
  lea rsi, [rip + a_s1ab_cleanup_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn32]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lpn33]
  lea rsi, [rip + .Lpnames33]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn33]
  lea rsi, [rip + stemmer_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn33]
  mov esi, 1568
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "epsilon"
  .Lgvan1: .string "VOWELS"
  .Lgvan2: .string "LC"
  .Lgvan3: .string "c"
  .Lgvan4: .string "L"
  .Lgvan5: .string "i"
  .Lgvan6: .string "n"
  .Lgvan7: .string "m"
  .Lgvan8: .string "g_vis"
  .Lgvan9: .string "g_m_gt_0"
  .Lgvan10: .string "g_m_gt_1"
  .Lgvan11: .string "g_m_eq_1"
  .Lgvan12: .string "g_not_cvc_last"
  .Lgvan13: .string "g_stem_not_m"
  .Lgvan14: .string "last"
  .Lgvan15: .string "g_stem_last_st"
  .Lgvan16: .string "save"
  .Lgvan17: .string "stem"
  .Lgvan18: .string "r"
  .Lgvan19: .string "g_m_ll_gt_1"
  .Lgvan20: .string "target"
  .Lgvan21: .string "s_ss"
  .Lgvan22: .string "s_i"
  .Lgvan23: .string "s_empty"
  .Lgvan24: .string "s_ee"
  .Lgvan25: .string "s_ate"
  .Lgvan26: .string "s_tion"
  .Lgvan27: .string "s_ence"
  .Lgvan28: .string "s_ance"
  .Lgvan29: .string "s_ize"
  .Lgvan30: .string "s_ble"
  .Lgvan31: .string "s_al"
  .Lgvan32: .string "s_ent"
  .Lgvan33: .string "s_e"
  .Lgvan34: .string "s_ous"
  .Lgvan35: .string "s_ive"
  .Lgvan36: .string "s_ful"
  .Lgvan37: .string "s_log"
  .Lgvan38: .string "s_ic"
  .Lgvan39: .string "s_l"
  .Lgvan40: .string "a_s1ab_cleanup"
  .Lgvan41: .string "p1a"
  .Lgvan42: .string "p1b"
  .Lgvan43: .string "p1c"
  .Lgvan44: .string "p2"
  .Lgvan45: .string "p3"
  .Lgvan46: .string "p4"
  .Lgvan47: .string "p5a"
  .Lgvan48: .string "p5b"
  .Lgvan49: .string "stemmer"
  .Lgvan50: .string "token"
  .Lgvan51: .string "word"
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
  .quad .Lgvan41
  .quad .Lgvan42
  .quad .Lgvan43
  .quad .Lgvan44
  .quad .Lgvan45
  .quad .Lgvan46
  .quad .Lgvan47
  .quad .Lgvan48
  .quad .Lgvan49
  .quad .Lgvan50
  .quad .Lgvan51
  .section .bss
  .align 16
__gva: .space 832, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 52
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call flat_α
  xor eax, eax
  pop rbp
  ret
flat_c0_α:
#=======================================================================================================================
    .global flat_c0_α
    .global flat_c0_β
    .global flat_c0_γ
    .global flat_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
flat_c0_α_body:
# IR_MATCH_RTAB
bb660_α:
 mov ecx, r15d
 sub ecx, 2
 cmp r14d, ecx
 jg xcat1067_ω
 mov r14d, ecx
 jmp xcat1067_γ
 xcat1067_left_β:
 jmp xcat1067_ω
xcat1067_γ:
# IR_LIT
bb661_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt1069_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1069_c0_ω
 add r14d, 2
 jmp xcat1067_mid1_γ
 alt1069_c0_β:
 sub r14d, 2
 jmp alt1069_c0_ω
alt1069_c0_ω:
# IR_LIT
bb662_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt1069_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1069_c1_ω
 add r14d, 2
 jmp xcat1067_mid1_γ
 alt1069_c1_β:
 sub r14d, 2
 jmp alt1069_c1_ω
alt1069_c1_ω:
# IR_LIT
bb663_α:
 mov eax, r14d
 add eax, 2
 cmp eax, r15d
 jg alt1069_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 2
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1069_c2_ω
 add r14d, 2
 jmp xcat1067_mid1_γ
 alt1069_c2_β:
 sub r14d, 2
 jmp alt1069_c2_ω
alt1069_c2_ω:
 jmp xcat1067_left_β
xcat1067_mid1_β:
 jmp alt1069_c0_β
xcat1067_mid1_γ:
# IR_MATCH_RPOS
bb665_α:
 mov ecx, r15d
 sub ecx, 0
 cmp r14d, ecx
 jne xcat1067_mid1_β
 jmp flat_c0_γ
 xcat1067_mid2_β:
 jmp xcat1067_mid1_β
xcat1067_right_ω:
 jmp xcat1067_left_β
flat_c0_β:
 jmp xcat1067_mid2_β
xcat1067_ω:
 jmp flat_c0_ω
flat_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
flat_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
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
snoch1076_n0_α:
# IR_LIT_scalar
bb667_α:
 jmp snoch1076_n1_α
 snoch1076_n0_β:
 jmp snoch1076_n2_α
snoch1076_n1_α:
bb668_α:
# IR_ASSIGN
 lea rdi, [rip + .S78]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch1076_n2_α
 snoch1076_n1_β:
 jmp snoch1076_n2_α
snoch1076_n2_α:
# IR_LIT_scalar
bb669_α:
 jmp snoch1076_n3_α
 snoch1076_n2_β:
 jmp snoch1076_n4_α
snoch1076_n3_α:
bb670_α:
# IR_ASSIGN
 lea rdi, [rip + .S79]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch1076_n4_α
 snoch1076_n3_β:
 jmp snoch1076_n4_α
snoch1076_n4_α:
# IR_LIT_scalar
bb671_α:
 jmp snoch1076_n5_α
 snoch1076_n4_β:
 jmp snoch1076_n6_α
snoch1076_n5_α:
bb672_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S80]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch1076_n6_α
 snoch1076_n5_β:
 jmp snoch1076_n6_α
snoch1076_n6_α:
# IR_LIT_scalar
bb673_α:
 jmp snoch1076_n7_α
 snoch1076_n6_β:
 jmp snoch1076_n8_α
snoch1076_n7_α:
bb674_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S81]
 call rt_gvar_assign_str@PLT
 jmp snoch1076_n8_α
 snoch1076_n7_β:
 jmp snoch1076_n8_α
snoch1076_n8_α:
# IR_LIT_scalar
bb675_α:
 jmp snoch1076_n9_α
 snoch1076_n8_β:
 jmp snoch1076_n10_α
snoch1076_n9_α:
bb676_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S82]
 lea rsi, [rip + .S83]
 call rt_gvar_assign_str@PLT
 jmp snoch1076_n10_α
 snoch1076_n9_β:
 jmp snoch1076_n10_α
snoch1076_n10_α:
bb677_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S84]
 call rt_proc_define@PLT
 jmp snoch1076_n11_α
 snoch1076_n10_β:
 jmp snoch1076_n11_α
snoch1076_n11_α:
bb678_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S85]
 call rt_proc_define@PLT
 jmp snoch1076_n12_α
 snoch1076_n11_β:
 jmp snoch1076_n12_α
snoch1076_n12_α:
bb679_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S86]
 call rt_proc_define@PLT
 jmp snoch1076_n13_α
 snoch1076_n12_β:
 jmp snoch1076_n13_α
snoch1076_n13_α:
bb680_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S87]
 call rt_proc_define@PLT
 jmp snoch1076_n14_α
 snoch1076_n13_β:
 jmp snoch1076_n14_α
snoch1076_n14_α:
bb681_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S88]
 call rt_proc_define@PLT
 jmp snoch1076_n15_α
 snoch1076_n14_β:
 jmp snoch1076_n15_α
snoch1076_n15_α:
bb682_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S89]
 call rt_proc_define@PLT
 jmp snoch1076_n16_α
 snoch1076_n15_β:
 jmp snoch1076_n16_α
snoch1076_n16_α:
bb683_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S90]
 call rt_proc_define@PLT
 jmp snoch1076_n17_α
 snoch1076_n16_β:
 jmp snoch1076_n17_α
snoch1076_n17_α:
bb684_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S91]
 call rt_proc_define@PLT
 jmp snoch1076_n18_α
 snoch1076_n17_β:
 jmp snoch1076_n18_α
snoch1076_n18_α:
bb685_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S92]
 call rt_proc_define@PLT
 jmp snoch1076_n19_α
 snoch1076_n18_β:
 jmp snoch1076_n19_α
snoch1076_n19_α:
bb686_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S93]
 call rt_proc_define@PLT
 jmp snoch1076_n20_α
 snoch1076_n19_β:
 jmp snoch1076_n20_α
snoch1076_n20_α:
bb687_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S94]
 call rt_proc_define@PLT
 jmp snoch1076_n21_α
 snoch1076_n20_β:
 jmp snoch1076_n21_α
snoch1076_n21_α:
bb688_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S95]
 call rt_proc_define@PLT
 jmp snoch1076_n22_α
 snoch1076_n21_β:
 jmp snoch1076_n22_α
snoch1076_n22_α:
bb689_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S96]
 call rt_proc_define@PLT
 jmp snoch1076_n23_α
 snoch1076_n22_β:
 jmp snoch1076_n23_α
snoch1076_n23_α:
bb690_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S97]
 call rt_proc_define@PLT
 jmp snoch1076_n24_α
 snoch1076_n23_β:
 jmp snoch1076_n24_α
snoch1076_n24_α:
bb691_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S98]
 call rt_proc_define@PLT
 jmp snoch1076_n25_α
 snoch1076_n24_β:
 jmp snoch1076_n25_α
snoch1076_n25_α:
bb692_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S99]
 call rt_proc_define@PLT
 jmp snoch1076_n26_α
 snoch1076_n25_β:
 jmp snoch1076_n26_α
snoch1076_n26_α:
bb693_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S100]
 call rt_proc_define@PLT
 jmp snoch1076_n27_α
 snoch1076_n26_β:
 jmp snoch1076_n27_α
snoch1076_n27_α:
bb694_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S101]
 call rt_proc_define@PLT
 jmp snoch1076_n28_α
 snoch1076_n27_β:
 jmp snoch1076_n28_α
snoch1076_n28_α:
bb695_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S102]
 call rt_proc_define@PLT
 jmp snoch1076_n29_α
 snoch1076_n28_β:
 jmp snoch1076_n29_α
snoch1076_n29_α:
bb696_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S103]
 call rt_proc_define@PLT
 jmp snoch1076_n30_α
 snoch1076_n29_β:
 jmp snoch1076_n30_α
snoch1076_n30_α:
bb697_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S104]
 call rt_proc_define@PLT
 jmp snoch1076_n31_α
 snoch1076_n30_β:
 jmp snoch1076_n31_α
snoch1076_n31_α:
bb698_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S105]
 call rt_proc_define@PLT
 jmp snoch1076_n32_α
 snoch1076_n31_β:
 jmp snoch1076_n32_α
snoch1076_n32_α:
bb699_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S106]
 call rt_proc_define@PLT
 jmp snoch1076_n33_α
 snoch1076_n32_β:
 jmp snoch1076_n33_α
snoch1076_n33_α:
bb700_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S107]
 call rt_proc_define@PLT
 jmp snoch1076_n34_α
 snoch1076_n33_β:
 jmp snoch1076_n34_α
snoch1076_n34_α:
bb701_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S108]
 call rt_proc_define@PLT
 jmp snoch1076_n35_α
 snoch1076_n34_β:
 jmp snoch1076_n35_α
snoch1076_n35_α:
bb702_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S109]
 call rt_proc_define@PLT
 jmp snoch1076_n36_α
 snoch1076_n35_β:
 jmp snoch1076_n36_α
snoch1076_n36_α:
bb703_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S110]
 call rt_proc_define@PLT
 jmp snoch1076_n37_α
 snoch1076_n36_β:
 jmp snoch1076_n37_α
snoch1076_n37_α:
bb704_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S111]
 call rt_proc_define@PLT
 jmp snoch1076_n38_α
 snoch1076_n37_β:
 jmp snoch1076_n38_α
snoch1076_n38_α:
bb705_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S112]
 call rt_proc_define@PLT
 jmp snoch1076_n39_α
 snoch1076_n38_β:
 jmp snoch1076_n39_α
snoch1076_n39_α:
bb706_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S113]
 call rt_proc_define@PLT
 jmp snoch1076_n40_α
 snoch1076_n39_β:
 jmp snoch1076_n40_α
snoch1076_n40_α:
bb707_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S114]
 call rt_proc_define@PLT
 jmp snoch1076_n41_α
 snoch1076_n40_β:
 jmp snoch1076_n41_α
snoch1076_n41_α:
bb708_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S115]
 call rt_proc_define@PLT
 jmp snoch1076_n42_α
 snoch1076_n41_β:
 jmp snoch1076_n42_α
snoch1076_n42_α:
bb709_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S116]
 call rt_proc_define@PLT
 jmp snoch1076_n43_α
 snoch1076_n42_β:
 jmp snoch1076_n43_α
snoch1076_n43_α:
bb710_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S117]
 call rt_proc_define@PLT
 jmp snoch1076_n44_α
 snoch1076_n43_β:
 jmp snoch1076_n44_α
snoch1076_n44_α:
# IR_VAR
bb711_α:
 mov rdi, qword ptr [rip + .Lx1122_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch1076_n45_α
 snoch1076_n44_β:
 jmp flat_γ
.Lx1122_0:
 .quad .Lx1122_0_s
.Lx1122_0_s:
 .string "INPUT"
snoch1076_n45_α:
bb712_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S118]
 lea rsi, [rip + .S119]
 call rt_gvar_assign_var@PLT
 jmp snoch1076_n46_α
 snoch1076_n45_β:
 jmp flat_γ
snoch1076_n46_α:
# IR_VAR gva
bb713_α:
 mov rax, qword ptr [rbx + 816]
 mov rdx, qword ptr [rbx + 824]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg1124_done
 xgvarg1124_β:
 jmp snoch1076_n44_α
xgvarg1124_done:
bb714_α:
# BOX IR_CALL stemmer(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn1128: .string "stemmer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn1128]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch1076_n44_α
 jmp snoch1076_n47_α
snoch1076_n46_β:
 jmp snoch1076_n44_α
snoch1076_n47_α:
bb715_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S120]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch1076_n44_α
 snoch1076_n47_β:
 jmp snoch1076_n44_α
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
.S0: .string "at"
.S1: .string "bl"
.S2: .string "iz"
.S3: .string "c"
.S4: .string "VOWELS"
.S5: .string "i"
.S6: .string "L"
.S7: .string "n"
.S8: .string "m"
.S9: .string "j"
.S10: .string "wxy"
.S11: .string "bb_pattern_nullary: DT_P builder pending (DDS)"
.S12: .string "g_vis"
.S13: .string ""
.S14: .string "g_m_gt_0"
.S15: .string "g_m_gt_1"
.S16: .string "g_m_eq_1"
.S17: .string "g_not_cvc_last"
.S18: .string "g_stem_not_m"
.S19: .string "last"
.S20: .string "st"
.S21: .string "g_stem_last_st"
.S22: .string "save"
.S23: .string "stem"
.S24: .string "ll"
.S25: .string "r"
.S26: .string "g_m_ll_gt_1"
.S27: .string "target"
.S28: .string "ss"
.S29: .string "s_ss"
.S30: .string "s_i"
.S31: .string "s_empty"
.S32: .string "ee"
.S33: .string "s_ee"
.S34: .string "ate"
.S35: .string "s_ate"
.S36: .string "tion"
.S37: .string "s_tion"
.S38: .string "ence"
.S39: .string "s_ence"
.S40: .string "ance"
.S41: .string "s_ance"
.S42: .string "ize"
.S43: .string "s_ize"
.S44: .string "ble"
.S45: .string "s_ble"
.S46: .string "al"
.S47: .string "s_al"
.S48: .string "ent"
.S49: .string "s_ent"
.S50: .string "e"
.S51: .string "s_e"
.S52: .string "ous"
.S53: .string "s_ous"
.S54: .string "ive"
.S55: .string "s_ive"
.S56: .string "ful"
.S57: .string "s_ful"
.S58: .string "log"
.S59: .string "s_log"
.S60: .string "ic"
.S61: .string "s_ic"
.S62: .string "l"
.S63: .string "s_l"
.S64: .string "P"
.S65: .string "a_s1ab_cleanup"
.S66: .string "lsz"
.S67: .string "token"
.S68: .string "stemmer"
.S69: .string "UNSET"
.S70: .string "p1a"
.S71: .string "p1b"
.S72: .string "p1c"
.S73: .string "p2"
.S74: .string "p3"
.S75: .string "p4"
.S76: .string "p5a"
.S77: .string "p5b"
.S78: .string "ANCHOR"
.S79: .string "FULLSCAN"
.S80: .string "epsilon"
.S81: .string "aeiou"
.S82: .string "LC"
.S83: .string "abcdefghijklmnopqrstuvwxyz"
.S84: .string "cons(i)c"
.S85: .string "m()i,n,L"
.S86: .string "vowelinstem()i,L"
.S87: .string "doublec(j)"
.S88: .string "cvc(i)c"
.S89: .string "g_vis()"
.S90: .string "g_m_gt_0()"
.S91: .string "g_m_gt_1()"
.S92: .string "g_m_eq_1()"
.S93: .string "g_not_cvc_last()L"
.S94: .string "g_stem_not_m()L"
.S95: .string "g_stem_last_st()L,last"
.S96: .string "g_m_ll_gt_1()save,r"
.S97: .string "s_ss()"
.S98: .string "s_i()"
.S99: .string "s_empty()"
.S100: .string "s_ee()"
.S101: .string "s_ate()"
.S102: .string "s_tion()"
.S103: .string "s_ence()"
.S104: .string "s_ance()"
.S105: .string "s_ize()"
.S106: .string "s_ble()"
.S107: .string "s_al()"
.S108: .string "s_ent()"
.S109: .string "s_e()"
.S110: .string "s_ous()"
.S111: .string "s_ive()"
.S112: .string "s_ful()"
.S113: .string "s_log()"
.S114: .string "s_ic()"
.S115: .string "s_l()"
.S116: .string "a_s1ab_cleanup()L,last,P"
.S117: .string "stemmer(token)"
.S118: .string "word"
.S119: .string "INPUT"
.S120: .string "OUTPUT"
.text
