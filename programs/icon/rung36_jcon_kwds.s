  .intel_syntax noprefix
  .text
  .globl proc_kw_α
proc_kw_α:
#=======================================================================================================================
    .global proc_kw_α
    .global proc_kw_β
    .global proc_kw_γ
    .global proc_kw_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_kw_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n5_α
xchain0_n1_α:
# IR_UNOP
bb2_α:
 mov eax, dword ptr [r12 + 48]
 cmp eax, 99
 je xchain0_n5_α
 cmp eax, 0
 je xchain0_n5_α
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
xchain0_n3_α:
bb4_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n5_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+112]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn10: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n8_α
xchain0_n6_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n9_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "[failed]"
xchain0_n7_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 168], rax
 jmp xcase12_key0_done
 xcase12_key0_β:
 jmp xchain0_n8_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "string"
xcase12_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 96]
 lea rsi, [r12 + 160]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase12_next0
 jmp xcase12_take0
 xcase12_cmp0_β:
 jmp xcase12_next0
xcase12_take0:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xcase12_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n8_α
 xcase12_take0_β:
 jmp xchain0_n8_α
xcase12_next0:
# IR_LIT_S
bb12_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 216], rax
 jmp xcase12_key1_done
 xcase12_key1_β:
 jmp xchain0_n8_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "cset"
xcase12_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 96]
 lea rsi, [r12 + 208]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase12_next1
 jmp xcase12_take1
 xcase12_cmp1_β:
 jmp xcase12_next1
xcase12_take1:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xcase12_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n8_α
 xcase12_take1_β:
 jmp xchain0_n8_α
xcase12_next1:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xcase12_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n8_α
 xcase12_deftake_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb18_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+272]
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 280], rax
 jmp .Lx23_1
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "&"
.Lx23_1:
# marshal arg1 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 12
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn24: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
xchain0_n9_α:
bb19_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n5_α
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n12_α
 xchain0_n9_β:
 jmp xchain0_n5_α
xchain0_n10_α:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n13_α
 xchain0_n10_β:
 jmp xchain0_n11_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string ": "
xchain0_n11_α:
# IR_VAR
bb21_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 jmp xchain0_n17_α
xchain0_n12_α:
jmp xchain0_n15_α
xchain0_n12_β:
jmp xchain0_n5_α
xchain0_n13_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n11_α
xchain0_n14_α:
bb23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n17_α
xchain0_n15_α:
# IR_RETURN
bb24_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_kw_γ
xchain0_n16_α:
bb25_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+416]
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 424], rax
 jmp .Lx33_1
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "&"
.Lx33_1:
# marshal arg1 = LIT_I -> [r12+432]
 mov qword ptr [r12 + 432], 6
 movabs rax, 12
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lcallfn34: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn34]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx33_2]
 mov qword ptr [r12 + 392], rax
 jmp .Lx33_3
.Lx33_2:
 .quad .Lx33_2_s
.Lx33_2_s:
 .string ": "
.Lx33_3:
# marshal arg2 = varslot [r12+176] -> [r12+400]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn35: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n11_α
 xchain0_n16_β:
 jmp xchain0_n11_α
xchain0_n17_α:
# IR_RETURN
bb26_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_kw_γ
proc_kw_β:
jmp proc_kw_ω
proc_kw_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_kw_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_nmap_α
proc_nmap_α:
#=======================================================================================================================
    .global proc_nmap_α
    .global proc_nmap_β
    .global proc_nmap_γ
    .global proc_nmap_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_nmap_α_body:
xchain37_n0_α:
bb27_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+64]
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx38_2]
 mov qword ptr [r12 + 72], rax
 jmp .Lx38_3
.Lx38_2:
 .quad .Lx38_2_s
.Lx38_2_s:
 .string "0123456789"
.Lx38_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx38_4]
 mov qword ptr [r12 + 88], rax
 jmp .Lx38_5
.Lx38_4:
 .quad .Lx38_4_s
.Lx38_4_s:
 .string "nnnnnnnnnn"
.Lx38_5:
  .section .rodata
  .Lrkfn39: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 48]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_nmap_ω
 jmp xchain37_n1_α
 xchain37_n0_β:
 jmp proc_nmap_ω
xchain37_n1_α:
# IR_RETURN
bb28_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nmap_γ
proc_nmap_β:
jmp proc_nmap_ω
proc_nmap_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_nmap_ω:
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
  .Lstartup_pname0: .string "kw"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_kw_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "nmap"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_nmap_α]
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
xchain41_n0_α:
# IR_LIT_I
bb29_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain41_n1_α
 xchain41_n0_β:
 jmp xchain41_n2_α
.Lx42_0:
 .quad 747
xchain41_n1_α:
bb30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain41_n2_α
 xchain41_n1_β:
 jmp xchain41_n2_α
xchain41_n2_α:
# IR_LIT_S
bb31_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain41_n3_α
 xchain41_n2_β:
 jmp xchain41_n231_β
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "allocated"
xchain41_n3_α:
xaltg45_a0_start:
# IR_KEYWORD_read
bb32_α:
 mov rdi, qword ptr [rip + .Lx46_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xaltg45_a0_succ
 xaltg45_a0_beta:
 jmp xaltg45_a1_start
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "&allocated"
xaltg45_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], 1
jmp xchain41_n4_α
xaltg45_a1_start:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg45_a1_succ
 xaltg45_a1_beta:
 jmp xchain41_n5_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "[failed]"
xaltg45_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], 1
jmp xchain41_n4_α
xchain41_n3_β:
jmp xchain41_n5_α
xchain41_n4_α:
bb34_α:
  .section .rodata
  .Lcall32_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall32_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n3_β
xchain41_n4_β:
 jmp xchain41_n231_β
xchain41_n5_α:
# IR_EVERY
 jmp xchain41_n6_α
 xchain41_n5_β:
 jmp xchain41_n6_α
xchain41_n6_α:
# IR_LIT_S
bb36_α:
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 144], rax
 jmp xchain41_n7_α
 xchain41_n6_β:
 jmp xchain41_n231_β
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "ascii"
xchain41_n7_α:
xaltg53_a0_start:
# IR_KEYWORD_read
bb37_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xaltg53_a0_succ
 xaltg53_a0_beta:
 jmp xaltg53_a1_start
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "&ascii"
xaltg53_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], 1
jmp xchain41_n8_α
xaltg53_a1_start:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 200], rax
 jmp xaltg53_a1_succ
 xaltg53_a1_beta:
 jmp xchain41_n9_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "[failed]"
xaltg53_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], 1
jmp xchain41_n8_α
xchain41_n7_β:
jmp xchain41_n9_α
xchain41_n8_α:
bb39_α:
  .section .rodata
  .Lcall37_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+136]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+152]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall37_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n7_β
xchain41_n8_β:
 jmp xchain41_n231_β
xchain41_n9_α:
# IR_EVERY
 jmp xchain41_n10_α
 xchain41_n9_β:
 jmp xchain41_n10_α
xchain41_n10_α:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain41_n11_α
 xchain41_n10_β:
 jmp xchain41_n231_β
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "clock"
xchain41_n11_α:
xaltg61_a0_start:
xargsub63_n0_α:
# IR_KEYWORD_read
bb42_α:
 mov rdi, qword ptr [rip + .Lx64_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp xicnarg62_done
 xargsub63_n0_β:
 jmp xaltg61_a1_start
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "&clock"
xicnarg62_done:
bb43_α:
  .section .rodata
  .Lcall41_pname: .string "nmap"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+264]
 mov rdx, qword ptr [r12+272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall41_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je xaltg61_a1_start
 jmp xaltg61_a0_succ
xaltg61_a0_beta:
 jmp xaltg61_a1_start
xaltg61_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], 1
jmp xchain41_n12_α
xaltg61_a1_start:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 304], rax
 jmp xaltg61_a1_succ
 xaltg61_a1_beta:
 jmp xchain41_n13_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "[failed]"
xaltg61_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], 1
jmp xchain41_n12_α
xchain41_n11_β:
jmp xchain41_n13_α
xchain41_n12_α:
bb45_α:
  .section .rodata
  .Lcall43_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall43_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n11_β
xchain41_n12_β:
 jmp xchain41_n231_β
xchain41_n13_α:
# IR_EVERY
 jmp xchain41_n14_α
 xchain41_n13_β:
 jmp xchain41_n14_α
xchain41_n14_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 328], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 336], rax
 jmp xchain41_n15_α
 xchain41_n14_β:
 jmp xchain41_n231_β
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "col"
xchain41_n15_α:
xaltg72_a0_start:
# IR_KEYWORD_read
bb48_α:
 mov rdi, qword ptr [rip + .Lx73_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xaltg72_a0_succ
 xaltg72_a0_beta:
 jmp xaltg72_a1_start
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "&col"
xaltg72_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], 1
jmp xchain41_n16_α
xaltg72_a1_start:
# IR_LIT_S
bb49_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 392], rax
 jmp xaltg72_a1_succ
 xaltg72_a1_beta:
 jmp xchain41_n17_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "[failed]"
xaltg72_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], 1
jmp xchain41_n16_α
xchain41_n15_β:
jmp xchain41_n17_α
xchain41_n16_α:
bb50_α:
  .section .rodata
  .Lcall48_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+328]
 mov rdx, qword ptr [r12+336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+344]
 mov rdx, qword ptr [r12+352]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall48_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n15_β
xchain41_n16_β:
 jmp xchain41_n231_β
xchain41_n17_α:
# IR_EVERY
 jmp xchain41_n18_α
 xchain41_n17_β:
 jmp xchain41_n18_α
xchain41_n18_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain41_n19_α
 xchain41_n18_β:
 jmp xchain41_n231_β
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "collections"
xchain41_n19_α:
xaltg80_a0_start:
# IR_KEYWORD_read
bb53_α:
 mov rdi, qword ptr [rip + .Lx81_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 jmp xaltg80_a0_succ
 xaltg80_a0_beta:
 jmp xaltg80_a1_start
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "&collections"
xaltg80_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain41_n20_α
xaltg80_a1_start:
# IR_LIT_S
bb54_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 480], rax
 jmp xaltg80_a1_succ
 xaltg80_a1_beta:
 jmp xchain41_n21_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "[failed]"
xaltg80_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain41_n20_α
xchain41_n19_β:
jmp xchain41_n21_α
xchain41_n20_α:
bb55_α:
  .section .rodata
  .Lcall53_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+432]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall53_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n19_β
xchain41_n20_β:
 jmp xchain41_n231_β
xchain41_n21_α:
# IR_EVERY
 jmp xchain41_n22_α
 xchain41_n21_β:
 jmp xchain41_n22_α
xchain41_n22_α:
# IR_LIT_S
bb57_α:
 mov qword ptr [r12 + 504], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 512], rax
 jmp xchain41_n23_α
 xchain41_n22_β:
 jmp xchain41_n231_β
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "control"
xchain41_n23_α:
xaltg88_a0_start:
# IR_KEYWORD_read
bb58_α:
 mov rdi, qword ptr [rip + .Lx89_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xaltg88_a0_succ
 xaltg88_a0_beta:
 jmp xaltg88_a1_start
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "&control"
xaltg88_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 520], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], 1
jmp xchain41_n24_α
xaltg88_a1_start:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg88_a1_succ
 xaltg88_a1_beta:
 jmp xchain41_n25_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "[failed]"
xaltg88_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 520], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], 1
jmp xchain41_n24_α
xchain41_n23_β:
jmp xchain41_n25_α
xchain41_n24_α:
bb60_α:
  .section .rodata
  .Lcall58_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+504]
 mov rdx, qword ptr [r12+512]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+520]
 mov rdx, qword ptr [r12+528]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall58_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n23_β
xchain41_n24_β:
 jmp xchain41_n231_β
xchain41_n25_α:
# IR_EVERY
 jmp xchain41_n26_α
 xchain41_n25_β:
 jmp xchain41_n26_α
xchain41_n26_α:
# IR_LIT_S
bb62_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain41_n27_α
 xchain41_n26_β:
 jmp xchain41_n231_β
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "cset"
xchain41_n27_α:
xaltg96_a0_start:
# IR_KEYWORD_read
bb63_α:
 mov rdi, qword ptr [rip + .Lx97_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 jmp xaltg96_a0_succ
 xaltg96_a0_beta:
 jmp xaltg96_a1_start
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "&cset"
xaltg96_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], 1
jmp xchain41_n28_α
xaltg96_a1_start:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 648], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 656], rax
 jmp xaltg96_a1_succ
 xaltg96_a1_beta:
 jmp xchain41_n29_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "[failed]"
xaltg96_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], 1
jmp xchain41_n28_α
xchain41_n27_β:
jmp xchain41_n29_α
xchain41_n28_α:
bb65_α:
  .section .rodata
  .Lcall63_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+592]
 mov rdx, qword ptr [r12+600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+608]
 mov rdx, qword ptr [r12+616]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall63_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n27_β
xchain41_n28_β:
 jmp xchain41_n231_β
xchain41_n29_α:
# IR_EVERY
 jmp xchain41_n30_α
 xchain41_n29_β:
 jmp xchain41_n30_α
xchain41_n30_α:
# IR_LIT_S
bb67_α:
 mov qword ptr [r12 + 680], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 688], rax
 jmp xchain41_n31_α
 xchain41_n30_β:
 jmp xchain41_n231_β
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "current"
xchain41_n31_α:
xaltg104_a0_start:
# IR_KEYWORD_read
bb68_α:
 mov rdi, qword ptr [rip + .Lx105_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xaltg104_a0_succ
 xaltg104_a0_beta:
 jmp xaltg104_a1_start
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "&current"
xaltg104_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 696], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], 1
jmp xchain41_n32_α
xaltg104_a1_start:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 744], rax
 jmp xaltg104_a1_succ
 xaltg104_a1_beta:
 jmp xchain41_n33_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "[failed]"
xaltg104_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 696], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], 1
jmp xchain41_n32_α
xchain41_n31_β:
jmp xchain41_n33_α
xchain41_n32_α:
bb70_α:
  .section .rodata
  .Lcall68_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+680]
 mov rdx, qword ptr [r12+688]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+696]
 mov rdx, qword ptr [r12+704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall68_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n31_β
xchain41_n32_β:
 jmp xchain41_n231_β
xchain41_n33_α:
# IR_EVERY
 jmp xchain41_n34_α
 xchain41_n33_β:
 jmp xchain41_n34_α
xchain41_n34_α:
# IR_LIT_S
bb72_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain41_n35_α
 xchain41_n34_β:
 jmp xchain41_n231_β
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "date"
xchain41_n35_α:
xaltg112_a0_start:
xargsub114_n0_α:
# IR_KEYWORD_read
bb73_α:
 mov rdi, qword ptr [rip + .Lx115_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 808], rax
 mov qword ptr [r12 + 816], rdx
 jmp xicnarg113_done
 xargsub114_n0_β:
 jmp xaltg112_a1_start
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "&date"
xicnarg113_done:
bb74_α:
  .section .rodata
  .Lcall72_pname: .string "nmap"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+808]
 mov rdx, qword ptr [r12+816]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall72_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 824], rax
 mov qword ptr [r12 + 832], rdx
 cmp eax, 99
 je xaltg112_a1_start
 jmp xaltg112_a0_succ
xaltg112_a0_beta:
 jmp xaltg112_a1_start
xaltg112_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], 1
jmp xchain41_n36_α
xaltg112_a1_start:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 840], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [r12 + 848], rax
 jmp xaltg112_a1_succ
 xaltg112_a1_beta:
 jmp xchain41_n37_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "[failed]"
xaltg112_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], 1
jmp xchain41_n36_α
xchain41_n35_β:
jmp xchain41_n37_α
xchain41_n36_α:
bb76_α:
  .section .rodata
  .Lcall74_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+768]
 mov rdx, qword ptr [r12+776]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+784]
 mov rdx, qword ptr [r12+792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall74_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n35_β
xchain41_n36_β:
 jmp xchain41_n231_β
xchain41_n37_α:
# IR_EVERY
 jmp xchain41_n38_α
 xchain41_n37_β:
 jmp xchain41_n38_α
xchain41_n38_α:
# IR_LIT_S
bb78_α:
 mov qword ptr [r12 + 872], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [r12 + 880], rax
 jmp xchain41_n39_α
 xchain41_n38_β:
 jmp xchain41_n231_β
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "dateline"
xchain41_n39_α:
# IR_KEYWORD_read
bb79_α:
 mov rdi, qword ptr [rip + .Lx123_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
 jmp xchain41_n40_α
 xchain41_n39_β:
 jmp xchain41_n41_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "&dateline"
xchain41_n40_α:
# IR_LIT_S
bb80_α:
 mov qword ptr [r12 + 904], 1
 mov dword ptr [r12 + 908], -1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [r12 + 912], rax
 jmp xchain41_n41_α
 xchain41_n40_β:
 jmp xchain41_n41_α
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string " ,:EILRadfkmwxy"
xchain41_n41_α:
xaltg125_a0_start:
# [walk_bb_node: kind=7 unhandled]
xaltg125_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain41_n42_α
xaltg125_a1_start:
# IR_LIT_S
bb82_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 952], rax
 jmp xaltg125_a1_succ
 xaltg125_a1_beta:
 jmp xchain41_n43_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "[failed]"
xaltg125_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 920], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], 1
jmp xchain41_n42_α
xchain41_n41_β:
jmp xchain41_n43_α
xchain41_n42_α:
bb83_α:
  .section .rodata
  .Lcall81_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+904]
 mov rdx, qword ptr [r12+912]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+920]
 mov rdx, qword ptr [r12+928]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall81_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n41_β
xchain41_n42_β:
 jmp xchain41_n231_β
xchain41_n43_α:
# IR_EVERY
 jmp xchain41_n44_α
 xchain41_n43_β:
 jmp xchain41_n44_α
xchain41_n44_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain41_n45_α
 xchain41_n44_β:
 jmp xchain41_n231_β
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "digits"
xchain41_n45_α:
xaltg133_a0_start:
# IR_KEYWORD_read
bb86_α:
 mov rdi, qword ptr [rip + .Lx134_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp xaltg133_a0_succ
 xaltg133_a0_beta:
 jmp xaltg133_a1_start
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "&digits"
xaltg133_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1000], rax
 mov qword ptr [r12 + 1008], 1
jmp xchain41_n46_α
xaltg133_a1_start:
# IR_LIT_S
bb87_α:
 mov qword ptr [r12 + 1032], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [r12 + 1040], rax
 jmp xaltg133_a1_succ
 xaltg133_a1_beta:
 jmp xchain41_n47_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "[failed]"
xaltg133_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1000], rax
 mov qword ptr [r12 + 1008], 1
jmp xchain41_n46_α
xchain41_n45_β:
jmp xchain41_n47_α
xchain41_n46_α:
bb88_α:
  .section .rodata
  .Lcall86_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+976]
 mov rdx, qword ptr [r12+984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+992]
 mov rdx, qword ptr [r12+100]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall86_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1048], rax
 mov qword ptr [r12 + 1056], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n45_β
xchain41_n46_β:
 jmp xchain41_n231_β
xchain41_n47_α:
# IR_EVERY
 jmp xchain41_n48_α
 xchain41_n47_β:
 jmp xchain41_n48_α
xchain41_n48_α:
# IR_LIT_S
bb90_α:
 mov qword ptr [r12 + 1064], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 1072], rax
 jmp xchain41_n49_α
 xchain41_n48_β:
 jmp xchain41_n231_β
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "dump"
xchain41_n49_α:
xaltg141_a0_start:
# IR_KEYWORD_read
bb91_α:
 mov rdi, qword ptr [rip + .Lx142_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xaltg141_a0_succ
 xaltg141_a0_beta:
 jmp xaltg141_a1_start
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "&dump"
xaltg141_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1080], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], 1
jmp xchain41_n50_α
xaltg141_a1_start:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 1128], rax
 jmp xaltg141_a1_succ
 xaltg141_a1_beta:
 jmp xchain41_n51_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "[failed]"
xaltg141_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1080], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], 1
jmp xchain41_n50_α
xchain41_n49_β:
jmp xchain41_n51_α
xchain41_n50_α:
bb93_α:
  .section .rodata
  .Lcall91_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+106]
 mov rdx, qword ptr [r12+107]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+108]
 mov rdx, qword ptr [r12+108]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n49_β
xchain41_n50_β:
 jmp xchain41_n231_β
xchain41_n51_α:
# IR_EVERY
 jmp xchain41_n52_α
 xchain41_n51_β:
 jmp xchain41_n52_α
xchain41_n52_α:
# IR_LIT_S
bb95_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain41_n53_α
 xchain41_n52_β:
 jmp xchain41_n231_β
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "e"
xchain41_n53_α:
xaltg149_a0_start:
# IR_KEYWORD_read
bb96_α:
 mov rdi, qword ptr [rip + .Lx150_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 jmp xaltg149_a0_succ
 xaltg149_a0_beta:
 jmp xaltg149_a1_start
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "&e"
xaltg149_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1176], rax
 mov qword ptr [r12 + 1184], 1
jmp xchain41_n54_α
xaltg149_a1_start:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 1216], rax
 jmp xaltg149_a1_succ
 xaltg149_a1_beta:
 jmp xchain41_n55_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "[failed]"
xaltg149_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1176], rax
 mov qword ptr [r12 + 1184], 1
jmp xchain41_n54_α
xchain41_n53_β:
jmp xchain41_n55_α
xchain41_n54_α:
bb98_α:
  .section .rodata
  .Lcall96_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+115]
 mov rdx, qword ptr [r12+116]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+116]
 mov rdx, qword ptr [r12+117]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall96_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1224], rax
 mov qword ptr [r12 + 1232], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n53_β
xchain41_n54_β:
 jmp xchain41_n231_β
xchain41_n55_α:
# IR_EVERY
 jmp xchain41_n56_α
 xchain41_n55_β:
 jmp xchain41_n56_α
xchain41_n56_α:
# IR_LIT_S
bb100_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain41_n57_α
 xchain41_n56_β:
 jmp xchain41_n231_β
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "error"
xchain41_n57_α:
xaltg157_a0_start:
# IR_KEYWORD_read
bb101_α:
 mov rdi, qword ptr [rip + .Lx158_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xaltg157_a0_succ
 xaltg157_a0_beta:
 jmp xaltg157_a1_start
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "&error"
xaltg157_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain41_n58_α
xaltg157_a1_start:
# IR_LIT_S
bb102_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 1304], rax
 jmp xaltg157_a1_succ
 xaltg157_a1_beta:
 jmp xchain41_n59_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "[failed]"
xaltg157_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain41_n58_α
xchain41_n57_β:
jmp xchain41_n59_α
xchain41_n58_α:
bb103_α:
  .section .rodata
  .Lcall101_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+124]
 mov rdx, qword ptr [r12+124]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+125]
 mov rdx, qword ptr [r12+126]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall101_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n57_β
xchain41_n58_β:
 jmp xchain41_n231_β
xchain41_n59_α:
# IR_EVERY
 jmp xchain41_n60_α
 xchain41_n59_β:
 jmp xchain41_n60_α
xchain41_n60_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain41_n61_α
 xchain41_n60_β:
 jmp xchain41_n231_β
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "errornumber"
xchain41_n61_α:
xaltg165_a0_start:
# IR_KEYWORD_read
bb106_α:
 mov rdi, qword ptr [rip + .Lx166_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1368], rax
 mov qword ptr [r12 + 1376], rdx
 jmp xaltg165_a0_succ
 xaltg165_a0_beta:
 jmp xaltg165_a1_start
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "&errornumber"
xaltg165_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], 1
jmp xchain41_n62_α
xaltg165_a1_start:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 1384], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 1392], rax
 jmp xaltg165_a1_succ
 xaltg165_a1_beta:
 jmp xchain41_n63_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "[failed]"
xaltg165_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], 1
jmp xchain41_n62_α
xchain41_n61_β:
jmp xchain41_n63_α
xchain41_n62_α:
bb108_α:
  .section .rodata
  .Lcall106_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+132]
 mov rdx, qword ptr [r12+133]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+134]
 mov rdx, qword ptr [r12+135]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall106_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n61_β
xchain41_n62_β:
 jmp xchain41_n231_β
xchain41_n63_α:
# IR_EVERY
 jmp xchain41_n64_α
 xchain41_n63_β:
 jmp xchain41_n64_α
xchain41_n64_α:
# IR_LIT_S
bb110_α:
 mov qword ptr [r12 + 1416], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [r12 + 1424], rax
 jmp xchain41_n65_α
 xchain41_n64_β:
 jmp xchain41_n231_β
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "errortext"
xchain41_n65_α:
xaltg173_a0_start:
# IR_KEYWORD_read
bb111_α:
 mov rdi, qword ptr [rip + .Lx174_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xaltg173_a0_succ
 xaltg173_a0_beta:
 jmp xaltg173_a1_start
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "&errortext"
xaltg173_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1432], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], 1
jmp xchain41_n66_α
xaltg173_a1_start:
# IR_LIT_S
bb112_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 1480], rax
 jmp xaltg173_a1_succ
 xaltg173_a1_beta:
 jmp xchain41_n67_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "[failed]"
xaltg173_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1432], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], 1
jmp xchain41_n66_α
xchain41_n65_β:
jmp xchain41_n67_α
xchain41_n66_α:
bb113_α:
  .section .rodata
  .Lcall111_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+141]
 mov rdx, qword ptr [r12+142]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+143]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall111_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n65_β
xchain41_n66_β:
 jmp xchain41_n231_β
xchain41_n67_α:
# IR_EVERY
 jmp xchain41_n68_α
 xchain41_n67_β:
 jmp xchain41_n68_α
xchain41_n68_α:
# IR_LIT_S
bb115_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain41_n69_α
 xchain41_n68_β:
 jmp xchain41_n231_β
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "errorvalue"
xchain41_n69_α:
xaltg181_a0_start:
# IR_KEYWORD_read
bb116_α:
 mov rdi, qword ptr [rip + .Lx182_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1544], rax
 mov qword ptr [r12 + 1552], rdx
 jmp xaltg181_a0_succ
 xaltg181_a0_beta:
 jmp xaltg181_a1_start
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "&errorvalue"
xaltg181_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1528], rax
 mov qword ptr [r12 + 1536], 1
jmp xchain41_n70_α
xaltg181_a1_start:
# IR_LIT_S
bb117_α:
 mov qword ptr [r12 + 1560], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 1568], rax
 jmp xaltg181_a1_succ
 xaltg181_a1_beta:
 jmp xchain41_n71_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "[failed]"
xaltg181_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1528], rax
 mov qword ptr [r12 + 1536], 1
jmp xchain41_n70_α
xchain41_n69_β:
jmp xchain41_n71_α
xchain41_n70_α:
bb118_α:
  .section .rodata
  .Lcall116_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+150]
 mov rdx, qword ptr [r12+151]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+152]
 mov rdx, qword ptr [r12+152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall116_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1576], rax
 mov qword ptr [r12 + 1584], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n69_β
xchain41_n70_β:
 jmp xchain41_n231_β
xchain41_n71_α:
# IR_EVERY
 jmp xchain41_n72_α
 xchain41_n71_β:
 jmp xchain41_n72_α
xchain41_n72_α:
# IR_LIT_S
bb120_α:
 mov qword ptr [r12 + 1592], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [r12 + 1600], rax
 jmp xchain41_n73_α
 xchain41_n72_β:
 jmp xchain41_n231_β
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "errout"
xchain41_n73_α:
xaltg189_a0_start:
# IR_KEYWORD_read
bb121_α:
 mov rdi, qword ptr [rip + .Lx190_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xaltg189_a0_succ
 xaltg189_a0_beta:
 jmp xaltg189_a1_start
.Lx190_0:
 .quad .Lx190_0_s
.Lx190_0_s:
 .string "&errout"
xaltg189_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1608], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], 1
jmp xchain41_n74_α
xaltg189_a1_start:
# IR_LIT_S
bb122_α:
 mov qword ptr [r12 + 1648], 1
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [r12 + 1656], rax
 jmp xaltg189_a1_succ
 xaltg189_a1_beta:
 jmp xchain41_n75_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "[failed]"
xaltg189_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1608], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], 1
jmp xchain41_n74_α
xchain41_n73_β:
jmp xchain41_n75_α
xchain41_n74_α:
bb123_α:
  .section .rodata
  .Lcall121_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+159]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+161]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall121_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n73_β
xchain41_n74_β:
 jmp xchain41_n231_β
xchain41_n75_α:
# IR_EVERY
 jmp xchain41_n76_α
 xchain41_n75_β:
 jmp xchain41_n76_α
xchain41_n76_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 1680], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 1688], rax
 jmp xchain41_n77_α
 xchain41_n76_β:
 jmp xchain41_n231_β
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "fail"
xchain41_n77_α:
xaltg197_a0_start:
# IR_KEYWORD_fail
bb126_α:
 jmp xaltg197_a1_start
 xaltg197_a0_beta:
 jmp xaltg197_a1_start
xaltg197_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1704], rax
 mov qword ptr [r12 + 1712], 1
jmp xchain41_n78_α
xaltg197_a1_start:
# IR_LIT_S
bb127_α:
 mov qword ptr [r12 + 1736], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [r12 + 1744], rax
 jmp xaltg197_a1_succ
 xaltg197_a1_beta:
 jmp xchain41_n79_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "[failed]"
xaltg197_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1704], rax
 mov qword ptr [r12 + 1712], 1
jmp xchain41_n78_α
xchain41_n77_β:
jmp xchain41_n79_α
xchain41_n78_α:
bb128_α:
  .section .rodata
  .Lcall126_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+168]
 mov rdx, qword ptr [r12+168]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+169]
 mov rdx, qword ptr [r12+170]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall126_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1752], rax
 mov qword ptr [r12 + 1760], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n77_β
xchain41_n78_β:
 jmp xchain41_n231_β
xchain41_n79_α:
# IR_EVERY
 jmp xchain41_n80_α
 xchain41_n79_β:
 jmp xchain41_n80_α
xchain41_n80_α:
# IR_LIT_S
bb130_α:
 mov qword ptr [r12 + 1768], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [r12 + 1776], rax
 jmp xchain41_n81_α
 xchain41_n80_β:
 jmp xchain41_n231_β
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "features"
xchain41_n81_α:
# IR_LIT_S
bb131_α:
 mov qword ptr [r12 + 1784], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 1792], rax
 jmp xchain41_n82_α
 xchain41_n81_β:
 jmp xchain41_n83_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "Macintosh"
xchain41_n82_α:
# IR_KEYWORD_read
bb132_α:
 mov rdi, qword ptr [rip + .Lx206_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1800], rax
 mov qword ptr [r12 + 1808], rdx
 jmp xchain41_n83_α
 xchain41_n82_β:
 jmp xchain41_n83_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "&features"
xchain41_n83_α:
xaltg207_a0_start:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xaltg207_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain41_n84_α
xaltg207_a1_start:
# IR_LIT_S
bb134_α:
 mov qword ptr [r12 + 1840], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 1848], rax
 jmp xaltg207_a1_succ
 xaltg207_a1_beta:
 jmp xchain41_n85_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "[failed]"
xaltg207_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1816], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], 1
jmp xchain41_n84_α
xchain41_n83_β:
jmp xchain41_n85_α
xchain41_n84_α:
bb135_α:
  .section .rodata
  .Lcall133_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+180]
 mov rdx, qword ptr [r12+180]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+181]
 mov rdx, qword ptr [r12+182]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall133_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n83_β
xchain41_n84_β:
 jmp xchain41_n231_β
xchain41_n85_α:
# IR_EVERY
 jmp xchain41_n86_α
 xchain41_n85_β:
 jmp xchain41_n86_α
xchain41_n86_α:
# IR_LIT_S
bb137_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain41_n87_α
 xchain41_n86_β:
 jmp xchain41_n231_β
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "input"
xchain41_n87_α:
xaltg215_a0_start:
# IR_KEYWORD_read
bb138_α:
 mov rdi, qword ptr [rip + .Lx216_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1912], rax
 mov qword ptr [r12 + 1920], rdx
 jmp xaltg215_a0_succ
 xaltg215_a0_beta:
 jmp xaltg215_a1_start
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "&input"
xaltg215_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1896], rax
 mov qword ptr [r12 + 1904], 1
jmp xchain41_n88_α
xaltg215_a1_start:
# IR_LIT_S
bb139_α:
 mov qword ptr [r12 + 1928], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [r12 + 1936], rax
 jmp xaltg215_a1_succ
 xaltg215_a1_beta:
 jmp xchain41_n89_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "[failed]"
xaltg215_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1896], rax
 mov qword ptr [r12 + 1904], 1
jmp xchain41_n88_α
xchain41_n87_β:
jmp xchain41_n89_α
xchain41_n88_α:
bb140_α:
  .section .rodata
  .Lcall138_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+187]
 mov rdx, qword ptr [r12+188]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+188]
 mov rdx, qword ptr [r12+189]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall138_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1944], rax
 mov qword ptr [r12 + 1952], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n87_β
xchain41_n88_β:
 jmp xchain41_n231_β
xchain41_n89_α:
# IR_EVERY
 jmp xchain41_n90_α
 xchain41_n89_β:
 jmp xchain41_n90_α
xchain41_n90_α:
# IR_LIT_S
bb142_α:
 mov qword ptr [r12 + 1960], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [r12 + 1968], rax
 jmp xchain41_n91_α
 xchain41_n90_β:
 jmp xchain41_n231_β
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "interval"
xchain41_n91_α:
xaltg223_a0_start:
# IR_KEYWORD_read
bb143_α:
 mov rdi, qword ptr [rip + .Lx224_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xaltg223_a0_succ
 xaltg223_a0_beta:
 jmp xaltg223_a1_start
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "&interval"
xaltg223_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1976], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], 1
jmp xchain41_n92_α
xaltg223_a1_start:
# IR_LIT_S
bb144_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 2024], rax
 jmp xaltg223_a1_succ
 xaltg223_a1_beta:
 jmp xchain41_n93_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "[failed]"
xaltg223_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1976], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], 1
jmp xchain41_n92_α
xchain41_n91_β:
jmp xchain41_n93_α
xchain41_n92_α:
bb145_α:
  .section .rodata
  .Lcall143_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+196]
 mov rdx, qword ptr [r12+196]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+197]
 mov rdx, qword ptr [r12+198]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall143_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n91_β
xchain41_n92_β:
 jmp xchain41_n231_β
xchain41_n93_α:
# IR_EVERY
 jmp xchain41_n94_α
 xchain41_n93_β:
 jmp xchain41_n94_α
xchain41_n94_α:
# IR_LIT_S
bb147_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain41_n95_α
 xchain41_n94_β:
 jmp xchain41_n231_β
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "lcase"
xchain41_n95_α:
xaltg231_a0_start:
# IR_KEYWORD_read
bb148_α:
 mov rdi, qword ptr [rip + .Lx232_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2088], rax
 mov qword ptr [r12 + 2096], rdx
 jmp xaltg231_a0_succ
 xaltg231_a0_beta:
 jmp xaltg231_a1_start
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "&lcase"
xaltg231_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2072], rax
 mov qword ptr [r12 + 2080], 1
jmp xchain41_n96_α
xaltg231_a1_start:
# IR_LIT_S
bb149_α:
 mov qword ptr [r12 + 2104], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 2112], rax
 jmp xaltg231_a1_succ
 xaltg231_a1_beta:
 jmp xchain41_n97_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "[failed]"
xaltg231_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2072], rax
 mov qword ptr [r12 + 2080], 1
jmp xchain41_n96_α
xchain41_n95_β:
jmp xchain41_n97_α
xchain41_n96_α:
bb150_α:
  .section .rodata
  .Lcall148_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+204]
 mov rdx, qword ptr [r12+205]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+206]
 mov rdx, qword ptr [r12+207]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall148_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2120], rax
 mov qword ptr [r12 + 2128], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n95_β
xchain41_n96_β:
 jmp xchain41_n231_β
xchain41_n97_α:
# IR_EVERY
 jmp xchain41_n98_α
 xchain41_n97_β:
 jmp xchain41_n98_α
xchain41_n98_α:
# IR_LIT_S
bb152_α:
 mov qword ptr [r12 + 2136], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [r12 + 2144], rax
 jmp xchain41_n99_α
 xchain41_n98_β:
 jmp xchain41_n231_β
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "ldrag"
xchain41_n99_α:
xaltg239_a0_start:
# IR_KEYWORD_read
bb153_α:
 mov rdi, qword ptr [rip + .Lx240_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xaltg239_a0_succ
 xaltg239_a0_beta:
 jmp xaltg239_a1_start
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "&ldrag"
xaltg239_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2152], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], 1
jmp xchain41_n100_α
xaltg239_a1_start:
# IR_LIT_S
bb154_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 2200], rax
 jmp xaltg239_a1_succ
 xaltg239_a1_beta:
 jmp xchain41_n101_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "[failed]"
xaltg239_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2152], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], 1
jmp xchain41_n100_α
xchain41_n99_β:
jmp xchain41_n101_α
xchain41_n100_α:
bb155_α:
  .section .rodata
  .Lcall153_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+213]
 mov rdx, qword ptr [r12+214]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+215]
 mov rdx, qword ptr [r12+216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall153_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n99_β
xchain41_n100_β:
 jmp xchain41_n231_β
xchain41_n101_α:
# IR_EVERY
 jmp xchain41_n102_α
 xchain41_n101_β:
 jmp xchain41_n102_α
xchain41_n102_α:
# IR_LIT_S
bb157_α:
 mov qword ptr [r12 + 2224], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain41_n103_α
 xchain41_n102_β:
 jmp xchain41_n231_β
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "letters"
xchain41_n103_α:
xaltg247_a0_start:
# IR_KEYWORD_read
bb158_α:
 mov rdi, qword ptr [rip + .Lx248_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2264], rax
 mov qword ptr [r12 + 2272], rdx
 jmp xaltg247_a0_succ
 xaltg247_a0_beta:
 jmp xaltg247_a1_start
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "&letters"
xaltg247_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2248], rax
 mov qword ptr [r12 + 2256], 1
jmp xchain41_n104_α
xaltg247_a1_start:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 2280], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 2288], rax
 jmp xaltg247_a1_succ
 xaltg247_a1_beta:
 jmp xchain41_n105_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "[failed]"
xaltg247_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2248], rax
 mov qword ptr [r12 + 2256], 1
jmp xchain41_n104_α
xchain41_n103_β:
jmp xchain41_n105_α
xchain41_n104_α:
bb160_α:
  .section .rodata
  .Lcall158_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+222]
 mov rdx, qword ptr [r12+223]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall158_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2296], rax
 mov qword ptr [r12 + 2304], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n103_β
xchain41_n104_β:
 jmp xchain41_n231_β
xchain41_n105_α:
# IR_EVERY
 jmp xchain41_n106_α
 xchain41_n105_β:
 jmp xchain41_n106_α
xchain41_n106_α:
# IR_LIT_S
bb162_α:
 mov qword ptr [r12 + 2312], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 2320], rax
 jmp xchain41_n107_α
 xchain41_n106_β:
 jmp xchain41_n231_β
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "level"
xchain41_n107_α:
xaltg255_a0_start:
# IR_KEYWORD_read
bb163_α:
 mov rdi, qword ptr [rip + .Lx256_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xaltg255_a0_succ
 xaltg255_a0_beta:
 jmp xaltg255_a1_start
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "&level"
xaltg255_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2328], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], 1
jmp xchain41_n108_α
xaltg255_a1_start:
# IR_LIT_S
bb164_α:
 mov qword ptr [r12 + 2368], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [r12 + 2376], rax
 jmp xaltg255_a1_succ
 xaltg255_a1_beta:
 jmp xchain41_n109_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "[failed]"
xaltg255_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2328], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], 1
jmp xchain41_n108_α
xchain41_n107_β:
jmp xchain41_n109_α
xchain41_n108_α:
bb165_α:
  .section .rodata
  .Lcall163_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+231]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+232]
 mov rdx, qword ptr [r12+233]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall163_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n107_β
xchain41_n108_β:
 jmp xchain41_n231_β
xchain41_n109_α:
# IR_EVERY
 jmp xchain41_n110_α
 xchain41_n109_β:
 jmp xchain41_n110_α
xchain41_n110_α:
# IR_LIT_S
bb167_α:
 mov qword ptr [r12 + 2400], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [r12 + 2408], rax
 jmp xchain41_n111_α
 xchain41_n110_β:
 jmp xchain41_n231_β
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "lpress"
xchain41_n111_α:
xaltg263_a0_start:
# IR_KEYWORD_read
bb168_α:
 mov rdi, qword ptr [rip + .Lx264_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2440], rax
 mov qword ptr [r12 + 2448], rdx
 jmp xaltg263_a0_succ
 xaltg263_a0_beta:
 jmp xaltg263_a1_start
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "&lpress"
xaltg263_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2424], rax
 mov qword ptr [r12 + 2432], 1
jmp xchain41_n112_α
xaltg263_a1_start:
# IR_LIT_S
bb169_α:
 mov qword ptr [r12 + 2456], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [r12 + 2464], rax
 jmp xaltg263_a1_succ
 xaltg263_a1_beta:
 jmp xchain41_n113_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "[failed]"
xaltg263_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2424], rax
 mov qword ptr [r12 + 2432], 1
jmp xchain41_n112_α
xchain41_n111_β:
jmp xchain41_n113_α
xchain41_n112_α:
bb170_α:
  .section .rodata
  .Lcall168_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+240]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+241]
 mov rdx, qword ptr [r12+242]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall168_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2472], rax
 mov qword ptr [r12 + 2480], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n111_β
xchain41_n112_β:
 jmp xchain41_n231_β
xchain41_n113_α:
# IR_EVERY
 jmp xchain41_n114_α
 xchain41_n113_β:
 jmp xchain41_n114_α
xchain41_n114_α:
# IR_LIT_S
bb172_α:
 mov qword ptr [r12 + 2488], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [r12 + 2496], rax
 jmp xchain41_n115_α
 xchain41_n114_β:
 jmp xchain41_n231_β
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "lrelease"
xchain41_n115_α:
xaltg271_a0_start:
# IR_KEYWORD_read
bb173_α:
 mov rdi, qword ptr [rip + .Lx272_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xaltg271_a0_succ
 xaltg271_a0_beta:
 jmp xaltg271_a1_start
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "&lrelease"
xaltg271_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2504], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], 1
jmp xchain41_n116_α
xaltg271_a1_start:
# IR_LIT_S
bb174_α:
 mov qword ptr [r12 + 2544], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 2552], rax
 jmp xaltg271_a1_succ
 xaltg271_a1_beta:
 jmp xchain41_n117_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "[failed]"
xaltg271_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2504], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], 1
jmp xchain41_n116_α
xchain41_n115_β:
jmp xchain41_n117_α
xchain41_n116_α:
bb175_α:
  .section .rodata
  .Lcall173_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+248]
 mov rdx, qword ptr [r12+249]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+250]
 mov rdx, qword ptr [r12+251]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall173_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n115_β
xchain41_n116_β:
 jmp xchain41_n231_β
xchain41_n117_α:
# IR_EVERY
 jmp xchain41_n118_α
 xchain41_n117_β:
 jmp xchain41_n118_α
xchain41_n118_α:
# IR_LIT_S
bb177_α:
 mov qword ptr [r12 + 2576], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain41_n119_α
 xchain41_n118_β:
 jmp xchain41_n231_β
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "main"
xchain41_n119_α:
xaltg279_a0_start:
# IR_KEYWORD_read
bb178_α:
 mov rdi, qword ptr [rip + .Lx280_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2616], rax
 mov qword ptr [r12 + 2624], rdx
 jmp xaltg279_a0_succ
 xaltg279_a0_beta:
 jmp xaltg279_a1_start
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "&main"
xaltg279_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2600], rax
 mov qword ptr [r12 + 2608], 1
jmp xchain41_n120_α
xaltg279_a1_start:
# IR_LIT_S
bb179_α:
 mov qword ptr [r12 + 2632], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [r12 + 2640], rax
 jmp xaltg279_a1_succ
 xaltg279_a1_beta:
 jmp xchain41_n121_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "[failed]"
xaltg279_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2600], rax
 mov qword ptr [r12 + 2608], 1
jmp xchain41_n120_α
xchain41_n119_β:
jmp xchain41_n121_α
xchain41_n120_α:
bb180_α:
  .section .rodata
  .Lcall178_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+257]
 mov rdx, qword ptr [r12+258]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+259]
 mov rdx, qword ptr [r12+260]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall178_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2648], rax
 mov qword ptr [r12 + 2656], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n119_β
xchain41_n120_β:
 jmp xchain41_n231_β
xchain41_n121_α:
# IR_EVERY
 jmp xchain41_n122_α
 xchain41_n121_β:
 jmp xchain41_n122_α
xchain41_n122_α:
# IR_LIT_S
bb182_α:
 mov qword ptr [r12 + 2664], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [r12 + 2672], rax
 jmp xchain41_n123_α
 xchain41_n122_β:
 jmp xchain41_n231_β
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "mdrag"
xchain41_n123_α:
xaltg287_a0_start:
# IR_KEYWORD_read
bb183_α:
 mov rdi, qword ptr [rip + .Lx288_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xaltg287_a0_succ
 xaltg287_a0_beta:
 jmp xaltg287_a1_start
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "&mdrag"
xaltg287_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2680], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], 1
jmp xchain41_n124_α
xaltg287_a1_start:
# IR_LIT_S
bb184_α:
 mov qword ptr [r12 + 2720], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [r12 + 2728], rax
 jmp xaltg287_a1_succ
 xaltg287_a1_beta:
 jmp xchain41_n125_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "[failed]"
xaltg287_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2680], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], 1
jmp xchain41_n124_α
xchain41_n123_β:
jmp xchain41_n125_α
xchain41_n124_α:
bb185_α:
  .section .rodata
  .Lcall183_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+266]
 mov rdx, qword ptr [r12+267]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+268]
 mov rdx, qword ptr [r12+268]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall183_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n123_β
xchain41_n124_β:
 jmp xchain41_n231_β
xchain41_n125_α:
# IR_EVERY
 jmp xchain41_n126_α
 xchain41_n125_β:
 jmp xchain41_n126_α
xchain41_n126_α:
# IR_LIT_S
bb187_α:
 mov qword ptr [r12 + 2752], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain41_n127_α
 xchain41_n126_β:
 jmp xchain41_n231_β
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "meta"
xchain41_n127_α:
xaltg295_a0_start:
# IR_KEYWORD_read
bb188_α:
 mov rdi, qword ptr [rip + .Lx296_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2792], rax
 mov qword ptr [r12 + 2800], rdx
 jmp xaltg295_a0_succ
 xaltg295_a0_beta:
 jmp xaltg295_a1_start
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "&meta"
xaltg295_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2776], rax
 mov qword ptr [r12 + 2784], 1
jmp xchain41_n128_α
xaltg295_a1_start:
# IR_LIT_S
bb189_α:
 mov qword ptr [r12 + 2808], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 2816], rax
 jmp xaltg295_a1_succ
 xaltg295_a1_beta:
 jmp xchain41_n129_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "[failed]"
xaltg295_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2776], rax
 mov qword ptr [r12 + 2784], 1
jmp xchain41_n128_α
xchain41_n127_β:
jmp xchain41_n129_α
xchain41_n128_α:
bb190_α:
  .section .rodata
  .Lcall188_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+275]
 mov rdx, qword ptr [r12+276]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+276]
 mov rdx, qword ptr [r12+277]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall188_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2824], rax
 mov qword ptr [r12 + 2832], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n127_β
xchain41_n128_β:
 jmp xchain41_n231_β
xchain41_n129_α:
# IR_EVERY
 jmp xchain41_n130_α
 xchain41_n129_β:
 jmp xchain41_n130_α
xchain41_n130_α:
# IR_LIT_S
bb192_α:
 mov qword ptr [r12 + 2840], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [r12 + 2848], rax
 jmp xchain41_n131_α
 xchain41_n130_β:
 jmp xchain41_n231_β
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "mpress"
xchain41_n131_α:
xaltg303_a0_start:
# IR_KEYWORD_read
bb193_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xaltg303_a0_succ
 xaltg303_a0_beta:
 jmp xaltg303_a1_start
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "&mpress"
xaltg303_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2856], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], 1
jmp xchain41_n132_α
xaltg303_a1_start:
# IR_LIT_S
bb194_α:
 mov qword ptr [r12 + 2896], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 2904], rax
 jmp xaltg303_a1_succ
 xaltg303_a1_beta:
 jmp xchain41_n133_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "[failed]"
xaltg303_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2856], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], 1
jmp xchain41_n132_α
xchain41_n131_β:
jmp xchain41_n133_α
xchain41_n132_α:
bb195_α:
  .section .rodata
  .Lcall193_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+284]
 mov rdx, qword ptr [r12+284]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+285]
 mov rdx, qword ptr [r12+286]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall193_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n131_β
xchain41_n132_β:
 jmp xchain41_n231_β
xchain41_n133_α:
# IR_EVERY
 jmp xchain41_n134_α
 xchain41_n133_β:
 jmp xchain41_n134_α
xchain41_n134_α:
# IR_LIT_S
bb197_α:
 mov qword ptr [r12 + 2928], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [r12 + 2936], rax
 jmp xchain41_n135_α
 xchain41_n134_β:
 jmp xchain41_n231_β
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "mrelease"
xchain41_n135_α:
xaltg311_a0_start:
# IR_KEYWORD_read
bb198_α:
 mov rdi, qword ptr [rip + .Lx312_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 2968], rax
 mov qword ptr [r12 + 2976], rdx
 jmp xaltg311_a0_succ
 xaltg311_a0_beta:
 jmp xaltg311_a1_start
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "&mrelease"
xaltg311_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 2952], rax
 mov qword ptr [r12 + 2960], 1
jmp xchain41_n136_α
xaltg311_a1_start:
# IR_LIT_S
bb199_α:
 mov qword ptr [r12 + 2984], 1
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [r12 + 2992], rax
 jmp xaltg311_a1_succ
 xaltg311_a1_beta:
 jmp xchain41_n137_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "[failed]"
xaltg311_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 2952], rax
 mov qword ptr [r12 + 2960], 1
jmp xchain41_n136_α
xchain41_n135_β:
jmp xchain41_n137_α
xchain41_n136_α:
bb200_α:
  .section .rodata
  .Lcall198_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+292]
 mov rdx, qword ptr [r12+293]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+294]
 mov rdx, qword ptr [r12+295]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall198_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3000], rax
 mov qword ptr [r12 + 3008], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n135_β
xchain41_n136_β:
 jmp xchain41_n231_β
xchain41_n137_α:
# IR_EVERY
 jmp xchain41_n138_α
 xchain41_n137_β:
 jmp xchain41_n138_α
xchain41_n138_α:
# IR_LIT_S
bb202_α:
 mov qword ptr [r12 + 3016], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 3024], rax
 jmp xchain41_n139_α
 xchain41_n138_β:
 jmp xchain41_n231_β
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "null"
xchain41_n139_α:
xaltg319_a0_start:
# IR_KEYWORD_null
bb203_α:
 mov qword ptr [r12 + 3056], 0
 mov qword ptr [r12 + 3064], 0
 jmp xaltg319_a0_succ
 xaltg319_a0_beta:
 jmp xaltg319_a1_start
xaltg319_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3032], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], 1
jmp xchain41_n140_α
xaltg319_a1_start:
# IR_LIT_S
bb204_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 3080], rax
 jmp xaltg319_a1_succ
 xaltg319_a1_beta:
 jmp xchain41_n141_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "[failed]"
xaltg319_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3032], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], 1
jmp xchain41_n140_α
xchain41_n139_β:
jmp xchain41_n141_α
xchain41_n140_α:
bb205_α:
  .section .rodata
  .Lcall203_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+301]
 mov rdx, qword ptr [r12+302]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+303]
 mov rdx, qword ptr [r12+304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall203_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n139_β
xchain41_n140_β:
 jmp xchain41_n231_β
xchain41_n141_α:
# IR_EVERY
 jmp xchain41_n142_α
 xchain41_n141_β:
 jmp xchain41_n142_α
xchain41_n142_α:
# IR_LIT_S
bb207_α:
 mov qword ptr [r12 + 3104], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 3112], rax
 jmp xchain41_n143_α
 xchain41_n142_β:
 jmp xchain41_n231_β
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "output"
xchain41_n143_α:
xaltg327_a0_start:
# IR_KEYWORD_read
bb208_α:
 mov rdi, qword ptr [rip + .Lx328_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3144], rax
 mov qword ptr [r12 + 3152], rdx
 jmp xaltg327_a0_succ
 xaltg327_a0_beta:
 jmp xaltg327_a1_start
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "&output"
xaltg327_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3128], rax
 mov qword ptr [r12 + 3136], 1
jmp xchain41_n144_α
xaltg327_a1_start:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 3160], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 3168], rax
 jmp xaltg327_a1_succ
 xaltg327_a1_beta:
 jmp xchain41_n145_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "[failed]"
xaltg327_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3128], rax
 mov qword ptr [r12 + 3136], 1
jmp xchain41_n144_α
xchain41_n143_β:
jmp xchain41_n145_α
xchain41_n144_α:
bb210_α:
  .section .rodata
  .Lcall208_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+310]
 mov rdx, qword ptr [r12+311]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+312]
 mov rdx, qword ptr [r12+312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall208_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3176], rax
 mov qword ptr [r12 + 3184], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n143_β
xchain41_n144_β:
 jmp xchain41_n231_β
xchain41_n145_α:
# IR_EVERY
 jmp xchain41_n146_α
 xchain41_n145_β:
 jmp xchain41_n146_α
xchain41_n146_α:
# IR_LIT_S
bb212_α:
 mov qword ptr [r12 + 3192], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [r12 + 3200], rax
 jmp xchain41_n147_α
 xchain41_n146_β:
 jmp xchain41_n231_β
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "phi"
xchain41_n147_α:
xaltg335_a0_start:
# IR_KEYWORD_read
bb213_α:
 mov rdi, qword ptr [rip + .Lx336_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xaltg335_a0_succ
 xaltg335_a0_beta:
 jmp xaltg335_a1_start
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "&phi"
xaltg335_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3208], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], 1
jmp xchain41_n148_α
xaltg335_a1_start:
# IR_LIT_S
bb214_α:
 mov qword ptr [r12 + 3248], 1
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [r12 + 3256], rax
 jmp xaltg335_a1_succ
 xaltg335_a1_beta:
 jmp xchain41_n149_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "[failed]"
xaltg335_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3208], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], 1
jmp xchain41_n148_α
xchain41_n147_β:
jmp xchain41_n149_α
xchain41_n148_α:
bb215_α:
  .section .rodata
  .Lcall213_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+319]
 mov rdx, qword ptr [r12+320]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+320]
 mov rdx, qword ptr [r12+321]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall213_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n147_β
xchain41_n148_β:
 jmp xchain41_n231_β
xchain41_n149_α:
# IR_EVERY
 jmp xchain41_n150_α
 xchain41_n149_β:
 jmp xchain41_n150_α
xchain41_n150_α:
# IR_LIT_S
bb217_α:
 mov qword ptr [r12 + 3280], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain41_n151_α
 xchain41_n150_β:
 jmp xchain41_n231_β
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "pi"
xchain41_n151_α:
xaltg343_a0_start:
# IR_KEYWORD_read
bb218_α:
 mov rdi, qword ptr [rip + .Lx344_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3320], rax
 mov qword ptr [r12 + 3328], rdx
 jmp xaltg343_a0_succ
 xaltg343_a0_beta:
 jmp xaltg343_a1_start
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "&pi"
xaltg343_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3304], rax
 mov qword ptr [r12 + 3312], 1
jmp xchain41_n152_α
xaltg343_a1_start:
# IR_LIT_S
bb219_α:
 mov qword ptr [r12 + 3336], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 3344], rax
 jmp xaltg343_a1_succ
 xaltg343_a1_beta:
 jmp xchain41_n153_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "[failed]"
xaltg343_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3304], rax
 mov qword ptr [r12 + 3312], 1
jmp xchain41_n152_α
xchain41_n151_β:
jmp xchain41_n153_α
xchain41_n152_α:
bb220_α:
  .section .rodata
  .Lcall218_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+328]
 mov rdx, qword ptr [r12+328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+329]
 mov rdx, qword ptr [r12+330]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall218_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3352], rax
 mov qword ptr [r12 + 3360], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n151_β
xchain41_n152_β:
 jmp xchain41_n231_β
xchain41_n153_α:
# IR_EVERY
 jmp xchain41_n154_α
 xchain41_n153_β:
 jmp xchain41_n154_α
xchain41_n154_α:
# IR_LIT_S
bb222_α:
 mov qword ptr [r12 + 3368], 1
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [r12 + 3376], rax
 jmp xchain41_n155_α
 xchain41_n154_β:
 jmp xchain41_n231_β
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "pos"
xchain41_n155_α:
xaltg351_a0_start:
# IR_KEYWORD_pos_call
bb223_α:
 call rt_keyword_pos@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 jmp xaltg351_a0_succ
 xaltg351_a0_beta:
 jmp xaltg351_a1_start
xaltg351_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 3384], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], 1
jmp xchain41_n156_α
xaltg351_a1_start:
# IR_LIT_S
bb224_α:
 mov qword ptr [r12 + 3424], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 3432], rax
 jmp xaltg351_a1_succ
 xaltg351_a1_beta:
 jmp xchain41_n157_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "[failed]"
xaltg351_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3384], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], 1
jmp xchain41_n156_α
xchain41_n155_β:
jmp xchain41_n157_α
xchain41_n156_α:
bb225_α:
  .section .rodata
  .Lcall223_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+336]
 mov rdx, qword ptr [r12+337]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+338]
 mov rdx, qword ptr [r12+339]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall223_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n155_β
xchain41_n156_β:
 jmp xchain41_n231_β
xchain41_n157_α:
# IR_EVERY
 jmp xchain41_n158_α
 xchain41_n157_β:
 jmp xchain41_n158_α
xchain41_n158_α:
# IR_LIT_S
bb227_α:
 mov qword ptr [r12 + 3456], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 3464], rax
 jmp xchain41_n159_α
 xchain41_n158_β:
 jmp xchain41_n231_β
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "progname"
xchain41_n159_α:
xaltg359_a0_start:
# IR_KEYWORD_read
bb228_α:
 mov rdi, qword ptr [rip + .Lx360_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3496], rax
 mov qword ptr [r12 + 3504], rdx
 jmp xaltg359_a0_succ
 xaltg359_a0_beta:
 jmp xaltg359_a1_start
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "&progname"
xaltg359_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 3472], rax
 mov rax, qword ptr [r12 + 3504]
 mov qword ptr [r12 + 3480], rax
 mov qword ptr [r12 + 3488], 1
jmp xchain41_n160_α
xaltg359_a1_start:
# IR_LIT_S
bb229_α:
 mov qword ptr [r12 + 3512], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [r12 + 3520], rax
 jmp xaltg359_a1_succ
 xaltg359_a1_beta:
 jmp xchain41_n161_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "[failed]"
xaltg359_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3512]
 mov qword ptr [r12 + 3472], rax
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3480], rax
 mov qword ptr [r12 + 3488], 1
jmp xchain41_n160_α
xchain41_n159_β:
jmp xchain41_n161_α
xchain41_n160_α:
bb230_α:
  .section .rodata
  .Lcall228_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+345]
 mov rdx, qword ptr [r12+346]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+347]
 mov rdx, qword ptr [r12+348]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall228_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3528], rax
 mov qword ptr [r12 + 3536], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n159_β
xchain41_n160_β:
 jmp xchain41_n231_β
xchain41_n161_α:
# IR_EVERY
 jmp xchain41_n162_α
 xchain41_n161_β:
 jmp xchain41_n162_α
xchain41_n162_α:
# IR_LIT_S
bb232_α:
 mov qword ptr [r12 + 3544], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [r12 + 3552], rax
 jmp xchain41_n163_α
 xchain41_n162_β:
 jmp xchain41_n231_β
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "random"
xchain41_n163_α:
xaltg367_a0_start:
# IR_KEYWORD_read
bb233_α:
 mov rdi, qword ptr [rip + .Lx368_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xaltg367_a0_succ
 xaltg367_a0_beta:
 jmp xaltg367_a1_start
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "&random"
xaltg367_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3560], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], 1
jmp xchain41_n164_α
xaltg367_a1_start:
# IR_LIT_S
bb234_α:
 mov qword ptr [r12 + 3600], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [r12 + 3608], rax
 jmp xaltg367_a1_succ
 xaltg367_a1_beta:
 jmp xchain41_n165_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "[failed]"
xaltg367_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 3560], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], 1
jmp xchain41_n164_α
xchain41_n163_β:
jmp xchain41_n165_α
xchain41_n164_α:
bb235_α:
  .section .rodata
  .Lcall233_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+354]
 mov rdx, qword ptr [r12+355]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+356]
 mov rdx, qword ptr [r12+356]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall233_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n163_β
xchain41_n164_β:
 jmp xchain41_n231_β
xchain41_n165_α:
# IR_EVERY
 jmp xchain41_n166_α
 xchain41_n165_β:
 jmp xchain41_n166_α
xchain41_n166_α:
# IR_LIT_S
bb237_α:
 mov qword ptr [r12 + 3632], 1
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain41_n167_α
 xchain41_n166_β:
 jmp xchain41_n231_β
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "rdrag"
xchain41_n167_α:
xaltg375_a0_start:
# IR_KEYWORD_read
bb238_α:
 mov rdi, qword ptr [rip + .Lx376_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3672], rax
 mov qword ptr [r12 + 3680], rdx
 jmp xaltg375_a0_succ
 xaltg375_a0_beta:
 jmp xaltg375_a1_start
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "&rdrag"
xaltg375_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3656], rax
 mov qword ptr [r12 + 3664], 1
jmp xchain41_n168_α
xaltg375_a1_start:
# IR_LIT_S
bb239_α:
 mov qword ptr [r12 + 3688], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 3696], rax
 jmp xaltg375_a1_succ
 xaltg375_a1_beta:
 jmp xchain41_n169_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "[failed]"
xaltg375_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3656], rax
 mov qword ptr [r12 + 3664], 1
jmp xchain41_n168_α
xchain41_n167_β:
jmp xchain41_n169_α
xchain41_n168_α:
bb240_α:
  .section .rodata
  .Lcall238_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+363]
 mov rdx, qword ptr [r12+364]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+364]
 mov rdx, qword ptr [r12+365]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall238_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3704], rax
 mov qword ptr [r12 + 3712], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n167_β
xchain41_n168_β:
 jmp xchain41_n231_β
xchain41_n169_α:
# IR_EVERY
 jmp xchain41_n170_α
 xchain41_n169_β:
 jmp xchain41_n170_α
xchain41_n170_α:
# IR_LIT_S
bb242_α:
 mov qword ptr [r12 + 3720], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 3728], rax
 jmp xchain41_n171_α
 xchain41_n170_β:
 jmp xchain41_n231_β
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "regions"
xchain41_n171_α:
xaltg383_a0_start:
# IR_KEYWORD_read
bb243_α:
 mov rdi, qword ptr [rip + .Lx384_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 jmp xaltg383_a0_succ
 xaltg383_a0_beta:
 jmp xaltg383_a1_start
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "&regions"
xaltg383_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3760]
 mov qword ptr [r12 + 3736], rax
 mov rax, qword ptr [r12 + 3768]
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], 1
jmp xchain41_n172_α
xaltg383_a1_start:
# IR_LIT_S
bb244_α:
 mov qword ptr [r12 + 3776], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [r12 + 3784], rax
 jmp xaltg383_a1_succ
 xaltg383_a1_beta:
 jmp xchain41_n173_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "[failed]"
xaltg383_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3776]
 mov qword ptr [r12 + 3736], rax
 mov rax, qword ptr [r12 + 3784]
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], 1
jmp xchain41_n172_α
xchain41_n171_β:
jmp xchain41_n173_α
xchain41_n172_α:
bb245_α:
  .section .rodata
  .Lcall243_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+372]
 mov rdx, qword ptr [r12+372]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+373]
 mov rdx, qword ptr [r12+374]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall243_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n171_β
xchain41_n172_β:
 jmp xchain41_n231_β
xchain41_n173_α:
# IR_EVERY
 jmp xchain41_n174_α
 xchain41_n173_β:
 jmp xchain41_n174_α
xchain41_n174_α:
# IR_LIT_S
bb247_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain41_n175_α
 xchain41_n174_β:
 jmp xchain41_n231_β
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "resize"
xchain41_n175_α:
xaltg391_a0_start:
# IR_KEYWORD_read
bb248_α:
 mov rdi, qword ptr [rip + .Lx392_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3848], rax
 mov qword ptr [r12 + 3856], rdx
 jmp xaltg391_a0_succ
 xaltg391_a0_beta:
 jmp xaltg391_a1_start
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "&resize"
xaltg391_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3824], rax
 mov rax, qword ptr [r12 + 3856]
 mov qword ptr [r12 + 3832], rax
 mov qword ptr [r12 + 3840], 1
jmp xchain41_n176_α
xaltg391_a1_start:
# IR_LIT_S
bb249_α:
 mov qword ptr [r12 + 3864], 1
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [r12 + 3872], rax
 jmp xaltg391_a1_succ
 xaltg391_a1_beta:
 jmp xchain41_n177_α
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "[failed]"
xaltg391_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3864]
 mov qword ptr [r12 + 3824], rax
 mov rax, qword ptr [r12 + 3872]
 mov qword ptr [r12 + 3832], rax
 mov qword ptr [r12 + 3840], 1
jmp xchain41_n176_α
xchain41_n175_β:
jmp xchain41_n177_α
xchain41_n176_α:
bb250_α:
  .section .rodata
  .Lcall248_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+380]
 mov rdx, qword ptr [r12+381]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+382]
 mov rdx, qword ptr [r12+383]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall248_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3880], rax
 mov qword ptr [r12 + 3888], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n175_β
xchain41_n176_β:
 jmp xchain41_n231_β
xchain41_n177_α:
# IR_EVERY
 jmp xchain41_n178_α
 xchain41_n177_β:
 jmp xchain41_n178_α
xchain41_n178_α:
# IR_LIT_S
bb252_α:
 mov qword ptr [r12 + 3896], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [r12 + 3904], rax
 jmp xchain41_n179_α
 xchain41_n178_β:
 jmp xchain41_n231_β
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "row"
xchain41_n179_α:
xaltg399_a0_start:
# IR_KEYWORD_read
bb253_α:
 mov rdi, qword ptr [rip + .Lx400_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 jmp xaltg399_a0_succ
 xaltg399_a0_beta:
 jmp xaltg399_a1_start
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "&row"
xaltg399_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3936]
 mov qword ptr [r12 + 3912], rax
 mov rax, qword ptr [r12 + 3944]
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], 1
jmp xchain41_n180_α
xaltg399_a1_start:
# IR_LIT_S
bb254_α:
 mov qword ptr [r12 + 3952], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [r12 + 3960], rax
 jmp xaltg399_a1_succ
 xaltg399_a1_beta:
 jmp xchain41_n181_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "[failed]"
xaltg399_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3952]
 mov qword ptr [r12 + 3912], rax
 mov rax, qword ptr [r12 + 3960]
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], 1
jmp xchain41_n180_α
xchain41_n179_β:
jmp xchain41_n181_α
xchain41_n180_α:
bb255_α:
  .section .rodata
  .Lcall253_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+389]
 mov rdx, qword ptr [r12+390]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+391]
 mov rdx, qword ptr [r12+392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall253_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n179_β
xchain41_n180_β:
 jmp xchain41_n231_β
xchain41_n181_α:
# IR_EVERY
 jmp xchain41_n182_α
 xchain41_n181_β:
 jmp xchain41_n182_α
xchain41_n182_α:
# IR_LIT_S
bb257_α:
 mov qword ptr [r12 + 3984], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain41_n183_α
 xchain41_n182_β:
 jmp xchain41_n231_β
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "rpress"
xchain41_n183_α:
xaltg407_a0_start:
# IR_KEYWORD_read
bb258_α:
 mov rdi, qword ptr [rip + .Lx408_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4024], rax
 mov qword ptr [r12 + 4032], rdx
 jmp xaltg407_a0_succ
 xaltg407_a0_beta:
 jmp xaltg407_a1_start
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "&rpress"
xaltg407_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4008], rax
 mov qword ptr [r12 + 4016], 1
jmp xchain41_n184_α
xaltg407_a1_start:
# IR_LIT_S
bb259_α:
 mov qword ptr [r12 + 4040], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 4048], rax
 jmp xaltg407_a1_succ
 xaltg407_a1_beta:
 jmp xchain41_n185_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "[failed]"
xaltg407_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 4008], rax
 mov qword ptr [r12 + 4016], 1
jmp xchain41_n184_α
xchain41_n183_β:
jmp xchain41_n185_α
xchain41_n184_α:
bb260_α:
  .section .rodata
  .Lcall258_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+398]
 mov rdx, qword ptr [r12+399]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+400]
 mov rdx, qword ptr [r12+400]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall258_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4056], rax
 mov qword ptr [r12 + 4064], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n183_β
xchain41_n184_β:
 jmp xchain41_n231_β
xchain41_n185_α:
# IR_EVERY
 jmp xchain41_n186_α
 xchain41_n185_β:
 jmp xchain41_n186_α
xchain41_n186_α:
# IR_LIT_S
bb262_α:
 mov qword ptr [r12 + 4072], 1
 mov rax, qword ptr [rip + .Lx414_0]
 mov qword ptr [r12 + 4080], rax
 jmp xchain41_n187_α
 xchain41_n186_β:
 jmp xchain41_n231_β
.Lx414_0:
 .quad .Lx414_0_s
.Lx414_0_s:
 .string "rrelease"
xchain41_n187_α:
xaltg415_a0_start:
# IR_KEYWORD_read
bb263_α:
 mov rdi, qword ptr [rip + .Lx416_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xaltg415_a0_succ
 xaltg415_a0_beta:
 jmp xaltg415_a1_start
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "&rrelease"
xaltg415_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4088], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], 1
jmp xchain41_n188_α
xaltg415_a1_start:
# IR_LIT_S
bb264_α:
 mov qword ptr [r12 + 4128], 1
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [r12 + 4136], rax
 jmp xaltg415_a1_succ
 xaltg415_a1_beta:
 jmp xchain41_n189_α
.Lx418_0:
 .quad .Lx418_0_s
.Lx418_0_s:
 .string "[failed]"
xaltg415_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4128]
 mov qword ptr [r12 + 4088], rax
 mov rax, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], 1
jmp xchain41_n188_α
xchain41_n187_β:
jmp xchain41_n189_α
xchain41_n188_α:
bb265_α:
  .section .rodata
  .Lcall263_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+407]
 mov rdx, qword ptr [r12+408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+408]
 mov rdx, qword ptr [r12+409]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall263_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4144], rax
 mov qword ptr [r12 + 4152], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n187_β
xchain41_n188_β:
 jmp xchain41_n231_β
xchain41_n189_α:
# IR_EVERY
 jmp xchain41_n190_α
 xchain41_n189_β:
 jmp xchain41_n190_α
xchain41_n190_α:
# IR_LIT_S
bb267_α:
 mov qword ptr [r12 + 4160], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 4168], rax
 jmp xchain41_n191_α
 xchain41_n190_β:
 jmp xchain41_n231_β
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "shift"
xchain41_n191_α:
xaltg423_a0_start:
# IR_KEYWORD_read
bb268_α:
 mov rdi, qword ptr [rip + .Lx424_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4200], rax
 mov qword ptr [r12 + 4208], rdx
 jmp xaltg423_a0_succ
 xaltg423_a0_beta:
 jmp xaltg423_a1_start
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "&shift"
xaltg423_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4184], rax
 mov qword ptr [r12 + 4192], 1
jmp xchain41_n192_α
xaltg423_a1_start:
# IR_LIT_S
bb269_α:
 mov qword ptr [r12 + 4216], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [r12 + 4224], rax
 jmp xaltg423_a1_succ
 xaltg423_a1_beta:
 jmp xchain41_n193_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "[failed]"
xaltg423_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4184], rax
 mov qword ptr [r12 + 4192], 1
jmp xchain41_n192_α
xchain41_n191_β:
jmp xchain41_n193_α
xchain41_n192_α:
bb270_α:
  .section .rodata
  .Lcall268_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+417]
 mov rdx, qword ptr [r12+418]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall268_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4232], rax
 mov qword ptr [r12 + 4240], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n191_β
xchain41_n192_β:
 jmp xchain41_n231_β
xchain41_n193_α:
# IR_EVERY
 jmp xchain41_n194_α
 xchain41_n193_β:
 jmp xchain41_n194_α
xchain41_n194_α:
# IR_LIT_S
bb272_α:
 mov qword ptr [r12 + 4248], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [r12 + 4256], rax
 jmp xchain41_n195_α
 xchain41_n194_β:
 jmp xchain41_n231_β
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "source"
xchain41_n195_α:
xaltg431_a0_start:
# IR_KEYWORD_read
bb273_α:
 mov rdi, qword ptr [rip + .Lx432_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xaltg431_a0_succ
 xaltg431_a0_beta:
 jmp xaltg431_a1_start
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "&source"
xaltg431_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4264], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], 1
jmp xchain41_n196_α
xaltg431_a1_start:
# IR_LIT_S
bb274_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [r12 + 4312], rax
 jmp xaltg431_a1_succ
 xaltg431_a1_beta:
 jmp xchain41_n197_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "[failed]"
xaltg431_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4264], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], 1
jmp xchain41_n196_α
xchain41_n195_β:
jmp xchain41_n197_α
xchain41_n196_α:
bb275_α:
  .section .rodata
  .Lcall273_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+424]
 mov rdx, qword ptr [r12+425]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+426]
 mov rdx, qword ptr [r12+427]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall273_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n195_β
xchain41_n196_β:
 jmp xchain41_n231_β
xchain41_n197_α:
# IR_EVERY
 jmp xchain41_n198_α
 xchain41_n197_β:
 jmp xchain41_n198_α
xchain41_n198_α:
# IR_LIT_S
bb277_α:
 mov qword ptr [r12 + 4336], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain41_n199_α
 xchain41_n198_β:
 jmp xchain41_n231_β
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "storage"
xchain41_n199_α:
xaltg439_a0_start:
# IR_KEYWORD_read
bb278_α:
 mov rdi, qword ptr [rip + .Lx440_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4376], rax
 mov qword ptr [r12 + 4384], rdx
 jmp xaltg439_a0_succ
 xaltg439_a0_beta:
 jmp xaltg439_a1_start
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "&storage"
xaltg439_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4352], rax
 mov rax, qword ptr [r12 + 4384]
 mov qword ptr [r12 + 4360], rax
 mov qword ptr [r12 + 4368], 1
jmp xchain41_n200_α
xaltg439_a1_start:
# IR_LIT_S
bb279_α:
 mov qword ptr [r12 + 4392], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 4400], rax
 jmp xaltg439_a1_succ
 xaltg439_a1_beta:
 jmp xchain41_n201_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "[failed]"
xaltg439_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4392]
 mov qword ptr [r12 + 4352], rax
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4360], rax
 mov qword ptr [r12 + 4368], 1
jmp xchain41_n200_α
xchain41_n199_β:
jmp xchain41_n201_α
xchain41_n200_α:
bb280_α:
  .section .rodata
  .Lcall278_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+433]
 mov rdx, qword ptr [r12+434]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+435]
 mov rdx, qword ptr [r12+436]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall278_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4408], rax
 mov qword ptr [r12 + 4416], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n199_β
xchain41_n200_β:
 jmp xchain41_n231_β
xchain41_n201_α:
# IR_EVERY
 jmp xchain41_n202_α
 xchain41_n201_β:
 jmp xchain41_n202_α
xchain41_n202_α:
# IR_LIT_S
bb282_α:
 mov qword ptr [r12 + 4424], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 4432], rax
 jmp xchain41_n203_α
 xchain41_n202_β:
 jmp xchain41_n231_β
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "subject"
xchain41_n203_α:
xaltg447_a0_start:
# IR_KEYWORD_subject_call
bb283_α:
 call rt_keyword_subject@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 jmp xaltg447_a0_succ
 xaltg447_a0_beta:
 jmp xaltg447_a1_start
xaltg447_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4464]
 mov qword ptr [r12 + 4440], rax
 mov rax, qword ptr [r12 + 4472]
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], 1
jmp xchain41_n204_α
xaltg447_a1_start:
# IR_LIT_S
bb284_α:
 mov qword ptr [r12 + 4480], 1
 mov rax, qword ptr [rip + .Lx450_0]
 mov qword ptr [r12 + 4488], rax
 jmp xaltg447_a1_succ
 xaltg447_a1_beta:
 jmp xchain41_n205_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "[failed]"
xaltg447_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4440], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], 1
jmp xchain41_n204_α
xchain41_n203_β:
jmp xchain41_n205_α
xchain41_n204_α:
bb285_α:
  .section .rodata
  .Lcall283_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+442]
 mov rdx, qword ptr [r12+443]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+444]
 mov rdx, qword ptr [r12+444]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall283_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n203_β
xchain41_n204_β:
 jmp xchain41_n231_β
xchain41_n205_α:
# IR_EVERY
 jmp xchain41_n206_α
 xchain41_n205_β:
 jmp xchain41_n206_α
xchain41_n206_α:
# IR_LIT_S
bb287_α:
 mov qword ptr [r12 + 4512], 1
 mov rax, qword ptr [rip + .Lx454_0]
 mov qword ptr [r12 + 4520], rax
 jmp xchain41_n207_α
 xchain41_n206_β:
 jmp xchain41_n231_β
.Lx454_0:
 .quad .Lx454_0_s
.Lx454_0_s:
 .string "time"
xchain41_n207_α:
xaltg455_a0_start:
xargsub457_n0_α:
bb288_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+4568] -> [r12+4568]
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4568], rax
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 4576], rax
# marshal arg1 = LIT_I -> [r12+4584]
 mov qword ptr [r12 + 4584], 6
 movabs rax, 4
 mov qword ptr [r12 + 4592], rax
# marshal arg2 = LIT_I -> [r12+4600]
 mov qword ptr [r12 + 4600], 6
 movabs rax, 0
 mov qword ptr [r12 + 4608], rax
  .section .rodata
  .Lrkfn459: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn459]
 lea rsi, [r12 + 4568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4552], rax
 mov qword ptr [r12 + 4560], rdx
 cmp eax, 99
 je xaltg455_a1_start
 jmp xicnarg456_done
 xargsub457_n0_β:
 jmp xaltg455_a1_start
xicnarg456_done:
bb289_α:
  .section .rodata
  .Lcall287_pname: .string "nmap"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+455]
 mov rdx, qword ptr [r12+456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall287_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4616], rax
 mov qword ptr [r12 + 4624], rdx
 cmp eax, 99
 je xaltg455_a1_start
 jmp xaltg455_a0_succ
xaltg455_a0_beta:
 jmp xaltg455_a1_start
xaltg455_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4536], rax
 mov qword ptr [r12 + 4544], 1
jmp xchain41_n208_α
xaltg455_a1_start:
# IR_LIT_S
bb290_α:
 mov qword ptr [r12 + 4632], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [r12 + 4640], rax
 jmp xaltg455_a1_succ
 xaltg455_a1_beta:
 jmp xchain41_n209_α
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "[failed]"
xaltg455_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4536], rax
 mov qword ptr [r12 + 4544], 1
jmp xchain41_n208_α
xchain41_n207_β:
jmp xchain41_n209_α
xchain41_n208_α:
bb291_α:
  .section .rodata
  .Lcall289_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+451]
 mov rdx, qword ptr [r12+452]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+452]
 mov rdx, qword ptr [r12+453]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall289_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4648], rax
 mov qword ptr [r12 + 4656], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n207_β
xchain41_n208_β:
 jmp xchain41_n231_β
xchain41_n209_α:
# IR_EVERY
 jmp xchain41_n210_α
 xchain41_n209_β:
 jmp xchain41_n210_α
xchain41_n210_α:
# IR_LIT_S
bb293_α:
 mov qword ptr [r12 + 4664], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [r12 + 4672], rax
 jmp xchain41_n211_α
 xchain41_n210_β:
 jmp xchain41_n231_β
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "trace"
xchain41_n211_α:
xaltg467_a0_start:
# IR_KEYWORD_read
bb294_α:
 mov rdi, qword ptr [rip + .Lx468_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 jmp xaltg467_a0_succ
 xaltg467_a0_beta:
 jmp xaltg467_a1_start
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "&trace"
xaltg467_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4704]
 mov qword ptr [r12 + 4680], rax
 mov rax, qword ptr [r12 + 4712]
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], 1
jmp xchain41_n212_α
xaltg467_a1_start:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 4720], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [r12 + 4728], rax
 jmp xaltg467_a1_succ
 xaltg467_a1_beta:
 jmp xchain41_n213_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "[failed]"
xaltg467_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4680], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], 1
jmp xchain41_n212_α
xchain41_n211_β:
jmp xchain41_n213_α
xchain41_n212_α:
bb296_α:
  .section .rodata
  .Lcall294_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+466]
 mov rdx, qword ptr [r12+467]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+468]
 mov rdx, qword ptr [r12+468]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall294_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n211_β
xchain41_n212_β:
 jmp xchain41_n231_β
xchain41_n213_α:
# IR_EVERY
 jmp xchain41_n214_α
 xchain41_n213_β:
 jmp xchain41_n214_α
xchain41_n214_α:
# IR_LIT_S
bb298_α:
 mov qword ptr [r12 + 4752], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [r12 + 4760], rax
 jmp xchain41_n215_α
 xchain41_n214_β:
 jmp xchain41_n231_β
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "ucase"
xchain41_n215_α:
xaltg475_a0_start:
# IR_KEYWORD_read
bb299_α:
 mov rdi, qword ptr [rip + .Lx476_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 4792], rax
 mov qword ptr [r12 + 4800], rdx
 jmp xaltg475_a0_succ
 xaltg475_a0_beta:
 jmp xaltg475_a1_start
.Lx476_0:
 .quad .Lx476_0_s
.Lx476_0_s:
 .string "&ucase"
xaltg475_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4776], rax
 mov qword ptr [r12 + 4784], 1
jmp xchain41_n216_α
xaltg475_a1_start:
# IR_LIT_S
bb300_α:
 mov qword ptr [r12 + 4808], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [r12 + 4816], rax
 jmp xaltg475_a1_succ
 xaltg475_a1_beta:
 jmp xchain41_n217_α
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "[failed]"
xaltg475_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4776], rax
 mov qword ptr [r12 + 4784], 1
jmp xchain41_n216_α
xchain41_n215_β:
jmp xchain41_n217_α
xchain41_n216_α:
bb301_α:
  .section .rodata
  .Lcall299_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+475]
 mov rdx, qword ptr [r12+476]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+476]
 mov rdx, qword ptr [r12+477]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall299_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4824], rax
 mov qword ptr [r12 + 4832], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n215_β
xchain41_n216_β:
 jmp xchain41_n231_β
xchain41_n217_α:
# IR_EVERY
 jmp xchain41_n218_α
 xchain41_n217_β:
 jmp xchain41_n218_α
xchain41_n218_α:
# IR_LIT_S
bb303_α:
 mov qword ptr [r12 + 4840], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [r12 + 4848], rax
 jmp xchain41_n219_α
 xchain41_n218_β:
 jmp xchain41_n231_β
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "version"
xchain41_n219_α:
xaltg483_a0_start:
bb304_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+4896] -> [r12+4896]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4896], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4904], rax
# marshal arg1 = LIT_I -> [r12+4912]
 mov qword ptr [r12 + 4912], 6
 movabs rax, 16
 mov qword ptr [r12 + 4920], rax
  .section .rodata
  .Lrkfn485: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn485]
 lea rsi, [r12 + 4896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4880], rax
 mov qword ptr [r12 + 4888], rdx
 cmp eax, 99
 je xaltg483_a1_start
 jmp xaltg483_a0_succ
 xaltg483_a0_beta:
 jmp xaltg483_a1_start
xaltg483_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4856], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], 1
jmp xchain41_n220_α
xaltg483_a1_start:
# IR_LIT_S
bb305_α:
 mov qword ptr [r12 + 4928], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [r12 + 4936], rax
 jmp xaltg483_a1_succ
 xaltg483_a1_beta:
 jmp xchain41_n221_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "[failed]"
xaltg483_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4928]
 mov qword ptr [r12 + 4856], rax
 mov rax, qword ptr [r12 + 4936]
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], 1
jmp xchain41_n220_α
xchain41_n219_β:
jmp xchain41_n221_α
xchain41_n220_α:
bb306_α:
  .section .rodata
  .Lcall304_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+484]
 mov rdx, qword ptr [r12+484]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+485]
 mov rdx, qword ptr [r12+486]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall304_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n219_β
xchain41_n220_β:
 jmp xchain41_n231_β
xchain41_n221_α:
# IR_EVERY
 jmp xchain41_n222_α
 xchain41_n221_β:
 jmp xchain41_n222_α
xchain41_n222_α:
# IR_LIT_S
bb308_α:
 mov qword ptr [r12 + 4960], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [r12 + 4968], rax
 jmp xchain41_n223_α
 xchain41_n222_β:
 jmp xchain41_n231_β
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "window"
xchain41_n223_α:
xaltg492_a0_start:
# IR_KEYWORD_read
bb309_α:
 mov rdi, qword ptr [rip + .Lx493_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 5000], rax
 mov qword ptr [r12 + 5008], rdx
 jmp xaltg492_a0_succ
 xaltg492_a0_beta:
 jmp xaltg492_a1_start
.Lx493_0:
 .quad .Lx493_0_s
.Lx493_0_s:
 .string "&window"
xaltg492_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 5000]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 5008]
 mov qword ptr [r12 + 4984], rax
 mov qword ptr [r12 + 4992], 1
jmp xchain41_n224_α
xaltg492_a1_start:
# IR_LIT_S
bb310_α:
 mov qword ptr [r12 + 5016], 1
 mov rax, qword ptr [rip + .Lx495_0]
 mov qword ptr [r12 + 5024], rax
 jmp xaltg492_a1_succ
 xaltg492_a1_beta:
 jmp xchain41_n225_α
.Lx495_0:
 .quad .Lx495_0_s
.Lx495_0_s:
 .string "[failed]"
xaltg492_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 5024]
 mov qword ptr [r12 + 4984], rax
 mov qword ptr [r12 + 4992], 1
jmp xchain41_n224_α
xchain41_n223_β:
jmp xchain41_n225_α
xchain41_n224_α:
bb311_α:
  .section .rodata
  .Lcall309_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+496]
 mov rdx, qword ptr [r12+496]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+497]
 mov rdx, qword ptr [r12+498]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall309_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5032], rax
 mov qword ptr [r12 + 5040], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n223_β
xchain41_n224_β:
 jmp xchain41_n231_β
xchain41_n225_α:
# IR_EVERY
 jmp xchain41_n226_α
 xchain41_n225_β:
 jmp xchain41_n226_α
xchain41_n226_α:
# IR_LIT_S
bb313_α:
 mov qword ptr [r12 + 5048], 1
 mov rax, qword ptr [rip + .Lx499_0]
 mov qword ptr [r12 + 5056], rax
 jmp xchain41_n227_α
 xchain41_n226_β:
 jmp xchain41_n231_β
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "x"
xchain41_n227_α:
xaltg500_a0_start:
# IR_KEYWORD_read
bb314_α:
 mov rdi, qword ptr [rip + .Lx501_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xaltg500_a0_succ
 xaltg500_a0_beta:
 jmp xaltg500_a1_start
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "&x"
xaltg500_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5064], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], 1
jmp xchain41_n228_α
xaltg500_a1_start:
# IR_LIT_S
bb315_α:
 mov qword ptr [r12 + 5104], 1
 mov rax, qword ptr [rip + .Lx503_0]
 mov qword ptr [r12 + 5112], rax
 jmp xaltg500_a1_succ
 xaltg500_a1_beta:
 jmp xchain41_n229_α
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "[failed]"
xaltg500_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 5104]
 mov qword ptr [r12 + 5064], rax
 mov rax, qword ptr [r12 + 5112]
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], 1
jmp xchain41_n228_α
xchain41_n227_β:
jmp xchain41_n229_α
xchain41_n228_α:
bb316_α:
  .section .rodata
  .Lcall314_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+504]
 mov rdx, qword ptr [r12+505]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+506]
 mov rdx, qword ptr [r12+507]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall314_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n227_β
xchain41_n228_β:
 jmp xchain41_n231_β
xchain41_n229_α:
# IR_EVERY
 jmp xchain41_n230_α
 xchain41_n229_β:
 jmp xchain41_n230_α
xchain41_n230_α:
# IR_LIT_S
bb318_α:
 mov qword ptr [r12 + 5136], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [r12 + 5144], rax
 jmp xchain41_n231_α
 xchain41_n230_β:
 jmp xchain41_n231_β
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "y"
xchain41_n231_α:
xaltg508_a0_start:
# IR_KEYWORD_read
bb319_α:
 mov rdi, qword ptr [rip + .Lx509_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 5176], rax
 mov qword ptr [r12 + 5184], rdx
 jmp xaltg508_a0_succ
 xaltg508_a0_beta:
 jmp xaltg508_a1_start
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "&y"
xaltg508_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 5176]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5184]
 mov qword ptr [r12 + 5160], rax
 mov qword ptr [r12 + 5168], 1
jmp xchain41_n232_α
xaltg508_a1_start:
# IR_LIT_S
bb320_α:
 mov qword ptr [r12 + 5192], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [r12 + 5200], rax
 jmp xaltg508_a1_succ
 xaltg508_a1_beta:
 jmp xchain41_n233_α
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "[failed]"
xaltg508_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 5192]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5200]
 mov qword ptr [r12 + 5160], rax
 mov qword ptr [r12 + 5168], 1
jmp xchain41_n232_α
xchain41_n231_β:
jmp xchain41_n233_α
xchain41_n232_α:
bb321_α:
  .section .rodata
  .Lcall319_pname: .string "kw"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+513]
 mov rdx, qword ptr [r12+514]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+515]
 mov rdx, qword ptr [r12+516]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall319_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5208], rax
 mov qword ptr [r12 + 5216], rdx
 cmp eax, 99
 je xchain41_n231_β
 jmp xchain41_n231_β
xchain41_n232_β:
 jmp xchain41_n231_β
xchain41_n233_α:
# IR_EVERY
 jmp main_ω
 xchain41_n233_β:
 jmp main_ω
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
.S0: .string "bb_assign_local: needs descr flat-chain + rhs slot + varslot + own slot"
.S1: .string "bb_repalt_yield: sub-expression value slot not materialised"
.S2: .string "bb_binop_relop: shape mismatch"
.text
