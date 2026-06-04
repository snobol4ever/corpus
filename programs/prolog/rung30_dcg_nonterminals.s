  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_sentence_2
  .quad .Lplpred_sentence_2_redo
  .quad .Lpl_pname_1
  .quad 2
  .quad .Lplpred_noun_2
  .quad .Lplpred_noun_2_redo
  .quad .Lpl_pname_2
  .quad 2
  .quad .Lplpred_verb_phrase_2
  .quad .Lplpred_verb_phrase_2_redo
  .quad .Lpl_pname_3
  .quad 2
  .quad .Lplpred_verb_2
  .quad .Lplpred_verb_2_redo
  .quad .Lpl_pname_4
  .quad 2
  .quad .Lplpred_noun_phrase_2
  .quad .Lplpred_noun_phrase_2_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "sentence"
.Lpl_pname_1:
  .asciz "noun"
.Lpl_pname_2:
  .asciz "verb_phrase"
.Lpl_pname_3:
  .asciz "verb"
.Lpl_pname_4:
  .asciz "noun_phrase"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 5
  call rt_pl_table_install@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
.Lplpred_sentence_2:
plseq0_g0_α:
 bb50816_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g1_α
 plseq0_g0_β:
 jmp .Lplpred_sentence_2_ω
plseq0_g1_α:
 bb50480_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g2_α
 plseq0_g1_β:
 jmp .Lplpred_sentence_2_ω
plseq0_g2_α:
 bb50144_α:
# BOX RESOLVE_CALL noun_phrase/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_noun_phrase_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb50144_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq0_g3_α
bb50144_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_sentence_2_ω
 plseq0_g2_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb50144_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_noun_phrase_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb50144_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq0_g3_α
bb50144_α_nosol: jmp .Lplpred_sentence_2_ω
plseq0_g3_α:
 bb49808_α:
# BOX RESOLVE_CALL verb_phrase/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
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
 call .Lplpred_verb_phrase_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb49808_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplpred_sentence_2_γ
bb49808_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq0_g2_β
 plseq0_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb49808_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_verb_phrase_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb49808_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplpred_sentence_2_γ
bb49808_α_nosol: jmp plseq0_g2_β
.Lplpred_sentence_2_β:
 jmp plseq0_g3_β
.Lplpred_sentence_2_redo:
jmp .Lplpred_sentence_2_β
.Lplpred_sentence_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_sentence_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_noun_2:
 bb63728_α:
# BOX RESOLVE_CHOICE n=3 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch1_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 3
 jge .Lplch1_exhausted
 cmp edi, 0
 je .Lplch1_c0_pre
 cmp edi, 1
 je .Lplch1_c1_pre
 cmp edi, 2
 je .Lplch1_c2_pre
 jmp .Lplch1_exhausted
 .Lplch1_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch1_c0_body
 .Lplch1_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch1_c1_body
 .Lplch1_c2_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch1_c2_body
 .Lplch1_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch1_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_noun_2_γ
 .Lplch1_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_noun_2_γ
 .Lplch1_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_noun_2_ω
 .Lplch1_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_noun_2_ω
 .Lplpred_noun_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch1_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch1_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch1_dispatch
.Lplch1_β_nosol: jmp .Lplpred_noun_2_ω
.Lplch1_c0_body:
plseq2_g0_α:
 bb54816_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_noun_2_β
plseq2_g1_α:
 bb54480_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq2_g2_α
 plseq2_g1_β:
 jmp .Lplpred_noun_2_β
plseq2_g2_α:
 bb53920_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_noun_2_β
 jmp .Lplch1_exit_γ
 plseq2_g2_β:
 jmp .Lplpred_noun_2_β
.Lplch1_c0_beta:
 jmp .Lplpred_noun_2_β
.Lplch1_c1_body:
plseq3_g0_α:
 bb58784_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g1_α
 plseq3_g0_β:
 jmp .Lplpred_noun_2_β
plseq3_g1_α:
 bb58448_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g2_α
 plseq3_g1_β:
 jmp .Lplpred_noun_2_β
plseq3_g2_α:
 bb57888_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_noun_2_β
 jmp .Lplch1_exit_γ
 plseq3_g2_β:
 jmp .Lplpred_noun_2_β
.Lplch1_c1_beta:
 jmp .Lplpred_noun_2_β
.Lplch1_c2_body:
plseq4_g0_α:
 bb62752_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq4_g1_α
 plseq4_g0_β:
 jmp .Lplpred_noun_2_β
plseq4_g1_α:
 bb62416_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq4_g2_α
 plseq4_g1_β:
 jmp .Lplpred_noun_2_β
plseq4_g2_α:
 bb61856_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_noun_2_β
 jmp .Lplch1_exit_γ
 plseq4_g2_β:
 jmp .Lplpred_noun_2_β
.Lplch1_c2_beta:
 jmp .Lplpred_noun_2_β
.Lplpred_noun_2_redo:
jmp .Lplpred_noun_2_β
.Lplpred_noun_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_noun_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_verb_phrase_2:
 bb72336_α:
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
 .Lplch5_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch5_exhausted
 cmp edi, 0
 je .Lplch5_c0_pre
 cmp edi, 1
 je .Lplch5_c1_pre
 jmp .Lplch5_exhausted
 .Lplch5_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch5_c0_body
 .Lplch5_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch5_c1_body
 .Lplch5_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch5_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_verb_phrase_2_γ
 .Lplch5_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_verb_phrase_2_γ
 .Lplch5_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_verb_phrase_2_ω
 .Lplch5_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_verb_phrase_2_ω
 .Lplpred_verb_phrase_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch5_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch5_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch5_dispatch
.Lplch5_β_nosol: jmp .Lplpred_verb_phrase_2_ω
.Lplch5_c0_body:
plseq6_g0_α:
 bb67616_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq6_g1_α
 plseq6_g0_β:
 jmp .Lplpred_verb_phrase_2_β
plseq6_g1_α:
 bb67280_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq6_g2_α
 plseq6_g1_β:
 jmp .Lplpred_verb_phrase_2_β
plseq6_g2_α:
 bb66944_α:
# BOX RESOLVE_CALL verb/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_verb_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb66944_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq6_g3_α
bb66944_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_verb_phrase_2_β
 plseq6_g2_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb66944_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_verb_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb66944_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq6_g3_α
bb66944_α_nosol: jmp .Lplpred_verb_phrase_2_β
plseq6_g3_α:
 bb66608_α:
# BOX RESOLVE_CALL noun_phrase/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
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
 call .Lplpred_noun_phrase_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb66608_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplch5_exit_γ
bb66608_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq6_g2_β
 plseq6_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb66608_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_noun_phrase_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb66608_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplch5_exit_γ
bb66608_α_nosol: jmp plseq6_g2_β
.Lplch5_c0_beta:
 jmp plseq6_g3_β
.Lplch5_c1_body:
plseq7_g0_α:
 bb71360_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq7_g1_α
 plseq7_g0_β:
 jmp .Lplpred_verb_phrase_2_β
plseq7_g1_α:
 bb71024_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq7_g2_α
 plseq7_g1_β:
 jmp .Lplpred_verb_phrase_2_β
plseq7_g2_α:
 bb70688_α:
# BOX RESOLVE_CALL verb/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_verb_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb70688_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplch5_exit_γ
bb70688_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_verb_phrase_2_β
 plseq7_g2_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb70688_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_verb_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb70688_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplch5_exit_γ
bb70688_α_nosol: jmp .Lplpred_verb_phrase_2_β
.Lplch5_c1_beta:
 jmp plseq7_g2_β
.Lplpred_verb_phrase_2_redo:
jmp .Lplpred_verb_phrase_2_β
.Lplpred_verb_phrase_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_verb_phrase_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_verb_2:
 bb81056_α:
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
 .Lplch8_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch8_exhausted
 cmp edi, 0
 je .Lplch8_c0_pre
 cmp edi, 1
 je .Lplch8_c1_pre
 jmp .Lplch8_exhausted
 .Lplch8_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c0_body
 .Lplch8_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c1_body
 .Lplch8_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch8_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_verb_2_γ
 .Lplch8_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_verb_2_γ
 .Lplch8_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_verb_2_ω
 .Lplch8_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_verb_2_ω
 .Lplpred_verb_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch8_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch8_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch8_dispatch
.Lplch8_β_nosol: jmp .Lplpred_verb_2_ω
.Lplch8_c0_body:
plseq9_g0_α:
 bb76112_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq9_g1_α
 plseq9_g0_β:
 jmp .Lplpred_verb_2_β
plseq9_g1_α:
 bb75776_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq9_g2_α
 plseq9_g1_β:
 jmp .Lplpred_verb_2_β
plseq9_g2_α:
 bb75216_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_verb_2_β
 jmp .Lplch8_exit_γ
 plseq9_g2_β:
 jmp .Lplpred_verb_2_β
.Lplch8_c0_beta:
 jmp .Lplpred_verb_2_β
.Lplch8_c1_body:
plseq10_g0_α:
 bb80080_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq10_g1_α
 plseq10_g0_β:
 jmp .Lplpred_verb_2_β
plseq10_g1_α:
 bb79744_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq10_g2_α
 plseq10_g1_β:
 jmp .Lplpred_verb_2_β
plseq10_g2_α:
 bb79184_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S8]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_verb_2_β
 jmp .Lplch8_exit_γ
 plseq10_g2_β:
 jmp .Lplpred_verb_2_β
.Lplch8_c1_beta:
 jmp .Lplpred_verb_2_β
.Lplpred_verb_2_redo:
jmp .Lplpred_verb_2_β
.Lplpred_verb_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_verb_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_noun_phrase_2:
plseq11_g0_α:
 bb85168_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq11_g1_α
 plseq11_g0_β:
 jmp .Lplpred_noun_phrase_2_ω
plseq11_g1_α:
 bb84832_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq11_g2_α
 plseq11_g1_β:
 jmp .Lplpred_noun_phrase_2_ω
plseq11_g2_α:
 bb84272_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 xor rsi, rsi
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_noun_phrase_2_ω
 jmp plseq11_g3_α
 plseq11_g2_β:
 jmp .Lplpred_noun_phrase_2_ω
plseq11_g3_α:
 bb83936_α:
# BOX RESOLVE_CALL noun/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
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
 call .Lplpred_noun_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb83936_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplpred_noun_phrase_2_γ
bb83936_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_noun_phrase_2_ω
 plseq11_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb83936_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_noun_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb83936_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplpred_noun_phrase_2_γ
bb83936_α_nosol: jmp .Lplpred_noun_phrase_2_ω
.Lplpred_noun_phrase_2_β:
 jmp plseq11_g3_β
.Lplpred_noun_phrase_2_redo:
jmp .Lplpred_noun_phrase_2_β
.Lplpred_noun_phrase_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_noun_phrase_2_ω:
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
plseq12_g0_α:
 bb45360_α:
# BOX RESOLVE_CALL sentence/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S2]
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
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S5]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
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
 call .Lplpred_sentence_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb45360_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite13_then_α
bb45360_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite13_else_α
 xite13_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb45360_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_sentence_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb45360_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite13_then_α
bb45360_α_nosol: jmp xite13_else_α
xite13_then_α:
 bb45136_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S13]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq12_g1_α
xite13_then_β: jmp plseq12_g1_α
xite13_else_α:
 bb44912_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S14]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq12_g1_α
xite13_else_β: jmp plseq12_g1_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq12_g0_β:
 jmp main_ω
plseq12_g1_α:
 bb44800_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq12_g2_α
plseq12_g1_β: jmp plseq12_g2_α
plseq12_g2_α:
 bb43680_α:
# BOX RESOLVE_CALL sentence/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S9]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S4]
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
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
 call .Lplpred_sentence_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb43680_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite14_then_α
bb43680_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite14_else_α
 xite14_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb43680_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_sentence_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb43680_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite14_then_α
bb43680_α_nosol: jmp xite14_else_α
xite14_then_α:
 bb43456_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S13]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq12_g3_α
xite14_then_β: jmp plseq12_g3_α
xite14_else_α:
 bb43232_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S14]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq12_g3_α
xite14_else_β: jmp plseq12_g3_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq12_g2_β:
 jmp main_ω
plseq12_g3_α:
 bb43120_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq12_g4_α
plseq12_g3_β: jmp plseq12_g4_α
plseq12_g4_α:
 bb42224_α:
# BOX RESOLVE_CALL sentence/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S2]
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
 lea rdx, [rip + .S12]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
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
 call .Lplpred_sentence_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb42224_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite15_then_α
bb42224_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite15_else_α
 xite15_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb42224_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_sentence_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb42224_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite15_then_α
bb42224_α_nosol: jmp xite15_else_α
xite15_then_α:
 bb42000_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S13]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq12_g5_α
xite15_then_β: jmp plseq12_g5_α
xite15_else_α:
 bb41776_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S14]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq12_g5_α
xite15_else_β: jmp plseq12_g5_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq12_g4_β:
 jmp main_ω
plseq12_g5_α:
 bb41664_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq12_g5_β: jmp main_γ
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
.S0: .string "noun_phrase"
.S1: .string "verb_phrase"
.S2: .string "cat"
.S3: .string "."
.S4: .string "dog"
.S5: .string "mouse"
.S6: .string "verb"
.S7: .string "chases"
.S8: .string "sees"
.S9: .string "the"
.S10: .string "noun"
.S11: .string "sentence"
.S12: .string "[]"
.S13: .string "yes"
.S14: .string "no"
.text
