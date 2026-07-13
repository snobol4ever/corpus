  .intel_syntax noprefix
  .text
  .globl proc_clause$2_α
proc_clause$2_α:
#=======================================================================================================================
    .global proc_clause$2_α
    .global proc_clause$2_β
    .global proc_clause$2_γ
    .global proc_clause$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 184], rsp
  cmp esi, 0
  jne proc_clause$2_β
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_clause$2_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_clause$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_clause$2_ω
 xchain0_n2_α:
# BOX CALL_GEN $clause(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+112] -> [zr+64]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+80]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], 0
.Lx5_60:
  .section .rodata
  .Lbynamegenfn3: .string "$clause"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn3]
 lea rsi, [r12 + 64]
 mov edx, 2
 lea rcx, [r12 + 96]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_clause$2_ω
 jmp proc_clause$2_γ
 xchain0_n2_β:
 jmp .Lx5_60
proc_clause$2_β:
jmp xchain0_n2_β
proc_clause$2_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 184]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 176]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_clause$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 184]
pop r12
ret
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "clause/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_clause$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 616], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 608], rax
 pop rsi
main_α_body:
 xchain6_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn8: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain6_n1_α
 xchain6_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain6_n1_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp main_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "ghost"
# IR_VAR_REF
 xchain6_n2_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp main_ω
 xchain6_n3_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+512]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn13: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n4_α
 xchain6_n3_β:
 jmp xchain6_n5_α
# IR_VAR_REF
 xchain6_n4_α:
 lea rdi, [r12 + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain6_n6_α
 xchain6_n4_β:
 jmp xchain6_n5_α
# IR_LIT_STRING
 xchain6_n5_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain6_n7_α
 xchain6_n5_β:
 jmp xchain6_n10_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "nofact"
 xchain6_n6_α:
  .section .rodata
  .Lcall10_pname: .string "clause/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 2
 lea rdx, [r12 + 416]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n8_α
xchain6_n6_β:
 lea rdi, [r12 + 416]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n8_α
 xchain6_n7_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn19: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain6_n10_α
 jmp xchain6_n9_α
 xchain6_n7_β:
 jmp xchain6_n10_α
# IR_LIT_STRING
 xchain6_n8_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain6_n11_α
 xchain6_n8_β:
 jmp xchain6_n10_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "found"
# IR_LIT_STRING
 xchain6_n9_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain6_n12_α
 xchain6_n9_β:
 jmp xchain6_n10_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string ""
 xchain6_n10_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn23: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain6_n10_β:
 jmp main_ω
 xchain6_n11_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn25: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain6_n10_α
 jmp xchain6_n9_α
 xchain6_n11_β:
 jmp xchain6_n10_α
 xchain6_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn27: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain6_n10_α
 jmp xchain6_n13_α
 xchain6_n12_β:
 jmp xchain6_n10_α
# IR_MOVE_LABEL
 xchain6_n13_α:
 lea rax, [rip + xchain6_n10_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain6_n13_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain6_n14_α:
 jmp qword ptr [r12 + 32]
 xchain6_n14_β:
 jmp main_ω
main_β:
jmp xchain6_n14_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 616]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 608]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 616]
pop r12
ret
