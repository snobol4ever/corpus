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
  .globl proc_$fa0$1_α
proc_$fa0$1_α:
#=======================================================================================================================
    .global proc_$fa0$1_α
    .global proc_$fa0$1_β
    .global proc_$fa0$1_γ
    .global proc_$fa0$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 520], rsp
  cmp esi, 0
  jne proc_$fa0$1_β
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_$fa0$1_α_body:
 xchain6_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn8: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_$fa0$1_ω
 jmp xchain6_n1_α
 xchain6_n0_β:
 jmp proc_$fa0$1_ω
# IR_VAR_REF
 xchain6_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp xchain6_n5_α
# IR_VAR_REF
 xchain6_n2_α:
 lea rdi, [r12 + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp xchain6_n5_α
 xchain6_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn14: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n4_α
 xchain6_n3_β:
 jmp xchain6_n5_α
# IR_LIT_STRING
 xchain6_n4_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain6_n6_α
 xchain6_n4_β:
 jmp proc_$fa0$1_ω
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "item"
 xchain6_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn17: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_$fa0$1_ω
 jmp proc_$fa0$1_ω
 xchain6_n5_β:
 jmp proc_$fa0$1_ω
# IR_VAR_REF
 xchain6_n6_α:
 lea rdi, [r12 + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain6_n7_α
 xchain6_n6_β:
 jmp proc_$fa0$1_ω
 xchain6_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+288]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn21: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n8_α
 xchain6_n7_β:
 jmp xchain6_n5_α
# IR_LIT_STRING
 xchain6_n8_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain6_n9_α
 xchain6_n8_β:
 jmp xchain6_n5_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "true"
 xchain6_n9_α:
  .section .rodata
  .Lcall13_pname: .string "clause/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 2
 lea rdx, [r12 + 192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n10_α
xchain6_n9_β:
 lea rdi, [r12 + 192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n10_α
# IR_MOVE_LABEL
 xchain6_n10_α:
 lea rax, [rip + xchain6_n9_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_$fa0$1_γ
 xchain6_n10_β:
 jmp proc_$fa0$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain6_n11_α:
 jmp qword ptr [r12 + 48]
 xchain6_n11_β:
 jmp proc_$fa0$1_ω
proc_$fa0$1_β:
jmp xchain6_n11_α
proc_$fa0$1_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 520]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 512]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_$fa0$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 520]
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
  .section .rodata
  .Lstartup_pname1: .string "$fa0/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_$fa0$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 544
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
  mov qword ptr [r12 + 1192], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1184], rax
 pop rsi
main_α_body:
 xchain28_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain28_n1_α
 xchain28_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain28_n1_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain28_n2_α
 xchain28_n1_β:
 jmp main_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "item"
# IR_LIT_STRING
 xchain28_n2_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain28_n3_α
 xchain28_n2_β:
 jmp main_ω
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "a"
 xchain28_n3_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1120]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn34: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n4_α
 xchain28_n3_β:
 jmp xchain28_n5_α
 xchain28_n4_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn36: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n6_α
 xchain28_n4_β:
 jmp xchain28_n5_α
 xchain28_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn38: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain28_n5_β:
 jmp main_ω
# IR_LIT_STRING
 xchain28_n6_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain28_n7_α
 xchain28_n6_β:
 jmp main_ω
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "item"
# IR_LIT_STRING
 xchain28_n7_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain28_n8_α
 xchain28_n7_β:
 jmp main_ω
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "b"
 xchain28_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+944]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn42: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n9_α
 xchain28_n8_β:
 jmp xchain28_n5_α
 xchain28_n9_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn44: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n10_α
 xchain28_n9_β:
 jmp xchain28_n5_α
# IR_LIT_STRING
 xchain28_n10_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain28_n11_α
 xchain28_n10_β:
 jmp main_ω
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "item"
# IR_LIT_STRING
 xchain28_n11_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain28_n12_α
 xchain28_n11_β:
 jmp main_ω
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "c"
 xchain28_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn48: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n13_α
 xchain28_n12_β:
 jmp xchain28_n5_α
 xchain28_n13_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn50: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n14_α
 xchain28_n13_β:
 jmp xchain28_n5_α
 xchain28_n14_α:
# BOX IR_CALL $findall_new(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn52: .string "$findall_new"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 304]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n15_α
 xchain28_n14_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n15_α:
 lea rdi, [r12 + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain28_n16_α
 xchain28_n15_β:
 jmp xchain28_n18_α
 xchain28_n16_α:
  .section .rodata
  .Lcall32_pname: .string "$fa0/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall32_pname]
 mov esi, 1
 lea rdx, [r12 + 592]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n17_α
xchain28_n16_β:
 lea rdi, [r12 + 592]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n17_α
# IR_VAR
 xchain28_n17_α:
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 536], rax
 jmp xchain28_n19_α
 xchain28_n17_β:
 jmp xchain28_n5_α
 xchain28_n18_α:
# BOX IR_CALL $findall_result(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn59: .string "$findall_result"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n20_α
 xchain28_n18_β:
 jmp xchain28_n5_α
 xchain28_n19_α:
# BOX IR_CALL $findall_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+480]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn61: .string "$findall_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n16_β
 xchain28_n19_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n20_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain28_n21_α
 xchain28_n20_β:
 jmp xchain28_n5_α
 xchain28_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+400]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn65: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n22_α
 xchain28_n21_β:
 jmp xchain28_n5_α
# IR_VAR
 xchain28_n22_α:
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 264], rax
 jmp xchain28_n23_α
 xchain28_n22_β:
 jmp xchain28_n5_α
 xchain28_n23_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn69: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n24_α
 xchain28_n23_β:
 jmp xchain28_n5_α
# IR_LIT_STRING
 xchain28_n24_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain28_n25_α
 xchain28_n24_β:
 jmp xchain28_n5_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string ""
 xchain28_n25_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn72: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n26_α
 xchain28_n25_β:
 jmp xchain28_n5_α
# IR_MOVE_LABEL
 xchain28_n26_α:
 lea rax, [rip + xchain28_n5_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain28_n26_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain28_n27_α:
 jmp qword ptr [r12 + 32]
 xchain28_n27_β:
 jmp main_ω
main_β:
jmp xchain28_n27_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1192]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1184]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1192]
pop r12
ret
