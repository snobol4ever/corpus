  .intel_syntax noprefix
  .text
  .globl proc_limage_α
proc_limage_α:
#=======================================================================================================================
    .global proc_limage_α
    .global proc_limage_β
    .global proc_limage_γ
    .global proc_limage_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_limage_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n6_α
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n6_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string ". ["
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n6_α
xchain0_n3_α:
# IR_UNOP
bb4_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "]"
xchain0_n5_α:
bb6_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx8_2]
 mov qword ptr [r12 + 136], rax
 jmp .Lx8_3
.Lx8_2:
 .quad .Lx8_2_s
.Lx8_2_s:
 .string ". ["
.Lx8_3:
# marshal arg2 = nested producer-box slot [r12+64] -> [r12+144]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 152], rax
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx8_6]
 mov qword ptr [r12 + 168], rax
 jmp .Lx8_7
.Lx8_6:
 .quad .Lx8_6_s
.Lx8_6_s:
 .string "]"
.Lx8_7:
  .section .rodata
  .Lrkfn9: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 112]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string " "
xchain0_n7_α:
bb8_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+208] -> [r12+208]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn12: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string " "
.Lx13_1:
# marshal arg0 = nested producer-box slot [r12+208] -> [r12+272]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lcallfn14: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn14]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
  .section .rodata
  .Lrkfn15: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_EVERY
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn18: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 304]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n11_α
xchain0_n11_α:
# IR_RETURN
bb12_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_limage_γ
proc_limage_β:
jmp proc_limage_ω
proc_limage_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_limage_ω:
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
  .Lstartup_pname0: .string "limage"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_limage_α]
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
xchain20_n0_α:
bb13_α:
# BOX IR_CALL args(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn22: .string "args"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain20_n2_α
 jmp xchain20_n1_α
 xchain20_n0_β:
 jmp xchain20_n2_α
xchain20_n1_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_write_any_nl@PLT
 jmp xchain20_n2_α
xchain20_n1_β:
xchain20_n1_β:
 jmp xchain20_n2_α
xchain20_n2_α:
bb15_α:
# BOX IR_CALL args(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn25: .string "args"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain20_n4_α
 jmp xchain20_n3_α
 xchain20_n2_β:
 jmp xchain20_n4_α
xchain20_n3_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain20_n4_α
xchain20_n3_β:
xchain20_n3_β:
 jmp xchain20_n4_α
xchain20_n4_α:
xargsub28_n0_α:
# IR_LIT_S
bb17_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 168], rax
 jmp xicnarg27_done
 xargsub28_n0_β:
 jmp xchain20_n5_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "a"
xicnarg27_done:
xargsub31_n0_α:
bb18_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn33: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain20_n5_α
 jmp xicnarg30_done
 xargsub31_n0_β:
 jmp xchain20_n5_α
xicnarg30_done:
bb19_α:
  .section .rodata
  .Lcall19_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+168]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+176]
 mov rdx, qword ptr [r12+184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall19_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain20_n5_α
 jmp xchain20_n5_α
xchain20_n4_β:
 jmp xchain20_n5_α
xchain20_n5_α:
xargsub36_n0_α:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 216], rax
 jmp xicnarg35_done
 xargsub36_n0_β:
 jmp xchain20_n6_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "b"
xicnarg35_done:
xargsub39_n0_α:
bb21_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 2
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn41: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain20_n6_α
 jmp xicnarg38_done
 xargsub39_n0_β:
 jmp xchain20_n6_α
xicnarg38_done:
bb22_α:
  .section .rodata
  .Lcall22_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+208]
 mov rdx, qword ptr [r12+216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall22_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain20_n6_α
 jmp xchain20_n6_α
xchain20_n5_β:
 jmp xchain20_n6_α
xchain20_n6_α:
xargsub44_n0_α:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 280], rax
 jmp xicnarg43_done
 xargsub44_n0_β:
 jmp xchain20_n7_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "c"
xicnarg43_done:
xargsub47_n0_α:
bb24_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+304] -> [r12+304]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = LIT_I -> [r12+320]
 mov qword ptr [r12 + 320], 6
 movabs rax, 3
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn49: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn49]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain20_n7_α
 jmp xicnarg46_done
 xargsub47_n0_β:
 jmp xchain20_n7_α
xicnarg46_done:
bb25_α:
  .section .rodata
  .Lcall25_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+272]
 mov rdx, qword ptr [r12+280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain20_n7_α
 jmp xchain20_n7_α
xchain20_n6_β:
 jmp xchain20_n7_α
xchain20_n7_α:
xargsub52_n0_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 360], rax
 jmp xicnarg51_done
 xargsub52_n0_β:
 jmp xchain20_n8_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "d"
xicnarg51_done:
xargsub55_n0_α:
bb27_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+384]
 mov qword ptr [r12 + 384], 6
 movabs rax, 4
 mov qword ptr [r12 + 392], rax
# marshal arg1 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 5
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn57: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn57]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain20_n8_α
 jmp xicnarg54_done
 xargsub55_n0_β:
 jmp xchain20_n8_α
xicnarg54_done:
bb28_α:
  .section .rodata
  .Lcall28_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+352]
 mov rdx, qword ptr [r12+360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+368]
 mov rdx, qword ptr [r12+376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall28_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain20_n8_α
 jmp xchain20_n8_α
xchain20_n7_β:
 jmp xchain20_n8_α
xchain20_n8_α:
xargsub60_n0_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 440], rax
 jmp xicnarg59_done
 xargsub60_n0_β:
 jmp xchain20_n9_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "d"
xicnarg59_done:
xargsub63_n0_α:
bb30_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+464]
 mov qword ptr [r12 + 464], 6
 movabs rax, 6
 mov qword ptr [r12 + 472], rax
# marshal arg1 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 7
 mov qword ptr [r12 + 488], rax
# marshal arg2 = LIT_I -> [r12+496]
 mov qword ptr [r12 + 496], 6
 movabs rax, 8
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn65: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain20_n9_α
 jmp xicnarg62_done
 xargsub63_n0_β:
 jmp xchain20_n9_α
xicnarg62_done:
bb31_α:
  .section .rodata
  .Lcall31_pname: .string "limage"
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
   lea rdi, [rip + .Lcall31_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain20_n9_α
 jmp xchain20_n9_α
xchain20_n8_β:
 jmp xchain20_n9_α
xchain20_n9_α:
xargsub68_n0_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 536], rax
 jmp xicnarg67_done
 xargsub68_n0_β:
 jmp xchain20_n10_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "e"
xicnarg67_done:
xargsub71_n0_α:
bb33_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn73: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn73]
 lea rsi, [r12 + 544]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain20_n10_α
 jmp xicnarg70_done
xargsub71_n0_β:
 jmp xchain20_n10_α
xicnarg70_done:
bb34_α:
  .section .rodata
  .Lcall34_pname: .string "limage"
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
   lea rdi, [rip + .Lcall34_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain20_n10_α
 jmp xchain20_n10_α
xchain20_n9_β:
 jmp xchain20_n10_α
xchain20_n10_α:
xargsub76_n0_α:
# IR_LIT_S
bb35_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 584], rax
 jmp xicnarg75_done
 xargsub76_n0_β:
 jmp xchain20_n11_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "f"
xicnarg75_done:
xargsub79_n0_α:
bb36_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+624] -> [r12+608]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lbynamefn81: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn81]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain20_n11_α
 jmp xicnarg78_done
xargsub79_n0_β:
 jmp xchain20_n11_α
xicnarg78_done:
bb37_α:
  .section .rodata
  .Lcall37_pname: .string "limage"
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
   lea rdi, [rip + .Lcall37_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain20_n11_α
 jmp xchain20_n11_α
xchain20_n10_β:
 jmp xchain20_n11_α
xchain20_n11_α:
xargsub84_n0_α:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 664], rax
 jmp xicnarg83_done
 xargsub84_n0_β:
 jmp xchain20_n12_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "g"
xicnarg83_done:
xargsub87_n0_α:
bb39_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+688]
 mov qword ptr [r12 + 688], 6
 movabs rax, 1
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lbynamefn89: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn89]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain20_n12_α
 jmp xicnarg86_done
xargsub87_n0_β:
 jmp xchain20_n12_α
xicnarg86_done:
bb40_α:
  .section .rodata
  .Lcall40_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+656]
 mov rdx, qword ptr [r12+664]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall40_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain20_n12_α
 jmp xchain20_n12_α
xchain20_n11_β:
 jmp xchain20_n12_α
xchain20_n12_α:
xargsub92_n0_α:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [r12 + 728], rax
 jmp xicnarg91_done
 xargsub92_n0_β:
 jmp xchain20_n13_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "h"
xicnarg91_done:
xargsub95_n0_α:
bb42_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 2
 mov qword ptr [r12 + 760], rax
# marshal arg1 = LIT_I -> [r12+768]
 mov qword ptr [r12 + 768], 6
 movabs rax, 3
 mov qword ptr [r12 + 776], rax
# marshal arg2 = LIT_I -> [r12+784]
 mov qword ptr [r12 + 784], 6
 movabs rax, 4
 mov qword ptr [r12 + 792], rax
# marshal arg3 = LIT_I -> [r12+800]
 mov qword ptr [r12 + 800], 6
 movabs rax, 5
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lbynamefn97: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn97]
 lea rsi, [r12 + 752]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain20_n13_α
 jmp xicnarg94_done
xargsub95_n0_β:
 jmp xchain20_n13_α
xicnarg94_done:
bb43_α:
  .section .rodata
  .Lcall43_pname: .string "limage"
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
   lea rdi, [rip + .Lcall43_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain20_n13_α
 jmp xchain20_n13_α
xchain20_n12_β:
 jmp xchain20_n13_α
xchain20_n13_α:
xargsub100_n0_α:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [r12 + 840], rax
 jmp xicnarg99_done
 xargsub100_n0_β:
 jmp xchain20_n14_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "i"
xicnarg99_done:
xargsub103_n0_α:
bb45_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+864]
 mov qword ptr [r12 + 864], 6
 movabs rax, 1
 mov qword ptr [r12 + 872], rax
# marshal arg1 = LIT_I -> [r12+880]
 mov qword ptr [r12 + 880], 6
 movabs rax, 2
 mov qword ptr [r12 + 888], rax
# marshal arg2 = LIT_I -> [r12+896]
 mov qword ptr [r12 + 896], 6
 movabs rax, 3
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lbynamefn105: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn105]
 lea rsi, [r12 + 864]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain20_n14_α
 jmp xargsub103_n1_α
xargsub103_n0_β:
 jmp xchain20_n14_α
xargsub103_n1_α:
bb46_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+928]
 mov qword ptr [r12 + 928], 6
 movabs rax, 4
 mov qword ptr [r12 + 936], rax
# marshal arg1 = LIT_I -> [r12+944]
 mov qword ptr [r12 + 944], 6
 movabs rax, 5
 mov qword ptr [r12 + 952], rax
# marshal arg2 = LIT_I -> [r12+960]
 mov qword ptr [r12 + 960], 6
 movabs rax, 6
 mov qword ptr [r12 + 968], rax
# marshal arg3 = LIT_I -> [r12+976]
 mov qword ptr [r12 + 976], 6
 movabs rax, 7
 mov qword ptr [r12 + 984], rax
# marshal arg4 = LIT_I -> [r12+992]
 mov qword ptr [r12 + 992], 6
 movabs rax, 8
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lbynamefn107: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn107]
 lea rsi, [r12 + 928]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain20_n14_α
 jmp xargsub103_n2_α
xargsub103_n1_β:
 jmp xchain20_n14_α
xargsub103_n2_α:
xargsub103_n2_β:
jmp xchain20_n14_α
jmp xchain20_n14_α
xicnarg102_done:
bb47_α:
  .section .rodata
  .Lcall47_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+832]
 mov rdx, qword ptr [r12+840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall47_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain20_n14_α
 jmp xchain20_n14_α
xchain20_n13_β:
 jmp xchain20_n14_α
xchain20_n14_α:
bb48_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+1040]
 mov qword ptr [r12 + 1040], 6
 movabs rax, 1
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = LIT_I -> [r12+1056]
 mov qword ptr [r12 + 1056], 6
 movabs rax, 2
 mov qword ptr [r12 + 1064], rax
# marshal arg2 = LIT_I -> [r12+1072]
 mov qword ptr [r12 + 1072], 6
 movabs rax, 3
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lbynamefn110: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn110]
 lea rsi, [r12 + 1040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain20_n16_α
 jmp xchain20_n15_α
xchain20_n14_β:
 jmp xchain20_n16_α
xchain20_n15_α:
bb49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain20_n16_α
 xchain20_n15_β:
 jmp xchain20_n16_α
xchain20_n16_α:
bb50_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+1120]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lbynamefn113: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn113]
 lea rsi, [r12 + 1120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain20_n17_α
 jmp xchain20_n17_α
xchain20_n16_β:
 jmp xchain20_n17_α
xchain20_n17_α:
xargsub115_n0_α:
# IR_LIT_S
bb51_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 1144], rax
 jmp xicnarg114_done
 xargsub115_n0_β:
 jmp xchain20_n18_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "A"
xicnarg114_done:
xargsub118_n0_α:
# IR_VAR
bb52_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg117_done
 xargsub118_n0_β:
 jmp xchain20_n18_α
xicnarg117_done:
bb53_α:
  .section .rodata
  .Lcall53_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+113]
 mov rdx, qword ptr [r12+114]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall53_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain20_n18_α
 jmp xchain20_n18_α
xchain20_n17_β:
 jmp xchain20_n18_α
xchain20_n18_α:
bb54_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+1184]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lbynamefn123: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn123]
 lea rsi, [r12 + 1184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain20_n19_α
 jmp xchain20_n19_α
xchain20_n18_β:
 jmp xchain20_n19_α
xchain20_n19_α:
xargsub125_n0_α:
# IR_LIT_S
bb55_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 1208], rax
 jmp xicnarg124_done
 xargsub125_n0_β:
 jmp xchain20_n20_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "B"
xicnarg124_done:
xargsub128_n0_α:
# IR_VAR
bb56_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg127_done
 xargsub128_n0_β:
 jmp xchain20_n20_α
xicnarg127_done:
bb57_α:
  .section .rodata
  .Lcall57_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall57_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain20_n20_α
 jmp xchain20_n20_α
xchain20_n19_β:
 jmp xchain20_n20_α
xchain20_n20_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain20_n21_α
 xchain20_n20_β:
 jmp xchain20_n23_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "\t"
xchain20_n21_α:
bb59_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1280]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lcallfn134: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn134]
 lea rsi, [r12 + 1280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
  .section .rodata
  .Lrkfn135: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain20_n23_α
 jmp xchain20_n22_α
 xchain20_n21_β:
 jmp xchain20_n23_α
xchain20_n22_α:
bb60_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1312]
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [r12 + 1320], rax
 jmp .Lx136_1
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "\t"
.Lx136_1:
# marshal arg0 = varslot [r12+0] -> [r12+1360]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lcallfn137: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn137]
 lea rsi, [r12 + 1360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
  .section .rodata
  .Lcallfn138: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn138]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
  .section .rodata
  .Lrkfn139: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain20_n23_α
 jmp xchain20_n23_α
 xchain20_n22_β:
 jmp xchain20_n23_α
xchain20_n23_α:
xargsub141_n0_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [r12 + 1384], rax
 jmp xicnarg140_done
 xargsub141_n0_β:
 jmp xchain20_n24_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "C"
xicnarg140_done:
xargsub144_n0_α:
# IR_VAR
bb62_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg143_done
 xargsub144_n0_β:
 jmp xchain20_n24_α
xicnarg143_done:
bb63_α:
  .section .rodata
  .Lcall64_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+137]
 mov rdx, qword ptr [r12+138]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall64_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain20_n24_α
 jmp xchain20_n24_α
xchain20_n23_β:
 jmp xchain20_n24_α
xchain20_n24_α:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain20_n25_α
 xchain20_n24_β:
 jmp xchain20_n27_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "\t"
xchain20_n25_α:
bb65_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1456]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lcallfn150: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn150]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
  .section .rodata
  .Lrkfn151: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 1440]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain20_n27_α
 jmp xchain20_n26_α
 xchain20_n25_β:
 jmp xchain20_n27_α
xchain20_n26_α:
bb66_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1488]
 mov qword ptr [r12 + 1488], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 1496], rax
 jmp .Lx152_1
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "\t"
.Lx152_1:
# marshal arg0 = varslot [r12+0] -> [r12+1536]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lcallfn153: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn153]
 lea rsi, [r12 + 1536]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
  .section .rodata
  .Lcallfn154: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn154]
 lea rsi, [r12 + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
  .section .rodata
  .Lrkfn155: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn155]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain20_n27_α
 jmp xchain20_n27_α
 xchain20_n26_β:
 jmp xchain20_n27_α
xchain20_n27_α:
xargsub157_n0_α:
# IR_LIT_S
bb67_α:
 mov qword ptr [r12 + 1552], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 1560], rax
 jmp xicnarg156_done
 xargsub157_n0_β:
 jmp xchain20_n28_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "D"
xicnarg156_done:
xargsub160_n0_α:
# IR_VAR
bb68_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg159_done
 xargsub160_n0_β:
 jmp xchain20_n28_α
xicnarg159_done:
bb69_α:
  .section .rodata
  .Lcall71_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+155]
 mov rdx, qword ptr [r12+156]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall71_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain20_n28_α
 jmp xchain20_n28_α
xchain20_n27_β:
 jmp xchain20_n28_α
xchain20_n28_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 1584], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain20_n29_α
 xchain20_n28_β:
 jmp xchain20_n31_α
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "\t"
xchain20_n29_α:
bb71_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1632]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lcallfn166: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn166]
 lea rsi, [r12 + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
  .section .rodata
  .Lrkfn167: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 1616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain20_n31_α
 jmp xchain20_n30_α
 xchain20_n29_β:
 jmp xchain20_n31_α
xchain20_n30_α:
bb72_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1664]
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 1672], rax
 jmp .Lx168_1
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "\t"
.Lx168_1:
# marshal arg0 = varslot [r12+0] -> [r12+1712]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lcallfn169: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn169]
 lea rsi, [r12 + 1712]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
  .section .rodata
  .Lcallfn170: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn170]
 lea rsi, [r12 + 1696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
  .section .rodata
  .Lrkfn171: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain20_n31_α
 jmp xchain20_n31_α
 xchain20_n30_β:
 jmp xchain20_n31_α
xchain20_n31_α:
xargsub173_n0_α:
# IR_LIT_S
bb73_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 1736], rax
 jmp xicnarg172_done
 xargsub173_n0_β:
 jmp xchain20_n32_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "E"
xicnarg172_done:
xargsub176_n0_α:
# IR_VAR
bb74_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg175_done
 xargsub176_n0_β:
 jmp xchain20_n32_α
xicnarg175_done:
bb75_α:
  .section .rodata
  .Lcall78_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+172]
 mov rdx, qword ptr [r12+173]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall78_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain20_n32_α
 jmp xchain20_n32_α
xchain20_n31_β:
 jmp xchain20_n32_α
xchain20_n32_α:
bb76_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+1776]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = LIT_I -> [r12+1792]
 mov qword ptr [r12 + 1792], 6
 movabs rax, 4
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lbynamefn181: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn181]
 lea rsi, [r12 + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain20_n33_α
 jmp xchain20_n33_α
xchain20_n32_β:
 jmp xchain20_n33_α
xchain20_n33_α:
xargsub183_n0_α:
# IR_LIT_S
bb77_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 1816], rax
 jmp xicnarg182_done
 xargsub183_n0_β:
 jmp xchain20_n34_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "F"
xicnarg182_done:
xargsub186_n0_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg185_done
 xargsub186_n0_β:
 jmp xchain20_n34_α
xicnarg185_done:
bb79_α:
  .section .rodata
  .Lcall82_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+180]
 mov rdx, qword ptr [r12+181]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall82_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain20_n34_α
 jmp xchain20_n34_α
xchain20_n33_β:
 jmp xchain20_n34_α
xchain20_n34_α:
bb80_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+1856]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1864], rax
# marshal arg1 = LIT_I -> [r12+1872]
 mov qword ptr [r12 + 1872], 6
 movabs rax, 5
 mov qword ptr [r12 + 1880], rax
# marshal arg2 = LIT_I -> [r12+1888]
 mov qword ptr [r12 + 1888], 6
 movabs rax, 6
 mov qword ptr [r12 + 1896], rax
# marshal arg3 = LIT_I -> [r12+1904]
 mov qword ptr [r12 + 1904], 6
 movabs rax, 7
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lbynamefn191: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn191]
 lea rsi, [r12 + 1856]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain20_n35_α
 jmp xchain20_n35_α
xchain20_n34_β:
 jmp xchain20_n35_α
xchain20_n35_α:
xargsub193_n0_α:
# IR_LIT_S
bb81_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 1928], rax
 jmp xicnarg192_done
 xargsub193_n0_β:
 jmp xchain20_n36_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "G"
xicnarg192_done:
xargsub196_n0_α:
# IR_VAR
bb82_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg195_done
 xargsub196_n0_β:
 jmp xchain20_n36_α
xicnarg195_done:
bb83_α:
  .section .rodata
  .Lcall86_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+192]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall86_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain20_n36_α
 jmp xchain20_n36_α
xchain20_n35_β:
 jmp xchain20_n36_α
xchain20_n36_α:
bb84_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+2016]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = LIT_I -> [r12+2032]
 mov qword ptr [r12 + 2032], 6
 movabs rax, 8
 mov qword ptr [r12 + 2040], rax
# marshal arg2 = LIT_I -> [r12+2048]
 mov qword ptr [r12 + 2048], 6
 movabs rax, 9
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lcallfn201: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn201]
 lea rsi, [r12 + 2016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
# marshal arg1 = LIT_I -> [r12+1984]
 mov qword ptr [r12 + 1984], 6
 movabs rax, 10
 mov qword ptr [r12 + 1992], rax
# marshal arg2 = LIT_I -> [r12+2000]
 mov qword ptr [r12 + 2000], 6
 movabs rax, 11
 mov qword ptr [r12 + 2008], rax
  .section .rodata
  .Lbynamefn202: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn202]
 lea rsi, [r12 + 1968]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain20_n37_α
 jmp xchain20_n37_α
xchain20_n36_β:
 jmp xchain20_n37_α
xchain20_n37_α:
xargsub204_n0_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 2064], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 2072], rax
 jmp xicnarg203_done
 xargsub204_n0_β:
 jmp xchain20_n38_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "H"
xicnarg203_done:
xargsub207_n0_α:
# IR_VAR
bb86_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg206_done
 xargsub207_n0_β:
 jmp xchain20_n38_α
xicnarg206_done:
bb87_α:
  .section .rodata
  .Lcall91_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+206]
 mov rdx, qword ptr [r12+207]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp eax, 99
 je xchain20_n38_α
 jmp xchain20_n38_α
xchain20_n37_β:
 jmp xchain20_n38_α
xchain20_n38_α:
bb88_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+2112]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = LIT_I -> [r12+2128]
 mov qword ptr [r12 + 2128], 6
 movabs rax, 12
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lbynamefn212: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn212]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain20_n39_α
 jmp xchain20_n39_α
xchain20_n38_β:
 jmp xchain20_n39_α
xchain20_n39_α:
xargsub214_n0_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 2152], rax
 jmp xicnarg213_done
 xargsub214_n0_β:
 jmp xchain20_n40_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "I"
xicnarg213_done:
xargsub217_n0_α:
# IR_VAR
bb90_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg216_done
 xargsub217_n0_β:
 jmp xchain20_n40_α
xicnarg216_done:
bb91_α:
  .section .rodata
  .Lcall95_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+214]
 mov rdx, qword ptr [r12+215]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall95_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain20_n40_α
 jmp xchain20_n40_α
xchain20_n39_β:
 jmp xchain20_n40_α
xchain20_n40_α:
bb92_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+2192]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = LIT_I -> [r12+2208]
 mov qword ptr [r12 + 2208], 6
 movabs rax, 13
 mov qword ptr [r12 + 2216], rax
# marshal arg2 = LIT_I -> [r12+2224]
 mov qword ptr [r12 + 2224], 6
 movabs rax, 14
 mov qword ptr [r12 + 2232], rax
# marshal arg3 = LIT_I -> [r12+2240]
 mov qword ptr [r12 + 2240], 6
 movabs rax, 15
 mov qword ptr [r12 + 2248], rax
  .section .rodata
  .Lbynamefn222: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn222]
 lea rsi, [r12 + 2192]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain20_n41_α
 jmp xchain20_n41_α
xchain20_n40_β:
 jmp xchain20_n41_α
xchain20_n41_α:
xargsub224_n0_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 2256], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 2264], rax
 jmp xicnarg223_done
 xargsub224_n0_β:
 jmp xchain20_n42_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "J"
xicnarg223_done:
xargsub227_n0_α:
# IR_VAR
bb94_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg226_done
 xargsub227_n0_β:
 jmp xchain20_n42_α
xicnarg226_done:
bb95_α:
  .section .rodata
  .Lcall99_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+225]
 mov rdx, qword ptr [r12+226]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall99_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain20_n42_α
 jmp xchain20_n42_α
xchain20_n41_β:
 jmp xchain20_n42_α
xchain20_n42_α:
bb96_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+2352]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2360], rax
# marshal arg1 = LIT_I -> [r12+2368]
 mov qword ptr [r12 + 2368], 6
 movabs rax, 16
 mov qword ptr [r12 + 2376], rax
# marshal arg2 = LIT_I -> [r12+2384]
 mov qword ptr [r12 + 2384], 6
 movabs rax, 17
 mov qword ptr [r12 + 2392], rax
  .section .rodata
  .Lcallfn232: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn232]
 lea rsi, [r12 + 2352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
# marshal arg1 = LIT_I -> [r12+2320]
 mov qword ptr [r12 + 2320], 6
 movabs rax, 18
 mov qword ptr [r12 + 2328], rax
# marshal arg2 = LIT_I -> [r12+2336]
 mov qword ptr [r12 + 2336], 6
 movabs rax, 19
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lbynamefn233: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn233]
 lea rsi, [r12 + 2304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je xchain20_n43_α
 jmp xchain20_n43_α
xchain20_n42_β:
 jmp xchain20_n43_α
xchain20_n43_α:
xargsub235_n0_α:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 2400], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [r12 + 2408], rax
 jmp xicnarg234_done
 xargsub235_n0_β:
 jmp xchain20_n44_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "K"
xicnarg234_done:
xargsub238_n0_α:
# IR_VAR
bb98_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg237_done
 xargsub238_n0_β:
 jmp xchain20_n44_α
xicnarg237_done:
bb99_α:
  .section .rodata
  .Lcall104_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+240]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall104_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 cmp eax, 99
 je xchain20_n44_α
 jmp xchain20_n44_α
xchain20_n43_β:
 jmp xchain20_n44_α
xchain20_n44_α:
bb100_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+2496]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2504], rax
# marshal arg1 = LIT_I -> [r12+2512]
 mov qword ptr [r12 + 2512], 6
 movabs rax, 20
 mov qword ptr [r12 + 2520], rax
# marshal arg2 = LIT_I -> [r12+2528]
 mov qword ptr [r12 + 2528], 6
 movabs rax, 21
 mov qword ptr [r12 + 2536], rax
  .section .rodata
  .Lcallfn243: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn243]
 lea rsi, [r12 + 2496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
# marshal arg1 = LIT_I -> [r12+2464]
 mov qword ptr [r12 + 2464], 6
 movabs rax, 22
 mov qword ptr [r12 + 2472], rax
# marshal arg2 = LIT_I -> [r12+2480]
 mov qword ptr [r12 + 2480], 6
 movabs rax, 23
 mov qword ptr [r12 + 2488], rax
  .section .rodata
  .Lbynamefn244: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn244]
 lea rsi, [r12 + 2448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain20_n45_α
 jmp xchain20_n45_α
xchain20_n44_β:
 jmp xchain20_n45_α
xchain20_n45_α:
xargsub246_n0_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 2544], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 2552], rax
 jmp xicnarg245_done
 xargsub246_n0_β:
 jmp xchain20_n46_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "L"
xicnarg245_done:
xargsub249_n0_α:
# IR_VAR
bb102_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg248_done
 xargsub249_n0_β:
 jmp xchain20_n46_α
xicnarg248_done:
bb103_α:
  .section .rodata
  .Lcall109_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+254]
 mov rdx, qword ptr [r12+255]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall109_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 cmp eax, 99
 je xchain20_n46_α
 jmp xchain20_n46_α
xchain20_n45_β:
 jmp xchain20_n46_α
xchain20_n46_α:
# IR_VAR
bb104_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang253_iter_done
 xbang253_iter_β:
 jmp xchain20_n49_α
xbang253_iter_done:
# IR_LIST_BANG
bb105_α:
 mov qword ptr [r12 + 2576], 0
.Lx257_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 2576]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2584], rax
 mov qword ptr [r12 + 2592], rdx
 cmp rax, 99
 je xchain20_n49_α
 jmp xchain20_n47_α
 xchain20_n46_β:
 inc qword ptr [r12 + 2576]
 jmp .Lx257_0
xchain20_n47_α:
# IR_LIT_I
bb106_α:
 mov qword ptr [r12 + 2600], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [r12 + 2608], rax
 jmp xchain20_n48_α
 xchain20_n47_β:
 jmp xchain20_n135_β
.Lx258_0:
 .quad 7
xchain20_n48_α:
# [walk_bb_node: kind=5 unhandled]
xchain20_n49_α:
# IR_EVERY
 jmp xchain20_n50_α
 xchain20_n49_β:
 jmp xchain20_n50_α
xchain20_n50_α:
xargsub262_n0_α:
# IR_LIT_S
bb109_α:
 mov qword ptr [r12 + 2648], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [r12 + 2656], rax
 jmp xicnarg261_done
 xargsub262_n0_β:
 jmp xchain20_n51_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "M"
xicnarg261_done:
xargsub265_n0_α:
# IR_VAR
bb110_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg264_done
 xargsub265_n0_β:
 jmp xchain20_n51_α
xicnarg264_done:
bb111_α:
  .section .rodata
  .Lcall117_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+264]
 mov rdx, qword ptr [r12+265]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall117_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2664], rax
 mov qword ptr [r12 + 2672], rdx
 cmp eax, 99
 je xchain20_n51_α
 jmp xchain20_n51_α
xchain20_n50_β:
 jmp xchain20_n51_α
xchain20_n51_α:
bb112_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+2696]
 mov qword ptr [r12 + 2696], 6
 movabs rax, 1
 mov qword ptr [r12 + 2704], rax
# marshal arg1 = LIT_I -> [r12+2712]
 mov qword ptr [r12 + 2712], 6
 movabs rax, 2
 mov qword ptr [r12 + 2720], rax
# marshal arg2 = LIT_I -> [r12+2728]
 mov qword ptr [r12 + 2728], 6
 movabs rax, 3
 mov qword ptr [r12 + 2736], rax
# marshal arg3 = LIT_I -> [r12+2744]
 mov qword ptr [r12 + 2744], 6
 movabs rax, 4
 mov qword ptr [r12 + 2752], rax
# marshal arg4 = LIT_I -> [r12+2760]
 mov qword ptr [r12 + 2760], 6
 movabs rax, 5
 mov qword ptr [r12 + 2768], rax
  .section .rodata
  .Lbynamefn270: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn270]
 lea rsi, [r12 + 2696]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2680], rax
 mov qword ptr [r12 + 2688], rdx
 cmp eax, 99
 je xchain20_n53_α
 jmp xchain20_n52_α
xchain20_n51_β:
 jmp xchain20_n53_α
xchain20_n52_α:
bb113_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2680]
 mov rdx, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 2776], rax
 mov qword ptr [r12 + 2784], rdx
 jmp xchain20_n53_α
 xchain20_n52_β:
 jmp xchain20_n53_α
xchain20_n53_α:
# IR_LIT_I
bb114_α:
 mov qword ptr [r12 + 2792], 6
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [r12 + 2800], rax
 jmp xchain20_n54_α
 xchain20_n53_β:
 jmp xchain20_n135_β
.Lx272_0:
 .quad 0
xchain20_n54_α:
# IR_VAR
bb115_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n55_α
 xchain20_n54_β:
 jmp xchain20_n135_β
xchain20_n55_α:
# IR_UNOP
bb116_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2808], rax
 mov qword ptr [r12 + 2816], rdx
 jmp xchain20_n56_α
 xchain20_n55_β:
 jmp xchain20_n135_β
xchain20_n56_α:
# IR_LIT_I
bb117_α:
 mov qword ptr [r12 + 2824], 6
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [r12 + 2832], rax
 jmp xchain20_n57_α
 xchain20_n56_β:
 jmp xchain20_n135_β
.Lx276_0:
 .quad 3
xchain20_n57_α:
bb118_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 2816]
 mov rcx, qword ptr [r12 + 2832]
 add rax, rcx
 mov qword ptr [r12 + 2840], 6
 mov qword ptr [r12 + 2848], rax
 jmp xchain20_n58_α
 xchain20_n57_β:
 jmp xchain20_n135_β
xchain20_n58_α:
# IR_TO
bb119_α:
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2872], rax
.Lx279_0:
 mov rax, qword ptr [r12 + 2872]
 mov rcx, qword ptr [r12 + 2848]
 cmp rax, rcx
 jg xchain20_n59_α
 mov qword ptr [r12 + 2856], 6
 mov qword ptr [r12 + 2864], rax
 jmp xchain20_n60_α
 xchain20_n58_β:
 inc qword ptr [r12 + 2872]
 jmp .Lx279_0
xchain20_n59_α:
# IR_EVERY
 jmp xchain20_n61_α
 xchain20_n59_β:
 jmp xchain20_n61_α
xchain20_n60_α:
bb121_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2856]
 mov rdx, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain20_n62_α
 xchain20_n60_β:
 jmp xchain20_n135_β
xchain20_n61_α:
xargsub283_n0_α:
# IR_LIT_S
bb122_α:
 mov qword ptr [r12 + 2896], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [r12 + 2904], rax
 jmp xicnarg282_done
 xargsub283_n0_β:
 jmp xchain20_n63_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "N"
xicnarg282_done:
xargsub286_n0_α:
# IR_VAR
bb123_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg285_done
 xargsub286_n0_β:
 jmp xchain20_n63_α
xicnarg285_done:
bb124_α:
  .section .rodata
  .Lcall130_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+289]
 mov rdx, qword ptr [r12+290]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall130_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain20_n63_α
 jmp xchain20_n63_α
xchain20_n61_β:
 jmp xchain20_n63_α
xchain20_n62_α:
# IR_VAR
bb125_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n64_α
 xchain20_n62_β:
 jmp xchain20_n58_β
xchain20_n63_α:
# IR_VAR
bb126_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n65_α
 xchain20_n63_β:
 jmp xchain20_n135_β
xchain20_n64_α:
bb127_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 2776]
 cmp eax, 4
 jne .Lx296_0
 mov rax, qword ptr [r12 + 2880]
 cmp eax, 6
 jne .Lx296_0
 mov rsi, qword ptr [r12 + 2784]
 mov rcx, qword ptr [r12 + 2888]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx296_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx296_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain20_n58_β
.Lx296_0:
 mov rdi, qword ptr [r12 + 2776]
 mov rsi, qword ptr [r12 + 2784]
 mov rdx, qword ptr [r12 + 2880]
 mov rcx, qword ptr [r12 + 2888]
 mov r8, qword ptr [r12 + 0]
 mov r9, qword ptr [r12 + 8]
 call subscript_set@PLT
 cmp eax, 0
 je xchain20_n58_β
 jmp xchain20_n58_β
 xchain20_n64_β:
 jmp xchain20_n58_β
xchain20_n65_α:
# IR_UNOP
bb128_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_size_d@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain20_n66_α
 xchain20_n65_β:
 jmp xchain20_n135_β
xchain20_n66_α:
# IR_UNOP
bb129_α:
 mov rdi, qword ptr [r12 + 2928]
 mov rsi, qword ptr [r12 + 2936]
 call rt_num_neg@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain20_n67_α
 xchain20_n66_β:
 jmp xchain20_n135_β
xchain20_n67_α:
# IR_LIT_I
bb130_α:
 mov qword ptr [r12 + 2960], 6
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain20_n68_α
 xchain20_n67_β:
 jmp xchain20_n135_β
.Lx299_0:
 .quad 3
xchain20_n68_α:
bb131_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 2952]
 mov rcx, qword ptr [r12 + 2968]
 sub rax, rcx
 mov qword ptr [r12 + 2976], 6
 mov qword ptr [r12 + 2984], rax
 jmp xchain20_n69_α
 xchain20_n68_β:
 jmp xchain20_n135_β
xchain20_n69_α:
# IR_LIT_I
bb132_α:
 mov qword ptr [r12 + 2992], 6
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 3000], rax
 jmp xchain20_n71_α
 xchain20_n69_β:
 jmp xchain20_n135_β
.Lx301_0:
 .quad 0
xchain20_n70_α:
# IR_EVERY
 jmp xchain20_n72_α
 xchain20_n70_β:
 jmp xchain20_n72_α
xchain20_n71_α:
# IR_TO
bb134_α:
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 3024], rax
.Lx304_0:
 mov rax, qword ptr [r12 + 3024]
 mov rcx, qword ptr [r12 + 3000]
 cmp rax, rcx
 jg xchain20_n70_α
 mov qword ptr [r12 + 3008], 6
 mov qword ptr [r12 + 3016], rax
 jmp xchain20_n73_α
 xchain20_n71_β:
 inc qword ptr [r12 + 3024]
 jmp .Lx304_0
xchain20_n72_α:
xargsub306_n0_α:
# IR_LIT_S
bb135_α:
 mov qword ptr [r12 + 3032], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [r12 + 3040], rax
 jmp xicnarg305_done
 xargsub306_n0_β:
 jmp xchain20_n74_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "O"
xicnarg305_done:
xargsub309_n0_α:
# IR_VAR
bb136_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg308_done
 xargsub309_n0_β:
 jmp xchain20_n74_α
xicnarg308_done:
bb137_α:
  .section .rodata
  .Lcall143_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+303]
 mov rdx, qword ptr [r12+304]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall143_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3048], rax
 mov qword ptr [r12 + 3056], rdx
 cmp eax, 99
 je xchain20_n74_α
 jmp xchain20_n74_α
xchain20_n72_β:
 jmp xchain20_n74_α
xchain20_n73_α:
bb138_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3008]
 mov rdx, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 3064], rax
 mov qword ptr [r12 + 3072], rdx
 jmp xchain20_n75_α
 xchain20_n73_β:
 jmp xchain20_n135_β
xchain20_n74_α:
bb139_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+3096]
 mov qword ptr [r12 + 3096], 6
 movabs rax, 1
 mov qword ptr [r12 + 3104], rax
  .section .rodata
  .Lbynamefn315: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn315]
 lea rsi, [r12 + 3096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3080], rax
 mov qword ptr [r12 + 3088], rdx
 cmp eax, 99
 je xchain20_n77_α
 jmp xchain20_n76_α
xchain20_n74_β:
 jmp xchain20_n77_α
xchain20_n75_α:
# IR_VAR
bb140_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n78_α
 xchain20_n75_β:
 jmp xchain20_n71_β
xchain20_n76_α:
bb141_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3080]
 mov rdx, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 3112], rax
 mov qword ptr [r12 + 3120], rdx
 jmp xchain20_n77_α
 xchain20_n76_β:
 jmp xchain20_n77_α
xchain20_n77_α:
# IR_LIT_S
bb142_α:
 mov qword ptr [r12 + 3128], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 3136], rax
 jmp xchain20_n79_α
 xchain20_n77_β:
 jmp xchain20_n82_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "\t"
xchain20_n78_α:
bb143_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 2912]
 cmp eax, 4
 jne .Lx322_0
 mov rax, qword ptr [r12 + 3064]
 cmp eax, 6
 jne .Lx322_0
 mov rsi, qword ptr [r12 + 2920]
 mov rcx, qword ptr [r12 + 3072]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx322_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx322_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain20_n71_β
.Lx322_0:
 mov rdi, qword ptr [r12 + 2912]
 mov rsi, qword ptr [r12 + 2920]
 mov rdx, qword ptr [r12 + 3064]
 mov rcx, qword ptr [r12 + 3072]
 mov r8, qword ptr [r12 + 0]
 mov r9, qword ptr [r12 + 8]
 call subscript_set@PLT
 cmp eax, 0
 je xchain20_n71_β
 jmp xchain20_n71_β
 xchain20_n78_β:
 jmp xchain20_n71_β
xchain20_n79_α:
# IR_VAR
bb144_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n80_α
 xchain20_n79_β:
 jmp xchain20_n82_α
xchain20_n80_α:
xchain20_n81_α:
bb146_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+3176]
 mov qword ptr [r12 + 3176], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 3184], rax
 jmp .Lx326_1
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "\t"
.Lx326_1:
# marshal arg1 = nested producer-box slot [r12+3144] -> [r12+3192]
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3192], rax
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3200], rax
  .section .rodata
  .Lrkfn327: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn327]
 lea rsi, [r12 + 3176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3160], rax
 mov qword ptr [r12 + 3168], rdx
 cmp eax, 99
 je xchain20_n82_α
 jmp xchain20_n82_α
 xchain20_n81_β:
 jmp xchain20_n82_α
xchain20_n82_α:
# IR_VAR
bb147_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n83_α
 xchain20_n82_β:
 jmp xchain20_n86_α
xchain20_n83_α:
xchain20_n84_α:
# IR_LIT_I
bb149_α:
 mov qword ptr [r12 + 3224], 6
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 3232], rax
 jmp xchain20_n85_α
 xchain20_n84_β:
 jmp xchain20_n86_α
.Lx331_0:
 .quad 2
xchain20_n85_α:
# [walk_bb_node: kind=5 unhandled]
xchain20_n86_α:
xargsub334_n0_α:
# IR_LIT_S
bb151_α:
 mov qword ptr [r12 + 3256], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [r12 + 3264], rax
 jmp xicnarg333_done
 xargsub334_n0_β:
 jmp xchain20_n87_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "P"
xicnarg333_done:
xargsub337_n0_α:
# IR_VAR
bb152_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg336_done
 xargsub337_n0_β:
 jmp xchain20_n87_α
xicnarg336_done:
bb153_α:
  .section .rodata
  .Lcall159_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+325]
 mov rdx, qword ptr [r12+326]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall159_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3272], rax
 mov qword ptr [r12 + 3280], rdx
 cmp eax, 99
 je xchain20_n87_α
 jmp xchain20_n87_α
xchain20_n86_β:
 jmp xchain20_n87_α
xchain20_n87_α:
xaltg341_a0_start:
bb154_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+3328]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3328], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3336], rax
# marshal arg1 = LIT_I -> [r12+3344]
 mov qword ptr [r12 + 3344], 6
 movabs rax, 0
 mov qword ptr [r12 + 3352], rax
  .section .rodata
  .Lbynamefn343: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn343]
 lea rsi, [r12 + 3328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je xaltg341_a1_start
 jmp xaltg341_a0_succ
xaltg341_a0_beta:
 jmp xaltg341_a1_start
xaltg341_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3312]
 mov qword ptr [r12 + 3288], rax
 mov rax, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], 1
jmp xchain20_n88_α
xaltg341_a1_start:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 3360], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [r12 + 3368], rax
 jmp xaltg341_a1_succ
 xaltg341_a1_beta:
 jmp xchain20_n89_α
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
 .string "ok failure 0"
xaltg341_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3288], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], 1
jmp xchain20_n88_α
xchain20_n87_β:
jmp xchain20_n89_α
xchain20_n88_α:
bb156_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 3288]
 mov rsi, qword ptr [r12 + 3296]
 call rt_write_any_nl@PLT
 jmp xchain20_n89_α
xchain20_n88_β:
xchain20_n88_β:
 jmp xchain20_n89_α
xchain20_n89_α:
xaltg348_a0_start:
bb157_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+3416]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3416], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3424], rax
# marshal arg1 = LIT_I -> [r12+3432]
 mov qword ptr [r12 + 3432], 6
 movabs rax, 2
 mov qword ptr [r12 + 3440], rax
  .section .rodata
  .Lbynamefn350: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn350]
 lea rsi, [r12 + 3416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3400], rax
 mov qword ptr [r12 + 3408], rdx
 cmp eax, 99
 je xaltg348_a1_start
 jmp xaltg348_a0_succ
xaltg348_a0_beta:
 jmp xaltg348_a1_start
xaltg348_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 3384], rax
 mov qword ptr [r12 + 3392], 1
jmp xchain20_n90_α
xaltg348_a1_start:
# IR_LIT_S
bb158_α:
 mov qword ptr [r12 + 3448], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [r12 + 3456], rax
 jmp xaltg348_a1_succ
 xaltg348_a1_beta:
 jmp xchain20_n91_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "ok failure 2"
xaltg348_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3384], rax
 mov qword ptr [r12 + 3392], 1
jmp xchain20_n90_α
xchain20_n89_β:
jmp xchain20_n91_α
xchain20_n90_α:
bb159_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 3376]
 mov rsi, qword ptr [r12 + 3384]
 call rt_write_any_nl@PLT
 jmp xchain20_n91_α
xchain20_n90_β:
xchain20_n90_β:
 jmp xchain20_n91_α
xchain20_n91_α:
xaltg355_a0_start:
bb160_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+3504]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3512], rax
# marshal arg1 = LIT_I -> [r12+3520]
 mov qword ptr [r12 + 3520], 6
 movabs rax, 18446744073709551614
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lbynamefn357: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn357]
 lea rsi, [r12 + 3504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 cmp eax, 99
 je xaltg355_a1_start
 jmp xaltg355_a0_succ
xaltg355_a0_beta:
 jmp xaltg355_a1_start
xaltg355_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3488]
 mov qword ptr [r12 + 3464], rax
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], 1
jmp xchain20_n92_α
xaltg355_a1_start:
# IR_LIT_S
bb161_α:
 mov qword ptr [r12 + 3536], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 3544], rax
 jmp xaltg355_a1_succ
 xaltg355_a1_beta:
 jmp xchain20_n93_α
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "ok failure -2"
xaltg355_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3464], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], 1
jmp xchain20_n92_α
xchain20_n91_β:
jmp xchain20_n93_α
xchain20_n92_α:
bb162_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 3464]
 mov rsi, qword ptr [r12 + 3472]
 call rt_write_any_nl@PLT
 jmp xchain20_n93_α
xchain20_n92_β:
xchain20_n92_β:
 jmp xchain20_n93_α
xchain20_n93_α:
bb163_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3568]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3576], rax
  .section .rodata
  .Lrkfn363: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 3568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je xchain20_n94_α
 jmp xchain20_n94_α
 xchain20_n93_β:
 jmp xchain20_n94_α
xchain20_n94_α:
xaltg364_a0_start:
bb164_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3624]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3624], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3632], rax
  .section .rodata
  .Lrkfn366: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn366]
 lea rsi, [r12 + 3624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3608], rax
 mov qword ptr [r12 + 3616], rdx
 cmp eax, 99
 je xaltg364_a1_start
 jmp xaltg364_a0_succ
 xaltg364_a0_beta:
 jmp xaltg364_a1_start
xaltg364_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3592], rax
 mov qword ptr [r12 + 3600], 1
jmp xchain20_n95_α
xaltg364_a1_start:
# IR_LIT_S
bb165_α:
 mov qword ptr [r12 + 3640], 1
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [r12 + 3648], rax
 jmp xaltg364_a1_succ
 xaltg364_a1_beta:
 jmp xchain20_n96_α
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "ok failure on get"
xaltg364_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3592], rax
 mov qword ptr [r12 + 3600], 1
jmp xchain20_n95_α
xchain20_n94_β:
jmp xchain20_n96_α
xchain20_n95_α:
bb166_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 3584]
 mov rsi, qword ptr [r12 + 3592]
 call rt_write_any_nl@PLT
 jmp xchain20_n96_α
xchain20_n95_β:
xchain20_n95_β:
 jmp xchain20_n96_α
xchain20_n96_α:
xaltg371_a0_start:
bb167_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3696]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3704], rax
  .section .rodata
  .Lrkfn373: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn373]
 lea rsi, [r12 + 3696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je xaltg371_a1_start
 jmp xaltg371_a0_succ
 xaltg371_a0_beta:
 jmp xaltg371_a1_start
xaltg371_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3656], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], 1
jmp xchain20_n97_α
xaltg371_a1_start:
# IR_LIT_S
bb168_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [r12 + 3720], rax
 jmp xaltg371_a1_succ
 xaltg371_a1_beta:
 jmp xchain20_n98_α
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "ok failure on pop"
xaltg371_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3656], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], 1
jmp xchain20_n97_α
xchain20_n96_β:
jmp xchain20_n98_α
xchain20_n97_α:
bb169_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 3656]
 mov rsi, qword ptr [r12 + 3664]
 call rt_write_any_nl@PLT
 jmp xchain20_n98_α
xchain20_n97_β:
xchain20_n97_β:
 jmp xchain20_n98_α
xchain20_n98_α:
xaltg378_a0_start:
bb170_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+3768]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 3768], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 3776], rax
  .section .rodata
  .Lrkfn380: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn380]
 lea rsi, [r12 + 3768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3752], rax
 mov qword ptr [r12 + 3760], rdx
 cmp eax, 99
 je xaltg378_a1_start
 jmp xaltg378_a0_succ
 xaltg378_a0_beta:
 jmp xaltg378_a1_start
xaltg378_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3760]
 mov qword ptr [r12 + 3736], rax
 mov qword ptr [r12 + 3744], 1
jmp xchain20_n99_α
xaltg378_a1_start:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 3784], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 3792], rax
 jmp xaltg378_a1_succ
 xaltg378_a1_beta:
 jmp xchain20_n100_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "ok failure on pull"
xaltg378_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3784]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 3736], rax
 mov qword ptr [r12 + 3744], 1
jmp xchain20_n99_α
xchain20_n98_β:
jmp xchain20_n100_α
xchain20_n99_α:
bb172_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 3728]
 mov rsi, qword ptr [r12 + 3736]
 call rt_write_any_nl@PLT
 jmp xchain20_n100_α
xchain20_n99_β:
xchain20_n99_β:
 jmp xchain20_n100_α
xchain20_n100_α:
bb173_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+3816]
 mov qword ptr [r12 + 3816], 6
 movabs rax, 1
 mov qword ptr [r12 + 3824], rax
# marshal arg1 = LIT_I -> [r12+3832]
 mov qword ptr [r12 + 3832], 6
 movabs rax, 2
 mov qword ptr [r12 + 3840], rax
# marshal arg2 = LIT_I -> [r12+3848]
 mov qword ptr [r12 + 3848], 6
 movabs rax, 3
 mov qword ptr [r12 + 3856], rax
# marshal arg3 = LIT_I -> [r12+3864]
 mov qword ptr [r12 + 3864], 6
 movabs rax, 4
 mov qword ptr [r12 + 3872], rax
# marshal arg4 = LIT_I -> [r12+3880]
 mov qword ptr [r12 + 3880], 6
 movabs rax, 5
 mov qword ptr [r12 + 3888], rax
# marshal arg5 = LIT_I -> [r12+3896]
 mov qword ptr [r12 + 3896], 6
 movabs rax, 6
 mov qword ptr [r12 + 3904], rax
# marshal arg6 = LIT_I -> [r12+3912]
 mov qword ptr [r12 + 3912], 6
 movabs rax, 7
 mov qword ptr [r12 + 3920], rax
# marshal arg7 = LIT_I -> [r12+3928]
 mov qword ptr [r12 + 3928], 6
 movabs rax, 8
 mov qword ptr [r12 + 3936], rax
# marshal arg8 = LIT_I -> [r12+3944]
 mov qword ptr [r12 + 3944], 6
 movabs rax, 9
 mov qword ptr [r12 + 3952], rax
  .section .rodata
  .Lbynamefn386: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn386]
 lea rsi, [r12 + 3816]
 mov edx, 9
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3800], rax
 mov qword ptr [r12 + 3808], rdx
 cmp eax, 99
 je xchain20_n102_α
 jmp xchain20_n101_α
xchain20_n100_β:
 jmp xchain20_n102_α
xchain20_n101_α:
bb174_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3800]
 mov rdx, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 3960], rax
 mov qword ptr [r12 + 3968], rdx
 jmp xchain20_n102_α
 xchain20_n101_β:
 jmp xchain20_n102_α
xchain20_n102_α:
xargsub389_n0_α:
# IR_LIT_S
bb175_α:
 mov qword ptr [r12 + 3976], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [r12 + 3984], rax
 jmp xicnarg388_done
 xargsub389_n0_β:
 jmp xchain20_n103_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "p"
xicnarg388_done:
xargsub392_n0_α:
# IR_VAR
bb176_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg391_done
 xargsub392_n0_β:
 jmp xchain20_n103_α
xicnarg391_done:
bb177_α:
  .section .rodata
  .Lcall183_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+397]
 mov rdx, qword ptr [r12+398]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall183_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3992], rax
 mov qword ptr [r12 + 4000], rdx
 cmp eax, 99
 je xchain20_n103_α
 jmp xchain20_n103_α
xchain20_n102_β:
 jmp xchain20_n103_α
xchain20_n103_α:
xargsub397_n0_α:
# IR_LIT_S
bb178_α:
 mov qword ptr [r12 + 4008], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [r12 + 4016], rax
 jmp xicnarg396_done
 xargsub397_n0_β:
 jmp xchain20_n104_α
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "q"
xicnarg396_done:
xargsub400_n0_α:
# IR_VAR
bb179_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub400_n1_α
 xargsub400_n0_β:
 jmp xchain20_n104_α
xargsub400_n1_α:
# IR_LIT_I
bb180_α:
 mov qword ptr [r12 + 4024], 6
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [r12 + 4032], rax
 jmp xsec403_i1_done
 xsec403_i1_b:
 jmp xchain20_n104_α
.Lx404_0:
 .quad 1
xsec403_i1_done:
# IR_LIT_I
bb181_α:
 mov qword ptr [r12 + 4040], 6
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [r12 + 4048], rax
 jmp xsec403_i2_done
 xsec403_i2_b:
 jmp xchain20_n104_α
.Lx405_0:
 .quad 0
xsec403_i2_done:
# IR_SECTION
bb182_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 4024]
 mov rcx, qword ptr [r12 + 4032]
 mov r8, qword ptr [r12 + 4040]
 mov r9, qword ptr [r12 + 4048]
 call subscript_get2@PLT
 mov qword ptr [r12 + 4056], rax
 mov qword ptr [r12 + 4064], rdx
 jmp xicnarg399_done
 xargsub400_n1_β:
 jmp xchain20_n104_α
xicnarg399_done:
bb183_α:
  .section .rodata
  .Lcall189_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+400]
 mov rdx, qword ptr [r12+401]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+405]
 mov rdx, qword ptr [r12+406]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall189_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4072], rax
 mov qword ptr [r12 + 4080], rdx
 cmp eax, 99
 je xchain20_n104_α
 jmp xchain20_n104_α
xchain20_n103_β:
 jmp xchain20_n104_α
xchain20_n104_α:
xargsub409_n0_α:
# IR_LIT_S
bb184_α:
 mov qword ptr [r12 + 4088], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 4096], rax
 jmp xicnarg408_done
 xargsub409_n0_β:
 jmp xchain20_n105_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "r"
xicnarg408_done:
xargsub412_n0_α:
# IR_VAR
bb185_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub412_n1_α
 xargsub412_n0_β:
 jmp xchain20_n105_α
xargsub412_n1_α:
# IR_LIT_I
bb186_α:
 mov qword ptr [r12 + 4104], 6
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [r12 + 4112], rax
 jmp xsec415_i1_done
 xsec415_i1_b:
 jmp xchain20_n105_α
.Lx416_0:
 .quad 2
xsec415_i1_done:
# IR_LIT_I
bb187_α:
 mov qword ptr [r12 + 4120], 6
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [r12 + 4128], rax
 jmp xsec415_i2_done
 xsec415_i2_b:
 jmp xchain20_n105_α
.Lx417_0:
 .quad 5
xsec415_i2_done:
# IR_SECTION
bb188_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 4104]
 mov rcx, qword ptr [r12 + 4112]
 mov r8, qword ptr [r12 + 4120]
 mov r9, qword ptr [r12 + 4128]
 call subscript_get2@PLT
 mov qword ptr [r12 + 4136], rax
 mov qword ptr [r12 + 4144], rdx
 jmp xicnarg411_done
 xargsub412_n1_β:
 jmp xchain20_n105_α
xicnarg411_done:
bb189_α:
  .section .rodata
  .Lcall195_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+408]
 mov rdx, qword ptr [r12+409]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+413]
 mov rdx, qword ptr [r12+414]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall195_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4152], rax
 mov qword ptr [r12 + 4160], rdx
 cmp eax, 99
 je xchain20_n105_α
 jmp xchain20_n105_α
xchain20_n104_β:
 jmp xchain20_n105_α
xchain20_n105_α:
xargsub421_n0_α:
# IR_LIT_S
bb190_α:
 mov qword ptr [r12 + 4168], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 4176], rax
 jmp xicnarg420_done
 xargsub421_n0_β:
 jmp xchain20_n106_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "s"
xicnarg420_done:
xargsub424_n0_α:
# IR_VAR
bb191_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub424_n1_α
 xargsub424_n0_β:
 jmp xchain20_n106_α
xargsub424_n1_α:
# IR_LIT_I
bb192_α:
 mov qword ptr [r12 + 4184], 6
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [r12 + 4192], rax
 jmp xsec427_i1_done
 xsec427_i1_b:
 jmp xchain20_n106_α
.Lx428_0:
 .quad 18446744073709551613
xsec427_i1_done:
# IR_LIT_I
bb193_α:
 mov qword ptr [r12 + 4200], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [r12 + 4208], rax
 jmp xsec427_i2_done
 xsec427_i2_b:
 jmp xchain20_n106_α
.Lx429_0:
 .quad 5
xsec427_i2_done:
# IR_SECTION
bb194_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 4184]
 mov rcx, qword ptr [r12 + 4192]
 mov r8, qword ptr [r12 + 4200]
 mov r9, qword ptr [r12 + 4208]
 call subscript_get2@PLT
 mov qword ptr [r12 + 4216], rax
 mov qword ptr [r12 + 4224], rdx
 jmp xicnarg423_done
 xargsub424_n1_β:
 jmp xchain20_n106_α
xicnarg423_done:
bb195_α:
  .section .rodata
  .Lcall201_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+417]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+421]
 mov rdx, qword ptr [r12+422]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall201_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4232], rax
 mov qword ptr [r12 + 4240], rdx
 cmp eax, 99
 je xchain20_n106_α
 jmp xchain20_n106_α
xchain20_n105_β:
 jmp xchain20_n106_α
xchain20_n106_α:
xargsub433_n0_α:
# IR_LIT_S
bb196_α:
 mov qword ptr [r12 + 4248], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [r12 + 4256], rax
 jmp xicnarg432_done
 xargsub433_n0_β:
 jmp xchain20_n107_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "t"
xicnarg432_done:
xargsub436_n0_α:
# IR_VAR
bb197_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub436_n1_α
 xargsub436_n0_β:
 jmp xchain20_n107_α
xargsub436_n1_α:
# IR_LIT_I
bb198_α:
 mov qword ptr [r12 + 4264], 6
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [r12 + 4272], rax
 jmp xsec439_i1_done
 xsec439_i1_b:
 jmp xchain20_n107_α
.Lx440_0:
 .quad 18446744073709551611
xsec439_i1_done:
# IR_LIT_I
bb199_α:
 mov qword ptr [r12 + 4280], 6
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 4288], rax
 jmp xsec439_i2_done
 xsec439_i2_b:
 jmp xchain20_n107_α
.Lx441_0:
 .quad 18446744073709551615
xsec439_i2_done:
# IR_SECTION
bb200_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 4264]
 mov rcx, qword ptr [r12 + 4272]
 mov r8, qword ptr [r12 + 4280]
 mov r9, qword ptr [r12 + 4288]
 call subscript_get2@PLT
 mov qword ptr [r12 + 4296], rax
 mov qword ptr [r12 + 4304], rdx
 jmp xicnarg435_done
 xargsub436_n1_β:
 jmp xchain20_n107_α
xicnarg435_done:
bb201_α:
  .section .rodata
  .Lcall207_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+424]
 mov rdx, qword ptr [r12+425]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+429]
 mov rdx, qword ptr [r12+430]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall207_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4312], rax
 mov qword ptr [r12 + 4320], rdx
 cmp eax, 99
 je xchain20_n107_α
 jmp xchain20_n107_α
xchain20_n106_β:
 jmp xchain20_n107_α
xchain20_n107_α:
xaltg444_a0_start:
xargsub446_n0_α:
# IR_LIT_S
bb202_α:
 mov qword ptr [r12 + 4352], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [r12 + 4360], rax
 jmp xicnarg445_done
 xargsub446_n0_β:
 jmp xaltg444_a1_start
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "u"
xicnarg445_done:
xargsub449_n0_α:
# IR_VAR
bb203_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub449_n1_α
 xargsub449_n0_β:
 jmp xaltg444_a1_start
xargsub449_n1_α:
# IR_LIT_I
bb204_α:
 mov qword ptr [r12 + 4368], 6
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 4376], rax
 jmp xsec452_i1_done
 xsec452_i1_b:
 jmp xaltg444_a1_start
.Lx453_0:
 .quad 18446744073709551613
xsec452_i1_done:
# IR_LIT_I
bb205_α:
 mov qword ptr [r12 + 4384], 6
 mov rax, qword ptr [rip + .Lx454_0]
 mov qword ptr [r12 + 4392], rax
 jmp xsec452_i2_done
 xsec452_i2_b:
 jmp xaltg444_a1_start
.Lx454_0:
 .quad 6
xsec452_i2_done:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg448_done:
bb207_α:
  .section .rodata
  .Lcall213_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+435]
 mov rdx, qword ptr [r12+436]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+440]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall213_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je xaltg444_a1_start
 jmp xaltg444_a0_succ
xaltg444_a0_beta:
 jmp xaltg444_a1_start
xaltg444_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4328], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], 1
jmp xchain20_n108_α
xaltg444_a1_start:
bb208_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn459: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn459]
 lea rsi, [r12 + 4448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain20_n108_α
 jmp xaltg444_a1_succ
 xaltg444_a1_beta:
 jmp xchain20_n108_α
xaltg444_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4432]
 mov qword ptr [r12 + 4328], rax
 mov rax, qword ptr [r12 + 4440]
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], 1
jmp xchain20_n108_α
xchain20_n107_β:
jmp xchain20_n108_α
xchain20_n108_α:
xaltg461_a0_start:
xargsub463_n0_α:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 4488], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [r12 + 4496], rax
 jmp xicnarg462_done
 xargsub463_n0_β:
 jmp xaltg461_a1_start
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "v"
xicnarg462_done:
xargsub466_n0_α:
# IR_VAR
bb210_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub466_n1_α
 xargsub466_n0_β:
 jmp xaltg461_a1_start
xargsub466_n1_α:
# IR_LIT_I
bb211_α:
 mov qword ptr [r12 + 4504], 6
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [r12 + 4512], rax
 jmp xsec469_i1_done
 xsec469_i1_b:
 jmp xaltg461_a1_start
.Lx470_0:
 .quad 3
xsec469_i1_done:
# IR_LIT_I
bb212_α:
 mov qword ptr [r12 + 4520], 6
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 4528], rax
 jmp xsec469_i2_done
 xsec469_i2_b:
 jmp xaltg461_a1_start
.Lx471_0:
 .quad 6
xsec469_i2_done:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg465_done:
bb214_α:
  .section .rodata
  .Lcall220_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+448]
 mov rdx, qword ptr [r12+449]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+453]
 mov rdx, qword ptr [r12+454]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall220_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4552], rax
 mov qword ptr [r12 + 4560], rdx
 cmp eax, 99
 je xaltg461_a1_start
 jmp xaltg461_a0_succ
xaltg461_a0_beta:
 jmp xaltg461_a1_start
xaltg461_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4552]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4472], rax
 mov qword ptr [r12 + 4480], 1
jmp xchain20_n109_α
xaltg461_a1_start:
bb215_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn476: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn476]
 lea rsi, [r12 + 4584]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4568], rax
 mov qword ptr [r12 + 4576], rdx
 cmp eax, 99
 je xchain20_n109_α
 jmp xaltg461_a1_succ
 xaltg461_a1_beta:
 jmp xchain20_n109_α
xaltg461_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 4472], rax
 mov qword ptr [r12 + 4480], 1
jmp xchain20_n109_α
xchain20_n108_β:
jmp xchain20_n109_α
xchain20_n109_α:
bb216_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn479: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn479]
 lea rsi, [r12 + 4616]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4600], rax
 mov qword ptr [r12 + 4608], rdx
 cmp eax, 99
 je xchain20_n110_α
 jmp xchain20_n110_α
 xchain20_n109_β:
 jmp xchain20_n110_α
xchain20_n110_α:
bb217_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+4632]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 4632], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 4640], rax
  .section .rodata
  .Lrkfn481: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 4632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4616], rax
 mov qword ptr [r12 + 4624], rdx
 cmp eax, 99
 je xchain20_n112_α
 jmp xchain20_n111_α
 xchain20_n110_β:
 jmp xchain20_n112_α
xchain20_n111_α:
bb218_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 4616]
 mov rdx, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 4648], rax
 mov qword ptr [r12 + 4656], rdx
 jmp xchain20_n112_α
 xchain20_n111_β:
 jmp xchain20_n112_α
xchain20_n112_α:
# IR_VAR
bb219_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang483_iter_done
 xbang483_iter_β:
 jmp xchain20_n114_α
xbang483_iter_done:
# IR_LIST_BANG
bb220_α:
 mov qword ptr [r12 + 4664], 0
.Lx487_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 4664]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 cmp rax, 99
 je xchain20_n114_α
 jmp xchain20_n113_α
 xchain20_n112_β:
 inc qword ptr [r12 + 4664]
 jmp .Lx487_0
xchain20_n113_α:
# IR_LIT_I
bb221_α:
 mov qword ptr [r12 + 4688], 6
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [r12 + 4696], rax
 jmp xchain20_n115_α
 xchain20_n113_β:
 jmp xchain20_n135_β
.Lx488_0:
 .quad 10
xchain20_n114_α:
# IR_EVERY
 jmp xchain20_n116_α
 xchain20_n114_β:
 jmp xchain20_n116_α
xchain20_n115_α:
bb223_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 4680]
 mov rcx, qword ptr [r12 + 4696]
 add rax, rcx
 mov qword ptr [r12 + 4704], 6
 mov qword ptr [r12 + 4712], rax
 jmp xchain20_n114_α
 xchain20_n115_β:
 jmp xchain20_n135_β
xchain20_n116_α:
# IR_VAR
bb224_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang491_iter_done
 xbang491_iter_β:
 jmp xchain20_n118_α
xbang491_iter_done:
# IR_LIST_BANG
bb225_α:
 mov qword ptr [r12 + 4720], 0
.Lx495_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 4720]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 4728], rax
 mov qword ptr [r12 + 4736], rdx
 cmp rax, 99
 je xchain20_n118_α
 jmp xchain20_n117_α
 xchain20_n116_β:
 inc qword ptr [r12 + 4720]
 jmp .Lx495_0
xchain20_n117_α:
# IR_LIT_I
bb226_α:
 mov qword ptr [r12 + 4744], 6
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [r12 + 4752], rax
 jmp xchain20_n119_α
 xchain20_n117_β:
 jmp xchain20_n135_β
.Lx496_0:
 .quad 20
xchain20_n118_α:
# IR_EVERY
 jmp xchain20_n120_α
 xchain20_n118_β:
 jmp xchain20_n120_α
xchain20_n119_α:
bb228_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 4736]
 mov rcx, qword ptr [r12 + 4752]
 add rax, rcx
 mov qword ptr [r12 + 4760], 6
 mov qword ptr [r12 + 4768], rax
 jmp xchain20_n118_α
 xchain20_n119_β:
 jmp xchain20_n135_β
xchain20_n120_α:
xargsub500_n0_α:
# IR_LIT_S
bb229_α:
 mov qword ptr [r12 + 4776], 1
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 4784], rax
 jmp xicnarg499_done
 xargsub500_n0_β:
 jmp xchain20_n121_α
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "x"
xicnarg499_done:
xargsub503_n0_α:
# IR_VAR
bb230_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg502_done
 xargsub503_n0_β:
 jmp xchain20_n121_α
xicnarg502_done:
bb231_α:
  .section .rodata
  .Lcall237_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+477]
 mov rdx, qword ptr [r12+478]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall237_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4792], rax
 mov qword ptr [r12 + 4800], rdx
 cmp eax, 99
 je xchain20_n121_α
 jmp xchain20_n121_α
xchain20_n120_β:
 jmp xchain20_n121_α
xchain20_n121_α:
xargsub508_n0_α:
# IR_LIT_S
bb232_α:
 mov qword ptr [r12 + 4808], 1
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [r12 + 4816], rax
 jmp xicnarg507_done
 xargsub508_n0_β:
 jmp xchain20_n122_α
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "y"
xicnarg507_done:
xargsub511_n0_α:
# IR_VAR
bb233_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg510_done
 xargsub511_n0_β:
 jmp xchain20_n122_α
xicnarg510_done:
bb234_α:
  .section .rodata
  .Lcall240_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+481]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall240_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4824], rax
 mov qword ptr [r12 + 4832], rdx
 cmp eax, 99
 je xchain20_n122_α
 jmp xchain20_n122_α
xchain20_n121_β:
 jmp xchain20_n122_α
xchain20_n122_α:
# IR_VAR
bb235_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain20_n123_α
 xchain20_n122_β:
 jmp xchain20_n126_α
xchain20_n123_α:
# IR_VAR
bb236_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain20_n124_α
 xchain20_n123_β:
 jmp xchain20_n126_α
xchain20_n124_α:
xchain20_n124_β:
jmp xchain20_n126_α
jmp xchain20_n126_α
xchain20_n125_α:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xchain20_n126_α:
xargsub521_n0_α:
# IR_LIT_S
bb238_α:
 mov qword ptr [r12 + 4856], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [r12 + 4864], rax
 jmp xicnarg520_done
 xargsub521_n0_β:
 jmp xchain20_n127_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "z"
xicnarg520_done:
xargsub524_n0_α:
# IR_VAR
bb239_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg523_done
 xargsub524_n0_β:
 jmp xchain20_n127_α
xicnarg523_done:
bb240_α:
  .section .rodata
  .Lcall246_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+485]
 mov rdx, qword ptr [r12+486]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall246_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4872], rax
 mov qword ptr [r12 + 4880], rdx
 cmp eax, 99
 je xchain20_n127_α
 jmp xchain20_n127_α
xchain20_n126_β:
 jmp xchain20_n127_α
xchain20_n127_α:
# IR_VAR
bb241_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang528_iter_done
 xbang528_iter_β:
 jmp xchain20_n129_α
xbang528_iter_done:
# IR_LIST_BANG
bb242_α:
 mov qword ptr [r12 + 4888], 0
.Lx532_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 4888]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp rax, 99
 je xchain20_n129_α
 jmp xchain20_n128_α
 xchain20_n127_β:
 inc qword ptr [r12 + 4888]
 jmp .Lx532_0
xchain20_n128_α:
# IR_LIT_I
bb243_α:
 mov qword ptr [r12 + 4912], 6
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [r12 + 4920], rax
 jmp xchain20_n130_α
 xchain20_n128_β:
 jmp xchain20_n135_β
.Lx533_0:
 .quad 10
xchain20_n129_α:
# IR_EVERY
 jmp xchain20_n131_α
 xchain20_n129_β:
 jmp xchain20_n131_α
xchain20_n130_α:
bb245_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 4904]
 mov rcx, qword ptr [r12 + 4920]
 add rax, rcx
 mov qword ptr [r12 + 4928], 6
 mov qword ptr [r12 + 4936], rax
 jmp xchain20_n129_α
 xchain20_n130_β:
 jmp xchain20_n135_β
xchain20_n131_α:
# IR_VAR
bb246_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang536_iter_done
 xbang536_iter_β:
 jmp xchain20_n133_α
xbang536_iter_done:
# IR_LIST_BANG
bb247_α:
 mov qword ptr [r12 + 4944], 0
.Lx540_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 4944]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 4952], rax
 mov qword ptr [r12 + 4960], rdx
 cmp rax, 99
 je xchain20_n133_α
 jmp xchain20_n132_α
 xchain20_n131_β:
 inc qword ptr [r12 + 4944]
 jmp .Lx540_0
xchain20_n132_α:
# IR_LIT_I
bb248_α:
 mov qword ptr [r12 + 4968], 6
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [r12 + 4976], rax
 jmp xchain20_n134_α
 xchain20_n132_β:
 jmp xchain20_n135_β
.Lx541_0:
 .quad 20
xchain20_n133_α:
# IR_EVERY
 jmp xchain20_n135_α
 xchain20_n133_β:
 jmp xchain20_n135_α
xchain20_n134_α:
bb250_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 4960]
 mov rcx, qword ptr [r12 + 4976]
 add rax, rcx
 mov qword ptr [r12 + 4984], 6
 mov qword ptr [r12 + 4992], rax
 jmp xchain20_n133_α
 xchain20_n134_β:
 jmp xchain20_n135_β
xchain20_n135_α:
# IR_VAR
bb251_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang544_iter_done
 xbang544_iter_β:
 jmp xchain20_n137_α
xbang544_iter_done:
# IR_LIST_BANG
bb252_α:
 mov qword ptr [r12 + 5000], 0
.Lx548_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 5000]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 cmp rax, 99
 je xchain20_n137_α
 jmp xchain20_n136_α
 xchain20_n135_β:
 inc qword ptr [r12 + 5000]
 jmp .Lx548_0
xchain20_n136_α:
# IR_LIT_I
bb253_α:
 mov qword ptr [r12 + 5024], 6
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [r12 + 5032], rax
 jmp xchain20_n138_α
 xchain20_n136_β:
 jmp xchain20_n135_β
.Lx549_0:
 .quad 50
xchain20_n137_α:
# IR_EVERY
 jmp xchain20_n139_α
 xchain20_n137_β:
 jmp xchain20_n139_α
xchain20_n138_α:
bb255_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 5016]
 mov rcx, qword ptr [r12 + 5032]
 add rax, rcx
 mov qword ptr [r12 + 5040], 6
 mov qword ptr [r12 + 5048], rax
 jmp xchain20_n137_α
 xchain20_n138_β:
 jmp xchain20_n135_β
xchain20_n139_α:
xargsub553_n0_α:
# IR_LIT_S
bb256_α:
 mov qword ptr [r12 + 5056], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [r12 + 5064], rax
 jmp xicnarg552_done
 xargsub553_n0_β:
 jmp xchain20_n140_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "x"
xicnarg552_done:
xargsub556_n0_α:
# IR_VAR
bb257_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg555_done
 xargsub556_n0_β:
 jmp xchain20_n140_α
xicnarg555_done:
bb258_α:
  .section .rodata
  .Lcall264_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+505]
 mov rdx, qword ptr [r12+506]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall264_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 cmp eax, 99
 je xchain20_n140_α
 jmp xchain20_n140_α
xchain20_n139_β:
 jmp xchain20_n140_α
xchain20_n140_α:
xargsub561_n0_α:
# IR_LIT_S
bb259_α:
 mov qword ptr [r12 + 5088], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [r12 + 5096], rax
 jmp xicnarg560_done
 xargsub561_n0_β:
 jmp xchain20_n141_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "y"
xicnarg560_done:
xargsub564_n0_α:
# IR_VAR
bb260_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg563_done
 xargsub564_n0_β:
 jmp xchain20_n141_α
xicnarg563_done:
bb261_α:
  .section .rodata
  .Lcall267_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+508]
 mov rdx, qword ptr [r12+509]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall267_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 cmp eax, 99
 je xchain20_n141_α
 jmp xchain20_n141_α
xchain20_n140_β:
 jmp xchain20_n141_α
xchain20_n141_α:
xargsub569_n0_α:
# IR_LIT_S
bb262_α:
 mov qword ptr [r12 + 5120], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [r12 + 5128], rax
 jmp xicnarg568_done
 xargsub569_n0_β:
 jmp main_ω
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "z"
xicnarg568_done:
xargsub572_n0_α:
# IR_VAR
bb263_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg571_done
 xargsub572_n0_β:
 jmp main_ω
xicnarg571_done:
bb264_α:
  .section .rodata
  .Lcall270_pname: .string "limage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+512]
 mov rdx, qword ptr [r12+512]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall270_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain20_n141_β:
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
.S0: .string "bb_section: only plain s[i:j] has a native arm (s[i+:n]/s[i-:n] pending)"
.S1: .string "bb_assign_local: needs descr flat-chain + rhs slot + varslot + own slot"
.text
