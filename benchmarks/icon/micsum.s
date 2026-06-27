  .intel_syntax noprefix
  .text
  .globl proc_dofile_α
proc_dofile_α:
#=======================================================================================================================
    .global proc_dofile_α
    .global proc_dofile_β
    .global proc_dofile_γ
    .global proc_dofile_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_dofile_α_body:
xchain0_n0_α:
bb00001_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn2: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb00002_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb00003_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn5: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn5]
 lea rsi, [r12 + 160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb00004_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb00005_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+208]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn8: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb00006_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
xchain0_n6_β:
jmp xchain0_n8_α
jmp xchain0_n8_α
xchain0_n7_α:
xargsub11_n0_α:
# IR_VAR
bb00007_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xscan10_subj_done
 xargsub11_n0_β:
 jmp xchain0_n4_α
xscan10_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan10_body_start
 xscan10_enter_β:
 jmp xchain0_n4_α
xscan10_body_start:
xargsub16_n0_α:
xargsub18_n0_α:
# IR_SCAN_MANY
bb00008_α:
 mov eax, r14d
.Lx20_0:
 cmp eax, r15d
 jge .Lx20_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx20_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx20_1
 add eax, 1
 jmp .Lx20_0
.Lx20_1:
 cmp eax, r14d
 je xargsub16_n1_α
 mov qword ptr [r12 + 264], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 272], rcx
 jmp xscantab17_arg_done
 xargsub18_n0_β:
 jmp xargsub16_n1_α
.Lx20_2:
 .quad .Lx20_2_s
.Lx20_2_s:
 .string " "
xscantab17_arg_done:
# IR_SCAN_TAB
bb00009_α:
 mov rax, qword ptr [r12 + 272]
 cmp rax, 1
 jl xargsub16_n1_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub16_n1_α
 mov qword ptr [r12 + 296], r14
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
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 jmp xargsub16_n1_α
 xargsub16_n0_β:
 mov r14, qword ptr [r12 + 296]
 jmp xargsub16_n1_α
xargsub16_n1_α:
bb00010_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 360], rax
 jmp .Lx23_1
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "-0123456789"
.Lx23_1:
  .section .rodata
  .Lcallfn24: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn24]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
  .section .rodata
  .Lcallfn25: .string "tab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn25]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
  .section .rodata
  .Lrkfn26: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xargsub16_n3_α
 jmp xargsub16_n2_α
 xargsub16_n1_β:
 jmp xargsub16_n3_α
xargsub16_n2_α:
bb00011_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xargsub16_n3_α
 xargsub16_n2_β:
 jmp xargsub16_n3_α
xargsub16_n3_α:
xargsub29_n0_α:
# IR_SCAN_MANY
bb00012_α:
 mov eax, r14d
.Lx31_0:
 cmp eax, r15d
 jge .Lx31_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx31_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx31_1
 add eax, 1
 jmp .Lx31_0
.Lx31_1:
 cmp eax, r14d
 je xargsub16_n4_α
 mov qword ptr [r12 + 400], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 408], rcx
 jmp xscantab28_arg_done
 xargsub29_n0_β:
 jmp xargsub16_n4_α
.Lx31_2:
 .quad .Lx31_2_s
.Lx31_2_s:
 .string " "
xscantab28_arg_done:
# IR_SCAN_TAB
bb00013_α:
 mov rax, qword ptr [r12 + 408]
 cmp rax, 1
 jl xargsub16_n4_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub16_n4_α
 mov qword ptr [r12 + 432], r14
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
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xargsub16_n4_α
 xargsub16_n3_β:
 mov r14, qword ptr [r12 + 432]
 jmp xargsub16_n4_α
xargsub16_n4_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xargsub16_n5_α:
bb00014_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xargsub16_n6_α
 xargsub16_n5_β:
 jmp xargsub16_n6_α
xargsub16_n6_α:
# IR_VAR
bb00015_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 472], rax
 jmp xargsub16_n7_α
 xargsub16_n6_β:
 jmp xargsub16_n10_α
xargsub16_n7_α:
# IR_LIT_S
bb00016_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 504], rax
 jmp xargsub16_n8_α
 xargsub16_n7_β:
 jmp xargsub16_n10_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "overhead"
xargsub16_n8_α:
bb00017_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xargsub16_n10_α
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 520], rax
 jmp xargsub16_n9_α
 xargsub16_n8_β:
 jmp xargsub16_n10_α
xargsub16_n9_α:
# IR_VAR
bb00018_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 376], rax
 jmp xargsub16_n11_α
 xargsub16_n9_β:
 jmp xscan10_body_fail
xargsub16_n10_α:
# IR_VAR
bb00019_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 472], rax
 jmp xargsub16_n12_α
 xargsub16_n10_β:
 jmp xargsub16_n16_α
xargsub16_n11_α:
bb00020_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xargsub16_n13_α
 xargsub16_n11_β:
 jmp xscan10_body_fail
xargsub16_n12_α:
# IR_LIT_S
bb00021_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 568], rax
 jmp xargsub16_n14_α
 xargsub16_n12_β:
 jmp xargsub16_n16_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "nothing"
xargsub16_n13_α:
jmp xscan10_body_done
xargsub16_n13_β:
jmp xscan10_body_fail
xargsub16_n14_α:
bb00022_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xargsub16_n16_α
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 584], rax
 jmp xargsub16_n15_α
 xargsub16_n14_β:
 jmp xargsub16_n16_α
xargsub16_n15_α:
bb00023_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+608]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = varslot [r12+368] -> [r12+624]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lbynamefn49: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn49]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xscan10_body_fail
 jmp xargsub16_n13_α
xargsub16_n15_β:
 jmp xscan10_body_fail
xargsub16_n16_α:
bb00024_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+64] -> [r12+656]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = varslot [r12+368] -> [r12+672]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lbynamefn51: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn51]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xscan10_body_fail
 jmp xargsub16_n13_α
xargsub16_n16_β:
 jmp xscan10_body_fail
xscan10_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain0_n4_α
 xscan10_leaveok_β:
 jmp xchain0_n4_α
xscan10_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain0_n4_α
 xscan10_leavef_β:
 jmp xchain0_n4_α
xchain0_n8_α:
# IR_VAR
bb00025_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n11_α
xchain0_n9_α:
# IR_UNOP
bb00026_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_size_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
xchain0_n10_α:
bb00027_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+688] -> [r12+720]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn60: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n11_α
xchain0_n11_α:
bb00028_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+528] -> [r12+752]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = LIT_I -> [r12+768]
 mov qword ptr [r12 + 768], 6
 movabs rax, 7
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn62: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
bb00029_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+528] -> [r12+816]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = LIT_I -> [r12+832]
 mov qword ptr [r12 + 832], 6
 movabs rax, 7
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lcallfn64: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn64]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
  .section .rodata
  .Lrkfn65: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
# IR_LIT_I
bb00030_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n15_α
.Lx66_0:
 .quad 0
xchain0_n14_α:
bb00031_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_VAR
bb00032_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n34_β
xchain0_n16_α:
# IR_VAR
bb00033_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang70_iter_done
 xbang70_iter_β:
 jmp xchain0_n20_α
xbang70_iter_done:
# IR_LIST_BANG
bb00034_α:
 mov qword ptr [r12 + 880], 0
.Lx74_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 880]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
 cmp rax, 99
 je xchain0_n20_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 inc qword ptr [r12 + 880]
 jmp .Lx74_0
xchain0_n17_α:
# IR_LIT_I
bb00035_α:
 mov qword ptr [r12 + 904], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 912], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n16_β
.Lx75_0:
 .quad 2
xchain0_n18_α:
bb00036_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 888]
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov rcx, qword ptr [r12 + 912]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n34_β
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n34_β
xchain0_n19_α:
bb00037_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 920]
 mov rcx, qword ptr [r12 + 928]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n34_β
 mov qword ptr [r12 + 936], rax
 mov qword ptr [r12 + 944], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n34_β
xchain0_n20_α:
# IR_EVERY
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n22_α
xchain0_n21_α:
bb00038_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], rdx
 jmp xchain0_n16_β
 xchain0_n21_β:
 jmp xchain0_n34_β
xchain0_n22_α:
bb00039_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1000]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1000], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1008], rax
  .section .rodata
  .Lcallfn81: .string "sqrt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn81]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
  .section .rodata
  .Lrkfn82: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
xchain0_n23_α:
bb00040_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 976]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
bb00041_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1048]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1048], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1056], rax
# marshal arg1 = LIT_I -> [r12+1064]
 mov qword ptr [r12 + 1064], 6
 movabs rax, 7
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lrkfn85: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
xchain0_n25_α:
bb00042_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1112]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1112], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1120], rax
# marshal arg1 = LIT_I -> [r12+1128]
 mov qword ptr [r12 + 1128], 6
 movabs rax, 7
 mov qword ptr [r12 + 1136], rax
  .section .rodata
  .Lcallfn87: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn87]
 lea rsi, [r12 + 1112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
  .section .rodata
  .Lrkfn88: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 1096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1080], rax
 mov qword ptr [r12 + 1088], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n26_α
xchain0_n26_α:
bb00043_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+1160]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1160], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1168], rax
  .section .rodata
  .Lrkfn90: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
bb00044_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1144]
 mov rdx, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 1176], rax
 mov qword ptr [r12 + 1184], rdx
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n28_α
xchain0_n28_α:
bb00045_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+64] -> [r12+1208]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1208], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1216], rax
# marshal arg1 = varslot [r12+64] -> [r12+1224]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lbynamefn93: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn93]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
bb00046_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
bb00047_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1272]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1272], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1280], rax
# marshal arg1 = LIT_I -> [r12+1288]
 mov qword ptr [r12 + 1288], 6
 movabs rax, 7
 mov qword ptr [r12 + 1296], rax
  .section .rodata
  .Lrkfn96: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 1272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], rdx
 cmp eax, 99
 je xchain0_n32_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n32_α
xchain0_n31_α:
bb00048_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1344], rax
# marshal arg1 = LIT_I -> [r12+1352]
 mov qword ptr [r12 + 1352], 6
 movabs rax, 7
 mov qword ptr [r12 + 1360], rax
  .section .rodata
  .Lcallfn98: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn98]
 lea rsi, [r12 + 1336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1320], rax
 mov qword ptr [r12 + 1328], rdx
  .section .rodata
  .Lrkfn99: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn99]
 lea rsi, [r12 + 1320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 cmp eax, 99
 je xchain0_n32_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n32_α
xchain0_n32_α:
# IR_LIT_F
bb00049_α:
 mov qword ptr [r12 + 1368], 7
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 1376], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
.Lx00050_0:
 .quad 0
xchain0_n33_α:
bb00051_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1384], rax
 mov qword ptr [r12 + 1392], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n34_α
xchain0_n34_α:
# IR_VAR
bb00052_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xbang00053_iter_done
 xbang00053_iter_β:
 jmp xchain0_n44_α
xbang00053_iter_done:
# IR_LIST_BANG
bb00054_α:
 mov qword ptr [r12 + 1400], 0
.Lx00055_0:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 1400]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp rax, 99
 je xchain0_n44_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 inc qword ptr [r12 + 1400]
 jmp .Lx00055_0
xchain0_n35_α:
bb00056_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n34_β
xchain0_n36_α:
# IR_VAR
bb00057_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n34_β
xchain0_n37_α:
# IR_VAR
bb00058_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n41_α
xchain0_n38_α:
# IR_LIT_I
bb00059_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n41_α
.Lx00060_0:
 .quad 0
xchain0_n39_α:
bb00061_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 1448]
 cmp rax, rcx
 jg xchain0_n41_α
 mov rcx, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1456], rcx
 mov rcx, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1464], rcx
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n41_α
xchain0_n40_α:
# IR_LIT_I
bb00062_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n34_β
.Lx00063_0:
 .quad 0
xchain0_n41_α:
bb00064_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+112] -> [r12+1504]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn116: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 1504]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain0_n34_β
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n34_β
xchain0_n42_α:
bb00065_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 1464]
 mov rcx, qword ptr [r12 + 1480]
 add rax, rcx
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n34_β
xchain0_n43_α:
bb00066_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain0_n34_β
 xchain0_n43_β:
 jmp xchain0_n34_β
xchain0_n44_α:
# IR_EVERY
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n45_α
xchain0_n45_α:
bb00067_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1568] -> [r12+1568]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lrkfn121: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 1568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain0_n47_α
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n47_α
xchain0_n46_α:
bb00068_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n47_α
xchain0_n47_α:
bb00069_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1616]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1624], rax
# marshal arg1 = LIT_I -> [r12+1632]
 mov qword ptr [r12 + 1632], 6
 movabs rax, 7
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn124: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n49_α
xchain0_n48_α:
bb00070_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1680]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = LIT_I -> [r12+1696]
 mov qword ptr [r12 + 1696], 6
 movabs rax, 7
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lcallfn126: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn126]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
  .section .rodata
  .Lrkfn127: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 1664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n49_α
xchain0_n49_α:
# IR_LIT_S
bb00071_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n52_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "   "
xchain0_n50_α:
# IR_VAR
bb00073_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n52_α
xchain0_n51_α:
bb00074_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1744]
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 1752], rax
 jmp .Lx00075_1
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "   "
.Lx00075_1:
# marshal arg1 = varslot [r12+32] -> [r12+1760]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn132: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn132]
 lea rsi, [r12 + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain0_n52_α
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n52_α
xchain0_n52_α:
# IR_RETURN
bb00076_α:
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_dofile_γ
proc_dofile_β:
jmp proc_dofile_ω
proc_dofile_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_dofile_ω:
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
  .Lstartup_pname0: .string "dofile"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_dofile_α]
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
xchain00077_n0_α:
# IR_LIT_S
bb00078_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain00077_n1_α
 xchain00077_n0_β:
 jmp xchain00077_n2_α
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "  N ovhead rmserr median  gmean   filename"
xchain00077_n1_α:
bb00080_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain00077_n2_α
xchain00077_n1_β:
xchain00077_n1_β:
 jmp xchain00077_n2_α
xchain00077_n2_α:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xchain00077_n3_α:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xchain00077_n4_α:
# IR_LIT_I
bb00081_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00077_n5_α
 xchain00077_n4_β:
 jmp xchain00077_n7_α
.Lx00082_0:
 .quad 0
xchain00077_n5_α:
bb00083_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 72]
 cmp rax, rcx
 jne xchain00077_n7_α
 mov rcx, qword ptr [r12 + 64]
 mov qword ptr [r12 + 80], rcx
 mov rcx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 88], rcx
 jmp xchain00077_n6_α
 xchain00077_n5_β:
 jmp xchain00077_n7_α
xchain00077_n6_α:
xargsub00084_n0_α:
# IR_KEYWORD_read
bb00085_α:
 mov rdi, qword ptr [rip + .Lx00086_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xicnarg00087_done
 xargsub00084_n0_β:
 jmp main_ω
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "&input"
xicnarg00087_done:
xargsub00088_n0_α:
# IR_LIT_S
bb00089_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 120], rax
 jmp xicnarg00091_done
 xargsub00088_n0_β:
 jmp main_ω
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "stdin"
xicnarg00091_done:
bb00092_α:
  .section .rodata
  .Lcall00092_pname: .string "dofile"
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
   lea rdi, [rip + .Lcall00092_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00077_n6_β:
 jmp main_ω
xchain00077_n7_α:
bb00093_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn150: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00077_n9_α
 jmp xchain00077_n8_α
 xchain00077_n7_β:
 jmp xchain00077_n9_α
xchain00077_n8_α:
bb00094_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp main_γ
 xchain00077_n8_β:
 jmp xchain00077_n9_α
xchain00077_n9_α:
xchain00077_n9_β:
jmp main_γ
jmp main_γ
xchain00077_n10_α:
 lea rdi, [rip + .S3]
 call rt_bomb@PLT
 ud2
xchain00077_n11_α:
bb00095_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xchain00077_n12_α
 xchain00077_n11_β:
 jmp xchain00077_n12_α
xchain00077_n12_α:
xargsub00096_n0_α:
# IR_VAR
bb00097_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg00098_done
 xargsub00096_n0_β:
 jmp xchain00077_n7_α
xicnarg00098_done:
xargsub00099_n0_α:
# IR_VAR
bb00100_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg00101_done
 xargsub00099_n0_β:
 jmp xchain00077_n7_α
xicnarg00101_done:
bb00102_α:
  .section .rodata
  .Lcall00102_pname: .string "dofile"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00102_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 cmp eax, 99
 je xchain00077_n7_α
 jmp xchain00077_n13_α
xchain00077_n12_β:
 jmp xchain00077_n7_α
xchain00077_n13_α:
jmp xchain00077_n7_α
xchain00077_n13_β:
jmp xchain00077_n7_α
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
.S0: .string "bb_scan_tab: unhandled (needs literal positive n or sibling scan-producer slot + descr flat-chain slot)"
.S1: .string "bb_var: unhandled arm (no flat-chain mode or missing slot)"
.S2: .string "bb_unop: operand slot unresolved (LIT_F/NUL or non-slot producer)"
.S3: .string "bb_alt: unhandled (needs <=5 literal arms, descr flat-chain)"
.text
