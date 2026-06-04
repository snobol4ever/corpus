  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 3
  .quad .Lplpred_item_3
  .quad .Lplpred_item_3_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "item"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 1
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
.Lplpred_item_3:
plseq0_g0_α:
 bb70432_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g1_α
 plseq0_g0_β:
 jmp .Lplpred_item_3_ω
plseq0_g1_α:
 bb70096_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g2_α
 plseq0_g1_β:
 jmp .Lplpred_item_3_ω
plseq0_g2_α:
 bb69760_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq0_g3_α
 plseq0_g2_β:
 jmp .Lplpred_item_3_ω
plseq0_g3_α:
 bb69200_α:
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
 mov rsi, 2
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
 je .Lplpred_item_3_ω
 jmp .Lplpred_item_3_γ
 plseq0_g3_β:
 jmp .Lplpred_item_3_ω
.Lplpred_item_3_β:
 jmp .Lplpred_item_3_ω
.Lplpred_item_3_redo:
jmp .Lplpred_item_3_β
.Lplpred_item_3_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_item_3_ω:
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
 bb63936_α:
 # BOX RESOLVE_BUILTIN(findall/-986797440)
 sub rsp, 32
 mov edi, 56
 mov rsi, 0
 xor edx, edx
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
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 16], rax
 lea rdi, [rip + .S1]
 mov esi, 3
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 32
 push rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 push rax
 sub rsp, 8
 mov rdx, [rsp + 8]
 mov rsi, [rsp + 16]
 mov rdi, [rsp + 24]
 call rt_findall_term@PLT
 add rsp, 32
 test eax, eax
 je main_ω
 jmp plseq1_g1_α
plseq1_g0_β: jmp main_ω
plseq1_g1_α:
 bb63712_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq1_g2_α
plseq1_g1_β: jmp plseq1_g2_α
plseq1_g2_α:
 bb63600_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq1_g3_α
plseq1_g2_β: jmp plseq1_g3_α
plseq1_g3_α:
 bb61216_α:
 # BOX RESOLVE_BUILTIN(findall/-986797344)
 sub rsp, 32
 mov edi, 56
 mov rsi, 0
 xor edx, edx
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 16], rax
 lea rdi, [rip + .S1]
 mov esi, 3
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 32
 push rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 push rax
 sub rsp, 8
 mov rdx, [rsp + 8]
 mov rsi, [rsp + 16]
 mov rdi, [rsp + 24]
 call rt_findall_term@PLT
 add rsp, 32
 test eax, eax
 je main_ω
 jmp plseq1_g4_α
plseq1_g3_β: jmp main_ω
plseq1_g4_α:
 bb60992_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq1_g5_α
plseq1_g4_β: jmp plseq1_g5_α
plseq1_g5_α:
 bb60880_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq1_g5_β: jmp main_γ
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
.S1: .string "item"
.S2: .string "a"
.S3: .string "[]"
.S4: .string "b"
.text
