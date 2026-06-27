  .intel_syntax noprefix
  .text
  .globl proc_try_α
proc_try_α:
#=======================================================================================================================
    .global proc_try_α
    .global proc_try_β
    .global proc_try_γ
    .global proc_try_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_try_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+80]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn2: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_try_ω
xchain0_n3_α:
# IR_UNOP
bb4_α:
 mov eax, dword ptr [r12 + 48]
 cmp eax, 99
 je proc_try_ω
 cmp eax, 0
 jne proc_try_ω
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_try_ω
xchain0_n4_α:
bb5_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+144]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn8: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_try_ω
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_try_ω
xchain0_n5_α:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_try_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string ": failed to convert"
xchain0_n6_α:
bb7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+224]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lcallfn11: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn11]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx10_2]
 mov qword ptr [r12 + 216], rax
 jmp .Lx10_3
.Lx10_2:
 .quad .Lx10_2_s
.Lx10_2_s:
 .string ": failed to convert"
.Lx10_3:
  .section .rodata
  .Lrkfn12: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_try_ω
 jmp proc_try_γ
 xchain0_n6_β:
 jmp proc_try_ω
proc_try_β:
jmp proc_try_ω
proc_try_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_try_ω:
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
  .Lstartup_pname0: .string "try"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_try_α]
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
xchain13_n0_α:
xargsub15_n0_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg14_done
 xargsub15_n0_β:
 jmp xchain13_n1_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "2r101111"
xicnarg14_done:
xargsub18_n0_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg17_done
 xargsub18_n0_β:
 jmp xchain13_n1_α
.Lx19_0:
 .quad 47
xicnarg17_done:
bb10_α:
  .section .rodata
  .Lcall10_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain13_n1_α
 jmp xchain13_n1_α
xchain13_n0_β:
 jmp xchain13_n1_α
xchain13_n1_α:
xargsub22_n0_α:
# IR_LIT_S
bb11_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg21_done
 xargsub22_n0_β:
 jmp xchain13_n2_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "3r201"
xicnarg21_done:
xargsub25_n0_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg24_done
 xargsub25_n0_β:
 jmp xchain13_n2_α
.Lx26_0:
 .quad 19
xicnarg24_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "try"
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
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain13_n2_α
 jmp xchain13_n2_α
xchain13_n1_β:
 jmp xchain13_n2_α
xchain13_n2_α:
xargsub29_n0_α:
# IR_LIT_S
bb14_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg28_done
 xargsub29_n0_β:
 jmp xchain13_n3_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "4r11213"
xicnarg28_done:
xargsub32_n0_α:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 120], rax
 jmp xicnarg31_done
 xargsub32_n0_β:
 jmp xchain13_n3_α
.Lx33_0:
 .quad 359
xicnarg31_done:
bb16_α:
  .section .rodata
  .Lcall16_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall16_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain13_n3_α
 jmp xchain13_n3_α
xchain13_n2_β:
 jmp xchain13_n3_α
xchain13_n3_α:
xargsub36_n0_α:
# IR_LIT_S
bb17_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 152], rax
 jmp xicnarg35_done
 xargsub36_n0_β:
 jmp xchain13_n4_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "5r1234"
xicnarg35_done:
xargsub39_n0_α:
# IR_LIT_I
bb18_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 168], rax
 jmp xicnarg38_done
 xargsub39_n0_β:
 jmp xchain13_n4_α
.Lx40_0:
 .quad 194
xicnarg38_done:
bb19_α:
  .section .rodata
  .Lcall19_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+152]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall19_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain13_n4_α
 jmp xchain13_n4_α
xchain13_n3_β:
 jmp xchain13_n4_α
xchain13_n4_α:
xargsub43_n0_α:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 200], rax
 jmp xicnarg42_done
 xargsub43_n0_β:
 jmp xchain13_n5_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "6r1253"
xicnarg42_done:
xargsub46_n0_α:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 216], rax
 jmp xicnarg45_done
 xargsub46_n0_β:
 jmp xchain13_n5_α
.Lx47_0:
 .quad 321
xicnarg45_done:
bb22_α:
  .section .rodata
  .Lcall22_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+208]
 mov rdx, qword ptr [r12+216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall22_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain13_n5_α
 jmp xchain13_n5_α
xchain13_n4_β:
 jmp xchain13_n5_α
xchain13_n5_α:
xargsub50_n0_α:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 248], rax
 jmp xicnarg49_done
 xargsub50_n0_β:
 jmp xchain13_n6_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "7r1253"
xicnarg49_done:
xargsub53_n0_α:
# IR_LIT_I
bb24_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 264], rax
 jmp xicnarg52_done
 xargsub53_n0_β:
 jmp xchain13_n6_α
.Lx54_0:
 .quad 479
xicnarg52_done:
bb25_α:
  .section .rodata
  .Lcall25_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain13_n6_α
 jmp xchain13_n6_α
xchain13_n5_β:
 jmp xchain13_n6_α
xchain13_n6_α:
xargsub57_n0_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 296], rax
 jmp xicnarg56_done
 xargsub57_n0_β:
 jmp xchain13_n7_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "8r1257"
xicnarg56_done:
xargsub60_n0_α:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 312], rax
 jmp xicnarg59_done
 xargsub60_n0_β:
 jmp xchain13_n7_α
.Lx61_0:
 .quad 687
xicnarg59_done:
bb28_α:
  .section .rodata
  .Lcall28_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+304]
 mov rdx, qword ptr [r12+312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall28_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain13_n7_α
 jmp xchain13_n7_α
xchain13_n6_β:
 jmp xchain13_n7_α
xchain13_n7_α:
xargsub64_n0_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 344], rax
 jmp xicnarg63_done
 xargsub64_n0_β:
 jmp xchain13_n8_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "9r1257"
xicnarg63_done:
xargsub67_n0_α:
# IR_LIT_I
bb30_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 360], rax
 jmp xicnarg66_done
 xargsub67_n0_β:
 jmp xchain13_n8_α
.Lx68_0:
 .quad 943
xicnarg66_done:
bb31_α:
  .section .rodata
  .Lcall31_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+336]
 mov rdx, qword ptr [r12+344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+352]
 mov rdx, qword ptr [r12+360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall31_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain13_n8_α
 jmp xchain13_n8_α
xchain13_n7_β:
 jmp xchain13_n8_α
xchain13_n8_α:
xargsub71_n0_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 392], rax
 jmp xicnarg70_done
 xargsub71_n0_β:
 jmp xchain13_n9_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "10r1257"
xicnarg70_done:
xargsub74_n0_α:
# IR_LIT_I
bb33_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 408], rax
 jmp xicnarg73_done
 xargsub74_n0_β:
 jmp xchain13_n9_α
.Lx75_0:
 .quad 1257
xicnarg73_done:
bb34_α:
  .section .rodata
  .Lcall34_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+384]
 mov rdx, qword ptr [r12+392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+400]
 mov rdx, qword ptr [r12+408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall34_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain13_n9_α
 jmp xchain13_n9_α
xchain13_n8_β:
 jmp xchain13_n9_α
xchain13_n9_α:
xargsub78_n0_α:
# IR_LIT_S
bb35_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 440], rax
 jmp xicnarg77_done
 xargsub78_n0_β:
 jmp xchain13_n10_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "11r1257"
xicnarg77_done:
xargsub81_n0_α:
# IR_LIT_I
bb36_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 456], rax
 jmp xicnarg80_done
 xargsub81_n0_β:
 jmp xchain13_n10_α
.Lx82_0:
 .quad 1635
xicnarg80_done:
bb37_α:
  .section .rodata
  .Lcall37_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+432]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+448]
 mov rdx, qword ptr [r12+456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall37_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain13_n10_α
 jmp xchain13_n10_α
xchain13_n9_β:
 jmp xchain13_n10_α
xchain13_n10_α:
xargsub85_n0_α:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 488], rax
 jmp xicnarg84_done
 xargsub85_n0_β:
 jmp xchain13_n11_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "12r1257"
xicnarg84_done:
xargsub88_n0_α:
# IR_LIT_I
bb39_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 504], rax
 jmp xicnarg87_done
 xargsub88_n0_β:
 jmp xchain13_n11_α
.Lx89_0:
 .quad 2083
xicnarg87_done:
bb40_α:
  .section .rodata
  .Lcall40_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+496]
 mov rdx, qword ptr [r12+504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall40_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain13_n11_α
 jmp xchain13_n11_α
xchain13_n10_β:
 jmp xchain13_n11_α
xchain13_n11_α:
xargsub92_n0_α:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [r12 + 536], rax
 jmp xicnarg91_done
 xargsub92_n0_β:
 jmp xchain13_n12_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "13r1257"
xicnarg91_done:
xargsub95_n0_α:
# IR_LIT_I
bb42_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 552], rax
 jmp xicnarg94_done
 xargsub95_n0_β:
 jmp xchain13_n12_α
.Lx96_0:
 .quad 2607
xicnarg94_done:
bb43_α:
  .section .rodata
  .Lcall43_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+528]
 mov rdx, qword ptr [r12+536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+544]
 mov rdx, qword ptr [r12+552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall43_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain13_n12_α
 jmp xchain13_n12_α
xchain13_n11_β:
 jmp xchain13_n12_α
xchain13_n12_α:
xargsub99_n0_α:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 584], rax
 jmp xicnarg98_done
 xargsub99_n0_β:
 jmp xchain13_n13_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "19r1257"
xicnarg98_done:
xargsub102_n0_α:
# IR_LIT_I
bb45_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 600], rax
 jmp xicnarg101_done
 xargsub102_n0_β:
 jmp xchain13_n13_α
.Lx103_0:
 .quad 7683
xicnarg101_done:
bb46_α:
  .section .rodata
  .Lcall46_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+576]
 mov rdx, qword ptr [r12+584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+592]
 mov rdx, qword ptr [r12+600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall46_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain13_n13_α
 jmp xchain13_n13_α
xchain13_n12_β:
 jmp xchain13_n13_α
xchain13_n13_α:
xargsub106_n0_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 632], rax
 jmp xicnarg105_done
 xargsub106_n0_β:
 jmp xchain13_n14_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "23r1257"
xicnarg105_done:
xargsub109_n0_α:
# IR_LIT_I
bb48_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 648], rax
 jmp xicnarg108_done
 xargsub109_n0_β:
 jmp xchain13_n14_α
.Lx110_0:
 .quad 13347
xicnarg108_done:
bb49_α:
  .section .rodata
  .Lcall49_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+624]
 mov rdx, qword ptr [r12+632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+640]
 mov rdx, qword ptr [r12+648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall49_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain13_n14_α
 jmp xchain13_n14_α
xchain13_n13_β:
 jmp xchain13_n14_α
xchain13_n14_α:
xargsub113_n0_α:
# IR_LIT_S
bb50_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 680], rax
 jmp xicnarg112_done
 xargsub113_n0_β:
 jmp xchain13_n15_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "29r1257"
xicnarg112_done:
xargsub116_n0_α:
# IR_LIT_I
bb51_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 696], rax
 jmp xicnarg115_done
 xargsub116_n0_β:
 jmp xchain13_n15_α
.Lx117_0:
 .quad 26223
xicnarg115_done:
bb52_α:
  .section .rodata
  .Lcall52_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+688]
 mov rdx, qword ptr [r12+696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall52_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain13_n15_α
 jmp xchain13_n15_α
xchain13_n14_β:
 jmp xchain13_n15_α
xchain13_n15_α:
xargsub120_n0_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [r12 + 728], rax
 jmp xicnarg119_done
 xargsub120_n0_β:
 jmp xchain13_n16_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "31r1257"
xicnarg119_done:
xargsub123_n0_α:
# IR_LIT_I
bb54_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [r12 + 744], rax
 jmp xicnarg122_done
 xargsub123_n0_β:
 jmp xchain13_n16_α
.Lx124_0:
 .quad 31875
xicnarg122_done:
bb55_α:
  .section .rodata
  .Lcall55_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+720]
 mov rdx, qword ptr [r12+728]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+736]
 mov rdx, qword ptr [r12+744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall55_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain13_n16_α
 jmp xchain13_n16_α
xchain13_n15_β:
 jmp xchain13_n16_α
xchain13_n16_α:
xargsub127_n0_α:
# IR_LIT_S
bb56_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 776], rax
 jmp xicnarg126_done
 xargsub127_n0_β:
 jmp xchain13_n17_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "36r1257"
xicnarg126_done:
xargsub130_n0_α:
# IR_LIT_I
bb57_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 792], rax
 jmp xicnarg129_done
 xargsub130_n0_β:
 jmp xchain13_n17_α
.Lx131_0:
 .quad 49435
xicnarg129_done:
bb58_α:
  .section .rodata
  .Lcall58_pname: .string "try"
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
   lea rdi, [rip + .Lcall58_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain13_n17_α
 jmp xchain13_n17_α
xchain13_n16_β:
 jmp xchain13_n17_α
xchain13_n17_α:
xargsub134_n0_α:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 824], rax
 jmp xicnarg133_done
 xargsub134_n0_β:
 jmp xchain13_n18_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "8r76054132752"
xicnarg133_done:
xargsub137_n0_α:
# IR_LIT_I
bb60_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 840], rax
 jmp xicnarg136_done
 xargsub137_n0_β:
 jmp xchain13_n18_α
.Lx138_0:
 .quad 8333080042
xicnarg136_done:
bb61_α:
  .section .rodata
  .Lcall61_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+816]
 mov rdx, qword ptr [r12+824]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+832]
 mov rdx, qword ptr [r12+840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain13_n18_α
 jmp xchain13_n18_α
xchain13_n17_β:
 jmp xchain13_n18_α
xchain13_n18_α:
xargsub141_n0_α:
# IR_LIT_S
bb62_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [r12 + 872], rax
 jmp xicnarg140_done
 xargsub141_n0_β:
 jmp xchain13_n19_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "9r76054132752"
xicnarg140_done:
xargsub144_n0_α:
# IR_LIT_I
bb63_α:
 mov qword ptr [r12 + 880], 6
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 888], rax
 jmp xicnarg143_done
 xargsub144_n0_β:
 jmp xchain13_n19_α
.Lx145_0:
 .quad 26758135154
xicnarg143_done:
bb64_α:
  .section .rodata
  .Lcall64_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+864]
 mov rdx, qword ptr [r12+872]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+880]
 mov rdx, qword ptr [r12+888]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall64_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain13_n19_α
 jmp xchain13_n19_α
xchain13_n18_β:
 jmp xchain13_n19_α
xchain13_n19_α:
xargsub148_n0_α:
# IR_LIT_S
bb65_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 920], rax
 jmp xicnarg147_done
 xargsub148_n0_β:
 jmp xchain13_n20_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "10r76054132752"
xicnarg147_done:
xargsub151_n0_α:
# IR_LIT_I
bb66_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 936], rax
 jmp xicnarg150_done
 xargsub151_n0_β:
 jmp xchain13_n20_α
.Lx152_0:
 .quad 76054132752
xicnarg150_done:
bb67_α:
  .section .rodata
  .Lcall67_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+912]
 mov rdx, qword ptr [r12+920]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+928]
 mov rdx, qword ptr [r12+936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall67_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain13_n20_α
 jmp xchain13_n20_α
xchain13_n19_β:
 jmp xchain13_n20_α
xchain13_n20_α:
xargsub155_n0_α:
# IR_LIT_S
bb68_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 968], rax
 jmp xicnarg154_done
 xargsub155_n0_β:
 jmp xchain13_n21_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "11r76054132752"
xicnarg154_done:
xargsub158_n0_α:
# IR_LIT_I
bb69_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 984], rax
 jmp xicnarg157_done
 xargsub158_n0_β:
 jmp xchain13_n21_α
.Lx159_0:
 .quad 195814388992
xicnarg157_done:
bb70_α:
  .section .rodata
  .Lcall70_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+960]
 mov rdx, qword ptr [r12+968]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+976]
 mov rdx, qword ptr [r12+984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall70_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain13_n21_α
 jmp xchain13_n21_α
xchain13_n20_β:
 jmp xchain13_n21_α
xchain13_n21_α:
xargsub162_n0_α:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [r12 + 1016], rax
 jmp xicnarg161_done
 xargsub162_n0_β:
 jmp xchain13_n22_α
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string "12r76054132752"
xicnarg161_done:
xargsub165_n0_α:
# IR_LIT_I
bb72_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 1032], rax
 jmp xicnarg164_done
 xargsub165_n0_β:
 jmp xchain13_n22_α
.Lx166_0:
 .quad 464571650222
xicnarg164_done:
bb73_α:
  .section .rodata
  .Lcall73_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+100]
 mov rdx, qword ptr [r12+101]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+102]
 mov rdx, qword ptr [r12+103]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall73_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain13_n22_α
 jmp xchain13_n22_α
xchain13_n21_β:
 jmp xchain13_n22_α
xchain13_n22_α:
xargsub169_n0_α:
# IR_LIT_S
bb74_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [r12 + 1064], rax
 jmp xicnarg168_done
 xargsub169_n0_β:
 jmp xchain13_n23_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "13r76054132752"
xicnarg168_done:
xargsub172_n0_α:
# IR_LIT_I
bb75_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 1080], rax
 jmp xicnarg171_done
 xargsub172_n0_β:
 jmp xchain13_n23_α
.Lx173_0:
 .quad 1028969951622
xicnarg171_done:
bb76_α:
  .section .rodata
  .Lcall76_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+105]
 mov rdx, qword ptr [r12+106]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+107]
 mov rdx, qword ptr [r12+108]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall76_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain13_n23_α
 jmp xchain13_n23_α
xchain13_n22_β:
 jmp xchain13_n23_α
xchain13_n23_α:
xargsub176_n0_α:
# IR_LIT_S
bb77_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [r12 + 1112], rax
 jmp xicnarg175_done
 xargsub176_n0_β:
 jmp xchain13_n24_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "19r76054132752"
xicnarg175_done:
xargsub179_n0_α:
# IR_LIT_I
bb78_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 1128], rax
 jmp xicnarg178_done
 xargsub179_n0_β:
 jmp xchain13_n24_α
.Lx180_0:
 .quad 44858250416904
xicnarg178_done:
bb79_α:
  .section .rodata
  .Lcall79_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+110]
 mov rdx, qword ptr [r12+111]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall79_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain13_n24_α
 jmp xchain13_n24_α
xchain13_n23_β:
 jmp xchain13_n24_α
xchain13_n24_α:
xargsub183_n0_α:
# IR_LIT_S
bb80_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 1160], rax
 jmp xicnarg182_done
 xargsub183_n0_β:
 jmp xchain13_n25_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "23r76054132752"
xicnarg182_done:
xargsub186_n0_α:
# IR_LIT_I
bb81_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 1176], rax
 jmp xicnarg185_done
 xargsub186_n0_β:
 jmp xchain13_n25_α
.Lx187_0:
 .quad 300810118039132
xicnarg185_done:
bb82_α:
  .section .rodata
  .Lcall82_pname: .string "try"
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
   lea rdi, [rip + .Lcall82_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain13_n25_α
 jmp xchain13_n25_α
xchain13_n24_β:
 jmp xchain13_n25_α
xchain13_n25_α:
xargsub190_n0_α:
# IR_LIT_S
bb83_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [r12 + 1208], rax
 jmp xicnarg189_done
 xargsub190_n0_β:
 jmp xchain13_n26_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "29r76054132752"
xicnarg189_done:
xargsub193_n0_α:
# IR_LIT_I
bb84_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 1224], rax
 jmp xicnarg192_done
 xargsub193_n0_β:
 jmp xchain13_n26_α
.Lx194_0:
 .quad 3032082160319254
xicnarg192_done:
bb85_α:
  .section .rodata
  .Lcall85_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+121]
 mov rdx, qword ptr [r12+122]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall85_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain13_n26_α
 jmp xchain13_n26_α
xchain13_n25_β:
 jmp xchain13_n26_α
xchain13_n26_α:
xargsub197_n0_α:
# IR_LIT_S
bb86_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [r12 + 1256], rax
 jmp xicnarg196_done
 xargsub197_n0_β:
 jmp xchain13_n27_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "31r76054132752"
xicnarg196_done:
xargsub200_n0_α:
# IR_LIT_I
bb87_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 1272], rax
 jmp xicnarg199_done
 xargsub200_n0_β:
 jmp xchain13_n27_α
.Lx201_0:
 .quad 5896176886381092
xicnarg199_done:
bb88_α:
  .section .rodata
  .Lcall88_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+124]
 mov rdx, qword ptr [r12+125]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+126]
 mov rdx, qword ptr [r12+127]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall88_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain13_n27_α
 jmp xchain13_n27_α
xchain13_n26_β:
 jmp xchain13_n27_α
xchain13_n27_α:
xargsub204_n0_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 1304], rax
 jmp xicnarg203_done
 xargsub204_n0_β:
 jmp xchain13_n28_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "36r76054132752"
xicnarg203_done:
xargsub207_n0_α:
# IR_LIT_I
bb90_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [r12 + 1320], rax
 jmp xicnarg206_done
 xargsub207_n0_β:
 jmp xchain13_n28_α
.Lx208_0:
 .quad 26202869414008742
xicnarg206_done:
bb91_α:
  .section .rodata
  .Lcall91_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+129]
 mov rdx, qword ptr [r12+130]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+131]
 mov rdx, qword ptr [r12+132]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain13_n28_α
 jmp xchain13_n28_α
xchain13_n27_β:
 jmp xchain13_n28_α
xchain13_n28_α:
xargsub211_n0_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 1352], rax
 jmp xicnarg210_done
 xargsub211_n0_β:
 jmp xchain13_n29_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "2r01001010100010101010"
xicnarg210_done:
xargsub214_n0_α:
# IR_LIT_I
bb93_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 1368], rax
 jmp xicnarg213_done
 xargsub214_n0_β:
 jmp xchain13_n29_α
.Lx215_0:
 .quad 305322
xicnarg213_done:
bb94_α:
  .section .rodata
  .Lcall94_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+134]
 mov rdx, qword ptr [r12+135]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+136]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall94_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain13_n29_α
 jmp xchain13_n29_α
xchain13_n28_β:
 jmp xchain13_n29_α
xchain13_n29_α:
xargsub218_n0_α:
# IR_LIT_S
bb95_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [r12 + 1400], rax
 jmp xicnarg217_done
 xargsub218_n0_β:
 jmp xchain13_n30_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "2r111111111111111111111111111111111111111111111111111111111111111"
xicnarg217_done:
xargsub221_n0_α:
# IR_LIT_I
bb96_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [r12 + 1416], rax
 jmp xicnarg220_done
 xargsub221_n0_β:
 jmp xchain13_n30_α
.Lx222_0:
 .quad 9223372036854775807
xicnarg220_done:
bb97_α:
  .section .rodata
  .Lcall97_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+139]
 mov rdx, qword ptr [r12+140]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+140]
 mov rdx, qword ptr [r12+141]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall97_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain13_n30_α
 jmp xchain13_n30_α
xchain13_n29_β:
 jmp xchain13_n30_α
xchain13_n30_α:
xargsub225_n0_α:
# IR_LIT_S
bb98_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 1448], rax
 jmp xicnarg224_done
 xargsub225_n0_β:
 jmp xchain13_n31_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "2r1111111111111111111111111111111111111111111111111111111111111111"
xicnarg224_done:
xargsub228_n0_α:
# IR_LIT_I
bb99_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 1464], rax
 jmp xicnarg227_done
 xargsub228_n0_β:
 jmp xchain13_n31_α
.Lx229_0:
 .quad 18446744073709551615
xicnarg227_done:
bb100_α:
  .section .rodata
  .Lcall100_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+145]
 mov rdx, qword ptr [r12+146]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall100_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain13_n31_α
 jmp xchain13_n31_α
xchain13_n30_β:
 jmp xchain13_n31_α
xchain13_n31_α:
xargsub232_n0_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 1488], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 1496], rax
 jmp xicnarg231_done
 xargsub232_n0_β:
 jmp xchain13_n32_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "2r11111111111111111111111111111111111111111111111111111111111111111"
xicnarg231_done:
xargsub235_n0_α:
# IR_LIT_I
bb102_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [r12 + 1512], rax
 jmp xicnarg234_done
 xargsub235_n0_β:
 jmp xchain13_n32_α
.Lx236_0:
 .quad 18446744073709551615
xicnarg234_done:
bb103_α:
  .section .rodata
  .Lcall103_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+148]
 mov rdx, qword ptr [r12+149]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+150]
 mov rdx, qword ptr [r12+151]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall103_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain13_n32_α
 jmp xchain13_n32_α
xchain13_n31_β:
 jmp xchain13_n32_α
xchain13_n32_α:
xargsub239_n0_α:
# IR_LIT_S
bb104_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [r12 + 1544], rax
 jmp xicnarg238_done
 xargsub239_n0_β:
 jmp xchain13_n33_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "8r01234567"
xicnarg238_done:
xargsub242_n0_α:
# IR_LIT_I
bb105_α:
 mov qword ptr [r12 + 1552], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 1560], rax
 jmp xicnarg241_done
 xargsub242_n0_β:
 jmp xchain13_n33_α
.Lx243_0:
 .quad 342391
xicnarg241_done:
bb106_α:
  .section .rodata
  .Lcall106_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+153]
 mov rdx, qword ptr [r12+154]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+155]
 mov rdx, qword ptr [r12+156]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall106_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain13_n33_α
 jmp xchain13_n33_α
xchain13_n32_β:
 jmp xchain13_n33_α
xchain13_n33_α:
xargsub246_n0_α:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 1584], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 1592], rax
 jmp xicnarg245_done
 xargsub246_n0_β:
 jmp xchain13_n34_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "8r377777777777777777777"
xicnarg245_done:
xargsub249_n0_α:
# IR_LIT_I
bb108_α:
 mov qword ptr [r12 + 1600], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 1608], rax
 jmp xicnarg248_done
 xargsub249_n0_β:
 jmp xchain13_n34_α
.Lx250_0:
 .quad 4611686018427387903
xicnarg248_done:
bb109_α:
  .section .rodata
  .Lcall109_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+158]
 mov rdx, qword ptr [r12+159]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall109_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain13_n34_α
 jmp xchain13_n34_α
xchain13_n33_β:
 jmp xchain13_n34_α
xchain13_n34_α:
xargsub253_n0_α:
# IR_LIT_S
bb110_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 1640], rax
 jmp xicnarg252_done
 xargsub253_n0_β:
 jmp xchain13_n35_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "16r0123456789ABCDEF"
xicnarg252_done:
xargsub256_n0_α:
# IR_LIT_I
bb111_α:
 mov qword ptr [r12 + 1648], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1656], rax
 jmp xicnarg255_done
 xargsub256_n0_β:
 jmp xchain13_n35_α
.Lx257_0:
 .quad 81985529216486895
xicnarg255_done:
bb112_α:
  .section .rodata
  .Lcall112_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+163]
 mov rdx, qword ptr [r12+164]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+164]
 mov rdx, qword ptr [r12+165]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall112_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain13_n35_α
 jmp xchain13_n35_α
xchain13_n34_β:
 jmp xchain13_n35_α
xchain13_n35_α:
xargsub260_n0_α:
# IR_LIT_S
bb113_α:
 mov qword ptr [r12 + 1680], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [r12 + 1688], rax
 jmp xicnarg259_done
 xargsub260_n0_β:
 jmp xchain13_n36_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "16r7fffffffffffffff"
xicnarg259_done:
xargsub263_n0_α:
# IR_LIT_I
bb114_α:
 mov qword ptr [r12 + 1696], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [r12 + 1704], rax
 jmp xicnarg262_done
 xargsub263_n0_β:
 jmp xchain13_n36_α
.Lx264_0:
 .quad 9223372036854775807
xicnarg262_done:
bb115_α:
  .section .rodata
  .Lcall115_pname: .string "try"
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
   lea rdi, [rip + .Lcall115_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain13_n36_α
 jmp xchain13_n36_α
xchain13_n35_β:
 jmp xchain13_n36_α
xchain13_n36_α:
xargsub267_n0_α:
# IR_LIT_S
bb116_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 1736], rax
 jmp xicnarg266_done
 xargsub267_n0_β:
 jmp xchain13_n37_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "16rffffffffffffffff"
xicnarg266_done:
xargsub270_n0_α:
# IR_LIT_I
bb117_α:
 mov qword ptr [r12 + 1744], 6
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 1752], rax
 jmp xicnarg269_done
 xargsub270_n0_β:
 jmp xchain13_n37_α
.Lx271_0:
 .quad 18446744073709551615
xicnarg269_done:
bb118_α:
  .section .rodata
  .Lcall118_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+172]
 mov rdx, qword ptr [r12+173]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+174]
 mov rdx, qword ptr [r12+175]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall118_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain13_n37_α
 jmp xchain13_n37_α
xchain13_n36_β:
 jmp xchain13_n37_α
xchain13_n37_α:
xargsub274_n0_α:
# IR_LIT_S
bb119_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 1784], rax
 jmp xicnarg273_done
 xargsub274_n0_β:
 jmp xchain13_n38_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "16r10000000000000000"
xicnarg273_done:
xargsub277_n0_α:
# IR_LIT_I
bb120_α:
 mov qword ptr [r12 + 1792], 6
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [r12 + 1800], rax
 jmp xicnarg276_done
 xargsub277_n0_β:
 jmp xchain13_n38_α
.Lx278_0:
 .quad 0
xicnarg276_done:
bb121_α:
  .section .rodata
  .Lcall121_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+177]
 mov rdx, qword ptr [r12+178]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+179]
 mov rdx, qword ptr [r12+180]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall121_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain13_n38_α
 jmp xchain13_n38_α
xchain13_n37_β:
 jmp xchain13_n38_α
xchain13_n38_α:
xargsub281_n0_α:
# IR_LIT_S
bb122_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [r12 + 1832], rax
 jmp xicnarg280_done
 xargsub281_n0_β:
 jmp xchain13_n39_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "16r123456789ABCDEF01234"
xicnarg280_done:
xargsub284_n0_α:
# IR_LIT_I
bb123_α:
 mov qword ptr [r12 + 1840], 6
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [r12 + 1848], rax
 jmp xicnarg283_done
 xargsub284_n0_β:
 jmp xchain13_n39_α
.Lx285_0:
 .quad 6230900220451885620
xicnarg283_done:
bb124_α:
  .section .rodata
  .Lcall124_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+182]
 mov rdx, qword ptr [r12+183]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+184]
 mov rdx, qword ptr [r12+184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall124_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain13_n39_α
 jmp xchain13_n39_α
xchain13_n38_β:
 jmp xchain13_n39_α
xchain13_n39_α:
xargsub288_n0_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [r12 + 1880], rax
 jmp xicnarg287_done
 xargsub288_n0_β:
 jmp xchain13_n40_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "36rICON"
xicnarg287_done:
xargsub291_n0_α:
# IR_LIT_I
bb126_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [r12 + 1896], rax
 jmp xicnarg290_done
 xargsub291_n0_β:
 jmp xchain13_n40_α
.Lx292_0:
 .quad 856247
xicnarg290_done:
bb127_α:
  .section .rodata
  .Lcall127_pname: .string "try"
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
   lea rdi, [rip + .Lcall127_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain13_n40_α
 jmp xchain13_n40_α
xchain13_n39_β:
 jmp xchain13_n40_α
xchain13_n40_α:
xargsub295_n0_α:
# IR_LIT_S
bb128_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [r12 + 1928], rax
 jmp xicnarg294_done
 xargsub295_n0_β:
 jmp xchain13_n41_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "36rIcon"
xicnarg294_done:
xargsub298_n0_α:
# IR_LIT_I
bb129_α:
 mov qword ptr [r12 + 1936], 6
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 1944], rax
 jmp xicnarg297_done
 xargsub298_n0_β:
 jmp xchain13_n41_α
.Lx299_0:
 .quad 856247
xicnarg297_done:
bb130_α:
  .section .rodata
  .Lcall130_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+192]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+193]
 mov rdx, qword ptr [r12+194]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall130_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain13_n41_α
 jmp xchain13_n41_α
xchain13_n40_β:
 jmp xchain13_n41_α
xchain13_n41_α:
xargsub302_n0_α:
# IR_LIT_S
bb131_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [r12 + 1976], rax
 jmp xicnarg301_done
 xargsub302_n0_β:
 jmp xchain13_n42_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "36r123456789AEIOU"
xicnarg301_done:
xargsub305_n0_α:
# IR_LIT_I
bb132_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 1992], rax
 jmp xicnarg304_done
 xargsub305_n0_β:
 jmp xchain13_n42_α
.Lx306_0:
 .quad 14447809231090394142
xicnarg304_done:
bb133_α:
  .section .rodata
  .Lcall133_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+196]
 mov rdx, qword ptr [r12+197]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+198]
 mov rdx, qword ptr [r12+199]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall133_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain13_n42_α
 jmp xchain13_n42_α
xchain13_n41_β:
 jmp xchain13_n42_α
xchain13_n42_α:
xargsub309_n0_α:
# IR_LIT_S
bb134_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [r12 + 2024], rax
 jmp xicnarg308_done
 xargsub309_n0_β:
 jmp main_ω
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210"
xicnarg308_done:
xargsub312_n0_α:
# IR_LIT_I
bb135_α:
 mov qword ptr [r12 + 2032], 6
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [r12 + 2040], rax
 jmp xicnarg311_done
 xargsub312_n0_β:
 jmp main_ω
.Lx313_0:
 .quad 6554241108638434564
xicnarg311_done:
bb136_α:
  .section .rodata
  .Lcall136_pname: .string "try"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+201]
 mov rdx, qword ptr [r12+202]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+203]
 mov rdx, qword ptr [r12+204]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall136_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain13_n42_β:
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
