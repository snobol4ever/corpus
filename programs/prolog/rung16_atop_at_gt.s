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
 bb13616_α:
 # BOX RESOLVE_BUILTIN(@>/2)
 sub rsp, 16
 lea rdi, [rip + .S1]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S2]
 mov qword ptr [rsp + 0], rax
 call rt_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite1_else_α
 jmp xite1_then_α
xite1_cond_β: jmp xite1_else_α
xite1_then_α:
 bb13392_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g1_α
xite1_then_β: jmp plseq0_g1_α
xite1_else_α:
 bb13168_α:
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
 bb13056_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb12608_α:
 # BOX RESOLVE_BUILTIN(@>/2)
 sub rsp, 16
 lea rdi, [rip + .S1]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S2]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S0]
 mov qword ptr [rsp + 0], rax
 call rt_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite2_else_α
 jmp xite2_then_α
xite2_cond_β: jmp xite2_else_α
xite2_then_α:
 bb12384_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g3_α
xite2_then_β: jmp plseq0_g3_α
xite2_else_α:
 bb12160_α:
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
 bb12048_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g4_α
plseq0_g3_β: jmp plseq0_g4_α
plseq0_g4_α:
 bb11600_α:
 # BOX RESOLVE_BUILTIN(@>/2)
 sub rsp, 16
 lea rdi, [rip + .S1]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S5]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S5]
 mov qword ptr [rsp + 0], rax
 call rt_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite3_else_α
 jmp xite3_then_α
xite3_cond_β: jmp xite3_else_α
xite3_then_α:
 bb11376_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g5_α
xite3_then_β: jmp plseq0_g5_α
xite3_else_α:
 bb11152_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g5_α
xite3_else_β: jmp plseq0_g5_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g4_β:
 jmp main_ω
plseq0_g5_α:
 bb11040_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g5_β: jmp main_γ
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
.S1: .string "@>"
.S2: .string "a"
.S3: .string "yes"
.S4: .string "no"
.S5: .string "z"
.text
