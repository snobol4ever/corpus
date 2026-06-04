  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_differ_2
  .quad .Lplpred_differ_2_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "differ"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 1
  call rt_pl_table_install@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
.Lplpred_differ_2:
 bb90608_α:
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
 jmp .Lplpred_differ_2_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_differ_2_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_differ_2_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_differ_2_ω
 .Lplpred_differ_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_differ_2_ω
.Lplch0_c0_body:
plseq1_g0_α:
 bb86224_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_differ_2_β
plseq1_g1_α:
 bb85888_α:
# BOX RESOLVE_UNIFY (WAM-CP-7c var-var — 1 call)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 call rt_unify_var_var@PLT
 test eax, eax
 je .Lplpred_differ_2_β
 jmp plseq1_g2_α
 plseq1_g1_β:
 jmp .Lplpred_differ_2_β
plseq1_g2_α:
 bb85776_α:
# BOX RESOLVE_CUT  [x86() self-encoding]
 call rt_cut_set@PLT
 jmp plseq1_g3_α
 plseq1_g2_β:
 jmp plseq1_g3_α
plseq1_g3_α:
 bb85664_α:
# BOX FAIL()  [x86() self-encoding]
 jmp .Lplpred_differ_2_β
 plseq1_g3_β:
 jmp .Lplpred_differ_2_β
.Lplch0_c0_beta:
 jmp .Lplpred_differ_2_β
.Lplch0_c1_body:
plseq2_g0_α:
 bb89632_α:
# BOX RESOLVE_UNIFY (WAM-CP-7c var-var — 1 call)  [x86() self-encoding]
 mov edi, 0
 mov esi, 2
 call rt_unify_var_var@PLT
 test eax, eax
 je .Lplpred_differ_2_β
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_differ_2_β
plseq2_g1_α:
 bb89296_α:
# BOX RESOLVE_UNIFY (WAM-CP-7c var-var — 1 call)  [x86() self-encoding]
 mov edi, 1
 mov esi, 3
 call rt_unify_var_var@PLT
 test eax, eax
 je .Lplpred_differ_2_β
 jmp .Lplch0_exit_γ
 plseq2_g1_β:
 jmp .Lplpred_differ_2_β
.Lplch0_c1_beta:
 jmp .Lplpred_differ_2_β
.Lplpred_differ_2_redo:
jmp .Lplpred_differ_2_β
.Lplpred_differ_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_differ_2_ω:
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
plseq3_g0_α:
 bb82336_α:
# BOX RESOLVE_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb82336_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite4_then_α
bb82336_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite4_else_α
 xite4_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb82336_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb82336_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite4_then_α
bb82336_α_nosol: jmp xite4_else_α
xite4_then_α:
 bb82112_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq3_g1_α
xite4_then_β: jmp plseq3_g1_α
xite4_else_α:
 bb81888_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq3_g1_α
xite4_else_β: jmp plseq3_g1_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq3_g0_β:
 jmp main_ω
plseq3_g1_α:
 bb81776_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq3_g2_α
plseq3_g1_β: jmp plseq3_g2_α
plseq3_g2_α:
 bb81328_α:
# BOX RESOLVE_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb81328_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite5_then_α
bb81328_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite5_else_α
 xite5_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb81328_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb81328_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite5_then_α
bb81328_α_nosol: jmp xite5_else_α
xite5_then_α:
 bb81104_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq3_g3_α
xite5_then_β: jmp plseq3_g3_α
xite5_else_α:
 bb80880_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq3_g3_α
xite5_else_β: jmp plseq3_g3_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq3_g2_β:
 jmp main_ω
plseq3_g3_α:
 bb80768_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq3_g3_β: jmp main_γ
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
.S0: .string "differ"
.S1: .string "a"
.S2: .string "b"
.S3: .string "yes"
.S4: .string "no"
.text
