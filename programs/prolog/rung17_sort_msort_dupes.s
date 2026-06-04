  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .section .rodata
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  mov edi, 6
  call rt_env_alloc@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
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
plseq0_g0_α:
 bb16832_α:
 # BOX RESOLVE_BUILTIN(msort/2)
 sub rsp, 16
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
 lea rdx, [rip + .S0]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S1]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S1]
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
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov edi, 1
 mov edx, 56
 mov rcx, 0
 xor r8d, r8d
 call rt_sort_msort_term@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb15376_α:
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
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g2_α
 plseq0_g1_β:
 jmp main_ω
plseq0_g2_α:
 bb15152_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb15040_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g4_α
plseq0_g3_β: jmp plseq0_g4_α
plseq0_g4_α:
 bb14816_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb14704_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g6_α
plseq0_g5_β: jmp plseq0_g6_α
plseq0_g6_α:
 bb14480_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 3
 call rt_write_var@PLT
 jmp plseq0_g7_α
plseq0_g6_β: jmp plseq0_g7_α
plseq0_g7_α:
 bb14368_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g8_α
plseq0_g7_β: jmp plseq0_g8_α
plseq0_g8_α:
 bb14144_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 4
 call rt_write_var@PLT
 jmp plseq0_g9_α
plseq0_g8_β: jmp plseq0_g9_α
plseq0_g9_α:
 bb14032_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g10_α
plseq0_g9_β: jmp plseq0_g10_α
plseq0_g10_α:
 bb13808_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 5
 call rt_write_var@PLT
 jmp plseq0_g11_α
plseq0_g10_β: jmp plseq0_g11_α
plseq0_g11_α:
 bb13696_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g11_β: jmp main_γ
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
.S0: .string "b"
.S1: .string "a"
.S2: .string "c"
.S3: .string "[]"
.S4: .string "."
.text
