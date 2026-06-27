  .intel_syntax noprefix
  .text
  .globl proc_rtest_α
proc_rtest_α:
#=======================================================================================================================
    .global proc_rtest_α
    .global proc_rtest_β
    .global proc_rtest_γ
    .global proc_rtest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_rtest_α_body:
xchain0_n0_α:
# IR_INITIAL run-once guard
bb1_α:
 mov rdi, 1
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain0_n1_α
 jmp xinit1_body
 xchain0_n0_β:
 jmp xchain0_n1_α
xinit1_body:
xargsub4_n0_α:
bb2_α:
# BOX IR_CALL r10(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 1
 mov qword ptr [r12 + 40], rax
# marshal arg1 = LIT_I -> [r12+48]
 mov qword ptr [r12 + 48], 6
 movabs rax, 2
 mov qword ptr [r12 + 56], rax
# marshal arg2 = LIT_I -> [r12+64]
 mov qword ptr [r12 + 64], 6
 movabs rax, 3
 mov qword ptr [r12 + 72], rax
# marshal arg3 = LIT_I -> [r12+80]
 mov qword ptr [r12 + 80], 6
 movabs rax, 4
 mov qword ptr [r12 + 88], rax
# marshal arg4 = LIT_I -> [r12+96]
 mov qword ptr [r12 + 96], 6
 movabs rax, 5
 mov qword ptr [r12 + 104], rax
# marshal arg5 = LIT_I -> [r12+112]
 mov qword ptr [r12 + 112], 6
 movabs rax, 6
 mov qword ptr [r12 + 120], rax
# marshal arg6 = LIT_I -> [r12+128]
 mov qword ptr [r12 + 128], 6
 movabs rax, 7
 mov qword ptr [r12 + 136], rax
# marshal arg7 = LIT_I -> [r12+144]
 mov qword ptr [r12 + 144], 6
 movabs rax, 8
 mov qword ptr [r12 + 152], rax
# marshal arg8 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 9
 mov qword ptr [r12 + 168], rax
# marshal arg9 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 10
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn6: .string "r10"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn6]
 lea rsi, [r12 + 32]
 mov edx, 10
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xargsub4_n2_α
 jmp xargsub4_n1_α
 xargsub4_n0_β:
 jmp xargsub4_n2_α
xargsub4_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xargsub4_n2_α
 xargsub4_n1_β:
 jmp xargsub4_n2_α
xargsub4_n2_α:
bb4_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn9: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn9]
 lea rsi, [r12 + 224]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xargsub4_n4_α
 jmp xargsub4_n3_α
xargsub4_n2_β:
 jmp xargsub4_n4_α
xargsub4_n3_α:
bb5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xargsub4_n4_α
 xargsub4_n3_β:
 jmp xargsub4_n4_α
xargsub4_n4_α:
bb6_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn12: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xargsub4_n6_α
 jmp xargsub4_n5_α
 xargsub4_n4_β:
 jmp xargsub4_n6_α
xargsub4_n5_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xargsub4_n6_α
 xargsub4_n5_β:
 jmp xargsub4_n6_α
xargsub4_n6_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 328], rax
 jmp xargsub4_n7_α
 xargsub4_n6_β:
 jmp xchain0_n1_α
.Lx14_0:
 .quad 1
xargsub4_n7_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 344], rax
 jmp xargsub4_n8_α
 xargsub4_n7_β:
 jmp xchain0_n1_α
.Lx15_0:
 .quad 100
xargsub4_n8_α:
# IR_TO
bb10_α:
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 368], rax
.Lx17_0:
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 344]
 cmp rax, rcx
 jg xchain0_n1_α
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xargsub4_n9_α
 xargsub4_n8_β:
 inc qword ptr [r12 + 368]
 jmp .Lx17_0
xargsub4_n9_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 jmp xargsub4_n10_α
 xargsub4_n9_β:
 jmp xchain0_n1_α
xargsub4_n10_α:
bb12_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+240] -> [r12+424]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 432], rax
# marshal arg1 = varslot [r12+376] -> [r12+440]
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 448], rax
  .section .rodata
  .Lbynamefn20: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn20]
 lea rsi, [r12 + 424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 cmp eax, 99
 je xargsub4_n11_α
 jmp xargsub4_n11_α
xargsub4_n10_β:
 jmp xargsub4_n11_α
xargsub4_n11_α:
# IR_VAR
bb13_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 296], rax
 jmp xargsub4_n12_α
 xargsub4_n11_β:
 jmp xargsub4_n8_α
xargsub4_n12_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xiset23_val_done:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 384], rax
 jmp xiset23_key_done
 xiset23_key_β:
 jmp xargsub4_n8_α
xiset23_key_done:
bb16_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 288]
 cmp eax, 4
 jne .Lx28_0
 mov rax, qword ptr [r12 + 376]
 cmp eax, 6
 jne .Lx28_0
 mov rsi, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 384]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx28_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx28_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xargsub4_n13_α
.Lx28_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 384]
 mov r8, qword ptr [r12 + 456]
 mov r9, qword ptr [r12 + 464]
 call subscript_set@PLT
 cmp eax, 0
 je xargsub4_n8_α
 jmp xargsub4_n13_α
 xargsub4_n12_β:
 jmp xargsub4_n8_α
xargsub4_n13_α:
jmp xargsub4_n8_β
xargsub4_n13_β:
jmp xargsub4_n8_α
xchain0_n1_α:
bb17_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 488]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb18_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+504] -> [r12+504]
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 504], rax
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 512], rax
# marshal arg1 = LIT_I -> [r12+520]
 mov qword ptr [r12 + 520], 6
 movabs rax, 10
 mov qword ptr [r12 + 528], rax
  .section .rodata
  .Lrkfn32: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_LIT_S
bb19_α:
 mov qword ptr [r12 + 536], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 544], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "  i  "
xchain0_n4_α:
bb20_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+568] -> [r12+568]
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 568], rax
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 576], rax
# marshal arg1 = LIT_I -> [r12+584]
 mov qword ptr [r12 + 584], 6
 movabs rax, 10
 mov qword ptr [r12 + 592], rax
  .section .rodata
  .Lrkfn35: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n7_α
xchain0_n5_α:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 600], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 608], rax
 jmp xchain0_n8_α
 xchain0_n5_β:
 jmp xchain0_n4_α
.Lx36_0:
 .quad 9999
xchain0_n6_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 616], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 624], rax
 jmp xchain0_n9_α
 xchain0_n6_β:
 jmp xchain0_n7_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "  i  "
xchain0_n7_α:
bb23_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+648] -> [r12+648]
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 656], rax
# marshal arg1 = LIT_I -> [r12+664]
 mov qword ptr [r12 + 664], 6
 movabs rax, 10
 mov qword ptr [r12 + 672], rax
  .section .rodata
  .Lrkfn39: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n11_α
xchain0_n8_α:
xchain0_n9_α:
# IR_LIT_I
bb25_α:
 mov qword ptr [r12 + 696], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain0_n13_α
 xchain0_n9_β:
 jmp xchain0_n7_α
.Lx41_0:
 .quad 9999
xchain0_n10_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 720], rax
 jmp xchain0_n14_α
 xchain0_n10_β:
 jmp xchain0_n11_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "  r  "
xchain0_n11_α:
bb27_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+744] -> [r12+744]
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 752], rax
# marshal arg1 = LIT_I -> [r12+760]
 mov qword ptr [r12 + 760], 6
 movabs rax, 10
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn44: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n11_β:
 jmp xchain0_n16_α
xchain0_n12_α:
bb28_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+504] -> [r12+840]
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 840], rax
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 848], rax
# marshal arg1 = LIT_I -> [r12+856]
 mov qword ptr [r12 + 856], 6
 movabs rax, 10
 mov qword ptr [r12 + 864], rax
  .section .rodata
  .Lcallfn46: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn46]
 lea rsi, [r12 + 840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+808]
 mov qword ptr [r12 + 808], 1
 mov rax, qword ptr [rip + .Lx45_2]
 mov qword ptr [r12 + 816], rax
 jmp .Lx45_3
.Lx45_2:
 .quad .Lx45_2_s
.Lx45_2_s:
 .string "  i  "
.Lx45_3:
# marshal arg2 = nested producer-box slot [r12+680] -> [r12+824]
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 824], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 832], rax
  .section .rodata
  .Lrkfn47: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 776], rax
 mov qword ptr [r12 + 784], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n4_α
 xchain0_n12_β:
 jmp xchain0_n4_α
xchain0_n13_α:
xchain0_n14_α:
bb30_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+904]
 mov qword ptr [r12 + 904], 6
 movabs rax, 10000
 mov qword ptr [r12 + 912], rax
  .section .rodata
  .Lrkfn50: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n18_α
 xchain0_n14_β:
 jmp xchain0_n11_α
xchain0_n15_α:
# IR_LIT_S
bb31_α:
 mov qword ptr [r12 + 920], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 928], rax
 jmp xchain0_n19_α
 xchain0_n15_β:
 jmp xchain0_n16_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "  r  "
xchain0_n16_α:
bb32_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+952] -> [r12+952]
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 960], rax
# marshal arg1 = LIT_I -> [r12+968]
 mov qword ptr [r12 + 968], 6
 movabs rax, 10
 mov qword ptr [r12 + 976], rax
  .section .rodata
  .Lrkfn53: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 936], rax
 mov qword ptr [r12 + 944], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n20_α
 xchain0_n16_β:
 jmp xchain0_n21_α
xchain0_n17_α:
bb33_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+568] -> [r12+1048]
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 1048], rax
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 1056], rax
# marshal arg1 = LIT_I -> [r12+1064]
 mov qword ptr [r12 + 1064], 6
 movabs rax, 10
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lcallfn55: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn55]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1000], rax
 mov qword ptr [r12 + 1008], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1016]
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx54_2]
 mov qword ptr [r12 + 1024], rax
 jmp .Lx54_3
.Lx54_2:
 .quad .Lx54_2_s
.Lx54_2_s:
 .string "  i  "
.Lx54_3:
# marshal arg2 = nested producer-box slot [r12+872] -> [r12+1032]
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1032], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 1040], rax
  .section .rodata
  .Lrkfn56: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 1000]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n7_α
 xchain0_n17_β:
 jmp xchain0_n7_α
xchain0_n18_α:
bb34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+648] -> [r12+1144]
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 1152], rax
# marshal arg1 = LIT_I -> [r12+1160]
 mov qword ptr [r12 + 1160], 6
 movabs rax, 10
 mov qword ptr [r12 + 1168], rax
  .section .rodata
  .Lcallfn58: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn58]
 lea rsi, [r12 + 1144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1112]
 mov qword ptr [r12 + 1112], 1
 mov rax, qword ptr [rip + .Lx57_2]
 mov qword ptr [r12 + 1120], rax
 jmp .Lx57_3
.Lx57_2:
 .quad .Lx57_2_s
.Lx57_2_s:
 .string "  r  "
.Lx57_3:
# marshal arg0 = LIT_I -> [r12+1176]
 mov qword ptr [r12 + 1176], 6
 movabs rax, 10000
 mov qword ptr [r12 + 1184], rax
  .section .rodata
  .Lcallfn59: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn59]
 lea rsi, [r12 + 1176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], rdx
  .section .rodata
  .Lrkfn60: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 1096]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1080], rax
 mov qword ptr [r12 + 1088], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n11_α
 xchain0_n18_β:
 jmp xchain0_n11_α
xchain0_n19_α:
bb35_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1208]
 mov qword ptr [r12 + 1208], 6
 movabs rax, 10000
 mov qword ptr [r12 + 1216], rax
  .section .rodata
  .Lrkfn62: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 1208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n16_α
xchain0_n20_α:
# IR_LIT_S
bb36_α:
 mov qword ptr [r12 + 1224], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 1232], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n21_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "  s  "
xchain0_n21_α:
bb37_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1256] -> [r12+1256]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1264], rax
# marshal arg1 = LIT_I -> [r12+1272]
 mov qword ptr [r12 + 1272], 6
 movabs rax, 10
 mov qword ptr [r12 + 1280], rax
  .section .rodata
  .Lrkfn65: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 1256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n25_α
xchain0_n22_α:
bb38_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+744] -> [r12+1352]
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 1352], rax
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 1360], rax
# marshal arg1 = LIT_I -> [r12+1368]
 mov qword ptr [r12 + 1368], 6
 movabs rax, 10
 mov qword ptr [r12 + 1376], rax
  .section .rodata
  .Lcallfn67: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn67]
 lea rsi, [r12 + 1352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1320]
 mov qword ptr [r12 + 1320], 1
 mov rax, qword ptr [rip + .Lx66_2]
 mov qword ptr [r12 + 1328], rax
 jmp .Lx66_3
.Lx66_2:
 .quad .Lx66_2_s
.Lx66_2_s:
 .string "  r  "
.Lx66_3:
# marshal arg0 = LIT_I -> [r12+1384]
 mov qword ptr [r12 + 1384], 6
 movabs rax, 10000
 mov qword ptr [r12 + 1392], rax
  .section .rodata
  .Lcallfn68: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn68]
 lea rsi, [r12 + 1384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
  .section .rodata
  .Lrkfn69: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 1304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1288], rax
 mov qword ptr [r12 + 1296], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n16_α
 xchain0_n22_β:
 jmp xchain0_n16_α
xchain0_n23_α:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 1400], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 1408], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n21_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain0_n24_α:
# IR_LIT_S
bb40_α:
 mov qword ptr [r12 + 1416], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 1424], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "  s  "
xchain0_n25_α:
bb41_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1448] -> [r12+1448]
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1448], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1456], rax
# marshal arg1 = LIT_I -> [r12+1464]
 mov qword ptr [r12 + 1464], 6
 movabs rax, 10
 mov qword ptr [r12 + 1472], rax
  .section .rodata
  .Lrkfn73: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 1448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n29_α
xchain0_n26_α:
xchain0_n27_α:
# IR_LIT_S
bb43_α:
 mov qword ptr [r12 + 1496], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 1504], rax
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n25_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
xchain0_n28_α:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 1512], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [r12 + 1520], rax
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n29_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "  c  "
xchain0_n29_α:
bb45_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1544] -> [r12+1544]
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1544], rax
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1552], rax
# marshal arg1 = LIT_I -> [r12+1560]
 mov qword ptr [r12 + 1560], 6
 movabs rax, 10
 mov qword ptr [r12 + 1568], rax
  .section .rodata
  .Lrkfn78: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn78]
 lea rsi, [r12 + 1544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1528], rax
 mov qword ptr [r12 + 1536], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n34_α
xchain0_n30_α:
bb46_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+952] -> [r12+1640]
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1640], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1648], rax
# marshal arg1 = LIT_I -> [r12+1656]
 mov qword ptr [r12 + 1656], 6
 movabs rax, 10
 mov qword ptr [r12 + 1664], rax
  .section .rodata
  .Lcallfn80: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn80]
 lea rsi, [r12 + 1640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1592], rax
 mov qword ptr [r12 + 1600], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1608]
 mov qword ptr [r12 + 1608], 1
 mov rax, qword ptr [rip + .Lx79_2]
 mov qword ptr [r12 + 1616], rax
 jmp .Lx79_3
.Lx79_2:
 .quad .Lx79_2_s
.Lx79_2_s:
 .string "  s  "
.Lx79_3:
# marshal arg2 = nested producer-box slot [r12+1480] -> [r12+1624]
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1624], rax
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1632], rax
  .section .rodata
  .Lrkfn81: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 1592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1576], rax
 mov qword ptr [r12 + 1584], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n21_α
 xchain0_n30_β:
 jmp xchain0_n21_α
xchain0_n31_α:
xchain0_n32_α:
# IR_KEYWORD_read
bb48_α:
 mov rdi, qword ptr [rip + .Lx83_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1688], rax
 mov qword ptr [r12 + 1696], rdx
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n29_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "&lcase"
xchain0_n33_α:
# IR_LIT_S
bb49_α:
 mov qword ptr [r12 + 1704], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 1712], rax
 jmp xchain0_n37_α
 xchain0_n33_β:
 jmp xchain0_n34_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "  c  "
xchain0_n34_α:
bb50_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1736] -> [r12+1736]
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1736], rax
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1744], rax
# marshal arg1 = LIT_I -> [r12+1752]
 mov qword ptr [r12 + 1752], 6
 movabs rax, 10
 mov qword ptr [r12 + 1760], rax
  .section .rodata
  .Lrkfn86: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 1736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1720], rax
 mov qword ptr [r12 + 1728], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n39_α
xchain0_n35_α:
bb51_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1256] -> [r12+1832]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1832], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1840], rax
# marshal arg1 = LIT_I -> [r12+1848]
 mov qword ptr [r12 + 1848], 6
 movabs rax, 10
 mov qword ptr [r12 + 1856], rax
  .section .rodata
  .Lcallfn88: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn88]
 lea rsi, [r12 + 1832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1784], rax
 mov qword ptr [r12 + 1792], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1800]
 mov qword ptr [r12 + 1800], 1
 mov rax, qword ptr [rip + .Lx87_2]
 mov qword ptr [r12 + 1808], rax
 jmp .Lx87_3
.Lx87_2:
 .quad .Lx87_2_s
.Lx87_2_s:
 .string "  s  "
.Lx87_3:
# marshal arg2 = nested producer-box slot [r12+1672] -> [r12+1816]
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1816], rax
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1824], rax
  .section .rodata
  .Lrkfn89: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 1784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1768], rax
 mov qword ptr [r12 + 1776], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n25_α
 xchain0_n35_β:
 jmp xchain0_n25_α
xchain0_n36_α:
xchain0_n37_α:
# IR_KEYWORD_read
bb53_α:
 mov rdi, qword ptr [rip + .Lx91_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1880], rax
 mov qword ptr [r12 + 1888], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n34_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "&ucase"
xchain0_n38_α:
# IR_LIT_S
bb54_α:
 mov qword ptr [r12 + 1896], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 1904], rax
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n39_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "  L  "
xchain0_n39_α:
bb55_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1928] -> [r12+1928]
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1928], rax
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1936], rax
# marshal arg1 = LIT_I -> [r12+1944]
 mov qword ptr [r12 + 1944], 6
 movabs rax, 10
 mov qword ptr [r12 + 1952], rax
  .section .rodata
  .Lrkfn94: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 1928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1912], rax
 mov qword ptr [r12 + 1920], rdx
 cmp eax, 99
 je xchain0_n44_α
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n44_α
xchain0_n40_α:
bb56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1448] -> [r12+2024]
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 2024], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 2032], rax
# marshal arg1 = LIT_I -> [r12+2040]
 mov qword ptr [r12 + 2040], 6
 movabs rax, 10
 mov qword ptr [r12 + 2048], rax
  .section .rodata
  .Lcallfn96: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn96]
 lea rsi, [r12 + 2024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1976], rax
 mov qword ptr [r12 + 1984], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+1992]
 mov qword ptr [r12 + 1992], 1
 mov rax, qword ptr [rip + .Lx95_2]
 mov qword ptr [r12 + 2000], rax
 jmp .Lx95_3
.Lx95_2:
 .quad .Lx95_2_s
.Lx95_2_s:
 .string "  c  "
.Lx95_3:
# marshal arg2 = nested producer-box slot [r12+1864] -> [r12+2008]
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 2008], rax
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 2016], rax
  .section .rodata
  .Lrkfn97: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 1976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1960], rax
 mov qword ptr [r12 + 1968], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n29_α
 xchain0_n40_β:
 jmp xchain0_n29_α
xchain0_n41_α:
xchain0_n42_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n39_α
xchain0_n43_α:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 2072], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [r12 + 2080], rax
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n44_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "  L  "
xchain0_n44_α:
bb60_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2104] -> [r12+2104]
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2104], rax
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2112], rax
# marshal arg1 = LIT_I -> [r12+2120]
 mov qword ptr [r12 + 2120], 6
 movabs rax, 10
 mov qword ptr [r12 + 2128], rax
  .section .rodata
  .Lrkfn103: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn103]
 lea rsi, [r12 + 2104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2088], rax
 mov qword ptr [r12 + 2096], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp xchain0_n49_α
xchain0_n45_α:
bb61_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1544] -> [r12+2200]
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 2200], rax
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 2208], rax
# marshal arg1 = LIT_I -> [r12+2216]
 mov qword ptr [r12 + 2216], 6
 movabs rax, 10
 mov qword ptr [r12 + 2224], rax
  .section .rodata
  .Lcallfn105: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn105]
 lea rsi, [r12 + 2200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2152], rax
 mov qword ptr [r12 + 2160], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2168]
 mov qword ptr [r12 + 2168], 1
 mov rax, qword ptr [rip + .Lx104_2]
 mov qword ptr [r12 + 2176], rax
 jmp .Lx104_3
.Lx104_2:
 .quad .Lx104_2_s
.Lx104_2_s:
 .string "  c  "
.Lx104_3:
# marshal arg2 = nested producer-box slot [r12+2056] -> [r12+2184]
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2184], rax
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2192], rax
  .section .rodata
  .Lrkfn106: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 2152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2136], rax
 mov qword ptr [r12 + 2144], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n34_α
 xchain0_n45_β:
 jmp xchain0_n34_α
xchain0_n46_α:
xchain0_n47_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n51_α
 xchain0_n47_β:
 jmp xchain0_n44_α
xchain0_n48_α:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 2248], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 2256], rax
 jmp xchain0_n52_α
 xchain0_n48_β:
 jmp xchain0_n49_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "  R  "
xchain0_n49_α:
bb65_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2280] -> [r12+2280]
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2280], rax
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2288], rax
# marshal arg1 = LIT_I -> [r12+2296]
 mov qword ptr [r12 + 2296], 6
 movabs rax, 10
 mov qword ptr [r12 + 2304], rax
  .section .rodata
  .Lrkfn112: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 2280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2264], rax
 mov qword ptr [r12 + 2272], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n53_α
 xchain0_n49_β:
 jmp xchain0_n54_α
xchain0_n50_α:
bb66_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1736] -> [r12+2376]
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 2376], rax
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 2384], rax
# marshal arg1 = LIT_I -> [r12+2392]
 mov qword ptr [r12 + 2392], 6
 movabs rax, 10
 mov qword ptr [r12 + 2400], rax
  .section .rodata
  .Lcallfn114: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn114]
 lea rsi, [r12 + 2376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2328], rax
 mov qword ptr [r12 + 2336], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2344]
 mov qword ptr [r12 + 2344], 1
 mov rax, qword ptr [rip + .Lx113_2]
 mov qword ptr [r12 + 2352], rax
 jmp .Lx113_3
.Lx113_2:
 .quad .Lx113_2_s
.Lx113_2_s:
 .string "  L  "
.Lx113_3:
# marshal arg2 = nested producer-box slot [r12+2232] -> [r12+2360]
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2360], rax
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2368], rax
  .section .rodata
  .Lrkfn115: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 2328]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2312], rax
 mov qword ptr [r12 + 2320], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n39_α
 xchain0_n50_β:
 jmp xchain0_n39_α
xchain0_n51_α:
xchain0_n52_α:
# IR_VAR
bb68_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n56_α
 xchain0_n52_β:
 jmp xchain0_n49_α
xchain0_n53_α:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 2424], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [r12 + 2432], rax
 jmp xchain0_n57_α
 xchain0_n53_β:
 jmp xchain0_n54_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "  R  "
xchain0_n54_α:
# IR_RETURN
bb70_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_rtest_γ
xchain0_n55_α:
bb71_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1928] -> [r12+2504]
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 2504], rax
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 2512], rax
# marshal arg1 = LIT_I -> [r12+2520]
 mov qword ptr [r12 + 2520], 6
 movabs rax, 10
 mov qword ptr [r12 + 2528], rax
  .section .rodata
  .Lcallfn122: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn122]
 lea rsi, [r12 + 2504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2456], rax
 mov qword ptr [r12 + 2464], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2472]
 mov qword ptr [r12 + 2472], 1
 mov rax, qword ptr [rip + .Lx121_2]
 mov qword ptr [r12 + 2480], rax
 jmp .Lx121_3
.Lx121_2:
 .quad .Lx121_2_s
.Lx121_2_s:
 .string "  L  "
.Lx121_3:
# marshal arg2 = nested producer-box slot [r12+2408] -> [r12+2488]
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2488], rax
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2496], rax
  .section .rodata
  .Lrkfn123: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 2456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2440], rax
 mov qword ptr [r12 + 2448], rdx
 cmp eax, 99
 je xchain0_n44_α
 jmp xchain0_n44_α
 xchain0_n55_β:
 jmp xchain0_n44_α
xchain0_n56_α:
xchain0_n57_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n54_α
xchain0_n58_α:
bb74_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2104] -> [r12+2616]
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2616], rax
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2624], rax
# marshal arg1 = LIT_I -> [r12+2632]
 mov qword ptr [r12 + 2632], 6
 movabs rax, 10
 mov qword ptr [r12 + 2640], rax
  .section .rodata
  .Lcallfn128: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn128]
 lea rsi, [r12 + 2616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2568], rax
 mov qword ptr [r12 + 2576], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2584]
 mov qword ptr [r12 + 2584], 1
 mov rax, qword ptr [rip + .Lx127_2]
 mov qword ptr [r12 + 2592], rax
 jmp .Lx127_3
.Lx127_2:
 .quad .Lx127_2_s
.Lx127_2_s:
 .string "  R  "
.Lx127_3:
# marshal arg2 = nested producer-box slot [r12+2536] -> [r12+2600]
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2600], rax
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2608], rax
  .section .rodata
  .Lrkfn129: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn129]
 lea rsi, [r12 + 2568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2552], rax
 mov qword ptr [r12 + 2560], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n49_α
 xchain0_n58_β:
 jmp xchain0_n49_α
xchain0_n59_α:
xchain0_n60_α:
bb76_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2280] -> [r12+2728]
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2728], rax
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2736], rax
# marshal arg1 = LIT_I -> [r12+2744]
 mov qword ptr [r12 + 2744], 6
 movabs rax, 10
 mov qword ptr [r12 + 2752], rax
  .section .rodata
  .Lcallfn132: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn132]
 lea rsi, [r12 + 2728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2680], rax
 mov qword ptr [r12 + 2688], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+2696]
 mov qword ptr [r12 + 2696], 1
 mov rax, qword ptr [rip + .Lx131_2]
 mov qword ptr [r12 + 2704], rax
 jmp .Lx131_3
.Lx131_2:
 .quad .Lx131_2_s
.Lx131_2_s:
 .string "  R  "
.Lx131_3:
# marshal arg2 = nested producer-box slot [r12+2648] -> [r12+2712]
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2712], rax
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2720], rax
  .section .rodata
  .Lrkfn133: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn133]
 lea rsi, [r12 + 2680]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2664], rax
 mov qword ptr [r12 + 2672], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n54_α
 xchain0_n60_β:
 jmp xchain0_n54_α
proc_rtest_β:
jmp proc_rtest_ω
proc_rtest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_rtest_ω:
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
  .Lclassspec0: .string "r10(a,b,c,d,e,f,g,h,i,j)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "rtest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rtest_α]
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
xchain134_n0_α:
bb77_α:
  .section .rodata
  .Lcall77_pname: .string "rtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain134_n1_α
 jmp xchain134_n1_α
xchain134_n0_β:
 jmp xchain134_n1_α
xchain134_n1_α:
# IR_KEYWORD_read
bb78_α:
 mov rdi, qword ptr [rip + .Lx136_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain134_n2_α
 xchain134_n1_β:
 jmp xchain134_n3_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "&random"
xchain134_n2_α:
bb79_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain134_n3_α
 xchain134_n2_β:
 jmp xchain134_n3_α
xchain134_n3_α:
bb80_α:
  .section .rodata
  .Lcall80_pname: .string "rtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall80_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain134_n4_α
 jmp xchain134_n4_α
xchain134_n3_β:
 jmp xchain134_n4_α
xchain134_n4_α:
# IR_LIT_I
bb81_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain134_n5_α
 xchain134_n4_β:
 jmp xchain134_n6_α
.Lx139_0:
 .quad 0
xchain134_n5_α:
bb82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain134_n6_α
 xchain134_n5_β:
 jmp xchain134_n6_α
xchain134_n6_α:
bb83_α:
  .section .rodata
  .Lcall83_pname: .string "rtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall83_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain134_n7_α
 jmp xchain134_n7_α
xchain134_n6_β:
 jmp xchain134_n7_α
xchain134_n7_α:
# IR_VAR
bb84_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain134_n8_α
 xchain134_n7_β:
 jmp xchain134_n9_α
xchain134_n8_α:
bb85_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain134_n9_α
 xchain134_n8_β:
 jmp xchain134_n9_α
xchain134_n9_α:
bb86_α:
  .section .rodata
  .Lcall86_pname: .string "rtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall86_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain134_n10_α
 jmp xchain134_n10_α
xchain134_n9_β:
 jmp xchain134_n10_α
xchain134_n10_α:
# IR_LIT_I
bb87_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain134_n11_α
 xchain134_n10_β:
 jmp xchain134_n12_α
.Lx146_0:
 .quad 11213
xchain134_n11_α:
bb88_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain134_n12_α
 xchain134_n11_β:
 jmp xchain134_n12_α
xchain134_n12_α:
bb89_α:
  .section .rodata
  .Lcall89_pname: .string "rtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall89_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain134_n12_β:
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
.S0: .string "bb_unop: operand slot unresolved (LIT_F/NUL or non-slot producer)"
.text
