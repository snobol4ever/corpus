  .intel_syntax noprefix
  .text
  .globl proc_interpret$1_α
proc_interpret$1_α:
#=======================================================================================================================
    .global proc_interpret$1_α
    .global proc_interpret$1_β
    .global proc_interpret$1_γ
    .global proc_interpret$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_interpret$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_interpret$1_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_interpret$1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_interpret$1_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [r12 + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_interpret$1_ω
 jmp proc_interpret$1_ω
 xchain0_n5_β:
 jmp proc_interpret$1_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [r12 + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
 xchain0_n7_α:
  .section .rodata
  .Lcall8_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 2
 lea rdx, [r12 + 272]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
xchain0_n7_β:
 lea rdi, [r12 + 272]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [r12 + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n11_α
 xchain0_n9_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn19: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
 xchain0_n10_α:
# IR_CUT
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n11_α:
 lea rax, [rip + xchain0_n7_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_interpret$1_γ
 xchain0_n11_β:
 jmp proc_interpret$1_ω
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [r12 + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n13_α:
 jmp qword ptr [r12 + 48]
 xchain0_n13_β:
 jmp proc_interpret$1_ω
 xchain0_n14_α:
  .section .rodata
  .Lcall15_pname: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall15_pname]
 mov esi, 1
 lea rdx, [r12 + 144]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
xchain0_n14_β:
 lea rdi, [r12 + 144]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
proc_interpret$1_β:
jmp xchain0_n13_α
proc_interpret$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 400]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_interpret$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_interpret$2_α
proc_interpret$2_α:
#=======================================================================================================================
    .global proc_interpret$2_α
    .global proc_interpret$2_β
    .global proc_interpret$2_γ
    .global proc_interpret$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_interpret$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 3552], rax
 pop rsi
proc_interpret$2_α_body:
 xchain28_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n1_α
 xchain28_n0_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain28_n2_α
 xchain28_n1_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n2_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain28_n3_α
 xchain28_n2_β:
 jmp xchain28_n5_α
 xchain28_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3504]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn36: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n4_α
 xchain28_n3_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain28_n6_α
 xchain28_n4_β:
 jmp xchain28_n5_α
 xchain28_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3328]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3328], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3336], rax
  .section .rodata
  .Lrkfn40: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 3328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n7_α
 xchain28_n5_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n6_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain28_n8_α
 xchain28_n6_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 jmp xchain28_n9_α
 xchain28_n7_β:
 jmp xchain28_n18_α
 xchain28_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3440] -> [zr+3408]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3416], rax
# marshal arg1 = producer-box slot [zr+3456] -> [zr+3424]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3432], rax
  .section .rodata
  .Lrkfn46: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 3408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n10_α
 xchain28_n8_β:
 jmp xchain28_n5_α
# IR_LIT_STRING
 xchain28_n9_α:
 mov qword ptr [r12 + 3296], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 3304], rax
 jmp xchain28_n11_α
 xchain28_n9_β:
 jmp proc_interpret$2_ω
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string ","
# IR_VAR_REF
 xchain28_n10_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain28_n12_α
 xchain28_n10_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n11_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain28_n13_α
 xchain28_n11_β:
 jmp proc_interpret$2_ω
 xchain28_n12_α:
# BOX IR_CALL $tt_var(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3376] -> [zr+3360]
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3368], rax
  .section .rodata
  .Lrkfn53: .string "$tt_var"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 3360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 cmp eax, 99
 je xchain28_n5_α
 jmp xchain28_n14_α
 xchain28_n12_β:
 jmp xchain28_n5_α
# IR_VAR_REF
 xchain28_n13_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain28_n15_α
 xchain28_n13_β:
 jmp proc_interpret$2_ω
 xchain28_n14_α:
# IR_CUT
 jmp xchain28_n16_α
 xchain28_n14_β:
 jmp xchain28_n5_α
 xchain28_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3296] -> [zr+3248]
 mov rax, qword ptr [r12 + 3296]
 mov qword ptr [r12 + 3248], rax
 mov rax, qword ptr [r12 + 3304]
 mov qword ptr [r12 + 3256], rax
# marshal arg1 = producer-box slot [zr+3200] -> [zr+3264]
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3264], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3272], rax
# marshal arg2 = producer-box slot [zr+3216] -> [zr+3280]
 mov rax, qword ptr [r12 + 3216]
 mov qword ptr [r12 + 3280], rax
 mov rax, qword ptr [r12 + 3224]
 mov qword ptr [r12 + 3288], rax
  .section .rodata
  .Lrkfn58: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn58]
 lea rsi, [r12 + 3248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n17_α
 xchain28_n15_β:
 jmp xchain28_n18_α
 xchain28_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn60: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp proc_interpret$2_ω
 xchain28_n16_β:
 jmp proc_interpret$2_ω
 xchain28_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3184] -> [zr+3152]
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 3160], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3168]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3176], rax
  .section .rodata
  .Lrkfn62: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 3152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n19_α
 xchain28_n17_β:
 jmp xchain28_n18_α
 xchain28_n18_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2624]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn64: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn64]
 lea rsi, [r12 + 2624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n20_α
 xchain28_n18_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n19_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain28_n21_α
 xchain28_n19_β:
 jmp xchain28_n18_α
# IR_VAR_REF
 xchain28_n20_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain28_n22_α
 xchain28_n20_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n21_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain28_n23_α
 xchain28_n21_β:
 jmp xchain28_n18_α
# IR_LIT_STRING
 xchain28_n22_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 2600], rax
 jmp xchain28_n24_α
 xchain28_n22_β:
 jmp proc_interpret$2_ω
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string ";"
 xchain28_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3072]
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 3080], rax
# marshal arg1 = producer-box slot [zr+3120] -> [zr+3088]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
  .section .rodata
  .Lrkfn73: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 3072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 cmp eax, 99
 je xchain28_n18_α
 jmp xchain28_n25_α
 xchain28_n23_β:
 jmp xchain28_n18_α
# IR_VAR_REF
 xchain28_n24_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain28_n26_α
 xchain28_n24_β:
 jmp proc_interpret$2_ω
 xchain28_n25_α:
# IR_CUT
 jmp xchain28_n27_α
 xchain28_n25_β:
 jmp xchain28_n18_α
# IR_VAR_REF
 xchain28_n26_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain28_n28_α
 xchain28_n26_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n27_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain28_n29_α
 xchain28_n27_β:
 jmp xchain28_n16_α
 xchain28_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2592] -> [zr+2544]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2552], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2560]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2568], rax
# marshal arg2 = producer-box slot [zr+2512] -> [zr+2576]
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 2584], rax
  .section .rodata
  .Lrkfn82: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 2544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain28_n31_α
 jmp xchain28_n30_α
 xchain28_n28_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n29_α:
 lea rdi, [r12 + 3632]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain28_n32_α
 xchain28_n29_β:
 jmp xchain28_n16_α
 xchain28_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
# marshal arg1 = producer-box slot [zr+2528] -> [zr+2464]
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn86: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain28_n31_α
 jmp xchain28_n33_α
 xchain28_n30_β:
 jmp xchain28_n31_α
 xchain28_n31_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2208]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lrkfn88: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 2208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n34_α
 xchain28_n31_β:
 jmp proc_interpret$2_ω
 xchain28_n32_α:
  .section .rodata
  .Lcall48_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3024]
 mov rdx, qword ptr [r12 + 3032]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall48_pname]
 mov esi, 2
 lea rdx, [r12 + 3008]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n35_α
xchain28_n32_β:
 lea rdi, [r12 + 3008]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n35_α
# IR_VAR_REF
 xchain28_n33_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain28_n36_α
 xchain28_n33_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n34_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain28_n37_α
 xchain28_n34_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n35_α:
 lea rdi, [r12 + 3632]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain28_n38_α
 xchain28_n35_β:
 jmp xchain28_n42_α
# IR_VAR_REF
 xchain28_n36_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain28_n39_α
 xchain28_n36_β:
 jmp xchain28_n31_α
# IR_LIT_STRING
 xchain28_n37_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain28_n40_α
 xchain28_n37_β:
 jmp proc_interpret$2_ω
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "->"
 xchain28_n38_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2928]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn100: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 2928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain28_n42_α
 jmp xchain28_n41_α
 xchain28_n38_β:
 jmp xchain28_n42_α
 xchain28_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2368]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2376], rax
# marshal arg1 = producer-box slot [zr+2416] -> [zr+2384]
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2384], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2392], rax
  .section .rodata
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 2368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain28_n31_α
 jmp xchain28_n43_α
 xchain28_n39_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n40_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain28_n44_α
 xchain28_n40_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n41_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain28_n45_α
 xchain28_n41_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n42_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain28_n46_α
 xchain28_n42_β:
 jmp xchain28_n16_α
 xchain28_n43_α:
# IR_CUT
 jmp xchain28_n47_α
 xchain28_n43_β:
 jmp xchain28_n31_α
# IR_VAR_REF
 xchain28_n44_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain28_n48_α
 xchain28_n44_β:
 jmp proc_interpret$2_ω
# IR_LIT_STRING
 xchain28_n45_α:
 mov qword ptr [r12 + 2800], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 2808], rax
 jmp xchain28_n49_α
 xchain28_n45_β:
 jmp proc_interpret$2_ω
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string ","
# IR_VAR_REF
 xchain28_n46_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain28_n50_α
 xchain28_n46_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n47_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain28_n51_α
 xchain28_n47_β:
 jmp xchain28_n16_α
 xchain28_n48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2136], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2144]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2152], rax
# marshal arg2 = producer-box slot [zr+2096] -> [zr+2160]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn118: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 2128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain28_n53_α
 jmp xchain28_n52_α
 xchain28_n48_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n49_α:
 lea rdi, [r12 + 3632]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain28_n54_α
 xchain28_n49_β:
 jmp proc_interpret$2_ω
 xchain28_n50_α:
  .section .rodata
  .Lcall66_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2880]
 mov rdx, qword ptr [r12 + 2888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2896]
 mov rdx, qword ptr [r12 + 2904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall66_pname]
 mov esi, 2
 lea rdx, [r12 + 2864]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain28_n32_β
 jmp xchain28_n55_α
xchain28_n50_β:
 lea rdi, [r12 + 2864]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain28_n32_β
 jmp xchain28_n55_α
# IR_VAR_REF
 xchain28_n51_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain28_n56_α
 xchain28_n51_β:
 jmp xchain28_n16_α
 xchain28_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn125: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain28_n53_α
 jmp xchain28_n57_α
 xchain28_n52_β:
 jmp xchain28_n53_α
 xchain28_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1696]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn127: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 1696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n58_α
 xchain28_n53_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n54_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain28_n59_α
 xchain28_n54_β:
 jmp proc_interpret$2_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n55_α:
 lea rax, [rip + xchain28_n32_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n55_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n56_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain28_n61_α
 xchain28_n56_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n57_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain28_n62_α
 xchain28_n57_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n58_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain28_n63_α
 xchain28_n58_β:
 jmp xchain28_n72_α
 xchain28_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2752]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2760], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2768]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2776], rax
# marshal arg2 = producer-box slot [zr+2720] -> [zr+2784]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2792], rax
  .section .rodata
  .Lrkfn139: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 2752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n64_α
 xchain28_n59_β:
 jmp xchain28_n16_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain28_n60_α:
 jmp qword ptr [r12 + 64]
 xchain28_n60_β:
 jmp proc_interpret$2_ω
 xchain28_n61_α:
  .section .rodata
  .Lcall77_pname: .string "interpret_disjunction/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2304]
 mov rdx, qword ptr [r12 + 2312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2320]
 mov rdx, qword ptr [r12 + 2328]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 3
 lea rdx, [r12 + 2288]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n65_α
xchain28_n61_β:
 lea rdi, [r12 + 2288]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n65_α
# IR_VAR_REF
 xchain28_n62_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain28_n66_α
 xchain28_n62_β:
 jmp xchain28_n53_α
# IR_LIT_STRING
 xchain28_n63_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain28_n67_α
 xchain28_n63_β:
 jmp proc_interpret$2_ω
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "\\+"
 xchain28_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2656]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2680], rax
  .section .rodata
  .Lrkfn147: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n55_α
 xchain28_n64_β:
 jmp xchain28_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n65_α:
 lea rax, [rip + xchain28_n61_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n65_β:
 jmp proc_interpret$2_ω
 xchain28_n66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn151: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain28_n53_α
 jmp xchain28_n68_α
 xchain28_n66_β:
 jmp xchain28_n53_α
# IR_VAR_REF
 xchain28_n67_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain28_n69_α
 xchain28_n67_β:
 jmp proc_interpret$2_ω
 xchain28_n68_α:
# IR_CUT
 jmp xchain28_n70_α
 xchain28_n68_β:
 jmp xchain28_n53_α
 xchain28_n69_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1648]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn156: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain28_n72_α
 jmp xchain28_n71_α
 xchain28_n69_β:
 jmp xchain28_n72_α
# IR_LIT_STRING
 xchain28_n70_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain28_n73_α
 xchain28_n70_β:
 jmp proc_interpret$2_ω
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "->"
 xchain28_n71_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1552]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lrkfn159: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain28_n72_α
 jmp xchain28_n74_α
 xchain28_n71_β:
 jmp xchain28_n72_α
 xchain28_n72_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1216]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn161: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n75_α
 xchain28_n72_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n73_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain28_n76_α
 xchain28_n73_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n74_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain28_n77_α
 xchain28_n74_β:
 jmp xchain28_n72_α
# IR_VAR_REF
 xchain28_n75_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain28_n78_α
 xchain28_n75_β:
 jmp xchain28_n85_α
# IR_VAR_REF
 xchain28_n76_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain28_n79_α
 xchain28_n76_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n77_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain28_n80_α
 xchain28_n77_β:
 jmp xchain28_n72_α
# IR_LIT_STRING
 xchain28_n78_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain28_n81_α
 xchain28_n78_β:
 jmp xchain28_n85_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "?"
 xchain28_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1848], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1856]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1864], rax
# marshal arg2 = producer-box slot [zr+1808] -> [zr+1872]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn174: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn174]
 lea rsi, [r12 + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n82_α
 xchain28_n79_β:
 jmp xchain28_n16_α
 xchain28_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn176: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn176]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain28_n72_α
 jmp xchain28_n83_α
 xchain28_n80_β:
 jmp xchain28_n72_α
 xchain28_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn178: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn178]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain28_n85_α
 jmp xchain28_n84_α
 xchain28_n81_β:
 jmp xchain28_n85_α
# IR_LIT_STRING
 xchain28_n82_α:
 mov qword ptr [r12 + 1904], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain28_n86_α
 xchain28_n82_β:
 jmp xchain28_n16_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "fail"
 xchain28_n83_α:
# IR_CUT
 jmp xchain28_n87_α
 xchain28_n83_β:
 jmp xchain28_n72_α
# IR_VAR_REF
 xchain28_n84_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain28_n88_α
 xchain28_n84_β:
 jmp xchain28_n85_α
 xchain28_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1024]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn184: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn184]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n89_α
 xchain28_n85_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n86_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain28_n90_α
 xchain28_n86_β:
 jmp xchain28_n16_α
# IR_LIT_STRING
 xchain28_n87_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain28_n91_α
 xchain28_n87_β:
 jmp proc_interpret$2_ω
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "->"
# IR_LIT_STRING
 xchain28_n88_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain28_n92_α
 xchain28_n88_β:
 jmp xchain28_n85_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "true"
# IR_VAR_REF
 xchain28_n89_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain28_n93_α
 xchain28_n89_β:
 jmp xchain28_n101_α
 xchain28_n90_α:
  .section .rodata
  .Lcall106_pname: .string "interpret_disjunction/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall106_pname]
 mov esi, 3
 lea rdx, [r12 + 1776]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n94_α
xchain28_n90_β:
 lea rdi, [r12 + 1776]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n94_α
# IR_VAR_REF
 xchain28_n91_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain28_n95_α
 xchain28_n91_β:
 jmp proc_interpret$2_ω
 xchain28_n92_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn195: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain28_n85_α
 jmp xchain28_n96_α
 xchain28_n92_β:
 jmp xchain28_n85_α
# IR_VAR_REF
 xchain28_n93_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain28_n97_α
 xchain28_n93_β:
 jmp xchain28_n101_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n94_α:
 lea rax, [rip + xchain28_n90_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n94_β:
 jmp proc_interpret$2_ω
# IR_LIT_STRING
 xchain28_n95_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain28_n98_α
 xchain28_n95_β:
 jmp proc_interpret$2_ω
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "fail"
 xchain28_n96_α:
# IR_CUT
 jmp xchain28_n99_α
 xchain28_n96_β:
 jmp xchain28_n85_α
 xchain28_n97_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn203: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain28_n101_α
 jmp xchain28_n100_α
 xchain28_n97_β:
 jmp xchain28_n101_α
 xchain28_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1376]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1384], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1392]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn205: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn205]
 lea rsi, [r12 + 1360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n102_α
 xchain28_n98_β:
 jmp xchain28_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n99_α:
 lea rax, [rip + xchain28_n85_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n99_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n100_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain28_n103_α
 xchain28_n100_β:
 jmp xchain28_n101_α
 xchain28_n101_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn211: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn211]
 lea rsi, [r12 + 784]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n104_α
 xchain28_n101_β:
 jmp proc_interpret$2_ω
# IR_LIT_STRING
 xchain28_n102_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain28_n105_α
 xchain28_n102_β:
 jmp xchain28_n16_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "true"
# IR_VAR_REF
 xchain28_n103_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain28_n106_α
 xchain28_n103_β:
 jmp xchain28_n101_α
# IR_VAR_REF
 xchain28_n104_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain28_n107_α
 xchain28_n104_β:
 jmp xchain28_n114_α
# IR_VAR_REF
 xchain28_n105_α:
 lea rdi, [r12 + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain28_n108_α
 xchain28_n105_β:
 jmp xchain28_n16_α
 xchain28_n106_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn220: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain28_n101_α
 jmp xchain28_n109_α
 xchain28_n106_β:
 jmp xchain28_n101_α
# IR_VAR_REF
 xchain28_n107_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain28_n110_α
 xchain28_n107_β:
 jmp xchain28_n114_α
 xchain28_n108_α:
  .section .rodata
  .Lcall124_pname: .string "interpret_disjunction/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1440]
 mov rdx, qword ptr [r12 + 1448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall124_pname]
 mov esi, 3
 lea rdx, [r12 + 1296]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n111_α
xchain28_n108_β:
 lea rdi, [r12 + 1296]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n111_α
# IR_VAR_REF
 xchain28_n109_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain28_n112_α
 xchain28_n109_β:
 jmp xchain28_n101_α
 xchain28_n110_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn227: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain28_n114_α
 jmp xchain28_n113_α
 xchain28_n110_β:
 jmp xchain28_n114_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n111_α:
 lea rax, [rip + xchain28_n108_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n111_β:
 jmp proc_interpret$2_ω
 xchain28_n112_α:
# BOX IR_CALL $tt_number(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+816]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn231: .string "$tt_number"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn231]
 lea rsi, [r12 + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain28_n101_α
 jmp xchain28_n115_α
 xchain28_n112_β:
 jmp xchain28_n101_α
# IR_VAR_REF
 xchain28_n113_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain28_n116_α
 xchain28_n113_β:
 jmp xchain28_n114_α
 xchain28_n114_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+464]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn235: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn235]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je proc_interpret$2_ω
 jmp xchain28_n117_α
 xchain28_n114_β:
 jmp proc_interpret$2_ω
 xchain28_n115_α:
# IR_CUT
 jmp xchain28_n16_α
 xchain28_n115_β:
 jmp xchain28_n101_α
# IR_VAR_REF
 xchain28_n116_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain28_n118_α
 xchain28_n116_β:
 jmp xchain28_n114_α
# IR_VAR_REF
 xchain28_n117_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain28_n119_α
 xchain28_n117_β:
 jmp xchain28_n16_α
 xchain28_n118_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn242: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain28_n114_α
 jmp xchain28_n120_α
 xchain28_n118_β:
 jmp xchain28_n114_α
# IR_VAR_REF
 xchain28_n119_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain28_n121_α
 xchain28_n119_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n120_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain28_n122_α
 xchain28_n120_β:
 jmp xchain28_n114_α
 xchain28_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn248: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn248]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n123_α
 xchain28_n121_β:
 jmp xchain28_n16_α
 xchain28_n122_α:
  .section .rodata
  .Lcall138_pname: .string "is_built_in/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall138_pname]
 mov esi, 1
 lea rdx, [r12 + 576]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain28_n114_α
 jmp xchain28_n124_α
xchain28_n122_β:
 lea rdi, [r12 + 576]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain28_n114_α
 jmp xchain28_n124_α
# IR_VAR_REF
 xchain28_n123_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain28_n125_α
 xchain28_n123_β:
 jmp xchain28_n16_α
 xchain28_n124_α:
# IR_CUT
 jmp xchain28_n126_α
 xchain28_n124_β:
 jmp xchain28_n122_β
# IR_VAR_REF
 xchain28_n125_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain28_n127_α
 xchain28_n125_β:
 jmp xchain28_n16_α
# IR_VAR_REF
 xchain28_n126_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain28_n128_α
 xchain28_n126_β:
 jmp xchain28_n16_α
 xchain28_n127_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn258: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn258]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n129_α
 xchain28_n127_β:
 jmp xchain28_n16_α
 xchain28_n128_α:
  .section .rodata
  .Lcall144_pname: .string "interpret_built_in/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall144_pname]
 mov esi, 1
 lea rdx, [r12 + 512]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n130_α
xchain28_n128_β:
 lea rdi, [r12 + 512]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n130_α
# IR_VAR_REF
 xchain28_n129_α:
 lea rdi, [r12 + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain28_n131_α
 xchain28_n129_β:
 jmp xchain28_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n130_α:
 lea rax, [rip + xchain28_n128_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n130_β:
 jmp proc_interpret$2_ω
# IR_VAR_REF
 xchain28_n131_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain28_n132_α
 xchain28_n131_β:
 jmp xchain28_n16_α
 xchain28_n132_α:
  .section .rodata
  .Lcall148_pname: .string "define/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall148_pname]
 mov esi, 2
 lea rdx, [r12 + 240]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n133_α
xchain28_n132_β:
 lea rdi, [r12 + 240]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n133_α
# IR_VAR_REF
 xchain28_n133_α:
 lea rdi, [r12 + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain28_n134_α
 xchain28_n133_β:
 jmp xchain28_n16_α
 xchain28_n134_α:
  .section .rodata
  .Lcall150_pname: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall150_pname]
 mov esi, 1
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain28_n132_β
 jmp xchain28_n135_α
xchain28_n134_β:
 lea rdi, [r12 + 160]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain28_n132_β
 jmp xchain28_n135_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain28_n135_α:
 lea rax, [rip + xchain28_n134_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_interpret$2_γ
 xchain28_n135_β:
 jmp proc_interpret$2_ω
proc_interpret$2_β:
jmp xchain28_n60_α
proc_interpret$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 3552]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_interpret$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_is_built_in$1_α
proc_is_built_in$1_α:
#=======================================================================================================================
    .global proc_is_built_in$1_α
    .global proc_is_built_in$1_β
    .global proc_is_built_in$1_γ
    .global proc_is_built_in$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_is_built_in$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_is_built_in$1_α_body:
 xchain272_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn274: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp xchain272_n1_α
 xchain272_n0_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain272_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain272_n2_α
 xchain272_n1_β:
 jmp xchain272_n5_α
# IR_LIT_STRING
 xchain272_n2_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain272_n3_α
 xchain272_n2_β:
 jmp xchain272_n5_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "true"
 xchain272_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn279: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain272_n5_α
 jmp xchain272_n4_α
 xchain272_n3_β:
 jmp xchain272_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain272_n4_α:
 lea rax, [rip + xchain272_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_is_built_in$1_γ
 xchain272_n4_β:
 jmp proc_is_built_in$1_ω
 xchain272_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+304]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn283: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn283]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp xchain272_n7_α
 xchain272_n5_β:
 jmp proc_is_built_in$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain272_n6_α:
 jmp qword ptr [r12 + 48]
 xchain272_n6_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain272_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain272_n8_α
 xchain272_n7_β:
 jmp xchain272_n13_α
# IR_LIT_STRING
 xchain272_n8_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain272_n9_α
 xchain272_n8_β:
 jmp proc_is_built_in$1_ω
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "=<"
# IR_VAR_REF
 xchain272_n9_α:
 lea rdi, [r12 + 416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain272_n10_α
 xchain272_n9_β:
 jmp proc_is_built_in$1_ω
# IR_VAR_REF
 xchain272_n10_α:
 lea rdi, [r12 + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain272_n11_α
 xchain272_n10_β:
 jmp proc_is_built_in$1_ω
 xchain272_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+256]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn294: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain272_n13_α
 jmp xchain272_n12_α
 xchain272_n11_β:
 jmp xchain272_n13_α
 xchain272_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+144]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn296: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn296]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain272_n13_α
 jmp xchain272_n14_α
 xchain272_n12_β:
 jmp xchain272_n13_α
 xchain272_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn298: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn298]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_is_built_in$1_ω
 jmp proc_is_built_in$1_ω
 xchain272_n13_β:
 jmp proc_is_built_in$1_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain272_n14_α:
 lea rax, [rip + xchain272_n13_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_is_built_in$1_γ
 xchain272_n14_β:
 jmp proc_is_built_in$1_ω
proc_is_built_in$1_β:
jmp xchain272_n6_α
proc_is_built_in$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 400]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_is_built_in$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_meta_qsort$0_α
proc_meta_qsort$0_α:
#=======================================================================================================================
    .global proc_meta_qsort$0_α
    .global proc_meta_qsort$0_β
    .global proc_meta_qsort$0_γ
    .global proc_meta_qsort$0_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_meta_qsort$0_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 160], rax
 pop rsi
proc_meta_qsort$0_α_body:
 xchain301_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn303: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn303]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_meta_qsort$0_ω
 jmp xchain301_n1_α
 xchain301_n0_β:
 jmp proc_meta_qsort$0_ω
# IR_LIT_STRING
 xchain301_n1_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain301_n2_α
 xchain301_n1_β:
 jmp xchain301_n4_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "qsort"
 xchain301_n2_α:
  .section .rodata
  .Lcall169_pname: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall169_pname]
 mov esi, 1
 lea rdx, [r12 + 128]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain301_n4_α
 jmp xchain301_n3_α
xchain301_n2_β:
 lea rdi, [r12 + 128]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain301_n4_α
 jmp xchain301_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain301_n3_α:
 lea rax, [rip + xchain301_n2_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_meta_qsort$0_γ
 xchain301_n3_β:
 jmp proc_meta_qsort$0_ω
 xchain301_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn309: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn309]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_meta_qsort$0_ω
 jmp proc_meta_qsort$0_ω
 xchain301_n4_β:
 jmp proc_meta_qsort$0_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain301_n5_α:
 jmp qword ptr [r12 + 32]
 xchain301_n5_β:
 jmp proc_meta_qsort$0_ω
proc_meta_qsort$0_β:
jmp xchain301_n5_α
proc_meta_qsort$0_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 160]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_meta_qsort$0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_define$2_α
proc_define$2_α:
#=======================================================================================================================
    .global proc_define$2_α
    .global proc_define$2_β
    .global proc_define$2_γ
    .global proc_define$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_define$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 8704], rax
 pop rsi
proc_define$2_α_body:
 xchain312_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn314: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn314]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n1_α
 xchain312_n0_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8672], rax
 mov qword ptr [r12 + 8680], rdx
 jmp xchain312_n2_α
 xchain312_n1_β:
 jmp xchain312_n5_α
# IR_LIT_STRING
 xchain312_n2_α:
 mov qword ptr [r12 + 8688], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 8696], rax
 jmp xchain312_n3_α
 xchain312_n2_β:
 jmp xchain312_n5_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "qsort"
 xchain312_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8672] -> [zr+8640]
 mov rax, qword ptr [r12 + 8672]
 mov qword ptr [r12 + 8640], rax
 mov rax, qword ptr [r12 + 8680]
 mov qword ptr [r12 + 8648], rax
# marshal arg1 = producer-box slot [zr+8688] -> [zr+8656]
 mov rax, qword ptr [r12 + 8688]
 mov qword ptr [r12 + 8656], rax
 mov rax, qword ptr [r12 + 8696]
 mov qword ptr [r12 + 8664], rax
  .section .rodata
  .Lrkfn319: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn319]
 lea rsi, [r12 + 8640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8624], rax
 mov qword ptr [r12 + 8632], rdx
 cmp eax, 99
 je xchain312_n5_α
 jmp xchain312_n4_α
 xchain312_n3_β:
 jmp xchain312_n5_α
# IR_VAR_REF
 xchain312_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 jmp xchain312_n6_α
 xchain312_n4_β:
 jmp xchain312_n5_α
 xchain312_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3600]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3608], rax
  .section .rodata
  .Lrkfn323: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn323]
 lea rsi, [r12 + 3600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n7_α
 xchain312_n5_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n6_α:
 mov qword ptr [r12 + 8608], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 8616], rax
 jmp xchain312_n8_α
 xchain312_n6_β:
 jmp proc_define$2_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain312_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain312_n9_α
 xchain312_n7_β:
 jmp xchain312_n26_α
# IR_LIT_STRING
 xchain312_n8_α:
 mov qword ptr [r12 + 8480], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 8488], rax
 jmp xchain312_n10_α
 xchain312_n8_β:
 jmp proc_define$2_ω
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n9_α:
 mov qword ptr [r12 + 3568], 1
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [r12 + 3576], rax
 jmp xchain312_n11_α
 xchain312_n9_β:
 jmp proc_define$2_ω
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain312_n10_α:
 mov qword ptr [r12 + 8400], 6
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [r12 + 8408], rax
 jmp xchain312_n12_α
 xchain312_n10_β:
 jmp proc_define$2_ω
.Lx329_0:
 .quad 27
# IR_LIT_STRING
 xchain312_n11_α:
 mov qword ptr [r12 + 3440], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 3448], rax
 jmp xchain312_n13_α
 xchain312_n11_β:
 jmp proc_define$2_ω
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n12_α:
 mov qword ptr [r12 + 8384], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 8392], rax
 jmp xchain312_n14_α
 xchain312_n12_β:
 jmp proc_define$2_ω
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n13_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain312_n15_α
 xchain312_n13_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n14_α:
 mov qword ptr [r12 + 8304], 6
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [r12 + 8312], rax
 jmp xchain312_n16_α
 xchain312_n14_β:
 jmp proc_define$2_ω
.Lx334_0:
 .quad 74
# IR_VAR_REF
 xchain312_n15_α:
 lea rdi, [r12 + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain312_n17_α
 xchain312_n15_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n16_α:
 mov qword ptr [r12 + 8288], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 8296], rax
 jmp xchain312_n18_α
 xchain312_n16_β:
 jmp proc_define$2_ω
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "."
 xchain312_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3440] -> [zr+3392]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3400], rax
# marshal arg1 = producer-box slot [zr+3360] -> [zr+3408]
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3416], rax
# marshal arg2 = producer-box slot [zr+3344] -> [zr+3424]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3432], rax
  .section .rodata
  .Lrkfn339: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn339]
 lea rsi, [r12 + 3392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n19_α
 xchain312_n17_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n18_α:
 mov qword ptr [r12 + 8208], 6
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [r12 + 8216], rax
 jmp xchain312_n20_α
 xchain312_n18_β:
 jmp proc_define$2_ω
.Lx340_0:
 .quad 17
# IR_VAR_REF
 xchain312_n19_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain312_n21_α
 xchain312_n19_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n20_α:
 mov qword ptr [r12 + 8192], 1
 mov rax, qword ptr [rip + .Lx343_0]
 mov qword ptr [r12 + 8200], rax
 jmp xchain312_n22_α
 xchain312_n20_β:
 jmp proc_define$2_ω
.Lx343_0:
 .quad .Lx343_0_s
.Lx343_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n21_α:
 lea rdi, [r12 + 8768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain312_n23_α
 xchain312_n21_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n22_α:
 mov qword ptr [r12 + 8112], 6
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 8120], rax
 jmp xchain312_n24_α
 xchain312_n22_β:
 jmp proc_define$2_ω
.Lx346_0:
 .quad 33
 xchain312_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3504]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3512], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3520]
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3528], rax
# marshal arg2 = producer-box slot [zr+3456] -> [zr+3536]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3544], rax
# marshal arg3 = producer-box slot [zr+3472] -> [zr+3552]
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 3552], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 3560], rax
  .section .rodata
  .Lrkfn348: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 3504]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 cmp eax, 99
 je xchain312_n26_α
 jmp xchain312_n25_α
 xchain312_n23_β:
 jmp xchain312_n26_α
# IR_LIT_STRING
 xchain312_n24_α:
 mov qword ptr [r12 + 8096], 1
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [r12 + 8104], rax
 jmp xchain312_n27_α
 xchain312_n24_β:
 jmp proc_define$2_ω
.Lx349_0:
 .quad .Lx349_0_s
.Lx349_0_s:
 .string "."
 xchain312_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3296]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3304], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3312]
 mov rax, qword ptr [r12 + 3488]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn351: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn351]
 lea rsi, [r12 + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 cmp eax, 99
 je xchain312_n26_α
 jmp xchain312_n28_α
 xchain312_n25_β:
 jmp xchain312_n26_α
 xchain312_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2480]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2480], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2488], rax
  .section .rodata
  .Lrkfn353: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn353]
 lea rsi, [r12 + 2480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n29_α
 xchain312_n26_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n27_α:
 mov qword ptr [r12 + 8016], 6
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 8024], rax
 jmp xchain312_n30_α
 xchain312_n27_β:
 jmp proc_define$2_ω
.Lx354_0:
 .quad 94
# IR_VAR_REF
 xchain312_n28_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 jmp xchain312_n31_α
 xchain312_n28_β:
 jmp xchain312_n26_α
# IR_VAR_REF
 xchain312_n29_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain312_n32_α
 xchain312_n29_β:
 jmp xchain312_n48_α
# IR_LIT_STRING
 xchain312_n30_α:
 mov qword ptr [r12 + 8000], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 8008], rax
 jmp xchain312_n33_α
 xchain312_n30_β:
 jmp proc_define$2_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n31_α:
 mov qword ptr [r12 + 3264], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain312_n34_α
 xchain312_n31_β:
 jmp proc_define$2_ω
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string ","
# IR_LIT_STRING
 xchain312_n32_α:
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain312_n35_α
 xchain312_n32_β:
 jmp proc_define$2_ω
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain312_n33_α:
 mov qword ptr [r12 + 7920], 6
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [r12 + 7928], rax
 jmp xchain312_n36_α
 xchain312_n33_β:
 jmp proc_define$2_ω
.Lx362_0:
 .quad 18
# IR_LIT_STRING
 xchain312_n34_α:
 mov qword ptr [r12 + 2720], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 2728], rax
 jmp xchain312_n37_α
 xchain312_n34_β:
 jmp proc_define$2_ω
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain312_n35_α:
 mov qword ptr [r12 + 2320], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [r12 + 2328], rax
 jmp xchain312_n38_α
 xchain312_n35_β:
 jmp proc_define$2_ω
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain312_n36_α:
 mov qword ptr [r12 + 7904], 1
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [r12 + 7912], rax
 jmp xchain312_n39_α
 xchain312_n36_β:
 jmp proc_define$2_ω
.Lx365_0:
 .quad .Lx365_0_s
.Lx365_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n37_α:
 lea rdi, [r12 + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain312_n40_α
 xchain312_n37_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n38_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain312_n41_α
 xchain312_n38_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n39_α:
 mov qword ptr [r12 + 7824], 6
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [r12 + 7832], rax
 jmp xchain312_n42_α
 xchain312_n39_β:
 jmp proc_define$2_ω
.Lx370_0:
 .quad 46
# IR_VAR_REF
 xchain312_n40_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain312_n43_α
 xchain312_n40_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n41_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain312_n44_α
 xchain312_n41_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n42_α:
 mov qword ptr [r12 + 7808], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [r12 + 7816], rax
 jmp xchain312_n45_α
 xchain312_n42_β:
 jmp proc_define$2_ω
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n43_α:
 lea rdi, [r12 + 8784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 jmp xchain312_n46_α
 xchain312_n43_β:
 jmp proc_define$2_ω
 xchain312_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2384]
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2384], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2392], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2400]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2408], rax
# marshal arg2 = producer-box slot [zr+2336] -> [zr+2416]
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2424], rax
# marshal arg3 = producer-box slot [zr+2352] -> [zr+2432]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2440], rax
  .section .rodata
  .Lrkfn379: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn379]
 lea rsi, [r12 + 2384]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 cmp eax, 99
 je xchain312_n48_α
 jmp xchain312_n47_α
 xchain312_n44_β:
 jmp xchain312_n48_α
# IR_LIT_INTEGER
 xchain312_n45_α:
 mov qword ptr [r12 + 7728], 6
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [r12 + 7736], rax
 jmp xchain312_n49_α
 xchain312_n45_β:
 jmp proc_define$2_ω
.Lx380_0:
 .quad 83
# IR_VAR_REF
 xchain312_n46_α:
 lea rdi, [r12 + 8800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain312_n50_α
 xchain312_n46_β:
 jmp proc_define$2_ω
 xchain312_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2288]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn384: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain312_n48_α
 jmp xchain312_n51_α
 xchain312_n47_β:
 jmp xchain312_n48_α
 xchain312_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2160]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn386: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 2160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n52_α
 xchain312_n48_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n49_α:
 mov qword ptr [r12 + 7712], 1
 mov rax, qword ptr [rip + .Lx387_0]
 mov qword ptr [r12 + 7720], rax
 jmp xchain312_n53_α
 xchain312_n49_β:
 jmp proc_define$2_ω
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "."
 xchain312_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2720] -> [zr+2640]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2656]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2664], rax
# marshal arg2 = producer-box slot [zr+2576] -> [zr+2672]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2680], rax
# marshal arg3 = producer-box slot [zr+2592] -> [zr+2688]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2696], rax
# marshal arg4 = producer-box slot [zr+2608] -> [zr+2704]
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2712], rax
  .section .rodata
  .Lrkfn389: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn389]
 lea rsi, [r12 + 2640]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n54_α
 xchain312_n50_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n51_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain312_n55_α
 xchain312_n51_β:
 jmp xchain312_n48_α
# IR_VAR_REF
 xchain312_n52_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain312_n56_α
 xchain312_n52_β:
 jmp xchain312_n96_α
# IR_LIT_INTEGER
 xchain312_n53_α:
 mov qword ptr [r12 + 7632], 6
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [r12 + 7640], rax
 jmp xchain312_n57_α
 xchain312_n53_β:
 jmp proc_define$2_ω
.Lx394_0:
 .quad 65
# IR_LIT_STRING
 xchain312_n54_α:
 mov qword ptr [r12 + 3184], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [r12 + 3192], rax
 jmp xchain312_n58_α
 xchain312_n54_β:
 jmp proc_define$2_ω
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string ","
# IR_LIT_STRING
 xchain312_n55_α:
 mov qword ptr [r12 + 2240], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain312_n59_α
 xchain312_n55_β:
 jmp xchain312_n48_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "true"
# IR_LIT_STRING
 xchain312_n56_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain312_n60_α
 xchain312_n56_β:
 jmp proc_define$2_ω
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain312_n57_α:
 mov qword ptr [r12 + 7616], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [r12 + 7624], rax
 jmp xchain312_n61_α
 xchain312_n57_β:
 jmp proc_define$2_ω
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n58_α:
 mov qword ptr [r12 + 2864], 1
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain312_n62_α
 xchain312_n58_β:
 jmp proc_define$2_ω
.Lx399_0:
 .quad .Lx399_0_s
.Lx399_0_s:
 .string "qsort"
 xchain312_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2192]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2208]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lrkfn401: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn401]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain312_n48_α
 jmp xchain312_n63_α
 xchain312_n59_β:
 jmp xchain312_n48_α
# IR_LIT_STRING
 xchain312_n60_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain312_n64_α
 xchain312_n60_β:
 jmp proc_define$2_ω
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n61_α:
 mov qword ptr [r12 + 7536], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 7544], rax
 jmp xchain312_n65_α
 xchain312_n61_β:
 jmp proc_define$2_ω
.Lx403_0:
 .quad 2
# IR_VAR_REF
 xchain312_n62_α:
 lea rdi, [r12 + 8800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 jmp xchain312_n66_α
 xchain312_n62_β:
 jmp proc_define$2_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain312_n63_α:
 lea rax, [rip + xchain312_n48_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_define$2_γ
 xchain312_n63_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n64_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain312_n68_α
 xchain312_n64_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n65_α:
 mov qword ptr [r12 + 7520], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 7528], rax
 jmp xchain312_n69_α
 xchain312_n65_β:
 jmp proc_define$2_ω
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n66_α:
 lea rdi, [r12 + 8816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain312_n70_α
 xchain312_n66_β:
 jmp proc_define$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain312_n67_α:
 jmp qword ptr [r12 + 64]
 xchain312_n67_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n68_α:
 lea rdi, [r12 + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain312_n71_α
 xchain312_n68_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n69_α:
 mov qword ptr [r12 + 7440], 6
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [r12 + 7448], rax
 jmp xchain312_n72_α
 xchain312_n69_β:
 jmp proc_define$2_ω
.Lx417_0:
 .quad 32
# IR_VAR_REF
 xchain312_n70_α:
 lea rdi, [r12 + 8768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain312_n73_α
 xchain312_n70_β:
 jmp proc_define$2_ω
 xchain312_n71_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1832], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1840]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1848], rax
# marshal arg2 = producer-box slot [zr+1776] -> [zr+1856]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1864], rax
  .section .rodata
  .Lrkfn421: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn421]
 lea rsi, [r12 + 1824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n74_α
 xchain312_n71_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n72_α:
 mov qword ptr [r12 + 7424], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 7432], rax
 jmp xchain312_n75_α
 xchain312_n72_β:
 jmp proc_define$2_ω
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "."
 xchain312_n73_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2800]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2808], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2816]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2824], rax
# marshal arg2 = producer-box slot [zr+2752] -> [zr+2832]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2840], rax
# marshal arg3 = producer-box slot [zr+2768] -> [zr+2848]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn424: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 2800]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n76_α
 xchain312_n73_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n74_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain312_n77_α
 xchain312_n74_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n75_α:
 mov qword ptr [r12 + 7344], 6
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [r12 + 7352], rax
 jmp xchain312_n78_α
 xchain312_n75_β:
 jmp proc_define$2_ω
.Lx427_0:
 .quad 53
# IR_LIT_STRING
 xchain312_n76_α:
 mov qword ptr [r12 + 3104], 1
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [r12 + 3112], rax
 jmp xchain312_n79_α
 xchain312_n76_β:
 jmp proc_define$2_ω
.Lx428_0:
 .quad .Lx428_0_s
.Lx428_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain312_n77_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain312_n80_α
 xchain312_n77_β:
 jmp proc_define$2_ω
.Lx429_0:
 .quad .Lx429_0_s
.Lx429_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n78_α:
 mov qword ptr [r12 + 7328], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [r12 + 7336], rax
 jmp xchain312_n81_α
 xchain312_n78_β:
 jmp proc_define$2_ω
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n79_α:
 lea rdi, [r12 + 8784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain312_n82_α
 xchain312_n79_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n80_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain312_n83_α
 xchain312_n80_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n81_α:
 mov qword ptr [r12 + 7248], 6
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 7256], rax
 jmp xchain312_n84_α
 xchain312_n81_β:
 jmp proc_define$2_ω
.Lx435_0:
 .quad 28
# IR_VAR_REF
 xchain312_n82_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain312_n85_α
 xchain312_n82_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n83_α:
 lea rdi, [r12 + 8768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain312_n86_α
 xchain312_n83_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n84_α:
 mov qword ptr [r12 + 7232], 1
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [r12 + 7240], rax
 jmp xchain312_n87_α
 xchain312_n84_β:
 jmp proc_define$2_ω
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n85_α:
 mov qword ptr [r12 + 3008], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 3016], rax
 jmp xchain312_n88_α
 xchain312_n85_β:
 jmp proc_define$2_ω
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "."
 xchain312_n86_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1952]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1968]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1976], rax
# marshal arg2 = producer-box slot [zr+1904] -> [zr+1984]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lrkfn443: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn443]
 lea rsi, [r12 + 1952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n89_α
 xchain312_n86_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n87_α:
 mov qword ptr [r12 + 7152], 6
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [r12 + 7160], rax
 jmp xchain312_n90_α
 xchain312_n87_β:
 jmp proc_define$2_ω
.Lx444_0:
 .quad 85
# IR_VAR_REF
 xchain312_n88_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain312_n91_α
 xchain312_n88_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n89_α:
 lea rdi, [r12 + 8784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain312_n92_α
 xchain312_n89_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n90_α:
 mov qword ptr [r12 + 7136], 1
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [r12 + 7144], rax
 jmp xchain312_n93_α
 xchain312_n90_β:
 jmp proc_define$2_ω
.Lx449_0:
 .quad .Lx449_0_s
.Lx449_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n91_α:
 lea rdi, [r12 + 8816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain312_n94_α
 xchain312_n91_β:
 jmp proc_define$2_ω
 xchain312_n92_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2048]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+2064]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 2072], rax
# marshal arg2 = producer-box slot [zr+1888] -> [zr+2080]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 2088], rax
# marshal arg3 = producer-box slot [zr+1936] -> [zr+2096]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 2104], rax
# marshal arg4 = producer-box slot [zr+2016] -> [zr+2112]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2120], rax
  .section .rodata
  .Lrkfn453: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn453]
 lea rsi, [r12 + 2048]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain312_n96_α
 jmp xchain312_n95_α
 xchain312_n92_β:
 jmp xchain312_n96_α
# IR_LIT_INTEGER
 xchain312_n93_α:
 mov qword ptr [r12 + 7056], 6
 mov rax, qword ptr [rip + .Lx454_0]
 mov qword ptr [r12 + 7064], rax
 jmp xchain312_n97_α
 xchain312_n93_β:
 jmp proc_define$2_ω
.Lx454_0:
 .quad 99
 xchain312_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2960]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2968], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+2976]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 2984], rax
# marshal arg2 = producer-box slot [zr+2912] -> [zr+2992]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn456: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn456]
 lea rsi, [r12 + 2960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n98_α
 xchain312_n94_β:
 jmp proc_define$2_ω
 xchain312_n95_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1728]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1736], rax
# marshal arg1 = producer-box slot [zr+2032] -> [zr+1744]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1752], rax
  .section .rodata
  .Lrkfn458: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn458]
 lea rsi, [r12 + 1728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain312_n96_α
 jmp xchain312_n99_α
 xchain312_n95_β:
 jmp xchain312_n96_α
 xchain312_n96_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1168]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn460: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn460]
 lea rsi, [r12 + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n100_α
 xchain312_n96_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n97_α:
 mov qword ptr [r12 + 7040], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [r12 + 7048], rax
 jmp xchain312_n101_α
 xchain312_n97_β:
 jmp proc_define$2_ω
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "."
 xchain312_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3040]
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 3048], rax
# marshal arg1 = producer-box slot [zr+2880] -> [zr+3056]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 3064], rax
# marshal arg2 = producer-box slot [zr+2896] -> [zr+3072]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 3080], rax
# marshal arg3 = producer-box slot [zr+2944] -> [zr+3088]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 3096], rax
  .section .rodata
  .Lrkfn463: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn463]
 lea rsi, [r12 + 3040]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n102_α
 xchain312_n98_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n99_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain312_n103_α
 xchain312_n99_β:
 jmp xchain312_n96_α
# IR_VAR_REF
 xchain312_n100_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain312_n104_α
 xchain312_n100_β:
 jmp xchain312_n144_α
# IR_LIT_INTEGER
 xchain312_n101_α:
 mov qword ptr [r12 + 6960], 6
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [r12 + 6968], rax
 jmp xchain312_n105_α
 xchain312_n101_β:
 jmp proc_define$2_ω
.Lx468_0:
 .quad 47
 xchain312_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3184] -> [zr+3136]
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 3136], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 3144], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+3152]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 3160], rax
# marshal arg2 = producer-box slot [zr+3024] -> [zr+3168]
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 3176], rax
  .section .rodata
  .Lrkfn470: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 3136]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n106_α
 xchain312_n102_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n103_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain312_n107_α
 xchain312_n103_β:
 jmp proc_define$2_ω
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string ","
# IR_LIT_STRING
 xchain312_n104_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain312_n108_α
 xchain312_n104_β:
 jmp proc_define$2_ω
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain312_n105_α:
 mov qword ptr [r12 + 6944], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [r12 + 6952], rax
 jmp xchain312_n109_α
 xchain312_n105_β:
 jmp proc_define$2_ω
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "."
 xchain312_n106_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3224], rax
# marshal arg1 = producer-box slot [zr+2624] -> [zr+3232]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 3240], rax
# marshal arg2 = producer-box slot [zr+3120] -> [zr+3248]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3248], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3256], rax
  .section .rodata
  .Lrkfn475: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn475]
 lea rsi, [r12 + 3216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain312_n26_α
 jmp xchain312_n110_α
 xchain312_n106_β:
 jmp xchain312_n26_α
# IR_LIT_STRING
 xchain312_n107_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain312_n111_α
 xchain312_n107_β:
 jmp proc_define$2_ω
.Lx476_0:
 .quad .Lx476_0_s
.Lx476_0_s:
 .string "=<"
# IR_LIT_STRING
 xchain312_n108_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain312_n112_α
 xchain312_n108_β:
 jmp proc_define$2_ω
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n109_α:
 mov qword ptr [r12 + 6864], 6
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [r12 + 6872], rax
 jmp xchain312_n113_α
 xchain312_n109_β:
 jmp proc_define$2_ω
.Lx478_0:
 .quad 28
 xchain312_n110_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2512]
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2520], rax
# marshal arg1 = producer-box slot [zr+3200] -> [zr+2528]
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 2536], rax
  .section .rodata
  .Lrkfn480: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn480]
 lea rsi, [r12 + 2512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain312_n26_α
 jmp xchain312_n114_α
 xchain312_n110_β:
 jmp xchain312_n26_α
# IR_VAR_REF
 xchain312_n111_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain312_n115_α
 xchain312_n111_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n112_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain312_n116_α
 xchain312_n112_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n113_α:
 mov qword ptr [r12 + 6848], 1
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [r12 + 6856], rax
 jmp xchain312_n117_α
 xchain312_n113_β:
 jmp proc_define$2_ω
.Lx485_0:
 .quad .Lx485_0_s
.Lx485_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain312_n114_α:
 lea rax, [rip + xchain312_n26_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_define$2_γ
 xchain312_n114_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n115_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain312_n118_α
 xchain312_n115_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n116_α:
 lea rdi, [r12 + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain312_n119_α
 xchain312_n116_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n117_α:
 mov qword ptr [r12 + 6768], 6
 mov rax, qword ptr [rip + .Lx492_0]
 mov qword ptr [r12 + 6776], rax
 jmp xchain312_n120_α
 xchain312_n117_β:
 jmp proc_define$2_ω
.Lx492_0:
 .quad 82
 xchain312_n118_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1312]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1320], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1328]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn494: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n121_α
 xchain312_n118_β:
 jmp proc_define$2_ω
 xchain312_n119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+848]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 856], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+864]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn496: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn496]
 lea rsi, [r12 + 832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n122_α
 xchain312_n119_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n120_α:
 mov qword ptr [r12 + 6752], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [r12 + 6760], rax
 jmp xchain312_n123_α
 xchain312_n120_β:
 jmp proc_define$2_ω
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n121_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx498_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain312_n124_α
 xchain312_n121_β:
 jmp proc_define$2_ω
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string ","
# IR_VAR_REF
 xchain312_n122_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain312_n125_α
 xchain312_n122_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n123_α:
 mov qword ptr [r12 + 6672], 6
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 6680], rax
 jmp xchain312_n126_α
 xchain312_n123_β:
 jmp proc_define$2_ω
.Lx501_0:
 .quad 6
# IR_LIT_STRING
 xchain312_n124_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain312_n127_α
 xchain312_n124_β:
 jmp proc_define$2_ω
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "?"
# IR_VAR_REF
 xchain312_n125_α:
 lea rdi, [r12 + 8768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain312_n128_α
 xchain312_n125_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n126_α:
 mov qword ptr [r12 + 6656], 1
 mov rax, qword ptr [rip + .Lx505_0]
 mov qword ptr [r12 + 6664], rax
 jmp xchain312_n129_α
 xchain312_n126_β:
 jmp proc_define$2_ω
.Lx505_0:
 .quad .Lx505_0_s
.Lx505_0_s:
 .string "."
# IR_LIT_STRING
 xchain312_n127_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain312_n130_α
 xchain312_n127_β:
 jmp proc_define$2_ω
.Lx506_0:
 .quad .Lx506_0_s
.Lx506_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain312_n128_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain312_n131_α
 xchain312_n128_β:
 jmp proc_define$2_ω
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n129_α:
 mov qword ptr [r12 + 6576], 6
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [r12 + 6584], rax
 jmp xchain312_n132_α
 xchain312_n129_β:
 jmp proc_define$2_ω
.Lx508_0:
 .quad 11
# IR_VAR_REF
 xchain312_n130_α:
 lea rdi, [r12 + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain312_n133_α
 xchain312_n130_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n131_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain312_n134_α
 xchain312_n131_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n132_α:
 mov qword ptr [r12 + 6560], 1
 mov rax, qword ptr [rip + .Lx513_0]
 mov qword ptr [r12 + 6568], rax
 jmp xchain312_n135_α
 xchain312_n132_β:
 jmp proc_define$2_ω
.Lx513_0:
 .quad .Lx513_0_s
.Lx513_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n133_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain312_n136_α
 xchain312_n133_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n134_α:
 lea rdi, [r12 + 8784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain312_n137_α
 xchain312_n134_β:
 jmp proc_define$2_ω
# IR_LIT_INTEGER
 xchain312_n135_α:
 mov qword ptr [r12 + 6480], 6
 mov rax, qword ptr [rip + .Lx518_0]
 mov qword ptr [r12 + 6488], rax
 jmp xchain312_n138_α
 xchain312_n135_β:
 jmp proc_define$2_ω
.Lx518_0:
 .quad 55
# IR_VAR_REF
 xchain312_n136_α:
 lea rdi, [r12 + 8768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain312_n139_α
 xchain312_n136_β:
 jmp proc_define$2_ω
 xchain312_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+992]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+1008]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn522: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n140_α
 xchain312_n137_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n138_α:
 mov qword ptr [r12 + 6464], 1
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [r12 + 6472], rax
 jmp xchain312_n141_α
 xchain312_n138_β:
 jmp proc_define$2_ω
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n139_α:
 lea rdi, [r12 + 8784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain312_n142_α
 xchain312_n139_β:
 jmp proc_define$2_ω
 xchain312_n140_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1056]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+1072]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 1080], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+1088]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1096], rax
# marshal arg3 = producer-box slot [zr+912] -> [zr+1104]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 1112], rax
# marshal arg4 = producer-box slot [zr+960] -> [zr+1120]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn527: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 1056]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain312_n144_α
 jmp xchain312_n143_α
 xchain312_n140_β:
 jmp xchain312_n144_α
# IR_LIT_INTEGER
 xchain312_n141_α:
 mov qword ptr [r12 + 6384], 6
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [r12 + 6392], rax
 jmp xchain312_n145_α
 xchain312_n141_β:
 jmp proc_define$2_ω
.Lx528_0:
 .quad 29
 xchain312_n142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1456]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1472]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1480], rax
# marshal arg2 = producer-box slot [zr+1392] -> [zr+1488]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1496], rax
# marshal arg3 = producer-box slot [zr+1408] -> [zr+1504]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1512], rax
# marshal arg4 = producer-box slot [zr+1424] -> [zr+1520]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn530: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn530]
 lea rsi, [r12 + 1456]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n146_α
 xchain312_n142_β:
 jmp proc_define$2_ω
 xchain312_n143_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+752]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn532: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain312_n144_α
 jmp xchain312_n147_α
 xchain312_n143_β:
 jmp xchain312_n144_α
 xchain312_n144_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+464]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn534: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn534]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n148_α
 xchain312_n144_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n145_α:
 mov qword ptr [r12 + 6368], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [r12 + 6376], rax
 jmp xchain312_n149_α
 xchain312_n145_β:
 jmp proc_define$2_ω
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
 xchain312_n146_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1584]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1592], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1600]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn537: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn537]
 lea rsi, [r12 + 1568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n150_α
 xchain312_n146_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n147_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain312_n151_α
 xchain312_n147_β:
 jmp xchain312_n144_α
# IR_VAR_REF
 xchain312_n148_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain312_n152_α
 xchain312_n148_β:
 jmp xchain312_n173_α
# IR_LIT_INTEGER
 xchain312_n149_α:
 mov qword ptr [r12 + 6288], 6
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [r12 + 6296], rax
 jmp xchain312_n153_α
 xchain312_n149_β:
 jmp proc_define$2_ω
.Lx542_0:
 .quad 39
 xchain312_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1664]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1672], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1680]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn544: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn544]
 lea rsi, [r12 + 1648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain312_n96_α
 jmp xchain312_n154_α
 xchain312_n150_β:
 jmp xchain312_n96_α
# IR_LIT_STRING
 xchain312_n151_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain312_n155_α
 xchain312_n151_β:
 jmp proc_define$2_ω
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain312_n152_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain312_n156_α
 xchain312_n152_β:
 jmp proc_define$2_ω
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain312_n153_α:
 mov qword ptr [r12 + 6272], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [r12 + 6280], rax
 jmp xchain312_n157_α
 xchain312_n153_β:
 jmp proc_define$2_ω
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "."
 xchain312_n154_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1216]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn549: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn549]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain312_n96_α
 jmp xchain312_n158_α
 xchain312_n154_β:
 jmp xchain312_n96_α
# IR_VAR_REF
 xchain312_n155_α:
 lea rdi, [r12 + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain312_n159_α
 xchain312_n155_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n156_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain312_n160_α
 xchain312_n156_β:
 jmp proc_define$2_ω
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain312_n157_α:
 mov qword ptr [r12 + 6192], 6
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [r12 + 6200], rax
 jmp xchain312_n161_α
 xchain312_n157_β:
 jmp proc_define$2_ω
.Lx553_0:
 .quad 81
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain312_n158_α:
 lea rax, [rip + xchain312_n96_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_define$2_γ
 xchain312_n158_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n159_α:
 lea rdi, [r12 + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain312_n162_α
 xchain312_n159_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n160_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain312_n163_α
 xchain312_n160_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n161_α:
 mov qword ptr [r12 + 6176], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [r12 + 6184], rax
 jmp xchain312_n164_α
 xchain312_n161_β:
 jmp proc_define$2_ω
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n162_α:
 lea rdi, [r12 + 8768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain312_n165_α
 xchain312_n162_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n163_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain312_n166_α
 xchain312_n163_β:
 jmp proc_define$2_ω
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain312_n164_α:
 mov qword ptr [r12 + 6096], 6
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [r12 + 6104], rax
 jmp xchain312_n167_α
 xchain312_n164_β:
 jmp proc_define$2_ω
.Lx564_0:
 .quad 90
# IR_VAR_REF
 xchain312_n165_α:
 lea rdi, [r12 + 8784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain312_n168_α
 xchain312_n165_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n166_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain312_n169_α
 xchain312_n166_β:
 jmp proc_define$2_ω
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain312_n167_α:
 mov qword ptr [r12 + 6080], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [r12 + 6088], rax
 jmp xchain312_n170_α
 xchain312_n167_β:
 jmp proc_define$2_ω
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
 xchain312_n168_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+640]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+656]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 664], rax
# marshal arg3 = producer-box slot [zr+576] -> [zr+672]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 680], rax
# marshal arg4 = producer-box slot [zr+592] -> [zr+688]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn570: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn570]
 lea rsi, [r12 + 624]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain312_n144_α
 jmp xchain312_n171_α
 xchain312_n168_β:
 jmp xchain312_n144_α
 xchain312_n169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+352]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+368]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 376], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+384]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 392], rax
# marshal arg3 = producer-box slot [zr+304] -> [zr+400]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 408], rax
# marshal arg4 = producer-box slot [zr+320] -> [zr+416]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn572: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn572]
 lea rsi, [r12 + 352]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain312_n173_α
 jmp xchain312_n172_α
 xchain312_n169_β:
 jmp xchain312_n173_α
# IR_LIT_INTEGER
 xchain312_n170_α:
 mov qword ptr [r12 + 6000], 6
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [r12 + 6008], rax
 jmp xchain312_n174_α
 xchain312_n170_β:
 jmp proc_define$2_ω
.Lx573_0:
 .quad 37
 xchain312_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+512]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn575: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn575]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain312_n144_α
 jmp xchain312_n175_α
 xchain312_n171_β:
 jmp xchain312_n144_α
 xchain312_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+240]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn577: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn577]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain312_n173_α
 jmp xchain312_n176_α
 xchain312_n172_β:
 jmp xchain312_n173_α
 xchain312_n173_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn579: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn579]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp proc_define$2_ω
 xchain312_n173_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n174_α:
 mov qword ptr [r12 + 5984], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain312_n177_α
 xchain312_n174_β:
 jmp proc_define$2_ω
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain312_n175_α:
 lea rax, [rip + xchain312_n144_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_define$2_γ
 xchain312_n175_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n176_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain312_n178_α
 xchain312_n176_β:
 jmp xchain312_n173_α
# IR_LIT_INTEGER
 xchain312_n177_α:
 mov qword ptr [r12 + 5904], 6
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [r12 + 5912], rax
 jmp xchain312_n179_α
 xchain312_n177_β:
 jmp proc_define$2_ω
.Lx585_0:
 .quad 10
# IR_LIT_STRING
 xchain312_n178_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain312_n180_α
 xchain312_n178_β:
 jmp xchain312_n173_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "true"
# IR_LIT_STRING
 xchain312_n179_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain312_n181_α
 xchain312_n179_β:
 jmp proc_define$2_ω
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "."
 xchain312_n180_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn589: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn589]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain312_n173_α
 jmp xchain312_n182_α
 xchain312_n180_β:
 jmp xchain312_n173_α
# IR_LIT_INTEGER
 xchain312_n181_α:
 mov qword ptr [r12 + 5808], 6
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain312_n183_α
 xchain312_n181_β:
 jmp proc_define$2_ω
.Lx590_0:
 .quad 0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain312_n182_α:
 lea rax, [rip + xchain312_n173_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_define$2_γ
 xchain312_n182_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n183_α:
 mov qword ptr [r12 + 5792], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [r12 + 5800], rax
 jmp xchain312_n184_α
 xchain312_n183_β:
 jmp proc_define$2_ω
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n184_α:
 mov qword ptr [r12 + 5712], 6
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [r12 + 5720], rax
 jmp xchain312_n185_α
 xchain312_n184_β:
 jmp proc_define$2_ω
.Lx594_0:
 .quad 66
# IR_LIT_STRING
 xchain312_n185_α:
 mov qword ptr [r12 + 5696], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [r12 + 5704], rax
 jmp xchain312_n186_α
 xchain312_n185_β:
 jmp proc_define$2_ω
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n186_α:
 mov qword ptr [r12 + 5616], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain312_n187_α
 xchain312_n186_β:
 jmp proc_define$2_ω
.Lx596_0:
 .quad 51
# IR_LIT_STRING
 xchain312_n187_α:
 mov qword ptr [r12 + 5600], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [r12 + 5608], rax
 jmp xchain312_n188_α
 xchain312_n187_β:
 jmp proc_define$2_ω
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n188_α:
 mov qword ptr [r12 + 5520], 6
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [r12 + 5528], rax
 jmp xchain312_n189_α
 xchain312_n188_β:
 jmp proc_define$2_ω
.Lx598_0:
 .quad 7
# IR_LIT_STRING
 xchain312_n189_α:
 mov qword ptr [r12 + 5504], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [r12 + 5512], rax
 jmp xchain312_n190_α
 xchain312_n189_β:
 jmp proc_define$2_ω
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n190_α:
 mov qword ptr [r12 + 5424], 6
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [r12 + 5432], rax
 jmp xchain312_n191_α
 xchain312_n190_β:
 jmp proc_define$2_ω
.Lx600_0:
 .quad 21
# IR_LIT_STRING
 xchain312_n191_α:
 mov qword ptr [r12 + 5408], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [r12 + 5416], rax
 jmp xchain312_n192_α
 xchain312_n191_β:
 jmp proc_define$2_ω
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n192_α:
 mov qword ptr [r12 + 5328], 6
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [r12 + 5336], rax
 jmp xchain312_n193_α
 xchain312_n192_β:
 jmp proc_define$2_ω
.Lx602_0:
 .quad 85
# IR_LIT_STRING
 xchain312_n193_α:
 mov qword ptr [r12 + 5312], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [r12 + 5320], rax
 jmp xchain312_n194_α
 xchain312_n193_β:
 jmp proc_define$2_ω
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n194_α:
 mov qword ptr [r12 + 5232], 6
 mov rax, qword ptr [rip + .Lx604_0]
 mov qword ptr [r12 + 5240], rax
 jmp xchain312_n195_α
 xchain312_n194_β:
 jmp proc_define$2_ω
.Lx604_0:
 .quad 27
# IR_LIT_STRING
 xchain312_n195_α:
 mov qword ptr [r12 + 5216], 1
 mov rax, qword ptr [rip + .Lx605_0]
 mov qword ptr [r12 + 5224], rax
 jmp xchain312_n196_α
 xchain312_n195_β:
 jmp proc_define$2_ω
.Lx605_0:
 .quad .Lx605_0_s
.Lx605_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n196_α:
 mov qword ptr [r12 + 5136], 6
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [r12 + 5144], rax
 jmp xchain312_n197_α
 xchain312_n196_β:
 jmp proc_define$2_ω
.Lx606_0:
 .quad 31
# IR_LIT_STRING
 xchain312_n197_α:
 mov qword ptr [r12 + 5120], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [r12 + 5128], rax
 jmp xchain312_n198_α
 xchain312_n197_β:
 jmp proc_define$2_ω
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n198_α:
 mov qword ptr [r12 + 5040], 6
 mov rax, qword ptr [rip + .Lx608_0]
 mov qword ptr [r12 + 5048], rax
 jmp xchain312_n199_α
 xchain312_n198_β:
 jmp proc_define$2_ω
.Lx608_0:
 .quad 63
# IR_LIT_STRING
 xchain312_n199_α:
 mov qword ptr [r12 + 5024], 1
 mov rax, qword ptr [rip + .Lx609_0]
 mov qword ptr [r12 + 5032], rax
 jmp xchain312_n200_α
 xchain312_n199_β:
 jmp proc_define$2_ω
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n200_α:
 mov qword ptr [r12 + 4944], 6
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [r12 + 4952], rax
 jmp xchain312_n201_α
 xchain312_n200_β:
 jmp proc_define$2_ω
.Lx610_0:
 .quad 75
# IR_LIT_STRING
 xchain312_n201_α:
 mov qword ptr [r12 + 4928], 1
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [r12 + 4936], rax
 jmp xchain312_n202_α
 xchain312_n201_β:
 jmp proc_define$2_ω
.Lx611_0:
 .quad .Lx611_0_s
.Lx611_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n202_α:
 mov qword ptr [r12 + 4848], 6
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [r12 + 4856], rax
 jmp xchain312_n203_α
 xchain312_n202_β:
 jmp proc_define$2_ω
.Lx612_0:
 .quad 4
# IR_LIT_STRING
 xchain312_n203_α:
 mov qword ptr [r12 + 4832], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [r12 + 4840], rax
 jmp xchain312_n204_α
 xchain312_n203_β:
 jmp proc_define$2_ω
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n204_α:
 mov qword ptr [r12 + 4752], 6
 mov rax, qword ptr [rip + .Lx614_0]
 mov qword ptr [r12 + 4760], rax
 jmp xchain312_n205_α
 xchain312_n204_β:
 jmp proc_define$2_ω
.Lx614_0:
 .quad 95
# IR_LIT_STRING
 xchain312_n205_α:
 mov qword ptr [r12 + 4736], 1
 mov rax, qword ptr [rip + .Lx615_0]
 mov qword ptr [r12 + 4744], rax
 jmp xchain312_n206_α
 xchain312_n205_β:
 jmp proc_define$2_ω
.Lx615_0:
 .quad .Lx615_0_s
.Lx615_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n206_α:
 mov qword ptr [r12 + 4656], 6
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [r12 + 4664], rax
 jmp xchain312_n207_α
 xchain312_n206_β:
 jmp proc_define$2_ω
.Lx616_0:
 .quad 99
# IR_LIT_STRING
 xchain312_n207_α:
 mov qword ptr [r12 + 4640], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [r12 + 4648], rax
 jmp xchain312_n208_α
 xchain312_n207_β:
 jmp proc_define$2_ω
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n208_α:
 mov qword ptr [r12 + 4560], 6
 mov rax, qword ptr [rip + .Lx618_0]
 mov qword ptr [r12 + 4568], rax
 jmp xchain312_n209_α
 xchain312_n208_β:
 jmp proc_define$2_ω
.Lx618_0:
 .quad 11
# IR_LIT_STRING
 xchain312_n209_α:
 mov qword ptr [r12 + 4544], 1
 mov rax, qword ptr [rip + .Lx619_0]
 mov qword ptr [r12 + 4552], rax
 jmp xchain312_n210_α
 xchain312_n209_β:
 jmp proc_define$2_ω
.Lx619_0:
 .quad .Lx619_0_s
.Lx619_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n210_α:
 mov qword ptr [r12 + 4464], 6
 mov rax, qword ptr [rip + .Lx620_0]
 mov qword ptr [r12 + 4472], rax
 jmp xchain312_n211_α
 xchain312_n210_β:
 jmp proc_define$2_ω
.Lx620_0:
 .quad 28
# IR_LIT_STRING
 xchain312_n211_α:
 mov qword ptr [r12 + 4448], 1
 mov rax, qword ptr [rip + .Lx621_0]
 mov qword ptr [r12 + 4456], rax
 jmp xchain312_n212_α
 xchain312_n211_β:
 jmp proc_define$2_ω
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n212_α:
 mov qword ptr [r12 + 4368], 6
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [r12 + 4376], rax
 jmp xchain312_n213_α
 xchain312_n212_β:
 jmp proc_define$2_ω
.Lx622_0:
 .quad 61
# IR_LIT_STRING
 xchain312_n213_α:
 mov qword ptr [r12 + 4352], 1
 mov rax, qword ptr [rip + .Lx623_0]
 mov qword ptr [r12 + 4360], rax
 jmp xchain312_n214_α
 xchain312_n213_β:
 jmp proc_define$2_ω
.Lx623_0:
 .quad .Lx623_0_s
.Lx623_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n214_α:
 mov qword ptr [r12 + 4272], 6
 mov rax, qword ptr [rip + .Lx624_0]
 mov qword ptr [r12 + 4280], rax
 jmp xchain312_n215_α
 xchain312_n214_β:
 jmp proc_define$2_ω
.Lx624_0:
 .quad 74
# IR_LIT_STRING
 xchain312_n215_α:
 mov qword ptr [r12 + 4256], 1
 mov rax, qword ptr [rip + .Lx625_0]
 mov qword ptr [r12 + 4264], rax
 jmp xchain312_n216_α
 xchain312_n215_β:
 jmp proc_define$2_ω
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n216_α:
 mov qword ptr [r12 + 4176], 6
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [r12 + 4184], rax
 jmp xchain312_n217_α
 xchain312_n216_β:
 jmp proc_define$2_ω
.Lx626_0:
 .quad 18
# IR_LIT_STRING
 xchain312_n217_α:
 mov qword ptr [r12 + 4160], 1
 mov rax, qword ptr [rip + .Lx627_0]
 mov qword ptr [r12 + 4168], rax
 jmp xchain312_n218_α
 xchain312_n217_β:
 jmp proc_define$2_ω
.Lx627_0:
 .quad .Lx627_0_s
.Lx627_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n218_α:
 mov qword ptr [r12 + 4080], 6
 mov rax, qword ptr [rip + .Lx628_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain312_n219_α
 xchain312_n218_β:
 jmp proc_define$2_ω
.Lx628_0:
 .quad 92
# IR_LIT_STRING
 xchain312_n219_α:
 mov qword ptr [r12 + 4064], 1
 mov rax, qword ptr [rip + .Lx629_0]
 mov qword ptr [r12 + 4072], rax
 jmp xchain312_n220_α
 xchain312_n219_β:
 jmp proc_define$2_ω
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n220_α:
 mov qword ptr [r12 + 3984], 6
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain312_n221_α
 xchain312_n220_β:
 jmp proc_define$2_ω
.Lx630_0:
 .quad 40
# IR_LIT_STRING
 xchain312_n221_α:
 mov qword ptr [r12 + 3968], 1
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [r12 + 3976], rax
 jmp xchain312_n222_α
 xchain312_n221_β:
 jmp proc_define$2_ω
.Lx631_0:
 .quad .Lx631_0_s
.Lx631_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n222_α:
 mov qword ptr [r12 + 3888], 6
 mov rax, qword ptr [rip + .Lx632_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain312_n223_α
 xchain312_n222_β:
 jmp proc_define$2_ω
.Lx632_0:
 .quad 53
# IR_LIT_STRING
 xchain312_n223_α:
 mov qword ptr [r12 + 3872], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [r12 + 3880], rax
 jmp xchain312_n224_α
 xchain312_n223_β:
 jmp proc_define$2_ω
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n224_α:
 mov qword ptr [r12 + 3792], 6
 mov rax, qword ptr [rip + .Lx634_0]
 mov qword ptr [r12 + 3800], rax
 jmp xchain312_n225_α
 xchain312_n224_β:
 jmp proc_define$2_ω
.Lx634_0:
 .quad 59
# IR_LIT_STRING
 xchain312_n225_α:
 mov qword ptr [r12 + 3776], 1
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [r12 + 3784], rax
 jmp xchain312_n226_α
 xchain312_n225_β:
 jmp proc_define$2_ω
.Lx635_0:
 .quad .Lx635_0_s
.Lx635_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n226_α:
 mov qword ptr [r12 + 3696], 6
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [r12 + 3704], rax
 jmp xchain312_n227_α
 xchain312_n226_β:
 jmp proc_define$2_ω
.Lx636_0:
 .quad 8
# IR_LIT_STRING
 xchain312_n227_α:
 mov qword ptr [r12 + 3680], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [r12 + 3688], rax
 jmp xchain312_n228_α
 xchain312_n227_β:
 jmp proc_define$2_ω
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "[]"
 xchain312_n228_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3776] -> [zr+3728]
 mov rax, qword ptr [r12 + 3776]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3784]
 mov qword ptr [r12 + 3736], rax
# marshal arg1 = producer-box slot [zr+3696] -> [zr+3744]
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3744], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3752], rax
# marshal arg2 = producer-box slot [zr+3680] -> [zr+3760]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn639: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 3728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n229_α
 xchain312_n228_β:
 jmp proc_define$2_ω
 xchain312_n229_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3824]
 mov rax, qword ptr [r12 + 3872]
 mov qword ptr [r12 + 3824], rax
 mov rax, qword ptr [r12 + 3880]
 mov qword ptr [r12 + 3832], rax
# marshal arg1 = producer-box slot [zr+3792] -> [zr+3840]
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 3840], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 3848], rax
# marshal arg2 = producer-box slot [zr+3712] -> [zr+3856]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3864], rax
  .section .rodata
  .Lrkfn641: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn641]
 lea rsi, [r12 + 3824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n230_α
 xchain312_n229_β:
 jmp proc_define$2_ω
 xchain312_n230_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3920]
 mov rax, qword ptr [r12 + 3968]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 3976]
 mov qword ptr [r12 + 3928], rax
# marshal arg1 = producer-box slot [zr+3888] -> [zr+3936]
 mov rax, qword ptr [r12 + 3888]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3896]
 mov qword ptr [r12 + 3944], rax
# marshal arg2 = producer-box slot [zr+3808] -> [zr+3952]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn643: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn643]
 lea rsi, [r12 + 3920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n231_α
 xchain312_n230_β:
 jmp proc_define$2_ω
 xchain312_n231_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4064] -> [zr+4016]
 mov rax, qword ptr [r12 + 4064]
 mov qword ptr [r12 + 4016], rax
 mov rax, qword ptr [r12 + 4072]
 mov qword ptr [r12 + 4024], rax
# marshal arg1 = producer-box slot [zr+3984] -> [zr+4032]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 4032], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 4040], rax
# marshal arg2 = producer-box slot [zr+3904] -> [zr+4048]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 4056], rax
  .section .rodata
  .Lrkfn645: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn645]
 lea rsi, [r12 + 4016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n232_α
 xchain312_n231_β:
 jmp proc_define$2_ω
 xchain312_n232_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4160] -> [zr+4112]
 mov rax, qword ptr [r12 + 4160]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4168]
 mov qword ptr [r12 + 4120], rax
# marshal arg1 = producer-box slot [zr+4080] -> [zr+4128]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4136], rax
# marshal arg2 = producer-box slot [zr+4000] -> [zr+4144]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn647: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn647]
 lea rsi, [r12 + 4112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n233_α
 xchain312_n232_β:
 jmp proc_define$2_ω
 xchain312_n233_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4256] -> [zr+4208]
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 4216], rax
# marshal arg1 = producer-box slot [zr+4176] -> [zr+4224]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4224], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4232], rax
# marshal arg2 = producer-box slot [zr+4096] -> [zr+4240]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4240], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4248], rax
  .section .rodata
  .Lrkfn649: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn649]
 lea rsi, [r12 + 4208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n234_α
 xchain312_n233_β:
 jmp proc_define$2_ω
 xchain312_n234_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4352] -> [zr+4304]
 mov rax, qword ptr [r12 + 4352]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4360]
 mov qword ptr [r12 + 4312], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4320]
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4320], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4328], rax
# marshal arg2 = producer-box slot [zr+4192] -> [zr+4336]
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn651: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn651]
 lea rsi, [r12 + 4304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n235_α
 xchain312_n234_β:
 jmp proc_define$2_ω
 xchain312_n235_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4448] -> [zr+4400]
 mov rax, qword ptr [r12 + 4448]
 mov qword ptr [r12 + 4400], rax
 mov rax, qword ptr [r12 + 4456]
 mov qword ptr [r12 + 4408], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4416]
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4416], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4424], rax
# marshal arg2 = producer-box slot [zr+4288] -> [zr+4432]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4432], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4440], rax
  .section .rodata
  .Lrkfn653: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn653]
 lea rsi, [r12 + 4400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4384], rax
 mov qword ptr [r12 + 4392], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n236_α
 xchain312_n235_β:
 jmp proc_define$2_ω
 xchain312_n236_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4544] -> [zr+4496]
 mov rax, qword ptr [r12 + 4544]
 mov qword ptr [r12 + 4496], rax
 mov rax, qword ptr [r12 + 4552]
 mov qword ptr [r12 + 4504], rax
# marshal arg1 = producer-box slot [zr+4464] -> [zr+4512]
 mov rax, qword ptr [r12 + 4464]
 mov qword ptr [r12 + 4512], rax
 mov rax, qword ptr [r12 + 4472]
 mov qword ptr [r12 + 4520], rax
# marshal arg2 = producer-box slot [zr+4384] -> [zr+4528]
 mov rax, qword ptr [r12 + 4384]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4392]
 mov qword ptr [r12 + 4536], rax
  .section .rodata
  .Lrkfn655: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn655]
 lea rsi, [r12 + 4496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n237_α
 xchain312_n236_β:
 jmp proc_define$2_ω
 xchain312_n237_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4592]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4600], rax
# marshal arg1 = producer-box slot [zr+4560] -> [zr+4608]
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4608], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4616], rax
# marshal arg2 = producer-box slot [zr+4480] -> [zr+4624]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4624], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4632], rax
  .section .rodata
  .Lrkfn657: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 4592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n238_α
 xchain312_n237_β:
 jmp proc_define$2_ω
 xchain312_n238_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4736] -> [zr+4688]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4696], rax
# marshal arg1 = producer-box slot [zr+4656] -> [zr+4704]
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4704], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4712], rax
# marshal arg2 = producer-box slot [zr+4576] -> [zr+4720]
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn659: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn659]
 lea rsi, [r12 + 4688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n239_α
 xchain312_n238_β:
 jmp proc_define$2_ω
 xchain312_n239_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4784]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 4784], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 4792], rax
# marshal arg1 = producer-box slot [zr+4752] -> [zr+4800]
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 4800], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 4808], rax
# marshal arg2 = producer-box slot [zr+4672] -> [zr+4816]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4816], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4824], rax
  .section .rodata
  .Lrkfn661: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn661]
 lea rsi, [r12 + 4784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n240_α
 xchain312_n239_β:
 jmp proc_define$2_ω
 xchain312_n240_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4928] -> [zr+4880]
 mov rax, qword ptr [r12 + 4928]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4936]
 mov qword ptr [r12 + 4888], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+4896]
 mov rax, qword ptr [r12 + 4848]
 mov qword ptr [r12 + 4896], rax
 mov rax, qword ptr [r12 + 4856]
 mov qword ptr [r12 + 4904], rax
# marshal arg2 = producer-box slot [zr+4768] -> [zr+4912]
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4920], rax
  .section .rodata
  .Lrkfn663: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 4880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n241_α
 xchain312_n240_β:
 jmp proc_define$2_ω
 xchain312_n241_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5024] -> [zr+4976]
 mov rax, qword ptr [r12 + 5024]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 5032]
 mov qword ptr [r12 + 4984], rax
# marshal arg1 = producer-box slot [zr+4944] -> [zr+4992]
 mov rax, qword ptr [r12 + 4944]
 mov qword ptr [r12 + 4992], rax
 mov rax, qword ptr [r12 + 4952]
 mov qword ptr [r12 + 5000], rax
# marshal arg2 = producer-box slot [zr+4864] -> [zr+5008]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 5008], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 5016], rax
  .section .rodata
  .Lrkfn665: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn665]
 lea rsi, [r12 + 4976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n242_α
 xchain312_n241_β:
 jmp proc_define$2_ω
 xchain312_n242_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5120] -> [zr+5072]
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 5072], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 5080], rax
# marshal arg1 = producer-box slot [zr+5040] -> [zr+5088]
 mov rax, qword ptr [r12 + 5040]
 mov qword ptr [r12 + 5088], rax
 mov rax, qword ptr [r12 + 5048]
 mov qword ptr [r12 + 5096], rax
# marshal arg2 = producer-box slot [zr+4960] -> [zr+5104]
 mov rax, qword ptr [r12 + 4960]
 mov qword ptr [r12 + 5104], rax
 mov rax, qword ptr [r12 + 4968]
 mov qword ptr [r12 + 5112], rax
  .section .rodata
  .Lrkfn667: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn667]
 lea rsi, [r12 + 5072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n243_α
 xchain312_n242_β:
 jmp proc_define$2_ω
 xchain312_n243_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5168]
 mov rax, qword ptr [r12 + 5216]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5224]
 mov qword ptr [r12 + 5176], rax
# marshal arg1 = producer-box slot [zr+5136] -> [zr+5184]
 mov rax, qword ptr [r12 + 5136]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 5144]
 mov qword ptr [r12 + 5192], rax
# marshal arg2 = producer-box slot [zr+5056] -> [zr+5200]
 mov rax, qword ptr [r12 + 5056]
 mov qword ptr [r12 + 5200], rax
 mov rax, qword ptr [r12 + 5064]
 mov qword ptr [r12 + 5208], rax
  .section .rodata
  .Lrkfn669: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn669]
 lea rsi, [r12 + 5168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5152], rax
 mov qword ptr [r12 + 5160], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n244_α
 xchain312_n243_β:
 jmp proc_define$2_ω
 xchain312_n244_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5312] -> [zr+5264]
 mov rax, qword ptr [r12 + 5312]
 mov qword ptr [r12 + 5264], rax
 mov rax, qword ptr [r12 + 5320]
 mov qword ptr [r12 + 5272], rax
# marshal arg1 = producer-box slot [zr+5232] -> [zr+5280]
 mov rax, qword ptr [r12 + 5232]
 mov qword ptr [r12 + 5280], rax
 mov rax, qword ptr [r12 + 5240]
 mov qword ptr [r12 + 5288], rax
# marshal arg2 = producer-box slot [zr+5152] -> [zr+5296]
 mov rax, qword ptr [r12 + 5152]
 mov qword ptr [r12 + 5296], rax
 mov rax, qword ptr [r12 + 5160]
 mov qword ptr [r12 + 5304], rax
  .section .rodata
  .Lrkfn671: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn671]
 lea rsi, [r12 + 5264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5248], rax
 mov qword ptr [r12 + 5256], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n245_α
 xchain312_n244_β:
 jmp proc_define$2_ω
 xchain312_n245_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5408] -> [zr+5360]
 mov rax, qword ptr [r12 + 5408]
 mov qword ptr [r12 + 5360], rax
 mov rax, qword ptr [r12 + 5416]
 mov qword ptr [r12 + 5368], rax
# marshal arg1 = producer-box slot [zr+5328] -> [zr+5376]
 mov rax, qword ptr [r12 + 5328]
 mov qword ptr [r12 + 5376], rax
 mov rax, qword ptr [r12 + 5336]
 mov qword ptr [r12 + 5384], rax
# marshal arg2 = producer-box slot [zr+5248] -> [zr+5392]
 mov rax, qword ptr [r12 + 5248]
 mov qword ptr [r12 + 5392], rax
 mov rax, qword ptr [r12 + 5256]
 mov qword ptr [r12 + 5400], rax
  .section .rodata
  .Lrkfn673: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn673]
 lea rsi, [r12 + 5360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5344], rax
 mov qword ptr [r12 + 5352], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n246_α
 xchain312_n245_β:
 jmp proc_define$2_ω
 xchain312_n246_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5456]
 mov rax, qword ptr [r12 + 5504]
 mov qword ptr [r12 + 5456], rax
 mov rax, qword ptr [r12 + 5512]
 mov qword ptr [r12 + 5464], rax
# marshal arg1 = producer-box slot [zr+5424] -> [zr+5472]
 mov rax, qword ptr [r12 + 5424]
 mov qword ptr [r12 + 5472], rax
 mov rax, qword ptr [r12 + 5432]
 mov qword ptr [r12 + 5480], rax
# marshal arg2 = producer-box slot [zr+5344] -> [zr+5488]
 mov rax, qword ptr [r12 + 5344]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5352]
 mov qword ptr [r12 + 5496], rax
  .section .rodata
  .Lrkfn675: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn675]
 lea rsi, [r12 + 5456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n247_α
 xchain312_n246_β:
 jmp proc_define$2_ω
 xchain312_n247_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5552]
 mov rax, qword ptr [r12 + 5600]
 mov qword ptr [r12 + 5552], rax
 mov rax, qword ptr [r12 + 5608]
 mov qword ptr [r12 + 5560], rax
# marshal arg1 = producer-box slot [zr+5520] -> [zr+5568]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5576], rax
# marshal arg2 = producer-box slot [zr+5440] -> [zr+5584]
 mov rax, qword ptr [r12 + 5440]
 mov qword ptr [r12 + 5584], rax
 mov rax, qword ptr [r12 + 5448]
 mov qword ptr [r12 + 5592], rax
  .section .rodata
  .Lrkfn677: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn677]
 lea rsi, [r12 + 5552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5536], rax
 mov qword ptr [r12 + 5544], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n248_α
 xchain312_n247_β:
 jmp proc_define$2_ω
 xchain312_n248_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5648]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5648], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5656], rax
# marshal arg1 = producer-box slot [zr+5616] -> [zr+5664]
 mov rax, qword ptr [r12 + 5616]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5624]
 mov qword ptr [r12 + 5672], rax
# marshal arg2 = producer-box slot [zr+5536] -> [zr+5680]
 mov rax, qword ptr [r12 + 5536]
 mov qword ptr [r12 + 5680], rax
 mov rax, qword ptr [r12 + 5544]
 mov qword ptr [r12 + 5688], rax
  .section .rodata
  .Lrkfn679: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn679]
 lea rsi, [r12 + 5648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5632], rax
 mov qword ptr [r12 + 5640], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n249_α
 xchain312_n248_β:
 jmp proc_define$2_ω
 xchain312_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5792] -> [zr+5744]
 mov rax, qword ptr [r12 + 5792]
 mov qword ptr [r12 + 5744], rax
 mov rax, qword ptr [r12 + 5800]
 mov qword ptr [r12 + 5752], rax
# marshal arg1 = producer-box slot [zr+5712] -> [zr+5760]
 mov rax, qword ptr [r12 + 5712]
 mov qword ptr [r12 + 5760], rax
 mov rax, qword ptr [r12 + 5720]
 mov qword ptr [r12 + 5768], rax
# marshal arg2 = producer-box slot [zr+5632] -> [zr+5776]
 mov rax, qword ptr [r12 + 5632]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5640]
 mov qword ptr [r12 + 5784], rax
  .section .rodata
  .Lrkfn681: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn681]
 lea rsi, [r12 + 5744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n250_α
 xchain312_n249_β:
 jmp proc_define$2_ω
 xchain312_n250_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5888] -> [zr+5840]
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5848], rax
# marshal arg1 = producer-box slot [zr+5808] -> [zr+5856]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5864], rax
# marshal arg2 = producer-box slot [zr+5728] -> [zr+5872]
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5872], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5880], rax
  .section .rodata
  .Lrkfn683: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn683]
 lea rsi, [r12 + 5840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5824], rax
 mov qword ptr [r12 + 5832], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n251_α
 xchain312_n250_β:
 jmp proc_define$2_ω
 xchain312_n251_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5936]
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 5936], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 5944], rax
# marshal arg1 = producer-box slot [zr+5904] -> [zr+5952]
 mov rax, qword ptr [r12 + 5904]
 mov qword ptr [r12 + 5952], rax
 mov rax, qword ptr [r12 + 5912]
 mov qword ptr [r12 + 5960], rax
# marshal arg2 = producer-box slot [zr+5824] -> [zr+5968]
 mov rax, qword ptr [r12 + 5824]
 mov qword ptr [r12 + 5968], rax
 mov rax, qword ptr [r12 + 5832]
 mov qword ptr [r12 + 5976], rax
  .section .rodata
  .Lrkfn685: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn685]
 lea rsi, [r12 + 5936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5920], rax
 mov qword ptr [r12 + 5928], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n252_α
 xchain312_n251_β:
 jmp proc_define$2_ω
 xchain312_n252_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6080] -> [zr+6032]
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 6040], rax
# marshal arg1 = producer-box slot [zr+6000] -> [zr+6048]
 mov rax, qword ptr [r12 + 6000]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 6008]
 mov qword ptr [r12 + 6056], rax
# marshal arg2 = producer-box slot [zr+5920] -> [zr+6064]
 mov rax, qword ptr [r12 + 5920]
 mov qword ptr [r12 + 6064], rax
 mov rax, qword ptr [r12 + 5928]
 mov qword ptr [r12 + 6072], rax
  .section .rodata
  .Lrkfn687: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn687]
 lea rsi, [r12 + 6032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n253_α
 xchain312_n252_β:
 jmp proc_define$2_ω
 xchain312_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6176] -> [zr+6128]
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 6128], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 6136], rax
# marshal arg1 = producer-box slot [zr+6096] -> [zr+6144]
 mov rax, qword ptr [r12 + 6096]
 mov qword ptr [r12 + 6144], rax
 mov rax, qword ptr [r12 + 6104]
 mov qword ptr [r12 + 6152], rax
# marshal arg2 = producer-box slot [zr+6016] -> [zr+6160]
 mov rax, qword ptr [r12 + 6016]
 mov qword ptr [r12 + 6160], rax
 mov rax, qword ptr [r12 + 6024]
 mov qword ptr [r12 + 6168], rax
  .section .rodata
  .Lrkfn689: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn689]
 lea rsi, [r12 + 6128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n254_α
 xchain312_n253_β:
 jmp proc_define$2_ω
 xchain312_n254_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6272] -> [zr+6224]
 mov rax, qword ptr [r12 + 6272]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6280]
 mov qword ptr [r12 + 6232], rax
# marshal arg1 = producer-box slot [zr+6192] -> [zr+6240]
 mov rax, qword ptr [r12 + 6192]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6200]
 mov qword ptr [r12 + 6248], rax
# marshal arg2 = producer-box slot [zr+6112] -> [zr+6256]
 mov rax, qword ptr [r12 + 6112]
 mov qword ptr [r12 + 6256], rax
 mov rax, qword ptr [r12 + 6120]
 mov qword ptr [r12 + 6264], rax
  .section .rodata
  .Lrkfn691: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn691]
 lea rsi, [r12 + 6224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n255_α
 xchain312_n254_β:
 jmp proc_define$2_ω
 xchain312_n255_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6368] -> [zr+6320]
 mov rax, qword ptr [r12 + 6368]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6376]
 mov qword ptr [r12 + 6328], rax
# marshal arg1 = producer-box slot [zr+6288] -> [zr+6336]
 mov rax, qword ptr [r12 + 6288]
 mov qword ptr [r12 + 6336], rax
 mov rax, qword ptr [r12 + 6296]
 mov qword ptr [r12 + 6344], rax
# marshal arg2 = producer-box slot [zr+6208] -> [zr+6352]
 mov rax, qword ptr [r12 + 6208]
 mov qword ptr [r12 + 6352], rax
 mov rax, qword ptr [r12 + 6216]
 mov qword ptr [r12 + 6360], rax
  .section .rodata
  .Lrkfn693: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn693]
 lea rsi, [r12 + 6320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6304], rax
 mov qword ptr [r12 + 6312], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n256_α
 xchain312_n255_β:
 jmp proc_define$2_ω
 xchain312_n256_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6464] -> [zr+6416]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6416], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6424], rax
# marshal arg1 = producer-box slot [zr+6384] -> [zr+6432]
 mov rax, qword ptr [r12 + 6384]
 mov qword ptr [r12 + 6432], rax
 mov rax, qword ptr [r12 + 6392]
 mov qword ptr [r12 + 6440], rax
# marshal arg2 = producer-box slot [zr+6304] -> [zr+6448]
 mov rax, qword ptr [r12 + 6304]
 mov qword ptr [r12 + 6448], rax
 mov rax, qword ptr [r12 + 6312]
 mov qword ptr [r12 + 6456], rax
  .section .rodata
  .Lrkfn695: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn695]
 lea rsi, [r12 + 6416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6400], rax
 mov qword ptr [r12 + 6408], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n257_α
 xchain312_n256_β:
 jmp proc_define$2_ω
 xchain312_n257_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6560] -> [zr+6512]
 mov rax, qword ptr [r12 + 6560]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6568]
 mov qword ptr [r12 + 6520], rax
# marshal arg1 = producer-box slot [zr+6480] -> [zr+6528]
 mov rax, qword ptr [r12 + 6480]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6536], rax
# marshal arg2 = producer-box slot [zr+6400] -> [zr+6544]
 mov rax, qword ptr [r12 + 6400]
 mov qword ptr [r12 + 6544], rax
 mov rax, qword ptr [r12 + 6408]
 mov qword ptr [r12 + 6552], rax
  .section .rodata
  .Lrkfn697: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn697]
 lea rsi, [r12 + 6512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6496], rax
 mov qword ptr [r12 + 6504], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n258_α
 xchain312_n257_β:
 jmp proc_define$2_ω
 xchain312_n258_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6656] -> [zr+6608]
 mov rax, qword ptr [r12 + 6656]
 mov qword ptr [r12 + 6608], rax
 mov rax, qword ptr [r12 + 6664]
 mov qword ptr [r12 + 6616], rax
# marshal arg1 = producer-box slot [zr+6576] -> [zr+6624]
 mov rax, qword ptr [r12 + 6576]
 mov qword ptr [r12 + 6624], rax
 mov rax, qword ptr [r12 + 6584]
 mov qword ptr [r12 + 6632], rax
# marshal arg2 = producer-box slot [zr+6496] -> [zr+6640]
 mov rax, qword ptr [r12 + 6496]
 mov qword ptr [r12 + 6640], rax
 mov rax, qword ptr [r12 + 6504]
 mov qword ptr [r12 + 6648], rax
  .section .rodata
  .Lrkfn699: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn699]
 lea rsi, [r12 + 6608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n259_α
 xchain312_n258_β:
 jmp proc_define$2_ω
 xchain312_n259_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6752] -> [zr+6704]
 mov rax, qword ptr [r12 + 6752]
 mov qword ptr [r12 + 6704], rax
 mov rax, qword ptr [r12 + 6760]
 mov qword ptr [r12 + 6712], rax
# marshal arg1 = producer-box slot [zr+6672] -> [zr+6720]
 mov rax, qword ptr [r12 + 6672]
 mov qword ptr [r12 + 6720], rax
 mov rax, qword ptr [r12 + 6680]
 mov qword ptr [r12 + 6728], rax
# marshal arg2 = producer-box slot [zr+6592] -> [zr+6736]
 mov rax, qword ptr [r12 + 6592]
 mov qword ptr [r12 + 6736], rax
 mov rax, qword ptr [r12 + 6600]
 mov qword ptr [r12 + 6744], rax
  .section .rodata
  .Lrkfn701: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn701]
 lea rsi, [r12 + 6704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6688], rax
 mov qword ptr [r12 + 6696], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n260_α
 xchain312_n259_β:
 jmp proc_define$2_ω
 xchain312_n260_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6800]
 mov rax, qword ptr [r12 + 6848]
 mov qword ptr [r12 + 6800], rax
 mov rax, qword ptr [r12 + 6856]
 mov qword ptr [r12 + 6808], rax
# marshal arg1 = producer-box slot [zr+6768] -> [zr+6816]
 mov rax, qword ptr [r12 + 6768]
 mov qword ptr [r12 + 6816], rax
 mov rax, qword ptr [r12 + 6776]
 mov qword ptr [r12 + 6824], rax
# marshal arg2 = producer-box slot [zr+6688] -> [zr+6832]
 mov rax, qword ptr [r12 + 6688]
 mov qword ptr [r12 + 6832], rax
 mov rax, qword ptr [r12 + 6696]
 mov qword ptr [r12 + 6840], rax
  .section .rodata
  .Lrkfn703: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn703]
 lea rsi, [r12 + 6800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6784], rax
 mov qword ptr [r12 + 6792], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n261_α
 xchain312_n260_β:
 jmp proc_define$2_ω
 xchain312_n261_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6944] -> [zr+6896]
 mov rax, qword ptr [r12 + 6944]
 mov qword ptr [r12 + 6896], rax
 mov rax, qword ptr [r12 + 6952]
 mov qword ptr [r12 + 6904], rax
# marshal arg1 = producer-box slot [zr+6864] -> [zr+6912]
 mov rax, qword ptr [r12 + 6864]
 mov qword ptr [r12 + 6912], rax
 mov rax, qword ptr [r12 + 6872]
 mov qword ptr [r12 + 6920], rax
# marshal arg2 = producer-box slot [zr+6784] -> [zr+6928]
 mov rax, qword ptr [r12 + 6784]
 mov qword ptr [r12 + 6928], rax
 mov rax, qword ptr [r12 + 6792]
 mov qword ptr [r12 + 6936], rax
  .section .rodata
  .Lrkfn705: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn705]
 lea rsi, [r12 + 6896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6880], rax
 mov qword ptr [r12 + 6888], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n262_α
 xchain312_n261_β:
 jmp proc_define$2_ω
 xchain312_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7040] -> [zr+6992]
 mov rax, qword ptr [r12 + 7040]
 mov qword ptr [r12 + 6992], rax
 mov rax, qword ptr [r12 + 7048]
 mov qword ptr [r12 + 7000], rax
# marshal arg1 = producer-box slot [zr+6960] -> [zr+7008]
 mov rax, qword ptr [r12 + 6960]
 mov qword ptr [r12 + 7008], rax
 mov rax, qword ptr [r12 + 6968]
 mov qword ptr [r12 + 7016], rax
# marshal arg2 = producer-box slot [zr+6880] -> [zr+7024]
 mov rax, qword ptr [r12 + 6880]
 mov qword ptr [r12 + 7024], rax
 mov rax, qword ptr [r12 + 6888]
 mov qword ptr [r12 + 7032], rax
  .section .rodata
  .Lrkfn707: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn707]
 lea rsi, [r12 + 6992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6976], rax
 mov qword ptr [r12 + 6984], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n263_α
 xchain312_n262_β:
 jmp proc_define$2_ω
 xchain312_n263_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7136] -> [zr+7088]
 mov rax, qword ptr [r12 + 7136]
 mov qword ptr [r12 + 7088], rax
 mov rax, qword ptr [r12 + 7144]
 mov qword ptr [r12 + 7096], rax
# marshal arg1 = producer-box slot [zr+7056] -> [zr+7104]
 mov rax, qword ptr [r12 + 7056]
 mov qword ptr [r12 + 7104], rax
 mov rax, qword ptr [r12 + 7064]
 mov qword ptr [r12 + 7112], rax
# marshal arg2 = producer-box slot [zr+6976] -> [zr+7120]
 mov rax, qword ptr [r12 + 6976]
 mov qword ptr [r12 + 7120], rax
 mov rax, qword ptr [r12 + 6984]
 mov qword ptr [r12 + 7128], rax
  .section .rodata
  .Lrkfn709: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 7088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7072], rax
 mov qword ptr [r12 + 7080], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n264_α
 xchain312_n263_β:
 jmp proc_define$2_ω
 xchain312_n264_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7232] -> [zr+7184]
 mov rax, qword ptr [r12 + 7232]
 mov qword ptr [r12 + 7184], rax
 mov rax, qword ptr [r12 + 7240]
 mov qword ptr [r12 + 7192], rax
# marshal arg1 = producer-box slot [zr+7152] -> [zr+7200]
 mov rax, qword ptr [r12 + 7152]
 mov qword ptr [r12 + 7200], rax
 mov rax, qword ptr [r12 + 7160]
 mov qword ptr [r12 + 7208], rax
# marshal arg2 = producer-box slot [zr+7072] -> [zr+7216]
 mov rax, qword ptr [r12 + 7072]
 mov qword ptr [r12 + 7216], rax
 mov rax, qword ptr [r12 + 7080]
 mov qword ptr [r12 + 7224], rax
  .section .rodata
  .Lrkfn711: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn711]
 lea rsi, [r12 + 7184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7168], rax
 mov qword ptr [r12 + 7176], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n265_α
 xchain312_n264_β:
 jmp proc_define$2_ω
 xchain312_n265_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7328] -> [zr+7280]
 mov rax, qword ptr [r12 + 7328]
 mov qword ptr [r12 + 7280], rax
 mov rax, qword ptr [r12 + 7336]
 mov qword ptr [r12 + 7288], rax
# marshal arg1 = producer-box slot [zr+7248] -> [zr+7296]
 mov rax, qword ptr [r12 + 7248]
 mov qword ptr [r12 + 7296], rax
 mov rax, qword ptr [r12 + 7256]
 mov qword ptr [r12 + 7304], rax
# marshal arg2 = producer-box slot [zr+7168] -> [zr+7312]
 mov rax, qword ptr [r12 + 7168]
 mov qword ptr [r12 + 7312], rax
 mov rax, qword ptr [r12 + 7176]
 mov qword ptr [r12 + 7320], rax
  .section .rodata
  .Lrkfn713: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 7280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7264], rax
 mov qword ptr [r12 + 7272], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n266_α
 xchain312_n265_β:
 jmp proc_define$2_ω
 xchain312_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7424] -> [zr+7376]
 mov rax, qword ptr [r12 + 7424]
 mov qword ptr [r12 + 7376], rax
 mov rax, qword ptr [r12 + 7432]
 mov qword ptr [r12 + 7384], rax
# marshal arg1 = producer-box slot [zr+7344] -> [zr+7392]
 mov rax, qword ptr [r12 + 7344]
 mov qword ptr [r12 + 7392], rax
 mov rax, qword ptr [r12 + 7352]
 mov qword ptr [r12 + 7400], rax
# marshal arg2 = producer-box slot [zr+7264] -> [zr+7408]
 mov rax, qword ptr [r12 + 7264]
 mov qword ptr [r12 + 7408], rax
 mov rax, qword ptr [r12 + 7272]
 mov qword ptr [r12 + 7416], rax
  .section .rodata
  .Lrkfn715: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn715]
 lea rsi, [r12 + 7376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7360], rax
 mov qword ptr [r12 + 7368], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n267_α
 xchain312_n266_β:
 jmp proc_define$2_ω
 xchain312_n267_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7520] -> [zr+7472]
 mov rax, qword ptr [r12 + 7520]
 mov qword ptr [r12 + 7472], rax
 mov rax, qword ptr [r12 + 7528]
 mov qword ptr [r12 + 7480], rax
# marshal arg1 = producer-box slot [zr+7440] -> [zr+7488]
 mov rax, qword ptr [r12 + 7440]
 mov qword ptr [r12 + 7488], rax
 mov rax, qword ptr [r12 + 7448]
 mov qword ptr [r12 + 7496], rax
# marshal arg2 = producer-box slot [zr+7360] -> [zr+7504]
 mov rax, qword ptr [r12 + 7360]
 mov qword ptr [r12 + 7504], rax
 mov rax, qword ptr [r12 + 7368]
 mov qword ptr [r12 + 7512], rax
  .section .rodata
  .Lrkfn717: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn717]
 lea rsi, [r12 + 7472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7456], rax
 mov qword ptr [r12 + 7464], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n268_α
 xchain312_n267_β:
 jmp proc_define$2_ω
 xchain312_n268_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7616] -> [zr+7568]
 mov rax, qword ptr [r12 + 7616]
 mov qword ptr [r12 + 7568], rax
 mov rax, qword ptr [r12 + 7624]
 mov qword ptr [r12 + 7576], rax
# marshal arg1 = producer-box slot [zr+7536] -> [zr+7584]
 mov rax, qword ptr [r12 + 7536]
 mov qword ptr [r12 + 7584], rax
 mov rax, qword ptr [r12 + 7544]
 mov qword ptr [r12 + 7592], rax
# marshal arg2 = producer-box slot [zr+7456] -> [zr+7600]
 mov rax, qword ptr [r12 + 7456]
 mov qword ptr [r12 + 7600], rax
 mov rax, qword ptr [r12 + 7464]
 mov qword ptr [r12 + 7608], rax
  .section .rodata
  .Lrkfn719: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn719]
 lea rsi, [r12 + 7568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7552], rax
 mov qword ptr [r12 + 7560], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n269_α
 xchain312_n268_β:
 jmp proc_define$2_ω
 xchain312_n269_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7664]
 mov rax, qword ptr [r12 + 7712]
 mov qword ptr [r12 + 7664], rax
 mov rax, qword ptr [r12 + 7720]
 mov qword ptr [r12 + 7672], rax
# marshal arg1 = producer-box slot [zr+7632] -> [zr+7680]
 mov rax, qword ptr [r12 + 7632]
 mov qword ptr [r12 + 7680], rax
 mov rax, qword ptr [r12 + 7640]
 mov qword ptr [r12 + 7688], rax
# marshal arg2 = producer-box slot [zr+7552] -> [zr+7696]
 mov rax, qword ptr [r12 + 7552]
 mov qword ptr [r12 + 7696], rax
 mov rax, qword ptr [r12 + 7560]
 mov qword ptr [r12 + 7704], rax
  .section .rodata
  .Lrkfn721: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn721]
 lea rsi, [r12 + 7664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7648], rax
 mov qword ptr [r12 + 7656], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n270_α
 xchain312_n269_β:
 jmp proc_define$2_ω
 xchain312_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7808] -> [zr+7760]
 mov rax, qword ptr [r12 + 7808]
 mov qword ptr [r12 + 7760], rax
 mov rax, qword ptr [r12 + 7816]
 mov qword ptr [r12 + 7768], rax
# marshal arg1 = producer-box slot [zr+7728] -> [zr+7776]
 mov rax, qword ptr [r12 + 7728]
 mov qword ptr [r12 + 7776], rax
 mov rax, qword ptr [r12 + 7736]
 mov qword ptr [r12 + 7784], rax
# marshal arg2 = producer-box slot [zr+7648] -> [zr+7792]
 mov rax, qword ptr [r12 + 7648]
 mov qword ptr [r12 + 7792], rax
 mov rax, qword ptr [r12 + 7656]
 mov qword ptr [r12 + 7800], rax
  .section .rodata
  .Lrkfn723: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn723]
 lea rsi, [r12 + 7760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7744], rax
 mov qword ptr [r12 + 7752], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n271_α
 xchain312_n270_β:
 jmp proc_define$2_ω
 xchain312_n271_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7904] -> [zr+7856]
 mov rax, qword ptr [r12 + 7904]
 mov qword ptr [r12 + 7856], rax
 mov rax, qword ptr [r12 + 7912]
 mov qword ptr [r12 + 7864], rax
# marshal arg1 = producer-box slot [zr+7824] -> [zr+7872]
 mov rax, qword ptr [r12 + 7824]
 mov qword ptr [r12 + 7872], rax
 mov rax, qword ptr [r12 + 7832]
 mov qword ptr [r12 + 7880], rax
# marshal arg2 = producer-box slot [zr+7744] -> [zr+7888]
 mov rax, qword ptr [r12 + 7744]
 mov qword ptr [r12 + 7888], rax
 mov rax, qword ptr [r12 + 7752]
 mov qword ptr [r12 + 7896], rax
  .section .rodata
  .Lrkfn725: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn725]
 lea rsi, [r12 + 7856]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7840], rax
 mov qword ptr [r12 + 7848], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n272_α
 xchain312_n271_β:
 jmp proc_define$2_ω
 xchain312_n272_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8000] -> [zr+7952]
 mov rax, qword ptr [r12 + 8000]
 mov qword ptr [r12 + 7952], rax
 mov rax, qword ptr [r12 + 8008]
 mov qword ptr [r12 + 7960], rax
# marshal arg1 = producer-box slot [zr+7920] -> [zr+7968]
 mov rax, qword ptr [r12 + 7920]
 mov qword ptr [r12 + 7968], rax
 mov rax, qword ptr [r12 + 7928]
 mov qword ptr [r12 + 7976], rax
# marshal arg2 = producer-box slot [zr+7840] -> [zr+7984]
 mov rax, qword ptr [r12 + 7840]
 mov qword ptr [r12 + 7984], rax
 mov rax, qword ptr [r12 + 7848]
 mov qword ptr [r12 + 7992], rax
  .section .rodata
  .Lrkfn727: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn727]
 lea rsi, [r12 + 7952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7936], rax
 mov qword ptr [r12 + 7944], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n273_α
 xchain312_n272_β:
 jmp proc_define$2_ω
 xchain312_n273_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8096] -> [zr+8048]
 mov rax, qword ptr [r12 + 8096]
 mov qword ptr [r12 + 8048], rax
 mov rax, qword ptr [r12 + 8104]
 mov qword ptr [r12 + 8056], rax
# marshal arg1 = producer-box slot [zr+8016] -> [zr+8064]
 mov rax, qword ptr [r12 + 8016]
 mov qword ptr [r12 + 8064], rax
 mov rax, qword ptr [r12 + 8024]
 mov qword ptr [r12 + 8072], rax
# marshal arg2 = producer-box slot [zr+7936] -> [zr+8080]
 mov rax, qword ptr [r12 + 7936]
 mov qword ptr [r12 + 8080], rax
 mov rax, qword ptr [r12 + 7944]
 mov qword ptr [r12 + 8088], rax
  .section .rodata
  .Lrkfn729: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn729]
 lea rsi, [r12 + 8048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8032], rax
 mov qword ptr [r12 + 8040], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n274_α
 xchain312_n273_β:
 jmp proc_define$2_ω
 xchain312_n274_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8192] -> [zr+8144]
 mov rax, qword ptr [r12 + 8192]
 mov qword ptr [r12 + 8144], rax
 mov rax, qword ptr [r12 + 8200]
 mov qword ptr [r12 + 8152], rax
# marshal arg1 = producer-box slot [zr+8112] -> [zr+8160]
 mov rax, qword ptr [r12 + 8112]
 mov qword ptr [r12 + 8160], rax
 mov rax, qword ptr [r12 + 8120]
 mov qword ptr [r12 + 8168], rax
# marshal arg2 = producer-box slot [zr+8032] -> [zr+8176]
 mov rax, qword ptr [r12 + 8032]
 mov qword ptr [r12 + 8176], rax
 mov rax, qword ptr [r12 + 8040]
 mov qword ptr [r12 + 8184], rax
  .section .rodata
  .Lrkfn731: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn731]
 lea rsi, [r12 + 8144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8128], rax
 mov qword ptr [r12 + 8136], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n275_α
 xchain312_n274_β:
 jmp proc_define$2_ω
 xchain312_n275_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8288] -> [zr+8240]
 mov rax, qword ptr [r12 + 8288]
 mov qword ptr [r12 + 8240], rax
 mov rax, qword ptr [r12 + 8296]
 mov qword ptr [r12 + 8248], rax
# marshal arg1 = producer-box slot [zr+8208] -> [zr+8256]
 mov rax, qword ptr [r12 + 8208]
 mov qword ptr [r12 + 8256], rax
 mov rax, qword ptr [r12 + 8216]
 mov qword ptr [r12 + 8264], rax
# marshal arg2 = producer-box slot [zr+8128] -> [zr+8272]
 mov rax, qword ptr [r12 + 8128]
 mov qword ptr [r12 + 8272], rax
 mov rax, qword ptr [r12 + 8136]
 mov qword ptr [r12 + 8280], rax
  .section .rodata
  .Lrkfn733: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn733]
 lea rsi, [r12 + 8240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8224], rax
 mov qword ptr [r12 + 8232], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n276_α
 xchain312_n275_β:
 jmp proc_define$2_ω
 xchain312_n276_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8384] -> [zr+8336]
 mov rax, qword ptr [r12 + 8384]
 mov qword ptr [r12 + 8336], rax
 mov rax, qword ptr [r12 + 8392]
 mov qword ptr [r12 + 8344], rax
# marshal arg1 = producer-box slot [zr+8304] -> [zr+8352]
 mov rax, qword ptr [r12 + 8304]
 mov qword ptr [r12 + 8352], rax
 mov rax, qword ptr [r12 + 8312]
 mov qword ptr [r12 + 8360], rax
# marshal arg2 = producer-box slot [zr+8224] -> [zr+8368]
 mov rax, qword ptr [r12 + 8224]
 mov qword ptr [r12 + 8368], rax
 mov rax, qword ptr [r12 + 8232]
 mov qword ptr [r12 + 8376], rax
  .section .rodata
  .Lrkfn735: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn735]
 lea rsi, [r12 + 8336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8320], rax
 mov qword ptr [r12 + 8328], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n277_α
 xchain312_n276_β:
 jmp proc_define$2_ω
 xchain312_n277_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8480] -> [zr+8432]
 mov rax, qword ptr [r12 + 8480]
 mov qword ptr [r12 + 8432], rax
 mov rax, qword ptr [r12 + 8488]
 mov qword ptr [r12 + 8440], rax
# marshal arg1 = producer-box slot [zr+8400] -> [zr+8448]
 mov rax, qword ptr [r12 + 8400]
 mov qword ptr [r12 + 8448], rax
 mov rax, qword ptr [r12 + 8408]
 mov qword ptr [r12 + 8456], rax
# marshal arg2 = producer-box slot [zr+8320] -> [zr+8464]
 mov rax, qword ptr [r12 + 8320]
 mov qword ptr [r12 + 8464], rax
 mov rax, qword ptr [r12 + 8328]
 mov qword ptr [r12 + 8472], rax
  .section .rodata
  .Lrkfn737: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn737]
 lea rsi, [r12 + 8432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8416], rax
 mov qword ptr [r12 + 8424], rdx
 cmp eax, 99
 je proc_define$2_ω
 jmp xchain312_n278_α
 xchain312_n277_β:
 jmp proc_define$2_ω
# IR_VAR_REF
 xchain312_n278_α:
 lea rdi, [r12 + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8496], rax
 mov qword ptr [r12 + 8504], rdx
 jmp xchain312_n279_α
 xchain312_n278_β:
 jmp proc_define$2_ω
# IR_LIT_STRING
 xchain312_n279_α:
 mov qword ptr [r12 + 8512], 1
 mov rax, qword ptr [rip + .Lx740_0]
 mov qword ptr [r12 + 8520], rax
 jmp xchain312_n280_α
 xchain312_n279_β:
 jmp proc_define$2_ω
.Lx740_0:
 .quad .Lx740_0_s
.Lx740_0_s:
 .string "[]"
 xchain312_n280_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8608] -> [zr+8544]
 mov rax, qword ptr [r12 + 8608]
 mov qword ptr [r12 + 8544], rax
 mov rax, qword ptr [r12 + 8616]
 mov qword ptr [r12 + 8552], rax
# marshal arg1 = producer-box slot [zr+8416] -> [zr+8560]
 mov rax, qword ptr [r12 + 8416]
 mov qword ptr [r12 + 8560], rax
 mov rax, qword ptr [r12 + 8424]
 mov qword ptr [r12 + 8568], rax
# marshal arg2 = producer-box slot [zr+8496] -> [zr+8576]
 mov rax, qword ptr [r12 + 8496]
 mov qword ptr [r12 + 8576], rax
 mov rax, qword ptr [r12 + 8504]
 mov qword ptr [r12 + 8584], rax
# marshal arg3 = producer-box slot [zr+8512] -> [zr+8592]
 mov rax, qword ptr [r12 + 8512]
 mov qword ptr [r12 + 8592], rax
 mov rax, qword ptr [r12 + 8520]
 mov qword ptr [r12 + 8600], rax
  .section .rodata
  .Lrkfn742: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn742]
 lea rsi, [r12 + 8544]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8528], rax
 mov qword ptr [r12 + 8536], rdx
 cmp eax, 99
 je xchain312_n5_α
 jmp xchain312_n281_α
 xchain312_n280_β:
 jmp xchain312_n5_α
 xchain312_n281_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3664] -> [zr+3632]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3640], rax
# marshal arg1 = producer-box slot [zr+8528] -> [zr+3648]
 mov rax, qword ptr [r12 + 8528]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 8536]
 mov qword ptr [r12 + 3656], rax
  .section .rodata
  .Lrkfn744: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn744]
 lea rsi, [r12 + 3632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 cmp eax, 99
 je xchain312_n5_α
 jmp xchain312_n282_α
 xchain312_n281_β:
 jmp xchain312_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain312_n282_α:
 lea rax, [rip + xchain312_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_define$2_γ
 xchain312_n282_β:
 jmp proc_define$2_ω
proc_define$2_β:
jmp xchain312_n67_α
proc_define$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 8704]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_define$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_interpret_built_in$1_α
proc_interpret_built_in$1_α:
#=======================================================================================================================
    .global proc_interpret_built_in$1_α
    .global proc_interpret_built_in$1_β
    .global proc_interpret_built_in$1_γ
    .global proc_interpret_built_in$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_interpret_built_in$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 480], rax
 pop rsi
proc_interpret_built_in$1_α_body:
 xchain747_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn749: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn749]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp xchain747_n1_α
 xchain747_n0_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain747_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain747_n2_α
 xchain747_n1_β:
 jmp xchain747_n5_α
# IR_LIT_STRING
 xchain747_n2_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain747_n3_α
 xchain747_n2_β:
 jmp xchain747_n5_α
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "true"
 xchain747_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn754: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn754]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain747_n5_α
 jmp xchain747_n4_α
 xchain747_n3_β:
 jmp xchain747_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain747_n4_α:
 lea rax, [rip + xchain747_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_interpret_built_in$1_γ
 xchain747_n4_β:
 jmp proc_interpret_built_in$1_ω
 xchain747_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+384]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn758: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn758]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp xchain747_n7_α
 xchain747_n5_β:
 jmp proc_interpret_built_in$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain747_n6_α:
 jmp qword ptr [r12 + 48]
 xchain747_n6_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain747_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain747_n8_α
 xchain747_n7_β:
 jmp xchain747_n13_α
# IR_LIT_STRING
 xchain747_n8_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx763_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain747_n9_α
 xchain747_n8_β:
 jmp proc_interpret_built_in$1_ω
.Lx763_0:
 .quad .Lx763_0_s
.Lx763_0_s:
 .string "=<"
# IR_VAR_REF
 xchain747_n9_α:
 lea rdi, [r12 + 496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain747_n10_α
 xchain747_n9_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR_REF
 xchain747_n10_α:
 lea rdi, [r12 + 512]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain747_n11_α
 xchain747_n10_β:
 jmp proc_interpret_built_in$1_ω
 xchain747_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+320]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+336]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn769: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn769]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain747_n13_α
 jmp xchain747_n12_α
 xchain747_n11_β:
 jmp xchain747_n13_α
 xchain747_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+224]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn771: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn771]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain747_n13_α
 jmp xchain747_n14_α
 xchain747_n12_β:
 jmp xchain747_n13_α
 xchain747_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn773: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn773]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_interpret_built_in$1_ω
 jmp proc_interpret_built_in$1_ω
 xchain747_n13_β:
 jmp proc_interpret_built_in$1_ω
# IR_VAR
 xchain747_n14_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 168], rax
 jmp xchain747_n15_α
 xchain747_n14_β:
 jmp xchain747_n13_α
# IR_VAR
 xchain747_n15_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 184], rax
 jmp xchain747_n16_α
 xchain747_n15_β:
 jmp xchain747_n13_α
 xchain747_n16_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn779: .string "$cmp_le"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn779]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain747_n13_α
 jmp xchain747_n17_α
 xchain747_n16_β:
 jmp xchain747_n13_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain747_n17_α:
 lea rax, [rip + xchain747_n13_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_interpret_built_in$1_γ
 xchain747_n17_β:
 jmp proc_interpret_built_in$1_ω
proc_interpret_built_in$1_β:
jmp xchain747_n6_α
proc_interpret_built_in$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 480]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_interpret_built_in$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_interpret_disjunction$3_α
proc_interpret_disjunction$3_α:
#=======================================================================================================================
    .global proc_interpret_disjunction$3_α
    .global proc_interpret_disjunction$3_β
    .global proc_interpret_disjunction$3_γ
    .global proc_interpret_disjunction$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_interpret_disjunction$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2096], rax
 pop rsi
proc_interpret_disjunction$3_α_body:
 xchain782_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn784: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn784]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n1_α
 xchain782_n0_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain782_n2_α
 xchain782_n1_β:
 jmp xchain782_n7_α
# IR_LIT_STRING
 xchain782_n2_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx787_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain782_n3_α
 xchain782_n2_β:
 jmp proc_interpret_disjunction$3_ω
.Lx787_0:
 .quad .Lx787_0_s
.Lx787_0_s:
 .string "->"
# IR_VAR_REF
 xchain782_n3_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain782_n4_α
 xchain782_n3_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n4_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain782_n5_α
 xchain782_n4_β:
 jmp proc_interpret_disjunction$3_ω
 xchain782_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+2048]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2056], rax
# marshal arg2 = producer-box slot [zr+2000] -> [zr+2064]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn793: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn793]
 lea rsi, [r12 + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n6_α
 xchain782_n5_β:
 jmp xchain782_n7_α
 xchain782_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1936]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn795: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn795]
 lea rsi, [r12 + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n8_α
 xchain782_n6_β:
 jmp xchain782_n7_α
 xchain782_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1328]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn797: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn797]
 lea rsi, [r12 + 1328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n9_α
 xchain782_n7_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain782_n10_α
 xchain782_n8_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain782_n11_α
 xchain782_n9_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n10_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain782_n12_α
 xchain782_n10_β:
 jmp xchain782_n7_α
# IR_LIT_STRING
 xchain782_n11_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx804_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain782_n13_α
 xchain782_n11_β:
 jmp proc_interpret_disjunction$3_ω
.Lx804_0:
 .quad .Lx804_0_s
.Lx804_0_s:
 .string "->"
 xchain782_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1856]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1864], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn806: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn806]
 lea rsi, [r12 + 1856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n14_α
 xchain782_n12_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n13_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain782_n15_α
 xchain782_n13_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain782_n16_α
 xchain782_n14_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n15_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain782_n17_α
 xchain782_n15_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n16_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain782_n18_α
 xchain782_n16_β:
 jmp xchain782_n7_α
 xchain782_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1264]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [zr+1216] -> [zr+1280]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn816: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn816]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n19_α
 xchain782_n17_β:
 jmp xchain782_n20_α
 xchain782_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lrkfn818: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n21_α
 xchain782_n18_β:
 jmp xchain782_n7_α
 xchain782_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn820: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn820]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n22_α
 xchain782_n19_β:
 jmp xchain782_n20_α
 xchain782_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+864]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn822: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn822]
 lea rsi, [r12 + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n23_α
 xchain782_n20_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n21_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain782_n24_α
 xchain782_n21_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain782_n25_α
 xchain782_n22_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain782_n26_α
 xchain782_n23_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n24_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain782_n27_α
 xchain782_n24_β:
 jmp xchain782_n7_α
# IR_VAR_REF
 xchain782_n25_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain782_n28_α
 xchain782_n25_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n26_α:
 lea rdi, [r12 + 2160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain782_n29_α
 xchain782_n26_β:
 jmp xchain782_n33_α
 xchain782_n27_α:
  .section .rodata
  .Lcall501_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall501_pname]
 mov esi, 2
 lea rdx, [r12 + 1712]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n30_α
xchain782_n27_β:
 lea rdi, [r12 + 1712]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain782_n7_α
 jmp xchain782_n30_α
 xchain782_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn837: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn837]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n31_α
 xchain782_n28_β:
 jmp xchain782_n20_α
 xchain782_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn839: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn839]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n32_α
 xchain782_n29_β:
 jmp xchain782_n33_α
 xchain782_n30_α:
# IR_CUT
 jmp xchain782_n34_α
 xchain782_n30_β:
 jmp xchain782_n27_β
# IR_VAR_REF
 xchain782_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain782_n35_α
 xchain782_n31_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n32_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain782_n36_α
 xchain782_n32_β:
 jmp xchain782_n33_α
 xchain782_n33_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+496]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn846: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn846]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp xchain782_n37_α
 xchain782_n33_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n34_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain782_n38_α
 xchain782_n34_β:
 jmp xchain782_n43_α
# IR_VAR_REF
 xchain782_n35_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain782_n39_α
 xchain782_n35_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n36_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain782_n40_α
 xchain782_n36_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n37_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain782_n41_α
 xchain782_n37_β:
 jmp xchain782_n52_α
 xchain782_n38_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1632]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn856: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn856]
 lea rsi, [r12 + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain782_n43_α
 jmp xchain782_n42_α
 xchain782_n38_β:
 jmp xchain782_n43_α
 xchain782_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn858: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn858]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain782_n20_α
 jmp xchain782_n44_α
 xchain782_n39_β:
 jmp xchain782_n20_α
 xchain782_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn860: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn860]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n45_α
 xchain782_n40_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n41_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain782_n46_α
 xchain782_n41_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n42_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain782_n47_α
 xchain782_n42_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n43_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain782_n48_α
 xchain782_n43_β:
 jmp xchain782_n52_α
 xchain782_n44_α:
# IR_CUT
 jmp xchain782_n49_α
 xchain782_n44_β:
 jmp xchain782_n20_α
# IR_VAR_REF
 xchain782_n45_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain782_n50_α
 xchain782_n45_β:
 jmp xchain782_n33_α
 xchain782_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn871: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn871]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n51_α
 xchain782_n46_β:
 jmp xchain782_n52_α
# IR_LIT_STRING
 xchain782_n47_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx872_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain782_n53_α
 xchain782_n47_β:
 jmp proc_interpret_disjunction$3_ω
.Lx872_0:
 .quad .Lx872_0_s
.Lx872_0_s:
 .string "->"
# IR_VAR_REF
 xchain782_n48_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain782_n54_α
 xchain782_n48_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n49_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain782_n55_α
 xchain782_n49_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n50_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain782_n56_α
 xchain782_n50_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n51_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain782_n57_α
 xchain782_n51_β:
 jmp xchain782_n52_α
 xchain782_n52_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn882: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn882]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_interpret_disjunction$3_ω
 jmp proc_interpret_disjunction$3_ω
 xchain782_n52_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n53_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain782_n58_α
 xchain782_n53_β:
 jmp proc_interpret_disjunction$3_ω
 xchain782_n54_α:
  .section .rodata
  .Lcall528_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1584]
 mov rdx, qword ptr [r12 + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall528_pname]
 mov esi, 2
 lea rdx, [r12 + 1568]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n59_α
xchain782_n54_β:
 lea rdi, [r12 + 1568]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n59_α
# IR_VAR_REF
 xchain782_n55_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain782_n60_α
 xchain782_n55_β:
 jmp xchain782_n52_α
 xchain782_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn889: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn889]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n61_α
 xchain782_n56_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n57_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain782_n62_α
 xchain782_n57_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n58_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain782_n63_α
 xchain782_n58_β:
 jmp proc_interpret_disjunction$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain782_n59_α:
 lea rax, [rip + xchain782_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n59_β:
 jmp proc_interpret_disjunction$3_ω
 xchain782_n60_α:
  .section .rodata
  .Lcall534_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall534_pname]
 mov esi, 2
 lea rdx, [r12 + 928]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n65_α
xchain782_n60_β:
 lea rdi, [r12 + 928]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n65_α
# IR_VAR_REF
 xchain782_n61_α:
 lea rdi, [r12 + 2160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain782_n66_α
 xchain782_n61_β:
 jmp xchain782_n33_α
 xchain782_n62_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn900: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn900]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n67_α
 xchain782_n62_β:
 jmp xchain782_n52_α
 xchain782_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1456]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1472]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1480], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1488]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn902: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn902]
 lea rsi, [r12 + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n68_α
 xchain782_n63_β:
 jmp xchain782_n52_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain782_n64_α:
 jmp qword ptr [r12 + 80]
 xchain782_n64_β:
 jmp proc_interpret_disjunction$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain782_n65_α:
 lea rax, [rip + xchain782_n60_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n65_β:
 jmp proc_interpret_disjunction$3_ω
# IR_VAR_REF
 xchain782_n66_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain782_n69_α
 xchain782_n66_β:
 jmp xchain782_n33_α
# IR_VAR_REF
 xchain782_n67_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain782_n70_α
 xchain782_n67_β:
 jmp xchain782_n52_α
 xchain782_n68_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn912: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn912]
 lea rsi, [r12 + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n59_α
 xchain782_n68_β:
 jmp xchain782_n52_α
 xchain782_n69_α:
  .section .rodata
  .Lcall543_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall543_pname]
 mov esi, 2
 lea rdx, [r12 + 560]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n71_α
xchain782_n69_β:
 lea rdi, [r12 + 560]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain782_n33_α
 jmp xchain782_n71_α
# IR_VAR_REF
 xchain782_n70_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain782_n72_α
 xchain782_n70_β:
 jmp xchain782_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain782_n71_α:
 lea rax, [rip + xchain782_n69_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n71_β:
 jmp proc_interpret_disjunction$3_ω
 xchain782_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn919: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn919]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n73_α
 xchain782_n72_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n73_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain782_n74_α
 xchain782_n73_β:
 jmp xchain782_n52_α
# IR_VAR_REF
 xchain782_n74_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain782_n75_α
 xchain782_n74_β:
 jmp xchain782_n52_α
 xchain782_n75_α:
  .section .rodata
  .Lcall549_pname: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall549_pname]
 mov esi, 2
 lea rdx, [r12 + 192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n76_α
xchain782_n75_β:
 lea rdi, [r12 + 192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain782_n52_α
 jmp xchain782_n76_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain782_n76_α:
 lea rax, [rip + xchain782_n75_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_interpret_disjunction$3_γ
 xchain782_n76_β:
 jmp proc_interpret_disjunction$3_ω
proc_interpret_disjunction$3_β:
jmp xchain782_n64_α
proc_interpret_disjunction$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2096]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_interpret_disjunction$3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_interpret$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_interpret$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3648
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "is_built_in/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_is_built_in$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "meta_qsort/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_meta_qsort$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname4: .string "define/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_define$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 8832
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname5: .string "interpret_built_in/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_interpret_built_in$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 528
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname6: .string "interpret_disjunction/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_interpret_disjunction$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2224
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 272], rax
 pop rsi
main_α_body:
 xchain927_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn929: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn929]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain927_n1_α
 xchain927_n0_β:
 jmp main_ω
 xchain927_n1_α:
  .section .rodata
  .Lcall552_pname: .string "meta_qsort/0"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall552_pname]
 mov esi, 0
 lea rdx, [r12 + 256]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain927_n3_α
 jmp xchain927_n2_α
xchain927_n1_β:
 lea rdi, [r12 + 256]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain927_n3_α
 jmp xchain927_n2_α
# IR_LIT_STRING
 xchain927_n2_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx931_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain927_n4_α
 xchain927_n2_β:
 jmp xchain927_n7_α
.Lx931_0:
 .quad .Lx931_0_s
.Lx931_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain927_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx932_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain927_n5_α
 xchain927_n3_β:
 jmp xchain927_n7_α
.Lx932_0:
 .quad .Lx932_0_s
.Lx932_0_s:
 .string "failed"
 xchain927_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn934: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn934]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain927_n7_α
 jmp xchain927_n6_α
 xchain927_n4_β:
 jmp xchain927_n7_α
 xchain927_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn936: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn936]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain927_n7_α
 jmp xchain927_n6_α
 xchain927_n5_β:
 jmp xchain927_n7_α
# IR_LIT_STRING
 xchain927_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx937_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain927_n8_α
 xchain927_n6_β:
 jmp xchain927_n7_α
.Lx937_0:
 .quad .Lx937_0_s
.Lx937_0_s:
 .string ""
 xchain927_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn939: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn939]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain927_n7_β:
 jmp main_ω
 xchain927_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn941: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn941]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain927_n7_α
 jmp xchain927_n9_α
 xchain927_n8_β:
 jmp xchain927_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain927_n9_α:
 lea rax, [rip + xchain927_n7_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain927_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain927_n10_α:
 jmp qword ptr [r12 + 32]
 xchain927_n10_β:
 jmp main_ω
main_β:
jmp xchain927_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 272]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
