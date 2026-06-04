  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 3
  .quad .Lplpred_digits_3
  .quad .Lplpred_digits_3_redo
  .quad .Lpl_pname_1
  .quad 3
  .quad .Lplpred_digit_3
  .quad .Lplpred_digit_3_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "digits"
.Lpl_pname_1:
  .asciz "digit"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 2
  call rt_pl_table_install@PLT
  mov edi, 3
  call rt_env_alloc@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
.Lplpred_digits_3:
 bb20592_α:
# BOX RESOLVE_CHOICE n=2 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
 call rt_env_current@PLT
 mov rdx, rax
 call rt_trail_mark@PLT
 mov rsi, rax
 xor edi, edi
 xor ecx, ecx
 xor r8d, r8d
 call resolve_cp_push@PLT
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 .Lplch0_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch0_exhausted
 cmp edi, 0
 je .Lplch0_c0_pre
 cmp edi, 1
 je .Lplch0_c1_pre
 jmp .Lplch0_exhausted
 .Lplch0_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c0_body
 .Lplch0_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c1_body
 .Lplch0_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_digits_3_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_digits_3_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_digits_3_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_digits_3_ω
 .Lplpred_digits_3_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_digits_3_ω
.Lplch0_c0_body:
plseq1_g0_α:
 bb15312_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_digits_3_β
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_digits_3_β
plseq1_g1_α:
 bb14976_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq1_g2_α
 plseq1_g1_β:
 jmp .Lplpred_digits_3_β
plseq1_g2_α:
 bb14640_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq1_g3_α
 plseq1_g2_β:
 jmp .Lplpred_digits_3_β
plseq1_g3_α:
 bb14192_α:
# BOX RESOLVE_CALL digit/3 (WAM-CP-5, n_args=3)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 19
 call resolve_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 2
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_digit_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb14192_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq1_g4_α
bb14192_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_digits_3_β
 plseq1_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb14192_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_digit_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14192_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq1_g4_α
bb14192_α_nosol: jmp .Lplpred_digits_3_β
plseq1_g4_α:
 bb13744_α:
# BOX RESOLVE_CALL digits/3 (WAM-CP-5, n_args=3)
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 19
 call resolve_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 2
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_digits_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb13744_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplch0_exit_γ
bb13744_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq1_g3_β
 plseq1_g4_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb13744_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_digits_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13744_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplch0_exit_γ
bb13744_α_nosol: jmp plseq1_g3_β
.Lplch0_c0_beta:
 jmp plseq1_g4_β
.Lplch0_c1_body:
plseq2_g0_α:
 bb19616_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_digits_3_β
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_digits_3_β
plseq2_g1_α:
 bb19280_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq2_g2_α
 plseq2_g1_β:
 jmp .Lplpred_digits_3_β
plseq2_g2_α:
 bb18944_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq2_g3_α
 plseq2_g2_β:
 jmp .Lplpred_digits_3_β
plseq2_g3_α:
 bb18608_α:
# BOX RESOLVE_UNIFY (WAM-CP-7c var-var — 1 call)  [x86() self-encoding]
 mov edi, 1
 mov esi, 2
 call rt_unify_var_var@PLT
 test eax, eax
 je .Lplpred_digits_3_β
 jmp .Lplch0_exit_γ
 plseq2_g3_β:
 jmp .Lplpred_digits_3_β
.Lplch0_c1_beta:
 jmp .Lplpred_digits_3_β
.Lplpred_digits_3_redo:
jmp .Lplpred_digits_3_β
.Lplpred_digits_3_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_digits_3_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_digit_3:
plseq3_g0_α:
 bb25712_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g1_α
 plseq3_g0_β:
 jmp .Lplpred_digit_3_ω
plseq3_g1_α:
 bb25376_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g2_α
 plseq3_g1_β:
 jmp .Lplpred_digit_3_ω
plseq3_g2_α:
 bb25040_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g3_α
 plseq3_g2_β:
 jmp .Lplpred_digit_3_ω
plseq3_g3_α:
 bb24480_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_digit_3_ω
 jmp plseq3_g4_α
 plseq3_g3_β:
 jmp .Lplpred_digit_3_ω
plseq3_g4_α:
 bb24144_α:
 # BOX RESOLVE_BUILTIN(>=/2)
 sub rsp, 16
 lea rdi, [rip + .S4]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 0
 mov r9, 48
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpred_digit_3_ω
 jmp plseq3_g5_α
plseq3_g4_β: jmp .Lplpred_digit_3_ω
plseq3_g5_α:
 bb23808_α:
 # BOX RESOLVE_BUILTIN(=</2)
 sub rsp, 16
 lea rdi, [rip + .S5]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 0
 mov r9, 57
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpred_digit_3_ω
 jmp plseq3_g6_α
plseq3_g5_β: jmp .Lplpred_digit_3_ω
plseq3_g6_α:
 bb23472_α:
# BOX RESOLVE_UNIFY (WAM-CP-7c var-var — 1 call)  [x86() self-encoding]
 mov edi, 3
 mov esi, 2
 call rt_unify_var_var@PLT
 test eax, eax
 je .Lplpred_digit_3_ω
 jmp .Lplpred_digit_3_γ
 plseq3_g6_β:
 jmp .Lplpred_digit_3_ω
.Lplpred_digit_3_β:
 jmp .Lplpred_digit_3_ω
.Lplpred_digit_3_redo:
jmp .Lplpred_digit_3_β
.Lplpred_digit_3_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_digit_3_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
main_α_body:
plseq4_g0_α:
 bb10528_α:
 # BOX RESOLVE_BUILTIN(atom_codes/2)
 sub rsp, 16
 mov edi, 1
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S6]
 mov r8d, 56
 mov r9, 0
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_atom_chars_codes@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq4_g1_α
plseq4_g0_β: jmp main_ω
plseq4_g1_α:
 bb9968_α:
# BOX RESOLVE_CALL digits/3 (WAM-CP-5, n_args=3)
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 19
 call resolve_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 2
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_digits_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb9968_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite5_then_α
bb9968_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite5_else_α
 xite5_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb9968_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_digits_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb9968_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite5_then_α
bb9968_α_nosol: jmp xite5_else_α
xite5_then_α:
plseq6_g0_α:
 bb9632_α:
 # BOX RESOLVE_BUILTIN(atom_codes/2)
 sub rsp, 16
 mov edi, 1
 mov esi, 56
 mov rdx, 2
 xor ecx, ecx
 mov r8d, 56
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_atom_chars_codes@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq6_g1_α
plseq6_g0_β: jmp main_ω
plseq6_g1_α:
 bb9408_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq4_g2_α
plseq6_g1_β: jmp plseq4_g2_α
xite5_then_β:
 jmp main_ω
xite5_else_α:
 bb9072_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq4_g2_α
xite5_else_β: jmp plseq4_g2_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq4_g1_β:
 jmp main_ω
plseq4_g2_α:
 bb8960_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq4_g2_β: jmp main_γ
main_β:
 jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
.section .rodata
.S0: .string "."
.S1: .string "digit"
.S2: .string "digits"
.S3: .string "[]"
.S4: .string ">="
.S5: .string "=<"
.S6: .string "123"
.S7: .string "fail"
.text
