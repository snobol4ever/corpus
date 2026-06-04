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
 bb16976_α:
 # BOX RESOLVE_BUILTIN(is_list/1)
 sub rsp, 16
 sub rsp, 16
 mov edi, 0
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S1]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 lea rdi, [rip + .S0]
 call rt_type_test_term@PLT
 add rsp, 16
 test eax, eax
 je xite1_else_α
 jmp xite1_then_α
xite1_cond_β: jmp xite1_else_α
xite1_then_α:
 bb16752_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g1_α
xite1_then_β: jmp plseq0_g1_α
xite1_else_α:
 bb16528_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g1_α
xite1_else_β: jmp plseq0_g1_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g0_β:
 jmp main_ω
plseq0_g1_α:
 bb16416_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb15856_α:
 # BOX RESOLVE_BUILTIN(is_list/1)
 sub rsp, 16
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S5]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S6]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 lea rdi, [rip + .S0]
 call rt_type_test_term@PLT
 add rsp, 16
 test eax, eax
 je xite2_else_α
 jmp xite2_then_α
xite2_cond_β: jmp xite2_else_α
xite2_then_α:
 bb15632_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g3_α
xite2_then_β: jmp plseq0_g3_α
xite2_else_α:
 bb15408_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g3_α
xite2_else_β: jmp plseq0_g3_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g2_β:
 jmp main_ω
plseq0_g3_α:
 bb15296_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g3_β: jmp main_γ
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
.S0: .string "is_list"
.S1: .string "[]"
.S2: .string "."
.S3: .string "yes"
.S4: .string "no"
.S5: .string "a"
.S6: .string "b"
.text
