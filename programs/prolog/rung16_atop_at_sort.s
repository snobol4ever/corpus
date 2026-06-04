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
 bb59888_α:
 # BOX RESOLVE_BUILTIN(@</2)
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
 bb59664_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g1_α
xite1_then_β: jmp plseq0_g1_α
xite1_else_α:
 bb59440_α:
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
 bb59328_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb58880_α:
 # BOX RESOLVE_BUILTIN(@>/2)
 sub rsp, 16
 lea rdi, [rip + .S6]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S5]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S7]
 mov qword ptr [rsp + 0], rax
 call rt_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite2_else_α
 jmp xite2_then_α
xite2_cond_β: jmp xite2_else_α
xite2_then_α:
 bb58656_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S8]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g3_α
xite2_then_β: jmp plseq0_g3_α
xite2_else_α:
 bb58432_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S9]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g3_α
xite2_else_β: jmp plseq0_g3_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g2_β:
 jmp main_ω
plseq0_g3_α:
 bb58320_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g4_α
plseq0_g3_β: jmp plseq0_g4_α
plseq0_g4_α:
 bb57872_α:
 # BOX RESOLVE_BUILTIN(@=</2)
 sub rsp, 16
 lea rdi, [rip + .S11]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S10]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S10]
 mov qword ptr [rsp + 0], rax
 call rt_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite3_else_α
 jmp xite3_then_α
xite3_cond_β: jmp xite3_else_α
xite3_then_α:
 bb57648_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S12]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g5_α
xite3_then_β: jmp plseq0_g5_α
xite3_else_α:
 bb57424_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S13]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g5_α
xite3_else_β: jmp plseq0_g5_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g4_β:
 jmp main_ω
plseq0_g5_α:
 bb57312_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g6_α
plseq0_g5_β: jmp plseq0_g6_α
plseq0_g6_α:
 bb56864_α:
 # BOX RESOLVE_BUILTIN(@>=/2)
 sub rsp, 16
 lea rdi, [rip + .S15]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S14]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S10]
 mov qword ptr [rsp + 0], rax
 call rt_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite4_else_α
 jmp xite4_then_α
xite4_cond_β: jmp xite4_else_α
xite4_then_α:
 bb56640_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S16]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g7_α
xite4_then_β: jmp plseq0_g7_α
xite4_else_α:
 bb56416_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S17]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g7_α
xite4_else_β: jmp plseq0_g7_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g6_β:
 jmp main_ω
plseq0_g7_α:
 bb56304_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g7_β: jmp main_γ
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
.S0: .string "apple"
.S1: .string "@<"
.S2: .string "banana"
.S3: .string "ok1"
.S4: .string "fail1"
.S5: .string "zebra"
.S6: .string "@>"
.S7: .string "mango"
.S8: .string "ok2"
.S9: .string "fail2"
.S10: .string "cat"
.S11: .string "@=<"
.S12: .string "ok3"
.S13: .string "fail3"
.S14: .string "dog"
.S15: .string "@>="
.S16: .string "ok4"
.S17: .string "fail4"
.text
