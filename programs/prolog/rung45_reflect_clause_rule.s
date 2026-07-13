  .intel_syntax noprefix
  .text
  .globl proc_$call$1_α
proc_$call$1_α:
#=======================================================================================================================
    .global proc_$call$1_α
    .global proc_$call$1_β
    .global proc_$call$1_γ
    .global proc_$call$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 120], rsp
  cmp esi, 0
  jne proc_$call$1_β
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 112], rax
 pop rsi
proc_$call$1_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_$call$1_ω
 xchain0_n1_α:
# BOX CALL_GEN $call(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 0
.Lx3_60:
  .section .rodata
  .Lbynamegenfn2: .string "$call"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn2]
 lea rsi, [r12 + 48]
 mov edx, 1
 lea rcx, [r12 + 64]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_$call$1_ω
 jmp proc_$call$1_γ
 xchain0_n1_β:
 jmp .Lx3_60
proc_$call$1_β:
jmp xchain0_n1_β
proc_$call$1_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 120]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 112]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_$call$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 120]
pop r12
ret
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
 xchain4_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain4_n1_α
 xchain4_n0_β:
 jmp proc_clause$2_ω
# IR_VAR_REF
 xchain4_n1_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain4_n2_α
 xchain4_n1_β:
 jmp proc_clause$2_ω
 xchain4_n2_α:
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
.Lx9_60:
  .section .rodata
  .Lbynamegenfn5: .string "$clause"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn5]
 lea rsi, [r12 + 64]
 mov edx, 2
 lea rcx, [r12 + 96]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_clause$2_ω
 jmp proc_clause$2_γ
 xchain4_n2_β:
 jmp .Lx9_60
proc_clause$2_β:
jmp xchain4_n2_β
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
  .Lstartup_pname0: .string "$call/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_$call$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "clause/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_clause$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
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
  mov qword ptr [r12 + 1000], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 992], rax
 pop rsi
main_α_body:
 xchain10_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn12: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain10_n1_α
 xchain10_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain10_n1_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain10_n2_α
 xchain10_n1_β:
 jmp main_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string ":-"
# IR_LIT_STRING
 xchain10_n2_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain10_n3_α
 xchain10_n2_β:
 jmp main_ω
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "greet"
# IR_LIT_STRING
 xchain10_n3_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain10_n4_α
 xchain10_n3_β:
 jmp main_ω
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string ","
# IR_LIT_STRING
 xchain10_n4_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain10_n5_α
 xchain10_n4_β:
 jmp main_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "write"
# IR_LIT_STRING
 xchain10_n5_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain10_n6_α
 xchain10_n5_β:
 jmp main_ω
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "hello"
 xchain10_n6_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+672]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn19: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je main_ω
 jmp xchain10_n7_α
 xchain10_n6_β:
 jmp main_ω
# IR_LIT_STRING
 xchain10_n7_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain10_n8_α
 xchain10_n7_β:
 jmp main_ω
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "nl"
 xchain10_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+800]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+816]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn22: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je main_ω
 jmp xchain10_n9_α
 xchain10_n8_β:
 jmp main_ω
 xchain10_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+912]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+928]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn24: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain10_n11_α
 jmp xchain10_n10_α
 xchain10_n9_β:
 jmp xchain10_n11_α
 xchain10_n10_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+544]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn26: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain10_n11_α
 jmp xchain10_n12_α
 xchain10_n10_β:
 jmp xchain10_n11_α
 xchain10_n11_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn28: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain10_n11_β:
 jmp main_ω
# IR_LIT_STRING
 xchain10_n12_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain10_n13_α
 xchain10_n12_β:
 jmp xchain10_n16_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "greet"
# IR_VAR_REF
 xchain10_n13_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain10_n14_α
 xchain10_n13_β:
 jmp xchain10_n16_α
 xchain10_n14_α:
  .section .rodata
  .Lcall20_pname: .string "clause/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall20_pname]
 mov esi, 2
 lea rdx, [r12 + 432]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain10_n16_α
 jmp xchain10_n15_α
xchain10_n14_β:
 lea rdi, [r12 + 432]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain10_n16_α
 jmp xchain10_n15_α
# IR_VAR_REF
 xchain10_n15_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain10_n17_α
 xchain10_n15_β:
 jmp xchain10_n11_α
# IR_LIT_STRING
 xchain10_n16_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain10_n18_α
 xchain10_n16_β:
 jmp xchain10_n11_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "noclause"
 xchain10_n17_α:
  .section .rodata
  .Lcall23_pname: .string "$call/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall23_pname]
 mov esi, 1
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain10_n11_α
 jmp xchain10_n19_α
xchain10_n17_β:
 lea rdi, [r12 + 160]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain10_n11_α
 jmp xchain10_n19_α
 xchain10_n18_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn38: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain10_n11_α
 jmp xchain10_n20_α
 xchain10_n18_β:
 jmp xchain10_n11_α
# IR_MOVE_LABEL
 xchain10_n19_α:
 lea rax, [rip + xchain10_n11_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain10_n19_β:
 jmp main_ω
# IR_LIT_STRING
 xchain10_n20_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain10_n22_α
 xchain10_n20_β:
 jmp xchain10_n11_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string ""
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain10_n21_α:
 jmp qword ptr [r12 + 32]
 xchain10_n21_β:
 jmp main_ω
 xchain10_n22_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn45: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain10_n11_α
 jmp xchain10_n19_α
 xchain10_n22_β:
 jmp xchain10_n11_α
main_β:
jmp xchain10_n21_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1000]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 992]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1000]
pop r12
ret
