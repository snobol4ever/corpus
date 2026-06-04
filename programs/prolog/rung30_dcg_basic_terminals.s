  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_greeting_2
  .quad .Lplpred_greeting_2_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "greeting"
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
.Lplpred_greeting_2:
plseq0_g0_α:
 bb40432_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g1_α
 plseq0_g0_β:
 jmp .Lplpred_greeting_2_ω
plseq0_g1_α:
 bb40096_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g2_α
 plseq0_g1_β:
 jmp .Lplpred_greeting_2_ω
plseq0_g2_α:
 bb39536_α:
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
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 2
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
 je .Lplpred_greeting_2_ω
 jmp plseq0_g3_α
 plseq0_g2_β:
 jmp .Lplpred_greeting_2_ω
plseq0_g3_α:
 bb38976_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpred_greeting_2_ω
 jmp .Lplpred_greeting_2_γ
 plseq0_g3_β:
 jmp .Lplpred_greeting_2_ω
.Lplpred_greeting_2_β:
 jmp .Lplpred_greeting_2_ω
.Lplpred_greeting_2_redo:
jmp .Lplpred_greeting_2_β
.Lplpred_greeting_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_greeting_2_ω:
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
plseq1_g0_α:
 bb35200_α:
# BOX RESOLVE_CALL greeting/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S4]
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S4]
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
 call .Lplpred_greeting_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb35200_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite2_then_α
bb35200_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite2_else_α
 xite2_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb35200_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_greeting_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb35200_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite2_then_α
bb35200_α_nosol: jmp xite2_else_α
xite2_then_α:
 bb34976_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S5]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g1_α
xite2_then_β: jmp plseq1_g1_α
xite2_else_α:
 bb34752_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g1_α
xite2_else_β: jmp plseq1_g1_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq1_g0_β:
 jmp main_ω
plseq1_g1_α:
 bb34640_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq1_g2_α
plseq1_g1_β: jmp plseq1_g2_α
plseq1_g2_α:
 bb33744_α:
# BOX RESOLVE_CALL greeting/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
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
 lea rdx, [rip + .S4]
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S4]
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
 call .Lplpred_greeting_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb33744_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite3_then_α
bb33744_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite3_else_α
 xite3_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb33744_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_greeting_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb33744_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite3_then_α
bb33744_α_nosol: jmp xite3_else_α
xite3_then_α:
 bb33520_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S5]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g3_α
xite3_then_β: jmp plseq1_g3_α
xite3_else_α:
 bb33296_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g3_α
xite3_else_β: jmp plseq1_g3_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq1_g2_β:
 jmp main_ω
plseq1_g3_α:
 bb33184_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq1_g3_β: jmp main_γ
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
.S0: .string "hello"
.S1: .string "."
.S2: .string "world"
.S3: .string "greeting"
.S4: .string "[]"
.S5: .string "yes"
.S6: .string "no"
.S7: .string "there"
.text
