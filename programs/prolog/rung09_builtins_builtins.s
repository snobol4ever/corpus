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
 bb54768_α:
 # BOX RESOLVE_BUILTIN(functor/3)
 sub rsp, 16
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
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
 mov rdi, rax
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 56
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_functor_term@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb54544_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb54320_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb54096_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g4_α
plseq0_g3_β: jmp plseq0_g4_α
plseq0_g4_α:
 bb53984_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb53312_α:
 # BOX RESOLVE_BUILTIN(arg/3)
 sub rsp, 16
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
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
 mov rcx, rax
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 mov r8d, 56
 mov r9, 2
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arg_term@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq0_g6_α
plseq0_g5_β: jmp main_ω
plseq0_g6_α:
 bb53088_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq0_g7_α
plseq0_g6_β: jmp plseq0_g7_α
plseq0_g7_α:
 bb52976_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g8_α
plseq0_g7_β: jmp plseq0_g8_α
plseq0_g8_α:
 bb52416_α:
 # BOX RESOLVE_BUILTIN(=../2)
 sub rsp, 8
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
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
 mov rdi, rax
 mov esi, 56
 mov rdx, 3
 xor ecx, ecx
 call rt_univ_term@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g9_α
plseq0_g8_β: jmp main_ω
plseq0_g9_α:
 bb52192_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 3
 call rt_write_var@PLT
 jmp plseq0_g10_α
plseq0_g9_β: jmp plseq0_g10_α
plseq0_g10_α:
 bb52080_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g11_α
plseq0_g10_β: jmp plseq0_g11_α
plseq0_g11_α:
 bb51744_α:
 # BOX RESOLVE_BUILTIN(atom/1)
 lea rdi, [rip + .S5]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S4]
 call rt_type_test@PLT
 test eax, eax
 je xite1_else_α
 jmp xite1_then_α
xite1_cond_β: jmp xite1_else_α
xite1_then_α:
 bb51520_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g12_α
xite1_then_β: jmp plseq0_g12_α
xite1_else_α:
 bb51296_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g12_α
xite1_else_β: jmp plseq0_g12_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g11_β:
 jmp main_ω
plseq0_g12_α:
 bb51184_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g13_α
plseq0_g12_β: jmp plseq0_g13_α
plseq0_g13_α:
 bb50848_α:
 # BOX RESOLVE_BUILTIN(integer/1)
 lea rdi, [rip + .S8]
 mov esi, 0
 mov rdx, 42
 xor ecx, ecx
 call rt_type_test@PLT
 test eax, eax
 je xite2_else_α
 jmp xite2_then_α
xite2_cond_β: jmp xite2_else_α
xite2_then_α:
 bb50624_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g14_α
xite2_then_β: jmp plseq0_g14_α
xite2_else_α:
 bb50400_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g14_α
xite2_else_β: jmp plseq0_g14_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g13_β:
 jmp main_ω
plseq0_g14_α:
 bb50288_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g15_α
plseq0_g14_β: jmp plseq0_g15_α
plseq0_g15_α:
 bb49952_α:
 # BOX RESOLVE_BUILTIN(atom/1)
 lea rdi, [rip + .S5]
 mov esi, 0
 mov rdx, 42
 xor ecx, ecx
 call rt_type_test@PLT
 test eax, eax
 je xite3_else_α
 jmp xite3_then_α
xite3_cond_β: jmp xite3_else_α
xite3_then_α:
 bb49728_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g16_α
xite3_then_β: jmp plseq0_g16_α
xite3_else_α:
 bb49504_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g16_α
xite3_else_β: jmp plseq0_g16_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g15_β:
 jmp main_ω
plseq0_g16_α:
 bb49392_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g17_α
plseq0_g16_β: jmp plseq0_g17_α
plseq0_g17_α:
 bb49056_α:
 # BOX RESOLVE_BUILTIN(integer/1)
 lea rdi, [rip + .S8]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S4]
 call rt_type_test@PLT
 test eax, eax
 je xite4_else_α
 jmp xite4_then_α
xite4_cond_β: jmp xite4_else_α
xite4_then_α:
 bb48832_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g18_α
xite4_then_β: jmp plseq0_g18_α
xite4_else_α:
 bb48608_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g18_α
xite4_else_β: jmp plseq0_g18_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g17_β:
 jmp main_ω
plseq0_g18_α:
 bb48496_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g18_β: jmp main_γ
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
.S0: .string "a"
.S1: .string "b"
.S2: .string "foo"
.S3: .string " "
.S4: .string "hello"
.S5: .string "atom"
.S6: .string "yes"
.S7: .string "no"
.S8: .string "integer"
.text
