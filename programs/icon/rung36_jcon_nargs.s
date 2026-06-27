  .intel_syntax noprefix
  .text
  .globl proc_nargs_α
proc_nargs_α:
#=======================================================================================================================
    .global proc_nargs_α
    .global proc_nargs_β
    .global proc_nargs_γ
    .global proc_nargs_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_nargs_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+96]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lcallfn2: .string "args"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn2]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
# marshal arg1 = LIT_I -> [r12+80]
 mov qword ptr [r12 + 80], 6
 movabs rax, 3
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn3: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn3]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_nargs_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_nargs_ω
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_nargs_ω
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string " "
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_nargs_ω
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+224]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lcallfn8: .string "args"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn8]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
# marshal arg1 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 3
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lcallfn9: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn9]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx7_2]
 mov qword ptr [r12 + 168], rax
 jmp .Lx7_3
.Lx7_2:
 .quad .Lx7_2_s
.Lx7_2_s:
 .string " "
.Lx7_3:
# marshal arg2 = varslot [r12+32] -> [r12+176]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn10: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_nargs_ω
 jmp proc_nargs_γ
 xchain0_n3_β:
 jmp proc_nargs_ω
proc_nargs_β:
jmp proc_nargs_ω
proc_nargs_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_nargs_ω:
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
  .Lstartup_pname0: .string "nargs"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_nargs_α]
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
xchain11_n0_α:
xargsub13_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg12_done:
xargsub17_n0_α:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg16_done
 xargsub17_n0_β:
 jmp xchain11_n1_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "abs"
xicnarg16_done:
bb7_α:
  .section .rodata
  .Lcall8_pname: .string "nargs"
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
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain11_n1_α
 jmp xchain11_n1_α
xchain11_n0_β:
 jmp xchain11_n1_α
xchain11_n1_α:
xargsub21_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg20_done:
xargsub25_n0_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg24_done
 xargsub25_n0_β:
 jmp xchain11_n2_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "acos"
xicnarg24_done:
bb10_α:
  .section .rodata
  .Lcall11_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain11_n2_α
 jmp xchain11_n2_α
xchain11_n1_β:
 jmp xchain11_n2_α
xchain11_n2_α:
xargsub29_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg28_done:
xargsub33_n0_α:
# IR_LIT_S
bb12_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg32_done
 xargsub33_n0_β:
 jmp xchain11_n3_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "any"
xicnarg32_done:
bb13_α:
  .section .rodata
  .Lcall14_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall14_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain11_n3_α
 jmp xchain11_n3_α
xchain11_n2_β:
 jmp xchain11_n3_α
xchain11_n3_α:
xargsub37_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg36_done:
xargsub41_n0_α:
# IR_LIT_S
bb15_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg40_done
 xargsub41_n0_β:
 jmp xchain11_n4_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "args"
xicnarg40_done:
bb16_α:
  .section .rodata
  .Lcall17_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall17_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain11_n4_α
 jmp xchain11_n4_α
xchain11_n3_β:
 jmp xchain11_n4_α
xchain11_n4_α:
xargsub45_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg44_done:
xargsub49_n0_α:
# IR_LIT_S
bb18_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 136], rax
 jmp xicnarg48_done
 xargsub49_n0_β:
 jmp xchain11_n5_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "asin"
xicnarg48_done:
bb19_α:
  .section .rodata
  .Lcall20_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall20_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain11_n5_α
 jmp xchain11_n5_α
xchain11_n4_β:
 jmp xchain11_n5_α
xchain11_n5_α:
xargsub53_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg52_done:
xargsub57_n0_α:
# IR_LIT_S
bb21_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 168], rax
 jmp xicnarg56_done
 xargsub57_n0_β:
 jmp xchain11_n6_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "atan"
xicnarg56_done:
bb22_α:
  .section .rodata
  .Lcall23_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall23_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain11_n6_α
 jmp xchain11_n6_α
xchain11_n5_β:
 jmp xchain11_n6_α
xchain11_n6_α:
xargsub61_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg60_done:
xargsub65_n0_α:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 200], rax
 jmp xicnarg64_done
 xargsub65_n0_β:
 jmp xchain11_n7_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "bal"
xicnarg64_done:
bb25_α:
  .section .rodata
  .Lcall26_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall26_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain11_n7_α
 jmp xchain11_n7_α
xchain11_n6_β:
 jmp xchain11_n7_α
xchain11_n7_α:
xargsub69_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg68_done:
xargsub73_n0_α:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 232], rax
 jmp xicnarg72_done
 xargsub73_n0_β:
 jmp xchain11_n8_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "center"
xicnarg72_done:
bb28_α:
  .section .rodata
  .Lcall29_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall29_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain11_n8_α
 jmp xchain11_n8_α
xchain11_n7_β:
 jmp xchain11_n8_α
xchain11_n8_α:
xargsub77_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg76_done:
xargsub81_n0_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 264], rax
 jmp xicnarg80_done
 xargsub81_n0_β:
 jmp xchain11_n9_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "char"
xicnarg80_done:
bb31_α:
  .section .rodata
  .Lcall32_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall32_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain11_n9_α
 jmp xchain11_n9_α
xchain11_n8_β:
 jmp xchain11_n9_α
xchain11_n9_α:
xargsub85_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg84_done:
xargsub89_n0_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 296], rax
 jmp xicnarg88_done
 xargsub89_n0_β:
 jmp xchain11_n10_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "close"
xicnarg88_done:
bb34_α:
  .section .rodata
  .Lcall35_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall35_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain11_n10_α
 jmp xchain11_n10_α
xchain11_n9_β:
 jmp xchain11_n10_α
xchain11_n10_α:
xargsub93_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg92_done:
xargsub97_n0_α:
# IR_LIT_S
bb36_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 328], rax
 jmp xicnarg96_done
 xargsub97_n0_β:
 jmp xchain11_n11_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "collect"
xicnarg96_done:
bb37_α:
  .section .rodata
  .Lcall38_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+320]
 mov rdx, qword ptr [r12+328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall38_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain11_n11_α
 jmp xchain11_n11_α
xchain11_n10_β:
 jmp xchain11_n11_α
xchain11_n11_α:
xargsub101_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg100_done:
xargsub105_n0_α:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 360], rax
 jmp xicnarg104_done
 xargsub105_n0_β:
 jmp xchain11_n12_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "copy"
xicnarg104_done:
bb40_α:
  .section .rodata
  .Lcall41_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+352]
 mov rdx, qword ptr [r12+360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall41_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain11_n12_α
 jmp xchain11_n12_α
xchain11_n11_β:
 jmp xchain11_n12_α
xchain11_n12_α:
xargsub109_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg108_done:
xargsub113_n0_α:
# IR_LIT_S
bb42_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 392], rax
 jmp xicnarg112_done
 xargsub113_n0_β:
 jmp xchain11_n13_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "cos"
xicnarg112_done:
bb43_α:
  .section .rodata
  .Lcall44_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+384]
 mov rdx, qword ptr [r12+392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall44_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain11_n13_α
 jmp xchain11_n13_α
xchain11_n12_β:
 jmp xchain11_n13_α
xchain11_n13_α:
xargsub117_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg116_done:
xargsub121_n0_α:
# IR_LIT_S
bb45_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [r12 + 424], rax
 jmp xicnarg120_done
 xargsub121_n0_β:
 jmp xchain11_n14_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "cset"
xicnarg120_done:
bb46_α:
  .section .rodata
  .Lcall47_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall47_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain11_n14_α
 jmp xchain11_n14_α
xchain11_n13_β:
 jmp xchain11_n14_α
xchain11_n14_α:
xargsub125_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg124_done:
xargsub129_n0_α:
# IR_LIT_S
bb48_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 456], rax
 jmp xicnarg128_done
 xargsub129_n0_β:
 jmp xchain11_n15_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "delay"
xicnarg128_done:
bb49_α:
  .section .rodata
  .Lcall50_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+448]
 mov rdx, qword ptr [r12+456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall50_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain11_n15_α
 jmp xchain11_n15_α
xchain11_n14_β:
 jmp xchain11_n15_α
xchain11_n15_α:
xargsub133_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg132_done:
xargsub137_n0_α:
# IR_LIT_S
bb51_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 488], rax
 jmp xicnarg136_done
 xargsub137_n0_β:
 jmp xchain11_n16_α
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "delete"
xicnarg136_done:
bb52_α:
  .section .rodata
  .Lcall53_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall53_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain11_n16_α
 jmp xchain11_n16_α
xchain11_n15_β:
 jmp xchain11_n16_α
xchain11_n16_α:
xargsub141_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg140_done:
xargsub145_n0_α:
# IR_LIT_S
bb54_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 520], rax
 jmp xicnarg144_done
 xargsub145_n0_β:
 jmp xchain11_n17_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "detab"
xicnarg144_done:
bb55_α:
  .section .rodata
  .Lcall56_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+512]
 mov rdx, qword ptr [r12+520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall56_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain11_n17_α
 jmp xchain11_n17_α
xchain11_n16_β:
 jmp xchain11_n17_α
xchain11_n17_α:
xargsub149_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg148_done:
xargsub153_n0_α:
# IR_LIT_S
bb57_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 552], rax
 jmp xicnarg152_done
 xargsub153_n0_β:
 jmp xchain11_n18_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "display"
xicnarg152_done:
bb58_α:
  .section .rodata
  .Lcall59_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+544]
 mov rdx, qword ptr [r12+552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall59_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain11_n18_α
 jmp xchain11_n18_α
xchain11_n17_β:
 jmp xchain11_n18_α
xchain11_n18_α:
xargsub157_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg156_done:
xargsub161_n0_α:
# IR_LIT_S
bb60_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 584], rax
 jmp xicnarg160_done
 xargsub161_n0_β:
 jmp xchain11_n19_α
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "dtor"
xicnarg160_done:
bb61_α:
  .section .rodata
  .Lcall62_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+576]
 mov rdx, qword ptr [r12+584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall62_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain11_n19_α
 jmp xchain11_n19_α
xchain11_n18_β:
 jmp xchain11_n19_α
xchain11_n19_α:
xargsub165_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg164_done:
xargsub169_n0_α:
# IR_LIT_S
bb63_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [r12 + 616], rax
 jmp xicnarg168_done
 xargsub169_n0_β:
 jmp xchain11_n20_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "entab"
xicnarg168_done:
bb64_α:
  .section .rodata
  .Lcall65_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+608]
 mov rdx, qword ptr [r12+616]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall65_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain11_n20_α
 jmp xchain11_n20_α
xchain11_n19_β:
 jmp xchain11_n20_α
xchain11_n20_α:
xargsub173_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg172_done:
xargsub177_n0_α:
# IR_LIT_S
bb66_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 648], rax
 jmp xicnarg176_done
 xargsub177_n0_β:
 jmp xchain11_n21_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "errorclear"
xicnarg176_done:
bb67_α:
  .section .rodata
  .Lcall68_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+640]
 mov rdx, qword ptr [r12+648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall68_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain11_n21_α
 jmp xchain11_n21_α
xchain11_n20_β:
 jmp xchain11_n21_α
xchain11_n21_α:
xargsub181_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg180_done:
xargsub185_n0_α:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 680], rax
 jmp xicnarg184_done
 xargsub185_n0_β:
 jmp xchain11_n22_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "exit"
xicnarg184_done:
bb70_α:
  .section .rodata
  .Lcall71_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall71_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain11_n22_α
 jmp xchain11_n22_α
xchain11_n21_β:
 jmp xchain11_n22_α
xchain11_n22_α:
xargsub189_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg188_done:
xargsub193_n0_α:
# IR_LIT_S
bb72_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 712], rax
 jmp xicnarg192_done
 xargsub193_n0_β:
 jmp xchain11_n23_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "exp"
xicnarg192_done:
bb73_α:
  .section .rodata
  .Lcall74_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+704]
 mov rdx, qword ptr [r12+712]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall74_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain11_n23_α
 jmp xchain11_n23_α
xchain11_n22_β:
 jmp xchain11_n23_α
xchain11_n23_α:
xargsub197_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg196_done:
xargsub201_n0_α:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 744], rax
 jmp xicnarg200_done
 xargsub201_n0_β:
 jmp xchain11_n24_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "find"
xicnarg200_done:
bb76_α:
  .section .rodata
  .Lcall77_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+736]
 mov rdx, qword ptr [r12+744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain11_n24_α
 jmp xchain11_n24_α
xchain11_n23_β:
 jmp xchain11_n24_α
xchain11_n24_α:
xargsub205_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg204_done:
xargsub209_n0_α:
# IR_LIT_S
bb78_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 776], rax
 jmp xicnarg208_done
 xargsub209_n0_β:
 jmp xchain11_n25_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "flush"
xicnarg208_done:
bb79_α:
  .section .rodata
  .Lcall80_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+768]
 mov rdx, qword ptr [r12+776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall80_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain11_n25_α
 jmp xchain11_n25_α
xchain11_n24_β:
 jmp xchain11_n25_α
xchain11_n25_α:
xargsub213_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg212_done:
xargsub217_n0_α:
# IR_LIT_S
bb81_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [r12 + 808], rax
 jmp xicnarg216_done
 xargsub217_n0_β:
 jmp xchain11_n26_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "function"
xicnarg216_done:
bb82_α:
  .section .rodata
  .Lcall83_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+800]
 mov rdx, qword ptr [r12+808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall83_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain11_n26_α
 jmp xchain11_n26_α
xchain11_n25_β:
 jmp xchain11_n26_α
xchain11_n26_α:
xargsub221_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg220_done:
xargsub225_n0_α:
# IR_LIT_S
bb84_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 840], rax
 jmp xicnarg224_done
 xargsub225_n0_β:
 jmp xchain11_n27_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "get"
xicnarg224_done:
bb85_α:
  .section .rodata
  .Lcall86_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+832]
 mov rdx, qword ptr [r12+840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall86_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain11_n27_α
 jmp xchain11_n27_α
xchain11_n26_β:
 jmp xchain11_n27_α
xchain11_n27_α:
xargsub229_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg228_done:
xargsub233_n0_α:
# IR_LIT_S
bb87_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 872], rax
 jmp xicnarg232_done
 xargsub233_n0_β:
 jmp xchain11_n28_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "getenv"
xicnarg232_done:
bb88_α:
  .section .rodata
  .Lcall89_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+864]
 mov rdx, qword ptr [r12+872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall89_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain11_n28_α
 jmp xchain11_n28_α
xchain11_n27_β:
 jmp xchain11_n28_α
xchain11_n28_α:
xargsub237_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg236_done:
xargsub241_n0_α:
# IR_LIT_S
bb90_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 904], rax
 jmp xicnarg240_done
 xargsub241_n0_β:
 jmp xchain11_n29_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "iand"
xicnarg240_done:
bb91_α:
  .section .rodata
  .Lcall92_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+896]
 mov rdx, qword ptr [r12+904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall92_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain11_n29_α
 jmp xchain11_n29_α
xchain11_n28_β:
 jmp xchain11_n29_α
xchain11_n29_α:
xargsub245_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg244_done:
xargsub249_n0_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 936], rax
 jmp xicnarg248_done
 xargsub249_n0_β:
 jmp xchain11_n30_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "icom"
xicnarg248_done:
bb94_α:
  .section .rodata
  .Lcall95_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+928]
 mov rdx, qword ptr [r12+936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall95_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain11_n30_α
 jmp xchain11_n30_α
xchain11_n29_β:
 jmp xchain11_n30_α
xchain11_n30_α:
xargsub253_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg252_done:
xargsub257_n0_α:
# IR_LIT_S
bb96_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [r12 + 968], rax
 jmp xicnarg256_done
 xargsub257_n0_β:
 jmp xchain11_n31_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "image"
xicnarg256_done:
bb97_α:
  .section .rodata
  .Lcall98_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+960]
 mov rdx, qword ptr [r12+968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall98_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain11_n31_α
 jmp xchain11_n31_α
xchain11_n30_β:
 jmp xchain11_n31_α
xchain11_n31_α:
xargsub261_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg260_done:
xargsub265_n0_α:
# IR_LIT_S
bb99_α:
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [r12 + 1000], rax
 jmp xicnarg264_done
 xargsub265_n0_β:
 jmp xchain11_n32_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "insert"
xicnarg264_done:
bb100_α:
  .section .rodata
  .Lcall101_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+992]
 mov rdx, qword ptr [r12+100]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall101_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain11_n32_α
 jmp xchain11_n32_α
xchain11_n31_β:
 jmp xchain11_n32_α
xchain11_n32_α:
xargsub269_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg268_done:
xargsub273_n0_α:
# IR_LIT_S
bb102_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 1032], rax
 jmp xicnarg272_done
 xargsub273_n0_β:
 jmp xchain11_n33_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "integer"
xicnarg272_done:
bb103_α:
  .section .rodata
  .Lcall104_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+102]
 mov rdx, qword ptr [r12+103]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall104_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain11_n33_α
 jmp xchain11_n33_α
xchain11_n32_β:
 jmp xchain11_n33_α
xchain11_n33_α:
xargsub277_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg276_done:
xargsub281_n0_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [r12 + 1064], rax
 jmp xicnarg280_done
 xargsub281_n0_β:
 jmp xchain11_n34_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "ior"
xicnarg280_done:
bb106_α:
  .section .rodata
  .Lcall107_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+105]
 mov rdx, qword ptr [r12+106]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall107_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain11_n34_α
 jmp xchain11_n34_α
xchain11_n33_β:
 jmp xchain11_n34_α
xchain11_n34_α:
xargsub285_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg284_done:
xargsub289_n0_α:
# IR_LIT_S
bb108_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [r12 + 1096], rax
 jmp xicnarg288_done
 xargsub289_n0_β:
 jmp xchain11_n35_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "ishift"
xicnarg288_done:
bb109_α:
  .section .rodata
  .Lcall110_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+108]
 mov rdx, qword ptr [r12+109]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall110_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain11_n35_α
 jmp xchain11_n35_α
xchain11_n34_β:
 jmp xchain11_n35_α
xchain11_n35_α:
xargsub293_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg292_done:
xargsub297_n0_α:
# IR_LIT_S
bb111_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 1128], rax
 jmp xicnarg296_done
 xargsub297_n0_β:
 jmp xchain11_n36_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "ixor"
xicnarg296_done:
bb112_α:
  .section .rodata
  .Lcall113_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall113_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain11_n36_α
 jmp xchain11_n36_α
xchain11_n35_β:
 jmp xchain11_n36_α
xchain11_n36_α:
xargsub301_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg300_done:
xargsub305_n0_α:
# IR_LIT_S
bb114_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 1160], rax
 jmp xicnarg304_done
 xargsub305_n0_β:
 jmp xchain11_n37_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "key"
xicnarg304_done:
bb115_α:
  .section .rodata
  .Lcall116_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+115]
 mov rdx, qword ptr [r12+116]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall116_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain11_n37_α
 jmp xchain11_n37_α
xchain11_n36_β:
 jmp xchain11_n37_α
xchain11_n37_α:
xargsub309_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg308_done:
xargsub313_n0_α:
# IR_LIT_S
bb117_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [r12 + 1192], rax
 jmp xicnarg312_done
 xargsub313_n0_β:
 jmp xchain11_n38_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "left"
xicnarg312_done:
bb118_α:
  .section .rodata
  .Lcall119_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+118]
 mov rdx, qword ptr [r12+119]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall119_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain11_n38_α
 jmp xchain11_n38_α
xchain11_n37_β:
 jmp xchain11_n38_α
xchain11_n38_α:
xargsub317_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg316_done:
xargsub321_n0_α:
# IR_LIT_S
bb120_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 1224], rax
 jmp xicnarg320_done
 xargsub321_n0_β:
 jmp xchain11_n39_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "list"
xicnarg320_done:
bb121_α:
  .section .rodata
  .Lcall122_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+121]
 mov rdx, qword ptr [r12+122]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall122_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain11_n39_α
 jmp xchain11_n39_α
xchain11_n38_β:
 jmp xchain11_n39_α
xchain11_n39_α:
xargsub325_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg324_done:
xargsub329_n0_α:
# IR_LIT_S
bb123_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 1256], rax
 jmp xicnarg328_done
 xargsub329_n0_β:
 jmp xchain11_n40_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "log"
xicnarg328_done:
bb124_α:
  .section .rodata
  .Lcall125_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+124]
 mov rdx, qword ptr [r12+125]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall125_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain11_n40_α
 jmp xchain11_n40_α
xchain11_n39_β:
 jmp xchain11_n40_α
xchain11_n40_α:
xargsub333_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg332_done:
xargsub337_n0_α:
# IR_LIT_S
bb126_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [r12 + 1288], rax
 jmp xicnarg336_done
 xargsub337_n0_β:
 jmp xchain11_n41_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "many"
xicnarg336_done:
bb127_α:
  .section .rodata
  .Lcall128_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall128_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain11_n41_α
 jmp xchain11_n41_α
xchain11_n40_β:
 jmp xchain11_n41_α
xchain11_n41_α:
xargsub341_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg340_done:
xargsub345_n0_α:
# IR_LIT_S
bb129_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 1320], rax
 jmp xicnarg344_done
 xargsub345_n0_β:
 jmp xchain11_n42_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "map"
xicnarg344_done:
bb130_α:
  .section .rodata
  .Lcall131_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+131]
 mov rdx, qword ptr [r12+132]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall131_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain11_n42_α
 jmp xchain11_n42_α
xchain11_n41_β:
 jmp xchain11_n42_α
xchain11_n42_α:
xargsub349_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg348_done:
xargsub353_n0_α:
# IR_LIT_S
bb132_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 1352], rax
 jmp xicnarg352_done
 xargsub353_n0_β:
 jmp xchain11_n43_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "match"
xicnarg352_done:
bb133_α:
  .section .rodata
  .Lcall134_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+134]
 mov rdx, qword ptr [r12+135]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall134_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain11_n43_α
 jmp xchain11_n43_α
xchain11_n42_β:
 jmp xchain11_n43_α
xchain11_n43_α:
xargsub357_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg356_done:
xargsub361_n0_α:
# IR_LIT_S
bb135_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [r12 + 1384], rax
 jmp xicnarg360_done
 xargsub361_n0_β:
 jmp xchain11_n44_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "member"
xicnarg360_done:
bb136_α:
  .section .rodata
  .Lcall137_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+137]
 mov rdx, qword ptr [r12+138]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall137_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain11_n44_α
 jmp xchain11_n44_α
xchain11_n43_β:
 jmp xchain11_n44_α
xchain11_n44_α:
xargsub365_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg364_done:
xargsub369_n0_α:
# IR_LIT_S
bb138_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [r12 + 1416], rax
 jmp xicnarg368_done
 xargsub369_n0_β:
 jmp xchain11_n45_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "move"
xicnarg368_done:
bb139_α:
  .section .rodata
  .Lcall140_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+140]
 mov rdx, qword ptr [r12+141]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall140_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain11_n45_α
 jmp xchain11_n45_α
xchain11_n44_β:
 jmp xchain11_n45_α
xchain11_n45_α:
xargsub373_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg372_done:
xargsub377_n0_α:
# IR_LIT_S
bb141_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 1448], rax
 jmp xicnarg376_done
 xargsub377_n0_β:
 jmp xchain11_n46_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "name"
xicnarg376_done:
bb142_α:
  .section .rodata
  .Lcall143_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall143_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain11_n46_α
 jmp xchain11_n46_α
xchain11_n45_β:
 jmp xchain11_n46_α
xchain11_n46_α:
xargsub381_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg380_done:
xargsub385_n0_α:
# IR_LIT_S
bb144_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [r12 + 1480], rax
 jmp xicnarg384_done
 xargsub385_n0_β:
 jmp xchain11_n47_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "numeric"
xicnarg384_done:
bb145_α:
  .section .rodata
  .Lcall146_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+147]
 mov rdx, qword ptr [r12+148]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall146_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain11_n47_α
 jmp xchain11_n47_α
xchain11_n46_β:
 jmp xchain11_n47_α
xchain11_n47_α:
xargsub389_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg388_done:
xargsub393_n0_α:
# IR_LIT_S
bb147_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [r12 + 1512], rax
 jmp xicnarg392_done
 xargsub393_n0_β:
 jmp xchain11_n48_α
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "open"
xicnarg392_done:
bb148_α:
  .section .rodata
  .Lcall149_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+150]
 mov rdx, qword ptr [r12+151]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall149_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain11_n48_α
 jmp xchain11_n48_α
xchain11_n47_β:
 jmp xchain11_n48_α
xchain11_n48_α:
xargsub397_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg396_done:
xargsub401_n0_α:
# IR_LIT_S
bb150_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [r12 + 1544], rax
 jmp xicnarg400_done
 xargsub401_n0_β:
 jmp xchain11_n49_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "ord"
xicnarg400_done:
bb151_α:
  .section .rodata
  .Lcall152_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+153]
 mov rdx, qword ptr [r12+154]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall152_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain11_n49_α
 jmp xchain11_n49_α
xchain11_n48_β:
 jmp xchain11_n49_α
xchain11_n49_α:
xargsub405_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg404_done:
xargsub409_n0_α:
# IR_LIT_S
bb153_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 1576], rax
 jmp xicnarg408_done
 xargsub409_n0_β:
 jmp xchain11_n50_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "pop"
xicnarg408_done:
bb154_α:
  .section .rodata
  .Lcall155_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+156]
 mov rdx, qword ptr [r12+157]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall155_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain11_n50_α
 jmp xchain11_n50_α
xchain11_n49_β:
 jmp xchain11_n50_α
xchain11_n50_α:
xargsub413_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg412_done:
xargsub417_n0_α:
# IR_LIT_S
bb156_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [r12 + 1608], rax
 jmp xicnarg416_done
 xargsub417_n0_β:
 jmp xchain11_n51_α
.Lx418_0:
 .quad .Lx418_0_s
.Lx418_0_s:
 .string "pos"
xicnarg416_done:
bb157_α:
  .section .rodata
  .Lcall158_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall158_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain11_n51_α
 jmp xchain11_n51_α
xchain11_n50_β:
 jmp xchain11_n51_α
xchain11_n51_α:
xargsub421_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg420_done:
xargsub425_n0_α:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [r12 + 1640], rax
 jmp xicnarg424_done
 xargsub425_n0_β:
 jmp xchain11_n52_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "proc"
xicnarg424_done:
bb160_α:
  .section .rodata
  .Lcall161_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+163]
 mov rdx, qword ptr [r12+164]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall161_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain11_n52_α
 jmp xchain11_n52_α
xchain11_n51_β:
 jmp xchain11_n52_α
xchain11_n52_α:
xargsub429_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg428_done:
xargsub433_n0_α:
# IR_LIT_S
bb162_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [r12 + 1672], rax
 jmp xicnarg432_done
 xargsub433_n0_β:
 jmp xchain11_n53_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "pull"
xicnarg432_done:
bb163_α:
  .section .rodata
  .Lcall164_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+166]
 mov rdx, qword ptr [r12+167]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall164_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain11_n53_α
 jmp xchain11_n53_α
xchain11_n52_β:
 jmp xchain11_n53_α
xchain11_n53_α:
xargsub437_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg436_done:
xargsub441_n0_α:
# IR_LIT_S
bb165_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 1704], rax
 jmp xicnarg440_done
 xargsub441_n0_β:
 jmp xchain11_n54_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "push"
xicnarg440_done:
bb166_α:
  .section .rodata
  .Lcall167_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+169]
 mov rdx, qword ptr [r12+170]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall167_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain11_n54_α
 jmp xchain11_n54_α
xchain11_n53_β:
 jmp xchain11_n54_α
xchain11_n54_α:
xargsub445_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg444_done:
xargsub449_n0_α:
# IR_LIT_S
bb168_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx450_0]
 mov qword ptr [r12 + 1736], rax
 jmp xicnarg448_done
 xargsub449_n0_β:
 jmp xchain11_n55_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "put"
xicnarg448_done:
bb169_α:
  .section .rodata
  .Lcall170_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+172]
 mov rdx, qword ptr [r12+173]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall170_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain11_n55_α
 jmp xchain11_n55_α
xchain11_n54_β:
 jmp xchain11_n55_α
xchain11_n55_α:
xargsub453_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg452_done:
xargsub457_n0_α:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 1760], 1
 mov rax, qword ptr [rip + .Lx458_0]
 mov qword ptr [r12 + 1768], rax
 jmp xicnarg456_done
 xargsub457_n0_β:
 jmp xchain11_n56_α
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "read"
xicnarg456_done:
bb172_α:
  .section .rodata
  .Lcall173_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+176]
 mov rdx, qword ptr [r12+176]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall173_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain11_n56_α
 jmp xchain11_n56_α
xchain11_n55_β:
 jmp xchain11_n56_α
xchain11_n56_α:
xargsub461_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg460_done:
xargsub465_n0_α:
# IR_LIT_S
bb174_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [r12 + 1800], rax
 jmp xicnarg464_done
 xargsub465_n0_β:
 jmp xchain11_n57_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "reads"
xicnarg464_done:
bb175_α:
  .section .rodata
  .Lcall176_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+179]
 mov rdx, qword ptr [r12+180]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall176_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain11_n57_α
 jmp xchain11_n57_α
xchain11_n56_β:
 jmp xchain11_n57_α
xchain11_n57_α:
xargsub469_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg468_done:
xargsub473_n0_α:
# IR_LIT_S
bb177_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [r12 + 1832], rax
 jmp xicnarg472_done
 xargsub473_n0_β:
 jmp xchain11_n58_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "real"
xicnarg472_done:
bb178_α:
  .section .rodata
  .Lcall179_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+182]
 mov rdx, qword ptr [r12+183]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall179_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain11_n58_α
 jmp xchain11_n58_α
xchain11_n57_β:
 jmp xchain11_n58_α
xchain11_n58_α:
xargsub477_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg476_done:
xargsub481_n0_α:
# IR_LIT_S
bb180_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [r12 + 1864], rax
 jmp xicnarg480_done
 xargsub481_n0_β:
 jmp xchain11_n59_α
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "remove"
xicnarg480_done:
bb181_α:
  .section .rodata
  .Lcall182_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+185]
 mov rdx, qword ptr [r12+186]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall182_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain11_n59_α
 jmp xchain11_n59_α
xchain11_n58_β:
 jmp xchain11_n59_α
xchain11_n59_α:
xargsub485_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg484_done:
xargsub489_n0_α:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [r12 + 1896], rax
 jmp xicnarg488_done
 xargsub489_n0_β:
 jmp xchain11_n60_α
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "rename"
xicnarg488_done:
bb184_α:
  .section .rodata
  .Lcall185_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+188]
 mov rdx, qword ptr [r12+189]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall185_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain11_n60_α
 jmp xchain11_n60_α
xchain11_n59_β:
 jmp xchain11_n60_α
xchain11_n60_α:
xargsub493_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg492_done:
xargsub497_n0_α:
# IR_LIT_S
bb186_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx498_0]
 mov qword ptr [r12 + 1928], rax
 jmp xicnarg496_done
 xargsub497_n0_β:
 jmp xchain11_n61_α
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "repl"
xicnarg496_done:
bb187_α:
  .section .rodata
  .Lcall188_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall188_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain11_n61_α
 jmp xchain11_n61_α
xchain11_n60_β:
 jmp xchain11_n61_α
xchain11_n61_α:
xargsub501_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg500_done:
xargsub505_n0_α:
# IR_LIT_S
bb189_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [r12 + 1960], rax
 jmp xicnarg504_done
 xargsub505_n0_β:
 jmp xchain11_n62_α
.Lx506_0:
 .quad .Lx506_0_s
.Lx506_0_s:
 .string "reverse"
xicnarg504_done:
bb190_α:
  .section .rodata
  .Lcall191_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+195]
 mov rdx, qword ptr [r12+196]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall191_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain11_n62_α
 jmp xchain11_n62_α
xchain11_n61_β:
 jmp xchain11_n62_α
xchain11_n62_α:
xargsub509_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg508_done:
xargsub513_n0_α:
# IR_LIT_S
bb192_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [r12 + 1992], rax
 jmp xicnarg512_done
 xargsub513_n0_β:
 jmp xchain11_n63_α
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string "right"
xicnarg512_done:
bb193_α:
  .section .rodata
  .Lcall194_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+198]
 mov rdx, qword ptr [r12+199]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall194_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain11_n63_α
 jmp xchain11_n63_α
xchain11_n62_β:
 jmp xchain11_n63_α
xchain11_n63_α:
xargsub517_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg516_done:
xargsub521_n0_α:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [r12 + 2024], rax
 jmp xicnarg520_done
 xargsub521_n0_β:
 jmp xchain11_n64_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "rtod"
xicnarg520_done:
bb196_α:
  .section .rodata
  .Lcall197_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+201]
 mov rdx, qword ptr [r12+202]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall197_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain11_n64_α
 jmp xchain11_n64_α
xchain11_n63_β:
 jmp xchain11_n64_α
xchain11_n64_α:
xargsub525_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg524_done:
xargsub529_n0_α:
# IR_LIT_S
bb198_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx530_0]
 mov qword ptr [r12 + 2056], rax
 jmp xicnarg528_done
 xargsub529_n0_β:
 jmp xchain11_n65_α
.Lx530_0:
 .quad .Lx530_0_s
.Lx530_0_s:
 .string "runerr"
xicnarg528_done:
bb199_α:
  .section .rodata
  .Lcall200_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+204]
 mov rdx, qword ptr [r12+205]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall200_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 cmp eax, 99
 je xchain11_n65_α
 jmp xchain11_n65_α
xchain11_n64_β:
 jmp xchain11_n65_α
xchain11_n65_α:
xargsub533_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg532_done:
xargsub537_n0_α:
# IR_LIT_S
bb201_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [r12 + 2088], rax
 jmp xicnarg536_done
 xargsub537_n0_β:
 jmp xchain11_n66_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string "seek"
xicnarg536_done:
bb202_α:
  .section .rodata
  .Lcall203_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+208]
 mov rdx, qword ptr [r12+208]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall203_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain11_n66_α
 jmp xchain11_n66_α
xchain11_n65_β:
 jmp xchain11_n66_α
xchain11_n66_α:
xargsub541_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg540_done:
xargsub545_n0_α:
# IR_LIT_S
bb204_α:
 mov qword ptr [r12 + 2112], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 2120], rax
 jmp xicnarg544_done
 xargsub545_n0_β:
 jmp xchain11_n67_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "seq"
xicnarg544_done:
bb205_α:
  .section .rodata
  .Lcall206_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+211]
 mov rdx, qword ptr [r12+212]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall206_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain11_n67_α
 jmp xchain11_n67_α
xchain11_n66_β:
 jmp xchain11_n67_α
xchain11_n67_α:
xargsub549_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg548_done:
xargsub553_n0_α:
# IR_LIT_S
bb207_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [r12 + 2152], rax
 jmp xicnarg552_done
 xargsub553_n0_β:
 jmp xchain11_n68_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "serial"
xicnarg552_done:
bb208_α:
  .section .rodata
  .Lcall209_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+214]
 mov rdx, qword ptr [r12+215]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall209_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain11_n68_α
 jmp xchain11_n68_α
xchain11_n67_β:
 jmp xchain11_n68_α
xchain11_n68_α:
xargsub557_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg556_done:
xargsub561_n0_α:
# IR_LIT_S
bb210_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [r12 + 2184], rax
 jmp xicnarg560_done
 xargsub561_n0_β:
 jmp xchain11_n69_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "set"
xicnarg560_done:
bb211_α:
  .section .rodata
  .Lcall212_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+217]
 mov rdx, qword ptr [r12+218]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall212_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je xchain11_n69_α
 jmp xchain11_n69_α
xchain11_n68_β:
 jmp xchain11_n69_α
xchain11_n69_α:
xargsub565_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg564_done:
xargsub569_n0_α:
# IR_LIT_S
bb213_α:
 mov qword ptr [r12 + 2208], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [r12 + 2216], rax
 jmp xicnarg568_done
 xargsub569_n0_β:
 jmp xchain11_n70_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "sin"
xicnarg568_done:
bb214_α:
  .section .rodata
  .Lcall215_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+220]
 mov rdx, qword ptr [r12+221]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall215_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain11_n70_α
 jmp xchain11_n70_α
xchain11_n69_β:
 jmp xchain11_n70_α
xchain11_n70_α:
xargsub573_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg572_done:
xargsub577_n0_α:
# IR_LIT_S
bb216_α:
 mov qword ptr [r12 + 2240], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [r12 + 2248], rax
 jmp xicnarg576_done
 xargsub577_n0_β:
 jmp xchain11_n71_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "sort"
xicnarg576_done:
bb217_α:
  .section .rodata
  .Lcall218_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall218_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain11_n71_α
 jmp xchain11_n71_α
xchain11_n70_β:
 jmp xchain11_n71_α
xchain11_n71_α:
xargsub581_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg580_done:
xargsub585_n0_α:
# IR_LIT_S
bb219_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [r12 + 2280], rax
 jmp xicnarg584_done
 xargsub585_n0_β:
 jmp xchain11_n72_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "sortf"
xicnarg584_done:
bb220_α:
  .section .rodata
  .Lcall221_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+227]
 mov rdx, qword ptr [r12+228]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall221_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je xchain11_n72_α
 jmp xchain11_n72_α
xchain11_n71_β:
 jmp xchain11_n72_α
xchain11_n72_α:
xargsub589_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg588_done:
xargsub593_n0_α:
# IR_LIT_S
bb222_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [r12 + 2312], rax
 jmp xicnarg592_done
 xargsub593_n0_β:
 jmp xchain11_n73_α
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "sqrt"
xicnarg592_done:
bb223_α:
  .section .rodata
  .Lcall224_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+230]
 mov rdx, qword ptr [r12+231]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall224_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain11_n73_α
 jmp xchain11_n73_α
xchain11_n72_β:
 jmp xchain11_n73_α
xchain11_n73_α:
xargsub597_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg596_done:
xargsub601_n0_α:
# IR_LIT_S
bb225_α:
 mov qword ptr [r12 + 2336], 1
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [r12 + 2344], rax
 jmp xicnarg600_done
 xargsub601_n0_β:
 jmp xchain11_n74_α
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "stop"
xicnarg600_done:
bb226_α:
  .section .rodata
  .Lcall227_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+233]
 mov rdx, qword ptr [r12+234]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall227_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain11_n74_α
 jmp xchain11_n74_α
xchain11_n73_β:
 jmp xchain11_n74_α
xchain11_n74_α:
xargsub605_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg604_done:
xargsub609_n0_α:
# IR_LIT_S
bb228_α:
 mov qword ptr [r12 + 2368], 1
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [r12 + 2376], rax
 jmp xicnarg608_done
 xargsub609_n0_β:
 jmp xchain11_n75_α
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "string"
xicnarg608_done:
bb229_α:
  .section .rodata
  .Lcall230_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+236]
 mov rdx, qword ptr [r12+237]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall230_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain11_n75_α
 jmp xchain11_n75_α
xchain11_n74_β:
 jmp xchain11_n75_α
xchain11_n75_α:
xargsub613_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg612_done:
xargsub617_n0_α:
# IR_LIT_S
bb231_α:
 mov qword ptr [r12 + 2400], 1
 mov rax, qword ptr [rip + .Lx618_0]
 mov qword ptr [r12 + 2408], rax
 jmp xicnarg616_done
 xargsub617_n0_β:
 jmp xchain11_n76_α
.Lx618_0:
 .quad .Lx618_0_s
.Lx618_0_s:
 .string "system"
xicnarg616_done:
bb232_α:
  .section .rodata
  .Lcall233_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+240]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall233_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 cmp eax, 99
 je xchain11_n76_α
 jmp xchain11_n76_α
xchain11_n75_β:
 jmp xchain11_n76_α
xchain11_n76_α:
xargsub621_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg620_done:
xargsub625_n0_α:
# IR_LIT_S
bb234_α:
 mov qword ptr [r12 + 2432], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [r12 + 2440], rax
 jmp xicnarg624_done
 xargsub625_n0_β:
 jmp xchain11_n77_α
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "tab"
xicnarg624_done:
bb235_α:
  .section .rodata
  .Lcall236_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+243]
 mov rdx, qword ptr [r12+244]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall236_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain11_n77_α
 jmp xchain11_n77_α
xchain11_n76_β:
 jmp xchain11_n77_α
xchain11_n77_α:
xargsub629_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg628_done:
xargsub633_n0_α:
# IR_LIT_S
bb237_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx634_0]
 mov qword ptr [r12 + 2472], rax
 jmp xicnarg632_done
 xargsub633_n0_β:
 jmp xchain11_n78_α
.Lx634_0:
 .quad .Lx634_0_s
.Lx634_0_s:
 .string "table"
xicnarg632_done:
bb238_α:
  .section .rodata
  .Lcall239_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+246]
 mov rdx, qword ptr [r12+247]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall239_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp eax, 99
 je xchain11_n78_α
 jmp xchain11_n78_α
xchain11_n77_β:
 jmp xchain11_n78_α
xchain11_n78_α:
xargsub637_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg636_done:
xargsub641_n0_α:
# IR_LIT_S
bb240_α:
 mov qword ptr [r12 + 2496], 1
 mov rax, qword ptr [rip + .Lx642_0]
 mov qword ptr [r12 + 2504], rax
 jmp xicnarg640_done
 xargsub641_n0_β:
 jmp xchain11_n79_α
.Lx642_0:
 .quad .Lx642_0_s
.Lx642_0_s:
 .string "tan"
xicnarg640_done:
bb241_α:
  .section .rodata
  .Lcall242_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+249]
 mov rdx, qword ptr [r12+250]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall242_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain11_n79_α
 jmp xchain11_n79_α
xchain11_n78_β:
 jmp xchain11_n79_α
xchain11_n79_α:
xargsub645_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg644_done:
xargsub649_n0_α:
# IR_LIT_S
bb243_α:
 mov qword ptr [r12 + 2528], 1
 mov rax, qword ptr [rip + .Lx650_0]
 mov qword ptr [r12 + 2536], rax
 jmp xicnarg648_done
 xargsub649_n0_β:
 jmp xchain11_n80_α
.Lx650_0:
 .quad .Lx650_0_s
.Lx650_0_s:
 .string "trim"
xicnarg648_done:
bb244_α:
  .section .rodata
  .Lcall245_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+252]
 mov rdx, qword ptr [r12+253]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall245_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain11_n80_α
 jmp xchain11_n80_α
xchain11_n79_β:
 jmp xchain11_n80_α
xchain11_n80_α:
xargsub653_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg652_done:
xargsub657_n0_α:
# IR_LIT_S
bb246_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx658_0]
 mov qword ptr [r12 + 2568], rax
 jmp xicnarg656_done
 xargsub657_n0_β:
 jmp xchain11_n81_α
.Lx658_0:
 .quad .Lx658_0_s
.Lx658_0_s:
 .string "type"
xicnarg656_done:
bb247_α:
  .section .rodata
  .Lcall248_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+256]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall248_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 cmp eax, 99
 je xchain11_n81_α
 jmp xchain11_n81_α
xchain11_n80_β:
 jmp xchain11_n81_α
xchain11_n81_α:
xargsub661_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg660_done:
xargsub665_n0_α:
# IR_LIT_S
bb249_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx666_0]
 mov qword ptr [r12 + 2600], rax
 jmp xicnarg664_done
 xargsub665_n0_β:
 jmp xchain11_n82_α
.Lx666_0:
 .quad .Lx666_0_s
.Lx666_0_s:
 .string "upto"
xicnarg664_done:
bb250_α:
  .section .rodata
  .Lcall251_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+259]
 mov rdx, qword ptr [r12+260]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall251_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 cmp eax, 99
 je xchain11_n82_α
 jmp xchain11_n82_α
xchain11_n81_β:
 jmp xchain11_n82_α
xchain11_n82_α:
xargsub669_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg668_done:
xargsub673_n0_α:
# IR_LIT_S
bb252_α:
 mov qword ptr [r12 + 2624], 1
 mov rax, qword ptr [rip + .Lx674_0]
 mov qword ptr [r12 + 2632], rax
 jmp xicnarg672_done
 xargsub673_n0_β:
 jmp xchain11_n83_α
.Lx674_0:
 .quad .Lx674_0_s
.Lx674_0_s:
 .string "variable"
xicnarg672_done:
bb253_α:
  .section .rodata
  .Lcall254_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+262]
 mov rdx, qword ptr [r12+263]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall254_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain11_n83_α
 jmp xchain11_n83_α
xchain11_n82_β:
 jmp xchain11_n83_α
xchain11_n83_α:
xargsub677_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg676_done:
xargsub681_n0_α:
# IR_LIT_S
bb255_α:
 mov qword ptr [r12 + 2656], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [r12 + 2664], rax
 jmp xicnarg680_done
 xargsub681_n0_β:
 jmp xchain11_n84_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "where"
xicnarg680_done:
bb256_α:
  .section .rodata
  .Lcall257_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+265]
 mov rdx, qword ptr [r12+266]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall257_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain11_n84_α
 jmp xchain11_n84_α
xchain11_n83_β:
 jmp xchain11_n84_α
xchain11_n84_α:
xargsub685_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg684_done:
xargsub689_n0_α:
# IR_LIT_S
bb258_α:
 mov qword ptr [r12 + 2688], 1
 mov rax, qword ptr [rip + .Lx690_0]
 mov qword ptr [r12 + 2696], rax
 jmp xicnarg688_done
 xargsub689_n0_β:
 jmp xchain11_n85_α
.Lx690_0:
 .quad .Lx690_0_s
.Lx690_0_s:
 .string "write"
xicnarg688_done:
bb259_α:
  .section .rodata
  .Lcall260_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+268]
 mov rdx, qword ptr [r12+269]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall260_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 cmp eax, 99
 je xchain11_n85_α
 jmp xchain11_n85_α
xchain11_n84_β:
 jmp xchain11_n85_α
xchain11_n85_α:
xargsub693_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg692_done:
xargsub697_n0_α:
# IR_LIT_S
bb261_α:
 mov qword ptr [r12 + 2720], 1
 mov rax, qword ptr [rip + .Lx698_0]
 mov qword ptr [r12 + 2728], rax
 jmp xicnarg696_done
 xargsub697_n0_β:
 jmp main_ω
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "writes"
xicnarg696_done:
bb262_α:
  .section .rodata
  .Lcall263_pname: .string "nargs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+272]
 mov rdx, qword ptr [r12+272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall263_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain11_n85_β:
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
.S0: .string "bb_var: unhandled arm (no flat-chain mode or missing slot)"
.text
