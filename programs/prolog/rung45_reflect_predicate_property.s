  .intel_syntax noprefix
  .text
  .globl proc_predicate_property$2_α
proc_predicate_property$2_α:
#=======================================================================================================================
    .global proc_predicate_property$2_α
    .global proc_predicate_property$2_β
    .global proc_predicate_property$2_γ
    .global proc_predicate_property$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 184], rsp
  cmp esi, 0
  jne proc_predicate_property$2_β
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_predicate_property$2_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_predicate_property$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_predicate_property$2_ω
 xchain0_n2_α:
# BOX CALL_GEN $predicate_property(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
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
  .Lbynamegenfn3: .string "$predicate_property"
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
 je proc_predicate_property$2_ω
 jmp proc_predicate_property$2_γ
 xchain0_n2_β:
 jmp .Lx5_60
proc_predicate_property$2_β:
jmp xchain0_n2_β
proc_predicate_property$2_γ:
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
proc_predicate_property$2_ω:
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
  .Lstartup_pname0: .string "predicate_property/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_predicate_property$2_α]
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
  mov qword ptr [r12 + 792], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 784], rax
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
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp main_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "gadget"
# IR_LIT_INTEGER
 xchain6_n2_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp main_ω
.Lx10_0:
 .quad 1
 xchain6_n3_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+720]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn12: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n4_α
 xchain6_n3_β:
 jmp xchain6_n5_α
 xchain6_n4_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn14: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n6_α
 xchain6_n4_β:
 jmp xchain6_n5_α
 xchain6_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn16: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain6_n5_β:
 jmp main_ω
# IR_LIT_STRING
 xchain6_n6_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain6_n7_α
 xchain6_n6_β:
 jmp main_ω
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "gadget"
# IR_VAR_REF
 xchain6_n7_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain6_n8_α
 xchain6_n7_β:
 jmp main_ω
 xchain6_n8_α:
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
  .Lrkfn21: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain6_n10_α
 jmp xchain6_n9_α
 xchain6_n8_β:
 jmp xchain6_n10_α
# IR_LIT_STRING
 xchain6_n9_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain6_n11_α
 xchain6_n9_β:
 jmp xchain6_n10_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "dynamic"
# IR_LIT_STRING
 xchain6_n10_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain6_n12_α
 xchain6_n10_β:
 jmp xchain6_n5_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "no"
 xchain6_n11_α:
  .section .rodata
  .Lcall15_pname: .string "predicate_property/2"
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
   lea rdi, [rip + .Lcall15_pname]
 mov esi, 2
 lea rdx, [r12 + 416]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain6_n10_α
 jmp xchain6_n13_α
xchain6_n11_β:
 lea rdi, [r12 + 416]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain6_n10_α
 jmp xchain6_n13_α
 xchain6_n12_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn26: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n14_α
 xchain6_n12_β:
 jmp xchain6_n5_α
# IR_LIT_STRING
 xchain6_n13_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain6_n15_α
 xchain6_n13_β:
 jmp xchain6_n5_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "yes"
# IR_LIT_STRING
 xchain6_n14_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain6_n16_α
 xchain6_n14_β:
 jmp xchain6_n5_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string ""
 xchain6_n15_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn30: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n14_α
 xchain6_n15_β:
 jmp xchain6_n5_α
 xchain6_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn32: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n17_α
 xchain6_n16_β:
 jmp xchain6_n5_α
# IR_MOVE_LABEL
 xchain6_n17_α:
 lea rax, [rip + xchain6_n5_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain6_n17_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain6_n18_α:
 jmp qword ptr [r12 + 32]
 xchain6_n18_β:
 jmp main_ω
main_β:
jmp xchain6_n18_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 792]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 792]
pop r12
ret
