  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  mov edi, 5
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
 bb88368_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 0
 lea rsi, [rip + .S0]
 mov edx, 0
 mov rcx, 5
 mov r8d, 0
 mov r9, 3
 call rt_is@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb88144_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb88032_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb87472_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 1
 lea rsi, [rip + .S1]
 mov edx, 0
 mov rcx, 5
 mov r8d, 0
 mov r9, 3
 call rt_is@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g4_α
plseq0_g3_β: jmp main_ω
plseq0_g4_α:
 bb87248_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb87136_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g6_α
plseq0_g5_β: jmp plseq0_g6_α
plseq0_g6_α:
 bb86576_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 2
 lea rsi, [rip + .S2]
 mov edx, 0
 mov rcx, 5
 mov r8d, 0
 mov r9, 3
 call rt_is@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g7_α
plseq0_g6_β: jmp main_ω
plseq0_g7_α:
 bb86352_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq0_g8_α
plseq0_g7_β: jmp plseq0_g8_α
plseq0_g8_α:
 bb86240_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g9_α
plseq0_g8_β: jmp plseq0_g9_α
plseq0_g9_α:
 bb85680_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 3
 lea rsi, [rip + .S3]
 mov edx, 0
 mov rcx, 5
 mov r8d, 0
 mov r9, 1
 call rt_is@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g10_α
plseq0_g9_β: jmp main_ω
plseq0_g10_α:
 bb85456_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 3
 call rt_write_var@PLT
 jmp plseq0_g11_α
plseq0_g10_β: jmp plseq0_g11_α
plseq0_g11_α:
 bb85344_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g12_α
plseq0_g11_β: jmp plseq0_g12_α
plseq0_g12_α:
 bb84784_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 4
 lea rsi, [rip + .S4]
 mov edx, 0
 mov rcx, 5
 mov r8d, 0
 mov r9, 1
 call rt_is@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g13_α
plseq0_g12_β: jmp main_ω
plseq0_g13_α:
 bb84560_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 4
 call rt_write_var@PLT
 jmp plseq0_g14_α
plseq0_g13_β: jmp plseq0_g14_α
plseq0_g14_α:
 bb84448_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g14_β: jmp main_γ
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
.S0: .string "/\\"
.S1: .string "\\/"
.S2: .string "xor"
.S3: .string ">>"
.S4: .string "<<"
.text
