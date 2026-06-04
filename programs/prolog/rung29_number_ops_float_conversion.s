  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  mov edi, 4
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
 bb4576_α:
 # BOX RESOLVE_BUILTIN(is/2)
 sub rsp, 8
 mov edi, 0
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, 0
 mov rax, 4615514078110652826
 movq xmm0, rax
 mov r8d, -1
 mov r9, 0
 mov rax, 0
 movq xmm1, rax
 call rt_is_f@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb4352_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb4240_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb3792_α:
 # BOX RESOLVE_BUILTIN(is/2)
 sub rsp, 8
 mov edi, 1
 lea rsi, [rip + .S1]
 mov edx, 2
 mov rcx, 0
 mov rax, 4614388178203810202
 movq xmm0, rax
 mov r8d, -1
 mov r9, 0
 mov rax, 0
 movq xmm1, rax
 call rt_is_f@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g4_α
plseq0_g3_β: jmp main_ω
plseq0_g4_α:
 bb3568_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb3456_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g6_α
plseq0_g5_β: jmp plseq0_g6_α
plseq0_g6_α:
 bb3008_α:
 # BOX RESOLVE_BUILTIN(is/2)
 sub rsp, 8
 mov edi, 2
 lea rsi, [rip + .S2]
 mov edx, 2
 mov rcx, 0
 mov rax, 4615964438073389875
 movq xmm0, rax
 mov r8d, -1
 mov r9, 0
 mov rax, 0
 movq xmm1, rax
 call rt_is_f@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g7_α
plseq0_g6_β: jmp main_ω
plseq0_g7_α:
 bb2784_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq0_g8_α
plseq0_g7_β: jmp plseq0_g8_α
plseq0_g8_α:
 bb2672_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g9_α
plseq0_g8_β: jmp plseq0_g9_α
plseq0_g9_α:
 bb2224_α:
 # BOX RESOLVE_BUILTIN(is/2)
 sub rsp, 8
 mov edi, 3
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, 0
 mov rax, 4615063718147915776
 movq xmm0, rax
 mov r8d, -1
 mov r9, 0
 mov rax, 0
 movq xmm1, rax
 call rt_is_f@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g10_α
plseq0_g9_β: jmp main_ω
plseq0_g10_α:
 bb2000_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 3
 call rt_write_var@PLT
 jmp plseq0_g11_α
plseq0_g10_β: jmp plseq0_g11_α
plseq0_g11_α:
 bb1888_α:
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
.S0: .string "truncate"
.S1: .string "ceiling"
.S2: .string "floor"
.S3: .string "round"
.text
