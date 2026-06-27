  .intel_syntax noprefix
  .text
  .globl proc_prefix_α
proc_prefix_α:
#=======================================================================================================================
    .global proc_prefix_α
    .global proc_prefix_β
    .global proc_prefix_γ
    .global proc_prefix_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_prefix_α_body:
xchain0_n0_α:
xargsub2_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg1_done
 xargsub2_n0_β:
 jmp xchain0_n2_α
xicnarg1_done:
bb2_α:
  .section .rodata
  .Lcall2_pname: .string "strip"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall2_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb5_α:
# IR_ALT
 mov qword ptr [r12 + 80], 0
.Lx10_2:
 mov rax, qword ptr [r12 + 80]
 cmp rax, 0
 je .Lx10_3
 mov rax, qword ptr [r12 + 80]
 cmp rax, 1
 je .Lx10_4
 jmp xchain0_n4_α
.Lx10_3:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 72], rax
 mov rax, qword ptr [r12 + 80]
 add rax, 1
 mov qword ptr [r12 + 80], rax
 jmp xchain0_n4_α
.Lx10_4:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx10_1]
 mov qword ptr [r12 + 72], rax
 mov rax, qword ptr [r12 + 80]
 add rax, 1
 mov qword ptr [r12 + 80], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp .Lx10_2
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "+-"
.Lx10_1:
 .quad .Lx10_1_s
.Lx10_1_s:
 .string "*/"
xchain0_n4_α:
xaltg11_a0_start:
bb6_α:
  .section .rodata
  .Lcall6_pname: .string "lassoc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall6_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xaltg11_a1_start
 jmp xaltg11_a0_succ
xaltg11_a0_beta:
 jmp xaltg11_a1_start
xaltg11_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 88], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], 1
jmp xchain0_n5_α
xaltg11_a1_start:
xargsub15_n0_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg14_done
 xargsub15_n0_β:
 jmp xaltg11_a2_start
xicnarg14_done:
xargsub19_n0_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 128], 1
 mov dword ptr [r12 + 132], -1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 136], rax
 jmp xicnarg18_done
 xargsub19_n0_β:
 jmp xaltg11_a2_start
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "^"
xicnarg18_done:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "rassoc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xaltg11_a2_start
 jmp xaltg11_a1_succ
xaltg11_a1_beta:
 jmp xaltg11_a2_start
xaltg11_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 88], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], 1
jmp xchain0_n5_α
xaltg11_a2_start:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xaltg11_a2_succ
 xaltg11_a2_beta:
 jmp proc_prefix_ω
xaltg11_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 88], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], 1
jmp xchain0_n5_α
xchain0_n4_β:
jmp proc_prefix_ω
xchain0_n5_α:
# IR_RETURN
bb11_α:
 mov rax, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prefix_γ
proc_prefix_β:
jmp proc_prefix_ω
proc_prefix_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_prefix_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strip_α
proc_strip_α:
#=======================================================================================================================
    .global proc_strip_α
    .global proc_strip_β
    .global proc_strip_γ
    .global proc_strip_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_strip_α_body:
xchain27_n0_α:
xargsub29_n0_α:
# IR_VAR
bb12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xscan28_subj_done
 xargsub29_n0_β:
 jmp proc_strip_ω
xscan28_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan28_body_start
 xscan28_enter_β:
 jmp proc_strip_ω
xscan28_body_start:
xargsub34_n0_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 56], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 64], rax
 jmp xargsub34_n1_α
 xargsub34_n0_β:
 jmp xscan28_body_fail
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "("
xargsub34_n1_α:
xargsub34_n2_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xrasgn37_l
 xrasgn37_lb:
 jmp xscan28_body_fail
xrasgn37_l:
xargsub41_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xscantab40_arg_done:
# IR_SCAN_TAB
bb17_α:
 mov rax, qword ptr [r12 + 96]
 cmp rax, 1
 jl xscan28_body_fail
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xscan28_body_fail
 mov qword ptr [r12 + 136], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xrasgn37_r
 xrasgn37_rb:
 mov r14, qword ptr [r12 + 136]
 jmp xscan28_body_fail
xrasgn37_r:
bb18_α:
# IR_RASGN x<-v
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 mov rcx, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov qword ptr [r12 + 16], rcx
 mov qword ptr [r12 + 24], rsi
 mov qword ptr [r12 + 160], rcx
 mov qword ptr [r12 + 168], rsi
 jmp xargsub34_n3_α
 xargsub34_n2_β:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xscan28_body_fail
xargsub34_n3_α:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xargsub34_n4_α:
jmp xscan28_body_done
xargsub34_n4_β:
jmp xscan28_body_fail
xscan28_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_strip_γ
 xscan28_leaveok_β:
 jmp proc_strip_ω
xscan28_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_strip_ω
 xscan28_leavef_β:
 jmp proc_strip_ω
proc_strip_β:
jmp proc_strip_ω
proc_strip_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_strip_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lassoc_α
proc_lassoc_α:
#=======================================================================================================================
    .global proc_lassoc_α
    .global proc_lassoc_β
    .global proc_lassoc_γ
    .global proc_lassoc_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_lassoc_α_body:
xchain53_n0_α:
xargsub55_n0_α:
# IR_VAR
bb20_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xscan54_subj_done
 xargsub55_n0_β:
 jmp xchain53_n1_α
xscan54_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan54_body_start
 xscan54_enter_β:
 jmp xchain53_n1_α
xscan54_body_start:
xargsub60_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xargsub60_n1_α:
bb22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xargsub60_n0_β
 xargsub60_n1_β:
 jmp xargsub60_n2_α
xargsub60_n2_α:
# IR_EVERY
 jmp xscan54_body_fail
 xargsub60_n2_β:
 jmp xscan54_body_fail
xscan54_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain53_n1_α
 xscan54_leaveok_β:
 jmp xchain53_n1_α
xscan54_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain53_n1_α
 xscan54_leavef_β:
 jmp xchain53_n1_α
xchain53_n1_α:
xargsub70_n0_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg69_done
 xargsub70_n0_β:
 jmp proc_lassoc_ω
xicnarg69_done:
xargsub74_n0_α:
# IR_VAR
bb25_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 jmp xargsub74_n1_α
 xargsub74_n0_β:
 jmp proc_lassoc_ω
xargsub74_n1_α:
# IR_UNOP
bb26_α:
 mov eax, dword ptr [r12 + 104]
 cmp eax, 99
 je proc_lassoc_ω
 cmp eax, 0
 je proc_lassoc_ω
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 jmp xicnarg73_done
 xargsub74_n1_β:
 jmp proc_lassoc_ω
xicnarg73_done:
bb27_α:
  .section .rodata
  .Lcall29_pname: .string "form"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+136]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall29_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je proc_lassoc_ω
 jmp xchain53_n2_α
xchain53_n1_β:
 jmp proc_lassoc_ω
xchain53_n2_α:
# IR_RETURN
bb28_α:
 mov rax, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lassoc_γ
proc_lassoc_β:
jmp proc_lassoc_ω
proc_lassoc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_lassoc_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rassoc_α
proc_rassoc_α:
#=======================================================================================================================
    .global proc_rassoc_α
    .global proc_rassoc_β
    .global proc_rassoc_γ
    .global proc_rassoc_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_rassoc_α_body:
xchain80_n0_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain80_n1_α
 xchain80_n0_β:
 jmp proc_rassoc_ω
xchain80_n1_α:
xargsub84_n0_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xscan83_subj_done
 xargsub84_n0_β:
 jmp proc_rassoc_ω
xscan83_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan83_body_start
 xscan83_enter_β:
 jmp proc_rassoc_ω
xscan83_body_start:
xargsub89_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xscan83_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain80_n2_α
 xscan83_leaveok_β:
 jmp proc_rassoc_ω
xscan83_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_rassoc_ω
 xscan83_leavef_β:
 jmp proc_rassoc_ω
xchain80_n2_α:
bb32_α:
  .section .rodata
  .Lcall35_pname: .string "form"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+72]
 mov rdx, qword ptr [r12+80]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall35_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je proc_rassoc_ω
 jmp xchain80_n3_α
xchain80_n2_β:
 jmp proc_rassoc_ω
xchain80_n3_α:
# IR_RETURN
bb33_α:
 mov rax, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rassoc_γ
proc_rassoc_β:
jmp proc_rassoc_ω
proc_rassoc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_rassoc_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_form_α
proc_form_α:
#=======================================================================================================================
    .global proc_form_α
    .global proc_form_β
    .global proc_form_γ
    .global proc_form_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_form_α_body:
xchain98_n0_α:
xargsub100_n0_α:
# IR_VAR
bb34_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xscan99_subj_done
 xargsub100_n0_β:
 jmp xchain98_n1_α
xscan99_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan99_body_start
 xscan99_enter_β:
 jmp xchain98_n1_α
xscan99_body_start:
xargsub105_n0_α:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xargsub105_n1_α:
bb36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xargsub105_n2_α
 xargsub105_n1_β:
 jmp xargsub105_n2_α
xargsub105_n2_α:
# IR_SCAN_MOVE
bb37_α:
 mov rax, r14
 add rax, 2
 cmp rax, 1
 jl xargsub105_n4_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub105_n4_α
 mov qword ptr [r12 + 144], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xargsub105_n3_α
 xargsub105_n2_β:
 mov r14, qword ptr [r12 + 144]
 jmp xargsub105_n4_α
xargsub105_n3_α:
bb38_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xargsub105_n4_α
 xargsub105_n3_β:
 jmp xargsub105_n4_α
xargsub105_n4_α:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xargsub105_n5_α:
bb40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xargsub105_n6_α
 xargsub105_n5_β:
 jmp xscan99_body_fail
xargsub105_n6_α:
jmp xscan99_body_done
xargsub105_n6_β:
jmp xscan99_body_fail
xscan99_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain98_n1_α
 xscan99_leaveok_β:
 jmp xchain98_n1_α
xscan99_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain98_n1_α
 xscan99_leavef_β:
 jmp xchain98_n1_α
xchain98_n1_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 160], rax
 jmp xchain98_n2_α
 xchain98_n1_β:
 jmp proc_form_ω
xchain98_n2_α:
# IR_LIT_S
bb42_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain98_n3_α
 xchain98_n2_β:
 jmp proc_form_ω
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "("
xchain98_n3_α:
bb43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 152]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain98_n4_α
 xchain98_n3_β:
 jmp proc_form_ω
xchain98_n4_α:
xargsub124_n0_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg123_done
 xargsub124_n0_β:
 jmp proc_form_ω
xicnarg123_done:
bb45_α:
  .section .rodata
  .Lcall49_pname: .string "prefix"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall49_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je proc_form_ω
 jmp xchain98_n5_α
xchain98_n4_β:
 jmp proc_form_ω
xchain98_n5_α:
bb46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain98_n6_α
 xchain98_n5_β:
 jmp proc_form_ω
xchain98_n6_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain98_n7_α
 xchain98_n6_β:
 jmp proc_form_ω
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string ","
xchain98_n7_α:
bb48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain98_n8_α
 xchain98_n7_β:
 jmp proc_form_ω
xchain98_n8_α:
xargsub132_n0_α:
# IR_VAR
bb49_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 216], rax
 jmp xicnarg131_done
 xargsub132_n0_β:
 jmp proc_form_ω
xicnarg131_done:
bb50_α:
  .section .rodata
  .Lcall54_pname: .string "prefix"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+208]
 mov rdx, qword ptr [r12+216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall54_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je proc_form_ω
 jmp xchain98_n9_α
xchain98_n8_β:
 jmp proc_form_ω
xchain98_n9_α:
bb51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain98_n10_α
 xchain98_n9_β:
 jmp proc_form_ω
xchain98_n10_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain98_n11_α
 xchain98_n10_β:
 jmp proc_form_ω
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string ")"
xchain98_n11_α:
bb53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain98_n12_α
 xchain98_n11_β:
 jmp proc_form_ω
xchain98_n12_α:
# IR_RETURN
bb54_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_form_γ
proc_form_β:
jmp proc_form_ω
proc_form_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_form_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "prefix"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_prefix_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "strip"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_strip_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "lassoc"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_lassoc_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "rassoc"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_rassoc_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname4: .string "form"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_form_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
xchain140_n0_α:
xargsub142_n0_α:
bb55_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn144: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain140_n2_α
 jmp xicnarg141_done
 xargsub142_n0_β:
 jmp xchain140_n2_α
xicnarg141_done:
bb56_α:
  .section .rodata
  .Lcall60_pname: .string "prefix"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall60_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain140_n2_α
 jmp xchain140_n1_α
xchain140_n0_β:
 jmp xchain140_n2_α
xchain140_n1_α:
bb57_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain140_n1_β:
xchain140_n1_β:
 jmp xchain140_n2_α
xchain140_n2_α:
xchain140_n2_β:
jmp main_γ
jmp main_γ
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
.S0: .string "bb_scan_bal: unhandled (needs nonempty bracket-free literal c1 + descr flat-chain slot)"
.S1: .string "bb_scan_pos: unhandled (needs literal positive n + descr flat-chain slot)"
.S2: .string "bb_scan_tab: unhandled (needs literal positive n or sibling scan-producer slot + descr flat-chain slot)"
.text
