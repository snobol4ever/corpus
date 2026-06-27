  .intel_syntax noprefix
  .text
  .globl proc_tins_α
proc_tins_α:
#=======================================================================================================================
    .global proc_tins_α
    .global proc_tins_β
    .global proc_tins_γ
    .global proc_tins_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_tins_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "test insert:"
xchain0_n1_α:
bb2_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+144]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 6
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn3: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn3]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string ","
xchain0_n3_α:
bb4_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn6: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn6]
 lea rsi, [r12 + 208]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n6_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+224]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 5
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn8: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n7_α
 xchain0_n4_β:
 jmp xchain0_n3_α
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n28_β
xchain0_n7_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n3_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string ","
xchain0_n8_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n28_β
.Lx13_0:
 .quad 1
xchain0_n9_α:
bb10_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+320]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = LIT_I -> [r12+336]
 mov qword ptr [r12 + 336], 6
 movabs rax, 3
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn15: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n3_α
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n28_β
xchain0_n11_α:
bb12_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+368]
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 376], rax
 jmp .Lx18_1
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "test insert:"
.Lx18_1:
# marshal arg0 = varslot [r12+16] -> [r12+464]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 6
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lcallfn19: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn19]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx18_4]
 mov qword ptr [r12 + 408], rax
 jmp .Lx18_5
.Lx18_4:
 .quad .Lx18_4_s
.Lx18_4_s:
 .string ","
.Lx18_5:
# marshal arg0 = varslot [r12+32] -> [r12+496]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = LIT_I -> [r12+512]
 mov qword ptr [r12 + 512], 6
 movabs rax, 5
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lcallfn20: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn20]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+432]
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx18_8]
 mov qword ptr [r12 + 440], rax
 jmp .Lx18_9
.Lx18_8:
 .quad .Lx18_8_s
.Lx18_8_s:
 .string ","
.Lx18_9:
# marshal arg0 = varslot [r12+48] -> [r12+528]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = LIT_I -> [r12+544]
 mov qword ptr [r12 + 544], 6
 movabs rax, 3
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lcallfn21: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn21]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
  .section .rodata
  .Lrkfn22: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 368]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n11_β:
 jmp xchain0_n3_α
xchain0_n12_α:
# IR_TO
bb13_α:
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 576], rax
.Lx24_0:
 mov rax, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain0_n14_α
 mov qword ptr [r12 + 560], 6
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 inc qword ptr [r12 + 576]
 jmp .Lx24_0
xchain0_n13_α:
bb14_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+600]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 608], rax
# marshal arg1 = nested producer-box slot [r12+560] -> [r12+616]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn26: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 cmp eax, 99
 je xchain0_n28_β
 jmp xchain0_n12_β
 xchain0_n13_β:
 jmp xchain0_n28_β
xchain0_n14_α:
# IR_EVERY
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
bb16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+648]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 656], rax
  .section .rodata
  .Lrkfn29: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n17_α
xchain0_n16_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n17_α
xchain0_n17_α:
bb18_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn32: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 696]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n19_α
xchain0_n18_α:
bb19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n19_α
xchain0_n19_α:
bb20_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+96] -> [r12+728]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 728], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 736], rax
# marshal arg1 = varslot [r12+760] -> [r12+744]
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 752], rax
  .section .rodata
  .Lbynamefn35: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn35]
 lea rsi, [r12 + 728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 cmp eax, 99
 je xchain0_n28_β
 jmp xchain0_n20_α
xchain0_n19_β:
 jmp xchain0_n28_β
xchain0_n20_α:
# IR_VAR
bb21_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n19_α
xchain0_n21_α:
# IR_EVERY
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n23_α
xchain0_n22_α:
# IR_UNOP
bb23_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_size_d@PLT
 mov qword ptr [r12 + 776], rax
 mov qword ptr [r12 + 784], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n19_α
xchain0_n23_α:
xargsub41_n0_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xicnarg40_done
 xargsub41_n0_β:
 jmp proc_tins_ω
xicnarg40_done:
xargsub45_n0_α:
# IR_VAR
bb25_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg44_done
 xargsub45_n0_β:
 jmp proc_tins_ω
xicnarg44_done:
xargsub49_n0_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg48_done
 xargsub49_n0_β:
 jmp proc_tins_ω
xicnarg48_done:
bb27_α:
  .section .rodata
  .Lcall27_pname: .string "check"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+80]
 mov rdx, qword ptr [r12+88]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall27_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 cmp eax, 99
 je proc_tins_ω
 jmp proc_tins_γ
xchain0_n23_β:
 jmp proc_tins_ω
xchain0_n24_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n19_α
xchain0_n25_α:
bb29_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jge xchain0_n19_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 808], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 816], rcx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n19_α
xchain0_n26_α:
# IR_LIT_I
bb30_α:
 mov qword ptr [r12 + 824], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 832], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_β
.Lx56_0:
 .quad 1
xchain0_n27_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n28_β
xchain0_n28_α:
# IR_TO
bb32_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 856], rax
.Lx60_0:
 mov rax, qword ptr [r12 + 856]
 mov rcx, qword ptr [r12 + 56]
 cmp rax, rcx
 jg xchain0_n30_α
 mov qword ptr [r12 + 840], 6
 mov qword ptr [r12 + 848], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 inc qword ptr [r12 + 856]
 jmp .Lx60_0
xchain0_n29_α:
bb33_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+880]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = varslot [r12+64] -> [r12+896]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn62: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain0_n28_β
 jmp xchain0_n28_β
 xchain0_n29_β:
 jmp xchain0_n28_β
xchain0_n30_α:
# IR_EVERY
 jmp xchain0_n19_α
 xchain0_n30_β:
 jmp xchain0_n19_α
proc_tins_β:
jmp proc_tins_ω
proc_tins_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tins_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tdel_α
proc_tdel_α:
#=======================================================================================================================
    .global proc_tdel_α
    .global proc_tdel_β
    .global proc_tdel_γ
    .global proc_tdel_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_tdel_α_body:
xchain64_n0_α:
# IR_LIT_S
bb35_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain64_n1_α
 xchain64_n0_β:
 jmp xchain64_n3_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "test delete:"
xchain64_n1_α:
bb36_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+144]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 6
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn67: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain64_n3_α
 jmp xchain64_n2_α
 xchain64_n1_β:
 jmp xchain64_n3_α
xchain64_n2_α:
# IR_LIT_S
bb37_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain64_n4_α
 xchain64_n2_β:
 jmp xchain64_n3_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string ","
xchain64_n3_α:
bb38_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn70: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn70]
 lea rsi, [r12 + 208]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain64_n6_α
 jmp xchain64_n5_α
 xchain64_n3_β:
 jmp xchain64_n6_α
xchain64_n4_α:
bb39_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+224]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 5
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn72: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain64_n3_α
 jmp xchain64_n7_α
 xchain64_n4_β:
 jmp xchain64_n3_α
xchain64_n5_α:
bb40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain64_n6_α
 xchain64_n5_β:
 jmp xchain64_n6_α
xchain64_n6_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain64_n8_α
 xchain64_n6_β:
 jmp xchain64_n24_β
xchain64_n7_α:
bb42_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx76_1
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "test delete:"
.Lx76_1:
# marshal arg0 = varslot [r12+16] -> [r12+352]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = LIT_I -> [r12+368]
 mov qword ptr [r12 + 368], 6
 movabs rax, 6
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lcallfn77: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn77]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+320]
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx76_4]
 mov qword ptr [r12 + 328], rax
 jmp .Lx76_5
.Lx76_4:
 .quad .Lx76_4_s
.Lx76_4_s:
 .string ","
.Lx76_5:
# marshal arg0 = varslot [r12+32] -> [r12+384]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 5
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lcallfn78: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn78]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
  .section .rodata
  .Lrkfn79: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 288]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain64_n3_α
 jmp xchain64_n3_α
 xchain64_n7_β:
 jmp xchain64_n3_α
xchain64_n8_α:
# IR_LIT_I
bb43_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain64_n9_α
 xchain64_n8_β:
 jmp xchain64_n24_β
.Lx80_0:
 .quad 1
xchain64_n9_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain64_n10_α
 xchain64_n9_β:
 jmp xchain64_n24_β
xchain64_n10_α:
# IR_TO
bb45_α:
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 448], rax
.Lx84_0:
 mov rax, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain64_n12_α
 mov qword ptr [r12 + 432], 6
 mov qword ptr [r12 + 440], rax
 jmp xchain64_n11_α
 xchain64_n10_β:
 inc qword ptr [r12 + 448]
 jmp .Lx84_0
xchain64_n11_α:
bb46_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+472]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 480], rax
# marshal arg1 = nested producer-box slot [r12+432] -> [r12+488]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 496], rax
  .section .rodata
  .Lrkfn86: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 cmp eax, 99
 je xchain64_n24_β
 jmp xchain64_n10_β
 xchain64_n11_β:
 jmp xchain64_n24_β
xchain64_n12_α:
# IR_EVERY
 jmp xchain64_n13_α
 xchain64_n12_β:
 jmp xchain64_n13_α
xchain64_n13_α:
bb48_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+520]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 520], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 528], rax
  .section .rodata
  .Lrkfn89: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 cmp eax, 99
 je xchain64_n15_α
 jmp xchain64_n14_α
 xchain64_n13_β:
 jmp xchain64_n15_α
xchain64_n14_α:
bb49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp xchain64_n15_α
 xchain64_n14_β:
 jmp xchain64_n15_α
xchain64_n15_α:
bb50_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn92: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 568]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xchain64_n17_α
 jmp xchain64_n16_α
 xchain64_n15_β:
 jmp xchain64_n17_α
xchain64_n16_α:
bb51_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 jmp xchain64_n17_α
 xchain64_n16_β:
 jmp xchain64_n17_α
xchain64_n17_α:
# IR_LIT_I
bb52_α:
 mov qword ptr [r12 + 584], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 592], rax
 jmp xchain64_n18_α
 xchain64_n17_β:
 jmp xchain64_n19_α
.Lx94_0:
 .quad 0
xchain64_n18_α:
bb53_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 592]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp xchain64_n19_α
 xchain64_n18_β:
 jmp xchain64_n19_α
xchain64_n19_α:
bb54_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+80] -> [r12+632]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 640], rax
# marshal arg1 = varslot [r12+664] -> [r12+648]
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 656], rax
  .section .rodata
  .Lbynamefn97: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn97]
 lea rsi, [r12 + 632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je xchain64_n24_β
 jmp xchain64_n20_α
xchain64_n19_β:
 jmp xchain64_n24_β
xchain64_n20_α:
# IR_LIT_I
bb55_α:
 mov qword ptr [r12 + 680], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 688], rax
 jmp xchain64_n22_α
 xchain64_n20_β:
 jmp xchain64_n24_β
.Lx98_0:
 .quad 1
xchain64_n21_α:
# IR_EVERY
 jmp xchain64_n23_α
 xchain64_n21_β:
 jmp xchain64_n23_α
xchain64_n22_α:
# IR_VAR
bb57_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain64_n24_α
 xchain64_n22_β:
 jmp xchain64_n24_β
xchain64_n23_α:
xargsub103_n0_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg102_done
 xargsub103_n0_β:
 jmp proc_tdel_ω
xicnarg102_done:
xargsub107_n0_α:
# IR_VAR
bb59_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg106_done
 xargsub107_n0_β:
 jmp proc_tdel_ω
xicnarg106_done:
xargsub111_n0_α:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xicnarg110_done
 xargsub111_n0_β:
 jmp proc_tdel_ω
xicnarg110_done:
bb61_α:
  .section .rodata
  .Lcall61_pname: .string "check"
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
 mov edi, 2
 mov rsi, qword ptr [r12+80]
 mov rdx, qword ptr [r12+88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je proc_tdel_ω
 jmp proc_tdel_γ
xchain64_n23_β:
 jmp proc_tdel_ω
xchain64_n24_α:
# IR_TO
bb62_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 728], rax
.Lx116_0:
 mov rax, qword ptr [r12 + 728]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain64_n26_α
 mov qword ptr [r12 + 712], 6
 mov qword ptr [r12 + 720], rax
 jmp xchain64_n25_α
 xchain64_n24_β:
 inc qword ptr [r12 + 728]
 jmp .Lx116_0
xchain64_n25_α:
bb63_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+752]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = varslot [r12+96] -> [r12+768]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn118: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain64_n24_β
 jmp xchain64_n24_β
 xchain64_n25_β:
 jmp xchain64_n24_β
xchain64_n26_α:
# IR_EVERY
 jmp xchain64_n19_α
 xchain64_n26_β:
 jmp xchain64_n19_α
proc_tdel_β:
jmp proc_tdel_ω
proc_tdel_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tdel_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_check_α
proc_check_α:
#=======================================================================================================================
    .global proc_check_α
    .global proc_check_β
    .global proc_check_γ
    .global proc_check_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_check_α_body:
xchain120_n0_α:
bb65_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+144]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn122: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn122]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain120_n2_α
 jmp xchain120_n1_α
 xchain120_n0_β:
 jmp xchain120_n2_α
xchain120_n1_α:
bb66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain120_n2_α
 xchain120_n1_β:
 jmp xchain120_n2_α
xchain120_n2_α:
# IR_VAR gva
bb67_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain120_n3_α
 xchain120_n2_β:
 jmp xchain120_n7_α
xchain120_n3_α:
# IR_UNOP
bb68_α:
 mov eax, dword ptr [r12 + 176]
 cmp eax, 99
 je xchain120_n7_α
 cmp eax, 0
 je xchain120_n7_α
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 200], rax
 jmp xchain120_n4_α
 xchain120_n3_β:
 jmp xchain120_n7_α
xchain120_n4_α:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain120_n5_α
 xchain120_n4_β:
 jmp xchain120_n7_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "  \tsizes "
xchain120_n5_α:
bb70_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+240]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = LIT_I -> [r12+256]
 mov qword ptr [r12 + 256], 6
 movabs rax, 5
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn128: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain120_n7_α
 jmp xchain120_n6_α
 xchain120_n5_β:
 jmp xchain120_n7_α
xchain120_n6_α:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain120_n8_α
 xchain120_n6_β:
 jmp xchain120_n7_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string " <="
xchain120_n7_α:
# IR_LIT_S
bb72_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain120_n9_α
 xchain120_n7_β:
 jmp xchain120_n11_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "\t[ok]"
xchain120_n8_α:
bb73_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+320]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = LIT_I -> [r12+336]
 mov qword ptr [r12 + 336], 6
 movabs rax, 5
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn132: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn132]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain120_n7_α
 jmp xchain120_n10_α
 xchain120_n8_β:
 jmp xchain120_n7_α
xchain120_n9_α:
bb74_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain120_n11_α
 xchain120_n9_β:
 jmp xchain120_n11_α
xchain120_n10_α:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain120_n12_α
 xchain120_n10_β:
 jmp xchain120_n7_α
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string " <="
xchain120_n11_α:
# IR_VAR
bb76_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain120_n13_α
 xchain120_n11_β:
 jmp xchain120_n17_α
xchain120_n12_α:
bb77_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+400]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = LIT_I -> [r12+416]
 mov qword ptr [r12 + 416], 6
 movabs rax, 5
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn138: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain120_n7_α
 jmp xchain120_n14_α
 xchain120_n12_β:
 jmp xchain120_n7_α
xchain120_n13_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain120_n15_α
 xchain120_n13_β:
 jmp xchain120_n17_α
xchain120_n14_α:
bb79_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 456], rax
 jmp .Lx141_1
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "  \tsizes "
.Lx141_1:
# marshal arg0 = varslot [r12+16] -> [r12+544]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = LIT_I -> [r12+560]
 mov qword ptr [r12 + 560], 6
 movabs rax, 5
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lcallfn142: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn142]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+480]
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx141_4]
 mov qword ptr [r12 + 488], rax
 jmp .Lx141_5
.Lx141_4:
 .quad .Lx141_4_s
.Lx141_4_s:
 .string " <="
.Lx141_5:
# marshal arg0 = varslot [r12+64] -> [r12+576]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = LIT_I -> [r12+592]
 mov qword ptr [r12 + 592], 6
 movabs rax, 5
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lcallfn143: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn143]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+512]
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx141_8]
 mov qword ptr [r12 + 520], rax
 jmp .Lx141_9
.Lx141_8:
 .quad .Lx141_8_s
.Lx141_8_s:
 .string " <="
.Lx141_9:
# marshal arg0 = varslot [r12+32] -> [r12+608]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = LIT_I -> [r12+624]
 mov qword ptr [r12 + 624], 6
 movabs rax, 5
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lcallfn144: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn144]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn145: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 448]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain120_n7_α
 jmp xchain120_n7_α
 xchain120_n14_β:
 jmp xchain120_n7_α
xchain120_n15_α:
jmp xbinop146_lhs_done
xbinop146_lhs_done:
jmp xbinop146_rhs_done
xbinop146_rhs_done:
bb80_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain120_n17_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain120_n16_α
 xchain120_n15_β:
 jmp xchain120_n17_α
xchain120_n16_α:
bb81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain120_n18_α
 xchain120_n16_β:
 jmp xchain120_n17_α
xchain120_n17_α:
# IR_VAR
bb82_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain120_n19_α
 xchain120_n17_β:
 jmp xchain120_n24_α
xchain120_n18_α:
# IR_UNOP
bb83_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 call rt_size_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain120_n20_α
 xchain120_n18_β:
 jmp xchain120_n17_α
xchain120_n19_α:
# IR_VAR
bb84_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain120_n21_α
 xchain120_n19_β:
 jmp xchain120_n24_α
xchain120_n20_α:
# IR_LIT_I
bb85_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain120_n22_α
 xchain120_n20_β:
 jmp xchain120_n17_α
.Lx154_0:
 .quad 0
xchain120_n21_α:
jmp xbinop155_lhs_done
xbinop155_lhs_done:
jmp xbinop155_rhs_done
xbinop155_rhs_done:
bb86_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain120_n24_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain120_n23_α
 xchain120_n21_β:
 jmp xchain120_n24_α
xchain120_n22_α:
bb87_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 680]
 mov rcx, qword ptr [r12 + 696]
 cmp rax, rcx
 jle xchain120_n17_α
 mov rcx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 720], rcx
 mov rcx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 728], rcx
 jmp xchain120_n25_α
 xchain120_n22_β:
 jmp xchain120_n17_α
xchain120_n23_α:
bb88_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain120_n26_α
 xchain120_n23_β:
 jmp xchain120_n24_α
xchain120_n24_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain120_n27_α
 xchain120_n24_β:
 jmp xchain120_n40_α
xchain120_n25_α:
# IR_LIT_S
bb90_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain120_n28_α
 xchain120_n25_β:
 jmp xchain120_n31_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "\n not generated:"
xchain120_n26_α:
# IR_UNOP
bb91_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_size_d@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain120_n29_α
 xchain120_n26_β:
 jmp xchain120_n24_α
xchain120_n27_α:
# IR_UNOP
bb92_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_size_d@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain120_n30_α
 xchain120_n27_β:
 jmp xchain120_n40_α
xchain120_n28_α:
bb93_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+816]
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 824], rax
 jmp .Lx164_1
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "\n not generated:"
.Lx164_1:
  .section .rodata
  .Lrkfn165: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn165]
 lea rsi, [r12 + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain120_n31_α
 jmp xchain120_n31_α
 xchain120_n28_β:
 jmp xchain120_n31_α
xchain120_n29_α:
# IR_LIT_I
bb94_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain120_n32_α
 xchain120_n29_β:
 jmp xchain120_n24_α
.Lx166_0:
 .quad 0
xchain120_n30_α:
# IR_VAR
bb95_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain120_n33_α
 xchain120_n30_β:
 jmp xchain120_n40_α
xchain120_n31_α:
# IR_LIT_S
bb96_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain120_n34_α
 xchain120_n31_β:
 jmp xchain120_n53_β
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string " "
xchain120_n32_α:
bb97_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 776]
 mov rcx, qword ptr [r12 + 840]
 cmp rax, rcx
 jle xchain120_n24_α
 mov rcx, qword ptr [r12 + 832]
 mov qword ptr [r12 + 864], rcx
 mov rcx, qword ptr [r12 + 840]
 mov qword ptr [r12 + 872], rcx
 jmp xchain120_n35_α
 xchain120_n32_β:
 jmp xchain120_n24_α
xchain120_n33_α:
# IR_UNOP
bb98_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_size_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain120_n36_α
 xchain120_n33_β:
 jmp xchain120_n40_α
xchain120_n34_α:
bb99_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+912]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn174: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn174]
 lea rsi, [r12 + 912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain120_n41_α
 jmp xbang172_iter_done
 xbang172_iter_β:
 jmp xchain120_n41_α
xbang172_iter_done:
# IR_LIST_BANG
bb100_α:
 mov qword ptr [r12 + 928], 0
.Lx176_0:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 928]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 936], rax
 mov qword ptr [r12 + 944], rdx
 cmp rax, 99
 je xchain120_n41_α
 jmp xchain120_n37_α
 xchain120_n34_β:
 inc qword ptr [r12 + 928]
 jmp .Lx176_0
xchain120_n35_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 952], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [r12 + 960], rax
 jmp xchain120_n38_α
 xchain120_n35_β:
 jmp xchain120_n42_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "\n unknown values generated:"
xchain120_n36_α:
bb102_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 888]
 cmp rax, rcx
 jge xchain120_n40_α
 mov rcx, qword ptr [r12 + 880]
 mov qword ptr [r12 + 968], rcx
 mov rcx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 976], rcx
 jmp xchain120_n39_α
 xchain120_n36_β:
 jmp xchain120_n40_α
xchain120_n37_α:
bb103_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1000]
 mov qword ptr [r12 + 1000], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 1008], rax
 jmp .Lx179_1
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string " "
.Lx179_1:
# marshal arg1 = nested producer-box slot [r12+936] -> [r12+1016]
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 1016], rax
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1024], rax
  .section .rodata
  .Lrkfn180: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn180]
 lea rsi, [r12 + 1000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
 cmp eax, 99
 je xchain120_n53_β
 jmp xchain120_n34_β
 xchain120_n37_β:
 jmp xchain120_n53_β
xchain120_n38_α:
bb104_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1048]
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 1056], rax
 jmp .Lx181_1
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "\n unknown values generated:"
.Lx181_1:
  .section .rodata
  .Lrkfn182: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 1048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain120_n42_α
 jmp xchain120_n42_α
 xchain120_n38_β:
 jmp xchain120_n42_α
xchain120_n39_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 1064], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 1072], rax
 jmp xchain120_n43_α
 xchain120_n39_β:
 jmp xchain120_n47_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "\n generated twice:"
xchain120_n40_α:
# IR_VAR
bb106_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain120_n44_α
 xchain120_n40_β:
 jmp proc_check_ω
xchain120_n41_α:
# IR_EVERY
 jmp xchain120_n45_α
 xchain120_n41_β:
 jmp xchain120_n45_α
xchain120_n42_α:
# IR_LIT_S
bb108_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 1088], rax
 jmp xchain120_n46_α
 xchain120_n42_β:
 jmp xchain120_n53_β
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string " "
xchain120_n43_α:
bb109_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1112]
 mov qword ptr [r12 + 1112], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [r12 + 1120], rax
 jmp .Lx188_1
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "\n generated twice:"
.Lx188_1:
  .section .rodata
  .Lrkfn189: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn189]
 lea rsi, [r12 + 1112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 cmp eax, 99
 je xchain120_n47_α
 jmp xchain120_n47_α
 xchain120_n43_β:
 jmp xchain120_n47_α
xchain120_n44_α:
bb110_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp proc_check_γ
xchain120_n44_β:
xchain120_n44_β:
 jmp proc_check_ω
xchain120_n45_α:
# IR_KEYWORD_null
bb111_α:
 mov qword ptr [r12 + 1128], 0
 mov qword ptr [r12 + 1136], 0
 jmp xchain120_n48_α
 xchain120_n45_β:
 jmp xchain120_n17_α
xchain120_n46_α:
bb112_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1160]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1160], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1168], rax
  .section .rodata
  .Lrkfn194: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xchain120_n52_α
 jmp xbang192_iter_done
 xbang192_iter_β:
 jmp xchain120_n52_α
xbang192_iter_done:
# IR_LIST_BANG
bb113_α:
 mov qword ptr [r12 + 1176], 0
.Lx196_0:
 mov rdi, qword ptr [r12 + 1144]
 mov rsi, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1176]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp rax, 99
 je xchain120_n52_α
 jmp xchain120_n49_α
 xchain120_n46_β:
 inc qword ptr [r12 + 1176]
 jmp .Lx196_0
xchain120_n47_α:
# IR_VAR
bb114_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang197_iter_done
 xbang197_iter_β:
 jmp xchain120_n57_α
xbang197_iter_done:
# IR_LIST_BANG
bb115_α:
 mov qword ptr [r12 + 1200], 0
.Lx201_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 1200]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1208], rax
 mov qword ptr [r12 + 1216], rdx
 cmp rax, 99
 je xchain120_n57_α
 jmp xchain120_n50_α
 xchain120_n47_β:
 inc qword ptr [r12 + 1200]
 jmp .Lx201_0
xchain120_n48_α:
bb116_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 1224], rax
 mov qword ptr [r12 + 1232], rdx
 jmp xchain120_n51_α
 xchain120_n48_β:
 jmp xchain120_n17_α
xchain120_n49_α:
bb117_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1256]
 mov qword ptr [r12 + 1256], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 1264], rax
 jmp .Lx203_1
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string " "
.Lx203_1:
# marshal arg1 = nested producer-box slot [r12+1184] -> [r12+1272]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1272], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1280], rax
  .section .rodata
  .Lrkfn204: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 1256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
 cmp eax, 99
 je xchain120_n53_β
 jmp xchain120_n46_β
 xchain120_n49_β:
 jmp xchain120_n53_β
xchain120_n50_α:
bb118_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 1288], rax
 mov qword ptr [r12 + 1296], rdx
 jmp xchain120_n53_α
 xchain120_n50_β:
 jmp xchain120_n53_β
xchain120_n51_α:
jmp xchain120_n17_α
xchain120_n51_β:
jmp xchain120_n17_α
xchain120_n52_α:
# IR_EVERY
 jmp xchain120_n54_α
 xchain120_n52_β:
 jmp xchain120_n54_α
xchain120_n53_α:
xaltg207_a0_start:
bb120_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+1344]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1352], rax
# marshal arg0 = varslot [r12+64] -> [r12+1376]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = varslot [r12+112] -> [r12+1392]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lcallfn209: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn209]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
  .section .rodata
  .Lrkfn210: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xaltg207_a1_start
 jmp xaltg207_a0_succ
 xaltg207_a0_beta:
 jmp xaltg207_a1_start
xaltg207_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1304], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], 1
jmp xchain120_n47_β
xaltg207_a1_start:
bb121_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn213: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn213]
 lea rsi, [r12 + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain120_n47_β
 jmp xaltg207_a1_succ
 xaltg207_a1_beta:
 jmp xchain120_n47_β
xaltg207_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1304], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], 1
jmp xchain120_n47_β
xchain120_n53_β:
jmp xchain120_n47_β
xchain120_n54_α:
# IR_KEYWORD_null
bb122_α:
 mov qword ptr [r12 + 1456], 0
 mov qword ptr [r12 + 1464], 0
 jmp xchain120_n55_α
 xchain120_n54_β:
 jmp xchain120_n24_α
xchain120_n55_α:
bb123_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1456]
 mov rdx, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain120_n56_α
 xchain120_n55_β:
 jmp xchain120_n24_α
xchain120_n56_α:
jmp xchain120_n24_α
xchain120_n56_β:
jmp xchain120_n24_α
xchain120_n57_α:
# IR_EVERY
 jmp xchain120_n58_α
 xchain120_n57_β:
 jmp xchain120_n58_α
xchain120_n58_α:
# IR_KEYWORD_null
bb125_α:
 mov qword ptr [r12 + 1488], 0
 mov qword ptr [r12 + 1496], 0
 jmp xchain120_n59_α
 xchain120_n58_β:
 jmp xchain120_n40_α
xchain120_n59_α:
bb126_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1488]
 mov rdx, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain120_n60_α
 xchain120_n59_β:
 jmp xchain120_n40_α
xchain120_n60_α:
jmp xchain120_n40_α
xchain120_n60_β:
jmp xchain120_n40_α
proc_check_β:
jmp proc_check_ω
proc_check_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_check_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_stale_α
proc_stale_α:
#=======================================================================================================================
    .global proc_stale_α
    .global proc_stale_β
    .global proc_stale_γ
    .global proc_stale_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_stale_α_body:
xchain220_n0_α:
# IR_LIT_I
bb127_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain220_n1_α
 xchain220_n0_β:
 jmp xchain220_n2_α
.Lx221_0:
 .quad 100
xchain220_n1_α:
bb128_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain220_n2_α
 xchain220_n1_β:
 jmp xchain220_n2_α
xchain220_n2_α:
bb129_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn224: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain220_n4_α
 jmp xchain220_n3_α
 xchain220_n2_β:
 jmp xchain220_n4_α
xchain220_n3_α:
bb130_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain220_n4_α
 xchain220_n3_β:
 jmp xchain220_n4_α
xchain220_n4_α:
bb131_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn227: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain220_n6_α
 jmp xchain220_n5_α
 xchain220_n4_β:
 jmp xchain220_n6_α
xchain220_n5_α:
bb132_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain220_n6_α
 xchain220_n5_β:
 jmp xchain220_n6_α
xchain220_n6_α:
bb133_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn230: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain220_n7_α
 jmp xchain220_n7_α
 xchain220_n6_β:
 jmp xchain220_n7_α
xchain220_n7_α:
# IR_LIT_I
bb134_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain220_n8_α
 xchain220_n7_β:
 jmp xchain220_n28_β
.Lx231_0:
 .quad 1
xchain220_n8_α:
# IR_VAR
bb135_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain220_n9_α
 xchain220_n8_β:
 jmp xchain220_n28_β
xchain220_n9_α:
# IR_TO
bb136_α:
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 224], rax
.Lx235_0:
 mov rax, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain220_n15_α
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain220_n10_α
 xchain220_n9_β:
 inc qword ptr [r12 + 224]
 jmp .Lx235_0
xchain220_n10_α:
bb137_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xchain220_n11_α
 xchain220_n10_β:
 jmp xchain220_n28_β
xchain220_n11_α:
# IR_VAR
bb138_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain220_n12_α
 xchain220_n11_β:
 jmp xchain220_n13_α
xchain220_n12_α:
bb139_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 176]
 cmp eax, 4
 jne .Lx241_0
 mov rax, qword ptr [r12 + 232]
 cmp eax, 6
 jne .Lx241_0
 mov rsi, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 240]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx241_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx241_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain220_n13_α
.Lx241_0:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 240]
 mov r8, qword ptr [r12 + 32]
 mov r9, qword ptr [r12 + 40]
 call subscript_set@PLT
 cmp eax, 0
 je xchain220_n13_α
 jmp xchain220_n13_α
 xchain220_n12_β:
 jmp xchain220_n13_α
xchain220_n13_α:
bb140_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+264]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 272], rax
# marshal arg1 = varslot [r12+64] -> [r12+280]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 288], rax
  .section .rodata
  .Lrkfn243: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn243]
 lea rsi, [r12 + 264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 cmp eax, 99
 je xchain220_n9_β
 jmp xchain220_n14_α
 xchain220_n13_β:
 jmp xchain220_n9_β
xchain220_n14_α:
jmp xchain220_n9_β
xchain220_n14_β:
jmp xchain220_n9_β
xchain220_n15_α:
# IR_EVERY
 jmp xchain220_n16_α
 xchain220_n15_β:
 jmp xchain220_n16_α
xchain220_n16_α:
# IR_LIT_S
bb142_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [r12 + 304], rax
 jmp xchain220_n17_α
 xchain220_n16_β:
 jmp xchain220_n18_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "checking !S:"
xchain220_n17_α:
bb143_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 296]
 mov rsi, qword ptr [r12 + 304]
 call rt_write_any_nl@PLT
 jmp xchain220_n18_α
xchain220_n17_β:
xchain220_n17_β:
 jmp xchain220_n18_α
xchain220_n18_α:
# IR_VAR
bb144_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang247_iter_done
 xbang247_iter_β:
 jmp xchain220_n20_α
xbang247_iter_done:
# IR_LIST_BANG
bb145_α:
 mov qword ptr [r12 + 312], 0
.Lx251_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 312]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp rax, 99
 je xchain220_n20_α
 jmp xchain220_n19_α
 xchain220_n18_β:
 inc qword ptr [r12 + 312]
 jmp .Lx251_0
xchain220_n19_α:
bb146_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain220_n21_α
 xchain220_n19_β:
 jmp xchain220_n28_β
xchain220_n20_α:
# IR_EVERY
 jmp xchain220_n22_α
 xchain220_n20_β:
 jmp xchain220_n22_α
xchain220_n21_α:
bb148_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+368]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = varslot [r12+64] -> [r12+384]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn255: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn255]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain220_n24_α
 jmp xchain220_n23_α
 xchain220_n21_β:
 jmp xchain220_n24_α
xchain220_n22_α:
# IR_LIT_S
bb149_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain220_n25_α
 xchain220_n22_β:
 jmp xchain220_n28_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "checking !T:"
xchain220_n23_α:
bb150_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+432]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = varslot [r12+16] -> [r12+448]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn258: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn258]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain220_n18_β
 jmp xchain220_n26_α
 xchain220_n23_β:
 jmp xchain220_n18_β
xchain220_n24_α:
# IR_NOT
bb151_α:
 mov qword ptr [r12 + 464], 0
 mov qword ptr [r12 + 472], 0
 jmp xchain220_n27_α
 xchain220_n24_β:
 jmp xchain220_n23_α
xchain220_n25_α:
bb152_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_write_any_nl@PLT
 jmp xchain220_n28_α
xchain220_n25_β:
xchain220_n25_β:
 jmp xchain220_n28_α
xchain220_n26_α:
jmp xchain220_n18_β
xchain220_n26_β:
jmp xchain220_n18_β
xchain220_n27_α:
# IR_LIT_S
bb153_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain220_n29_α
 xchain220_n27_β:
 jmp xchain220_n23_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "S["
xchain220_n28_α:
# IR_VAR
bb154_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang262_iter_done
 xbang262_iter_β:
 jmp xchain220_n31_α
xbang262_iter_done:
# IR_LIST_BANG
bb155_α:
 mov qword ptr [r12 + 496], 0
.Lx266_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 cmp rax, 99
 je xchain220_n31_α
 jmp xchain220_n30_α
 xchain220_n28_β:
 inc qword ptr [r12 + 496]
 jmp .Lx266_0
xchain220_n29_α:
# IR_VAR
bb156_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain220_n32_α
 xchain220_n29_β:
 jmp xchain220_n23_α
xchain220_n30_α:
bb157_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp xchain220_n33_α
 xchain220_n30_β:
 jmp xchain220_n28_β
xchain220_n31_α:
# IR_EVERY
 jmp xchain220_n34_α
 xchain220_n31_β:
 jmp xchain220_n34_α
xchain220_n32_α:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 536], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 544], rax
 jmp xchain220_n35_α
 xchain220_n32_β:
 jmp xchain220_n23_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "] stale"
xchain220_n33_α:
bb160_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+568]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 568], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 576], rax
# marshal arg1 = varslot [r12+64] -> [r12+584]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 592], rax
  .section .rodata
  .Lbynamefn273: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn273]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xchain220_n37_α
 jmp xchain220_n36_α
xchain220_n33_β:
 jmp xchain220_n37_α
xchain220_n34_α:
# IR_LIT_S
bb161_α:
 mov qword ptr [r12 + 600], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 608], rax
 jmp xchain220_n38_α
 xchain220_n34_β:
 jmp xchain220_n41_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "checking key(T):"
xchain220_n35_α:
bb162_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+632]
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 640], rax
 jmp .Lx275_1
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "S["
.Lx275_1:
# marshal arg1 = varslot [r12+64] -> [r12+648]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 656], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx275_4]
 mov qword ptr [r12 + 672], rax
 jmp .Lx275_5
.Lx275_4:
 .quad .Lx275_4_s
.Lx275_4_s:
 .string "] stale"
.Lx275_5:
  .section .rodata
  .Lrkfn276: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn276]
 lea rsi, [r12 + 632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je xchain220_n23_α
 jmp xchain220_n23_α
 xchain220_n35_β:
 jmp xchain220_n23_α
xchain220_n36_α:
# IR_UNOP
bb163_α:
 mov eax, dword ptr [r12 + 552]
 cmp eax, 99
 je xchain220_n37_α
 cmp eax, 0
 jne xchain220_n37_α
 mov qword ptr [r12 + 680], 0
 mov qword ptr [r12 + 688], 0
 jmp xchain220_n39_α
 xchain220_n36_β:
 jmp xchain220_n37_α
xchain220_n37_α:
bb164_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+712]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 720], rax
# marshal arg1 = varslot [r12+16] -> [r12+728]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 728], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 736], rax
  .section .rodata
  .Lrkfn279: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je xchain220_n28_β
 jmp xchain220_n40_α
 xchain220_n37_β:
 jmp xchain220_n28_β
xchain220_n38_α:
bb165_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 600]
 mov rsi, qword ptr [r12 + 608]
 call rt_write_any_nl@PLT
 jmp xchain220_n41_α
xchain220_n38_β:
xchain220_n38_β:
 jmp xchain220_n41_α
xchain220_n39_α:
# IR_LIT_S
bb166_α:
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 752], rax
 jmp xchain220_n42_α
 xchain220_n39_β:
 jmp xchain220_n37_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "T["
xchain220_n40_α:
jmp xchain220_n28_β
xchain220_n40_β:
jmp xchain220_n28_β
xchain220_n41_α:
bb167_α:
# BOX IR_CALL key(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+776]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 776], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 784], rax
  .section .rodata
  .Lbynamefn283: .string "key"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn283]
 lea rsi, [r12 + 776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 cmp eax, 99
 je xchain220_n28_β
 jmp xchain220_n43_α
xchain220_n41_β:
 jmp xchain220_n28_β
xchain220_n42_α:
# IR_VAR
bb168_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain220_n45_α
 xchain220_n42_β:
 jmp xchain220_n37_α
xchain220_n43_α:
bb169_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 jmp xchain220_n46_α
 xchain220_n43_β:
 jmp xchain220_n28_β
xchain220_n44_α:
# IR_EVERY
 jmp xchain220_n47_α
 xchain220_n44_β:
 jmp xchain220_n47_α
xchain220_n45_α:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 808], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [r12 + 816], rax
 jmp xchain220_n48_α
 xchain220_n45_β:
 jmp xchain220_n37_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "] stale"
xchain220_n46_α:
bb172_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+840]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 840], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 848], rax
# marshal arg1 = varslot [r12+64] -> [r12+856]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 864], rax
  .section .rodata
  .Lbynamefn290: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn290]
 lea rsi, [r12 + 840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 824], rax
 mov qword ptr [r12 + 832], rdx
 cmp eax, 99
 je xchain220_n50_α
 jmp xchain220_n49_α
xchain220_n46_β:
 jmp xchain220_n50_α
xchain220_n47_α:
bb173_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn292: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn292]
 lea rsi, [r12 + 888]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xchain220_n51_α
 jmp xchain220_n51_α
 xchain220_n47_β:
 jmp xchain220_n51_α
xchain220_n48_α:
bb174_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+904]
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 912], rax
 jmp .Lx293_1
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "T["
.Lx293_1:
# marshal arg1 = varslot [r12+64] -> [r12+920]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 920], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 928], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx293_4]
 mov qword ptr [r12 + 944], rax
 jmp .Lx293_5
.Lx293_4:
 .quad .Lx293_4_s
.Lx293_4_s:
 .string "] stale"
.Lx293_5:
  .section .rodata
  .Lrkfn294: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
 cmp eax, 99
 je xchain220_n37_α
 jmp xchain220_n37_α
 xchain220_n48_β:
 jmp xchain220_n37_α
xchain220_n49_α:
# IR_UNOP
bb175_α:
 mov eax, dword ptr [r12 + 824]
 cmp eax, 99
 je xchain220_n50_α
 cmp eax, 0
 jne xchain220_n50_α
 mov qword ptr [r12 + 952], 0
 mov qword ptr [r12 + 960], 0
 jmp xchain220_n52_α
 xchain220_n49_β:
 jmp xchain220_n50_α
xchain220_n50_α:
bb176_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+984]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 992], rax
# marshal arg1 = varslot [r12+16] -> [r12+1000]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1000], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1008], rax
  .section .rodata
  .Lrkfn297: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xchain220_n41_α
 jmp xchain220_n53_α
 xchain220_n50_β:
 jmp xchain220_n41_α
xchain220_n51_α:
# IR_RETURN
bb177_α:
 mov rax, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 880]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_stale_γ
xchain220_n52_α:
# IR_LIT_S
bb178_α:
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 1024], rax
 jmp xchain220_n54_α
 xchain220_n52_β:
 jmp xchain220_n50_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "T["
xchain220_n53_α:
jmp xchain220_n41_α
xchain220_n53_β:
jmp xchain220_n41_α
xchain220_n54_α:
# IR_VAR
bb179_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain220_n55_α
 xchain220_n54_β:
 jmp xchain220_n50_α
xchain220_n55_α:
# IR_LIT_S
bb180_α:
 mov qword ptr [r12 + 1032], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [r12 + 1040], rax
 jmp xchain220_n56_α
 xchain220_n55_β:
 jmp xchain220_n50_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "] stale"
xchain220_n56_α:
bb181_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1064]
 mov qword ptr [r12 + 1064], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [r12 + 1072], rax
 jmp .Lx303_1
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "T["
.Lx303_1:
# marshal arg1 = varslot [r12+64] -> [r12+1080]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1080], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1088], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1096]
 mov qword ptr [r12 + 1096], 1
 mov rax, qword ptr [rip + .Lx303_4]
 mov qword ptr [r12 + 1104], rax
 jmp .Lx303_5
.Lx303_4:
 .quad .Lx303_4_s
.Lx303_4_s:
 .string "] stale"
.Lx303_5:
  .section .rodata
  .Lrkfn304: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 1064]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1048], rax
 mov qword ptr [r12 + 1056], rdx
 cmp eax, 99
 je xchain220_n50_α
 jmp xchain220_n50_α
 xchain220_n56_β:
 jmp xchain220_n50_α
proc_stale_β:
jmp proc_stale_ω
proc_stale_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_stale_ω:
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
  .Lstartup_pname0: .string "tins"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tins_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "tdel"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_tdel_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "check"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_check_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "stale"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_stale_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "verbose"
  .align 8
__gva_names:
  .quad .Lgvan0
  .section .bss
  .align 16
__gva: .space 16, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 1
  call gva_register@PLT
  mov rbx, rax
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
xchain305_n0_α:
bb182_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+16]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 24], rax
# marshal arg1 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 1
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn307: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn307]
 lea rsi, [r12 + 16]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain305_n4_α
 jmp xchain305_n1_α
xchain305_n0_β:
 jmp xchain305_n4_α
xchain305_n1_α:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain305_n2_α
 xchain305_n1_β:
 jmp xchain305_n4_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "-v"
xchain305_n2_α:
bb184_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain305_n4_α
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 88], rax
 jmp xchain305_n3_α
 xchain305_n2_β:
 jmp xchain305_n4_α
xchain305_n3_α:
# IR_LIT_I
bb185_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain305_n5_α
 xchain305_n3_β:
 jmp xchain305_n4_α
.Lx310_0:
 .quad 1
xchain305_n4_α:
bb186_α:
# IR_ALT
 mov qword ptr [r12 + 128], 0
.Lx312_3:
 mov rax, qword ptr [r12 + 128]
 cmp rax, 0
 je .Lx312_4
 mov rax, qword ptr [r12 + 128]
 cmp rax, 1
 je .Lx312_5
 mov rax, qword ptr [r12 + 128]
 cmp rax, 2
 je .Lx312_6
 jmp xchain305_n8_α
.Lx312_4:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 128]
 add rax, 1
 mov qword ptr [r12 + 128], rax
 jmp xchain305_n6_α
.Lx312_5:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx312_1]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 128]
 add rax, 1
 mov qword ptr [r12 + 128], rax
 jmp xchain305_n6_α
.Lx312_6:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx312_2]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 128]
 add rax, 1
 mov qword ptr [r12 + 128], rax
 jmp xchain305_n6_α
 xchain305_n4_β:
 jmp .Lx312_3
.Lx312_0:
 .quad 41
.Lx312_1:
 .quad 619
.Lx312_2:
 .quad 991
xchain305_n5_α:
bb187_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rcx
 jmp xchain305_n4_β
 xchain305_n5_β:
 jmp xchain305_n4_β
xchain305_n6_α:
bb188_α:
# IR_ALT
 mov qword ptr [r12 + 168], 0
.Lx315_3:
 mov rax, qword ptr [r12 + 168]
 cmp rax, 0
 je .Lx315_4
 mov rax, qword ptr [r12 + 168]
 cmp rax, 1
 je .Lx315_5
 mov rax, qword ptr [r12 + 168]
 cmp rax, 2
 je .Lx315_6
 jmp xchain305_n4_β
.Lx315_4:
 mov qword ptr [r12 + 152], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 168]
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain305_n7_α
.Lx315_5:
 mov qword ptr [r12 + 152], 6
 mov rax, qword ptr [rip + .Lx315_1]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 168]
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain305_n7_α
.Lx315_6:
 mov qword ptr [r12 + 152], 6
 mov rax, qword ptr [rip + .Lx315_2]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 168]
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain305_n7_α
 xchain305_n6_β:
 jmp .Lx315_3
.Lx315_0:
 .quad 3
.Lx315_1:
 .quad 11
.Lx315_2:
 .quad 23
xchain305_n7_α:
bb189_α:
  .section .rodata
  .Lcall190_pname: .string "tdel"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+152]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall190_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain305_n11_β
 jmp xchain305_n6_β
xchain305_n7_β:
 jmp xchain305_n11_β
xchain305_n8_α:
# IR_LIT_I
bb190_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 200], rax
 jmp xevery317_body_β
 xevery317_body_β:
 jmp xchain305_n9_α
.Lx318_0:
 .quad 41
# IR_EVERY
 jmp xchain305_n9_α
 xchain305_n8_β:
 jmp xchain305_n9_α
xchain305_n9_α:
bb192_α:
# IR_ALT
 mov qword ptr [r12 + 224], 0
.Lx321_3:
 mov rax, qword ptr [r12 + 224]
 cmp rax, 0
 je .Lx321_4
 mov rax, qword ptr [r12 + 224]
 cmp rax, 1
 je .Lx321_5
 mov rax, qword ptr [r12 + 224]
 cmp rax, 2
 je .Lx321_6
 jmp xchain305_n13_α
.Lx321_4:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 224]
 add rax, 1
 mov qword ptr [r12 + 224], rax
 jmp xchain305_n10_α
.Lx321_5:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx321_1]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 224]
 add rax, 1
 mov qword ptr [r12 + 224], rax
 jmp xchain305_n10_α
.Lx321_6:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx321_2]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 224]
 add rax, 1
 mov qword ptr [r12 + 224], rax
 jmp xchain305_n10_α
 xchain305_n9_β:
 jmp .Lx321_3
.Lx321_0:
 .quad 40
.Lx321_1:
 .quad 103
.Lx321_2:
 .quad 233
xchain305_n10_α:
bb193_α:
# IR_ALT
 mov qword ptr [r12 + 248], 0
.Lx323_3:
 mov rax, qword ptr [r12 + 248]
 cmp rax, 0
 je .Lx323_4
 mov rax, qword ptr [r12 + 248]
 cmp rax, 1
 je .Lx323_5
 mov rax, qword ptr [r12 + 248]
 cmp rax, 2
 je .Lx323_6
 jmp xchain305_n9_β
.Lx323_4:
 mov qword ptr [r12 + 232], 6
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 248]
 add rax, 1
 mov qword ptr [r12 + 248], rax
 jmp xchain305_n11_α
.Lx323_5:
 mov qword ptr [r12 + 232], 6
 mov rax, qword ptr [rip + .Lx323_1]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 248]
 add rax, 1
 mov qword ptr [r12 + 248], rax
 jmp xchain305_n11_α
.Lx323_6:
 mov qword ptr [r12 + 232], 6
 mov rax, qword ptr [rip + .Lx323_2]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 248]
 add rax, 1
 mov qword ptr [r12 + 248], rax
 jmp xchain305_n11_α
 xchain305_n10_β:
 jmp .Lx323_3
.Lx323_0:
 .quad 239
.Lx323_1:
 .quad 419
.Lx323_2:
 .quad 503
xchain305_n11_α:
bb194_α:
# IR_ALT
 mov qword ptr [r12 + 272], 0
.Lx325_3:
 mov rax, qword ptr [r12 + 272]
 cmp rax, 0
 je .Lx325_4
 mov rax, qword ptr [r12 + 272]
 cmp rax, 1
 je .Lx325_5
 mov rax, qword ptr [r12 + 272]
 cmp rax, 2
 je .Lx325_6
 jmp xchain305_n10_β
.Lx325_4:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 272]
 add rax, 1
 mov qword ptr [r12 + 272], rax
 jmp xchain305_n12_α
.Lx325_5:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx325_1]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 272]
 add rax, 1
 mov qword ptr [r12 + 272], rax
 jmp xchain305_n12_α
.Lx325_6:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx325_2]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 272]
 add rax, 1
 mov qword ptr [r12 + 272], rax
 jmp xchain305_n12_α
 xchain305_n11_β:
 jmp .Lx325_3
.Lx325_0:
 .quad 3
.Lx325_1:
 .quad 11
.Lx325_2:
 .quad 23
xchain305_n12_α:
bb195_α:
  .section .rodata
  .Lcall196_pname: .string "tins"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+208]
 mov rdx, qword ptr [r12+216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+232]
 mov rdx, qword ptr [r12+240]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall196_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je xchain305_n11_β
 jmp xchain305_n11_β
xchain305_n12_β:
 jmp xchain305_n11_β
xchain305_n13_α:
# IR_LIT_I
bb196_α:
 mov qword ptr [r12 + 296], 6
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [r12 + 304], rax
 jmp xevery327_body_β
 xevery327_body_β:
 jmp xchain305_n14_α
.Lx328_0:
 .quad 40
# IR_EVERY
 jmp xchain305_n14_α
 xchain305_n13_β:
 jmp xchain305_n14_α
xchain305_n14_α:
bb198_α:
  .section .rodata
  .Lcall199_pname: .string "stale"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall199_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je xchain305_n15_α
 jmp xchain305_n15_α
xchain305_n14_β:
 jmp xchain305_n15_α
xchain305_n15_α:
# IR_LIT_S
bb199_α:
 mov qword ptr [r12 + 328], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 336], rax
 jmp xchain305_n16_α
 xchain305_n15_β:
 jmp main_ω
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "[done]"
xchain305_n16_α:
bb200_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 328]
 mov rsi, qword ptr [r12 + 336]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain305_n16_β:
xchain305_n16_β:
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
.S0: .string "verbose"
.text
