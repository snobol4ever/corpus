  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_reverse_2
  .quad .Lplpred_reverse_2_redo
  .quad .Lpl_pname_1
  .quad 2
  .quad .Lplpred_length_2
  .quad .Lplpred_length_2_redo
  .quad .Lpl_pname_2
  .quad 3
  .quad .Lplpred_append_3
  .quad .Lplpred_append_3_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "reverse"
.Lpl_pname_1:
  .asciz "length"
.Lpl_pname_2:
  .asciz "append"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 3
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
.Lplpred_reverse_2:
 bb560_α:
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
 jmp .Lplpred_reverse_2_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_reverse_2_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_reverse_2_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_reverse_2_ω
 .Lplpred_reverse_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_reverse_2_ω
.Lplch0_c0_body:
plseq1_g0_α:
 bb94944_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_reverse_2_β
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_reverse_2_β
plseq1_g1_α:
 bb94608_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_reverse_2_β
 jmp .Lplch0_exit_γ
 plseq1_g1_β:
 jmp .Lplpred_reverse_2_β
.Lplch0_c0_beta:
 jmp .Lplpred_reverse_2_β
.Lplch0_c1_body:
plseq2_g0_α:
 bb99360_α:
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
 mov rsi, 2
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
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_reverse_2_β
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_reverse_2_β
plseq2_g1_α:
 bb99024_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq2_g2_α
 plseq2_g1_β:
 jmp .Lplpred_reverse_2_β
plseq2_g2_α:
 bb98688_α:
# BOX RESOLVE_CALL reverse/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
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
 call .Lplpred_reverse_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb98688_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq2_g3_α
bb98688_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_reverse_2_β
 plseq2_g2_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb98688_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_reverse_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb98688_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq2_g3_α
bb98688_α_nosol: jmp .Lplpred_reverse_2_β
plseq2_g3_α:
 bb98016_α:
# BOX RESOLVE_CALL append/3 (WAM-CP-5, n_args=3)
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 56
 mov rsi, 1
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
 call .Lplpred_append_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb98016_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplch0_exit_γ
bb98016_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq2_g2_β
 plseq2_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb98016_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_append_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb98016_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplch0_exit_γ
bb98016_α_nosol: jmp plseq2_g2_β
.Lplch0_c1_beta:
 jmp plseq2_g3_β
.Lplpred_reverse_2_redo:
jmp .Lplpred_reverse_2_β
.Lplpred_reverse_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_reverse_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_length_2:
 bb9280_α:
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
 .Lplch3_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch3_exhausted
 cmp edi, 0
 je .Lplch3_c0_pre
 cmp edi, 1
 je .Lplch3_c1_pre
 jmp .Lplch3_exhausted
 .Lplch3_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch3_c0_body
 .Lplch3_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch3_c1_body
 .Lplch3_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch3_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_length_2_γ
 .Lplch3_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_length_2_γ
 .Lplch3_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_length_2_ω
 .Lplch3_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_length_2_ω
 .Lplpred_length_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch3_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch3_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch3_dispatch
.Lplch3_β_nosol: jmp .Lplpred_length_2_ω
.Lplch3_c0_body:
plseq4_g0_α:
 bb3776_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_length_2_β
 jmp plseq4_g1_α
 plseq4_g0_β:
 jmp .Lplpred_length_2_β
plseq4_g1_α:
 bb3440_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_length_2_β
 jmp .Lplch3_exit_γ
 plseq4_g1_β:
 jmp .Lplpred_length_2_β
.Lplch3_c0_beta:
 jmp .Lplpred_length_2_β
.Lplch3_c1_body:
plseq5_g0_α:
 bb8080_α:
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
 mov rsi, 2
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
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_length_2_β
 jmp plseq5_g1_α
 plseq5_g0_β:
 jmp .Lplpred_length_2_β
plseq5_g1_α:
 bb7744_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq5_g2_α
 plseq5_g1_β:
 jmp .Lplpred_length_2_β
plseq5_g2_α:
 bb7408_α:
# BOX RESOLVE_CALL length/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
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
 call .Lplpred_length_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb7408_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq5_g3_α
bb7408_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_length_2_β
 plseq5_g2_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb7408_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_length_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb7408_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq5_g3_α
bb7408_α_nosol: jmp .Lplpred_length_2_β
plseq5_g3_α:
 bb6848_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 1
 lea rsi, [rip + .S5]
 mov edx, 56
 mov rcx, 4
 mov r8d, 0
 mov r9, 1
 call rt_is@PLT
 test eax, eax
 je plseq5_g2_β
 jmp .Lplch3_exit_γ
plseq5_g3_β: jmp plseq5_g2_β
.Lplch3_c1_beta:
 jmp plseq5_g2_β
.Lplpred_length_2_redo:
jmp .Lplpred_length_2_β
.Lplpred_length_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_length_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_append_3:
 bb18448_α:
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
 .Lplch6_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch6_exhausted
 cmp edi, 0
 je .Lplch6_c0_pre
 cmp edi, 1
 je .Lplch6_c1_pre
 jmp .Lplch6_exhausted
 .Lplch6_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c0_body
 .Lplch6_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c1_body
 .Lplch6_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch6_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_append_3_γ
 .Lplch6_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_append_3_γ
 .Lplch6_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_append_3_ω
 .Lplch6_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_append_3_ω
 .Lplpred_append_3_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch6_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch6_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch6_dispatch
.Lplch6_β_nosol: jmp .Lplpred_append_3_ω
.Lplch6_c0_body:
plseq7_g0_α:
 bb12832_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_append_3_β
 jmp plseq7_g1_α
 plseq7_g0_β:
 jmp .Lplpred_append_3_β
plseq7_g1_α:
 bb12496_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq7_g2_α
 plseq7_g1_β:
 jmp .Lplpred_append_3_β
plseq7_g2_α:
 bb12160_α:
# BOX RESOLVE_UNIFY (WAM-CP-7c var-var — 1 call)  [x86() self-encoding]
 mov edi, 2
 mov esi, 1
 call rt_unify_var_var@PLT
 test eax, eax
 je .Lplpred_append_3_β
 jmp .Lplch6_exit_γ
 plseq7_g2_β:
 jmp .Lplpred_append_3_β
.Lplch6_c0_beta:
 jmp .Lplpred_append_3_β
.Lplch6_c1_body:
plseq8_g0_α:
 bb17248_α:
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
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_append_3_β
 jmp plseq8_g1_α
 plseq8_g0_β:
 jmp .Lplpred_append_3_β
plseq8_g1_α:
 bb16912_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq8_g2_α
 plseq8_g1_β:
 jmp .Lplpred_append_3_β
plseq8_g2_α:
 bb16352_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 mov rsi, 5
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_append_3_β
 jmp plseq8_g3_α
 plseq8_g2_β:
 jmp .Lplpred_append_3_β
plseq8_g3_α:
 bb15904_α:
# BOX RESOLVE_CALL append/3 (WAM-CP-5, n_args=3)
 mov edi, 56
 mov rsi, 4
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
 call .Lplpred_append_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb15904_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplch6_exit_γ
bb15904_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_append_3_β
 plseq8_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb15904_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_append_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb15904_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplch6_exit_γ
bb15904_α_nosol: jmp .Lplpred_append_3_β
.Lplch6_c1_beta:
 jmp plseq8_g3_β
.Lplpred_append_3_redo:
jmp .Lplpred_append_3_β
.Lplpred_append_3_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_append_3_ω:
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
plseq9_g0_α:
 bb90384_α:
# BOX RESOLVE_CALL append/3 (WAM-CP-5, n_args=3)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S6]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S7]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S8]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_append_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb90384_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq9_g1_α
bb90384_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp main_ω
 plseq9_g0_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb90384_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_append_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb90384_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq9_g1_α
bb90384_α_nosol: jmp main_ω
plseq9_g1_α:
 bb90160_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq9_g2_α
plseq9_g1_β: jmp plseq9_g2_α
plseq9_g2_α:
 bb90048_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq9_g3_α
plseq9_g2_β: jmp plseq9_g3_α
plseq9_g3_α:
 bb88816_α:
# BOX RESOLVE_CALL length/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S6]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S7]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S8]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
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
 call .Lplpred_length_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb88816_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq9_g4_α
bb88816_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq9_g0_β
 plseq9_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb88816_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_length_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb88816_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq9_g4_α
bb88816_α_nosol: jmp plseq9_g0_β
plseq9_g4_α:
 bb88592_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq9_g5_α
plseq9_g4_β: jmp plseq9_g5_α
plseq9_g5_α:
 bb88480_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq9_g6_α
plseq9_g5_β: jmp plseq9_g6_α
plseq9_g6_α:
 bb87248_α:
# BOX RESOLVE_CALL reverse/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S6]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S7]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S8]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
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
 call .Lplpred_reverse_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb87248_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq9_g7_α
bb87248_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq9_g3_β
 plseq9_g6_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb87248_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_reverse_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb87248_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq9_g7_α
bb87248_α_nosol: jmp plseq9_g3_β
plseq9_g7_α:
 bb87024_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq9_g8_α
plseq9_g7_β: jmp plseq9_g8_α
plseq9_g8_α:
 bb86912_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq9_g8_β: jmp main_γ
main_β:
 jmp plseq9_g6_β
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
.S0: .string "[]"
.S1: .string "."
.S2: .string "reverse"
.S3: .string "append"
.S4: .string "length"
.S5: .string "+"
.S6: .string "a"
.S7: .string "b"
.S8: .string "c"
.S9: .string "d"
.text
