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
  mov edi, 1
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
 bb6144_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 0
 lea rsi, [rip + .S0]
 mov edx, 0
 mov rcx, 2
 mov r8d, 0
 mov r9, 3
 call rt_is@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb5920_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb5808_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb5360_α:
 # BOX RESOLVE_BUILTIN(</2)
 sub rsp, 16
 lea rdi, [rip + .S1]
 mov esi, 0
 mov rdx, 3
 xor ecx, ecx
 mov r8d, 0
 mov r9, 5
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite1_else_α
 jmp xite1_then_α
xite1_cond_β: jmp xite1_else_α
xite1_then_α:
 bb5136_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S2]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g4_α
xite1_then_β: jmp plseq0_g4_α
xite1_else_α:
 bb4912_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g4_α
xite1_else_β: jmp plseq0_g4_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g3_β:
 jmp main_ω
plseq0_g4_α:
 bb4800_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb4352_α:
 # BOX RESOLVE_BUILTIN(</2)
 sub rsp, 16
 lea rdi, [rip + .S1]
 mov esi, 0
 mov rdx, 5
 xor ecx, ecx
 mov r8d, 0
 mov r9, 3
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite2_else_α
 jmp xite2_then_α
xite2_cond_β: jmp xite2_else_α
xite2_then_α:
 bb4128_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S2]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g6_α
xite2_then_β: jmp plseq0_g6_α
xite2_else_α:
 bb3904_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g6_α
xite2_else_β: jmp plseq0_g6_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g5_β:
 jmp main_ω
plseq0_g6_α:
 bb3792_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g6_β: jmp main_γ
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
.S0: .string "*"
.S1: .string "<"
.S2: .string "true"
.S3: .string "false"
.text
