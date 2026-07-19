  .intel_syntax noprefix
  .text
  .globl proc_d$3_α
proc_d$3_α:
#=======================================================================================================================
    .global proc_d$3_α
    .global proc_d$3_β
    .global proc_d$3_γ
    .global proc_d$3_ω
  sub rsp, 10368
  mov [rsp + 10344], rcx
  mov [rsp + 10352], rdx
  mov [rsp + 10360], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 10232], rsp
  mov rdi, rsp
  mov esi, 10224
  mov edx, 10336
  call rt_jmp_frame_lexprep2@PLT
proc_d$3_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 10192], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "+"
# IR_VAR_REF
 xchain0_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 jmp xchain0_n4_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 10080], rax
 mov qword ptr [rbp + 10088], rdx
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10192] -> [zr+10128]
 mov rax, qword ptr [rbp + 10192]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10200]
 mov qword ptr [rbp + 10136], rax
# marshal arg1 = producer-box slot [zr+10048] -> [zr+10144]
 mov rax, qword ptr [rbp + 10048]
 mov qword ptr [rbp + 10144], rax
 mov rax, qword ptr [rbp + 10056]
 mov qword ptr [rbp + 10152], rax
# marshal arg2 = producer-box slot [zr+10080] -> [zr+10160]
 mov rax, qword ptr [rbp + 10080]
 mov qword ptr [rbp + 10160], rax
 mov rax, qword ptr [rbp + 10088]
 mov qword ptr [rbp + 10168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10016] -> [zr+9968]
 mov rax, qword ptr [rbp + 10016]
 mov qword ptr [rbp + 9968], rax
 mov rax, qword ptr [rbp + 10024]
 mov qword ptr [rbp + 9976], rax
# marshal arg1 = producer-box slot [zr+10112] -> [zr+9984]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 9984], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 9992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9968]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9168]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9888], rax
 mov qword ptr [rbp + 9896], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 9920], rax
 mov qword ptr [rbp + 9928], rdx
 jmp xchain0_n12_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 9128], rax
 jmp xchain0_n13_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "-"
 xchain0_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9888] -> [zr+9840]
 mov rax, qword ptr [rbp + 9888]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 9896]
 mov qword ptr [rbp + 9848], rax
# marshal arg1 = producer-box slot [zr+9920] -> [zr+9856]
 mov rax, qword ptr [rbp + 9920]
 mov qword ptr [rbp + 9856], rax
 mov rax, qword ptr [rbp + 9928]
 mov qword ptr [rbp + 9864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9840]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9824], rax
 mov qword ptr [rbp + 9832], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain0_n17_α
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 9792], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 9800], rax
 jmp xchain0_n18_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "+"
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9120] -> [zr+9056]
 mov rax, qword ptr [rbp + 9120]
 mov qword ptr [rbp + 9056], rax
 mov rax, qword ptr [rbp + 9128]
 mov qword ptr [rbp + 9064], rax
# marshal arg1 = producer-box slot [zr+8976] -> [zr+9072]
 mov rax, qword ptr [rbp + 8976]
 mov qword ptr [rbp + 9072], rax
 mov rax, qword ptr [rbp + 8984]
 mov qword ptr [rbp + 9080], rax
# marshal arg2 = producer-box slot [zr+9008] -> [zr+9088]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 9088], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 9096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 9648], rax
 mov qword ptr [rbp + 9656], rdx
 jmp xchain0_n21_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8944] -> [zr+8896]
 mov rax, qword ptr [rbp + 8944]
 mov qword ptr [rbp + 8896], rax
 mov rax, qword ptr [rbp + 8952]
 mov qword ptr [rbp + 8904], rax
# marshal arg1 = producer-box slot [zr+9040] -> [zr+8912]
 mov rax, qword ptr [rbp + 9040]
 mov qword ptr [rbp + 8912], rax
 mov rax, qword ptr [rbp + 9048]
 mov qword ptr [rbp + 8920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
 xchain0_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8096]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8096]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 jmp xchain0_n25_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain0_n26_α
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9728]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9728], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9736], rax
# marshal arg1 = producer-box slot [zr+9648] -> [zr+9744]
 mov rax, qword ptr [rbp + 9648]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9656]
 mov qword ptr [rbp + 9752], rax
# marshal arg2 = producer-box slot [zr+9680] -> [zr+9760]
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9712], rax
 mov qword ptr [rbp + 9720], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 jmp xchain0_n28_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 8048], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain0_n29_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "*"
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9616] -> [zr+9568]
 mov rax, qword ptr [rbp + 9616]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9624]
 mov qword ptr [rbp + 9576], rax
# marshal arg1 = producer-box slot [zr+9712] -> [zr+9584]
 mov rax, qword ptr [rbp + 9712]
 mov qword ptr [rbp + 9584], rax
 mov rax, qword ptr [rbp + 9720]
 mov qword ptr [rbp + 9592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9568]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n7_α
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8816] -> [zr+8768]
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 8768], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 8776], rax
# marshal arg1 = producer-box slot [zr+8848] -> [zr+8784]
 mov rax, qword ptr [rbp + 8848]
 mov qword ptr [rbp + 8784], rax
 mov rax, qword ptr [rbp + 8856]
 mov qword ptr [rbp + 8792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8768]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 jmp xchain0_n32_α
 xchain0_n30_α:
# IR_CUT
 jmp xchain0_n33_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8544], rax
 mov qword ptr [rbp + 8552], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp xchain0_n35_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 jmp xchain0_n36_α
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [rbp + 8720], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 8728], rax
 jmp xchain0_n37_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "-"
 xchain0_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8048] -> [zr+7984]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 7992], rax
# marshal arg1 = producer-box slot [zr+7904] -> [zr+8000]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 8008], rax
# marshal arg2 = producer-box slot [zr+7936] -> [zr+8016]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 8024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 jmp xchain0_n40_α
# IR_VAR_REF
 xchain0_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain0_n41_α
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7872] -> [zr+7824]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7832], rax
# marshal arg1 = producer-box slot [zr+7968] -> [zr+7840]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 7848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7824]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n39_α
 xchain0_n39_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6736]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6736], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6736]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain0_n46_α
# IR_VAR_REF
 xchain0_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 jmp xchain0_n47_α
 xchain0_n44_α:
 mov edi, 0
 lea rsi, [rbp + 9456]
 lea rdx, [rbp + 9488]
 lea rcx, [rbp + 9520]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx70_1
 lea rcx, [rip + .Lx70_3]
 lea rdx, [rip + .Lx70_4]
 jmp rax
.Lx70_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx70_2
.Lx70_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx70_2
.Lx70_1:
 call rt_faildescr@PLT
.Lx70_2:
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n44_β:
 jmp xchain0_n49_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "d/3"
 xchain0_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8720] -> [zr+8656]
 mov rax, qword ptr [rbp + 8720]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8728]
 mov qword ptr [rbp + 8664], rax
# marshal arg1 = producer-box slot [zr+8576] -> [zr+8672]
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8672], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8680], rax
# marshal arg2 = producer-box slot [zr+8608] -> [zr+8688]
 mov rax, qword ptr [rbp + 8608]
 mov qword ptr [rbp + 8688], rax
 mov rax, qword ptr [rbp + 8616]
 mov qword ptr [rbp + 8696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8656]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n50_α
 xchain0_n45_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 jmp xchain0_n51_α
# IR_LIT_STRING
 xchain0_n47_α:
 mov qword ptr [rbp + 6688], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 6696], rax
 jmp xchain0_n52_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "/"
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain0_n53_α
 xchain0_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp proc_d$3_ω
 xchain0_n49_β:
 jmp proc_d$3_ω
 xchain0_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8544] -> [zr+8496]
 mov rax, qword ptr [rbp + 8544]
 mov qword ptr [rbp + 8496], rax
 mov rax, qword ptr [rbp + 8552]
 mov qword ptr [rbp + 8504], rax
# marshal arg1 = producer-box slot [zr+8640] -> [zr+8512]
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8512], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8496]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n54_α
 xchain0_n50_β:
 jmp xchain0_n20_α
 xchain0_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7696]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7704], rax
# marshal arg1 = producer-box slot [zr+7776] -> [zr+7712]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7696]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n55_α
 xchain0_n51_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 jmp xchain0_n56_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 jmp xchain0_n57_α
 xchain0_n54_α:
# IR_CUT
 jmp xchain0_n58_α
# IR_VAR_REF
 xchain0_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain0_n59_α
# IR_VAR_REF
 xchain0_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 jmp xchain0_n60_α
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 9344], rax
 mov qword ptr [rbp + 9352], rdx
 jmp xchain0_n61_α
# IR_VAR_REF
 xchain0_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain0_n62_α
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain0_n63_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "+"
 xchain0_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6688] -> [zr+6624]
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 6632], rax
# marshal arg1 = producer-box slot [zr+6544] -> [zr+6640]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6648], rax
# marshal arg2 = producer-box slot [zr+6576] -> [zr+6656]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n64_α
 xchain0_n60_β:
 jmp xchain0_n65_α
 xchain0_n61_α:
 mov edi, 0
 lea rsi, [rbp + 9280]
 lea rdx, [rbp + 9312]
 lea rcx, [rbp + 9344]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx96_1
 lea rcx, [rip + .Lx96_3]
 lea rdx, [rip + .Lx96_4]
 jmp rax
.Lx96_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx96_2
.Lx96_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx96_2
.Lx96_1:
 call rt_faildescr@PLT
.Lx96_2:
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 cmp eax, 99
 je xchain0_n44_β
 jmp xchain0_n66_α
 xchain0_n61_β:
 jmp xchain0_n44_β
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain0_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 jmp xchain0_n67_α
# IR_LIT_STRING
 xchain0_n63_α:
 mov qword ptr [rbp + 7360], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 7368], rax
 jmp xchain0_n68_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "*"
 xchain0_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6512] -> [zr+6464]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6472], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6480]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6480], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n69_α
 xchain0_n64_β:
 jmp xchain0_n65_α
 xchain0_n65_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5088]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5088]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n70_α
 xchain0_n65_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL
 xchain0_n66_α:
 lea rax, [rip + xchain0_n61_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain0_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 jmp xchain0_n72_α
# IR_VAR_REF
 xchain0_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain0_n73_α
# IR_VAR_REF
 xchain0_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
 jmp xchain0_n74_α
# IR_VAR_REF
 xchain0_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain0_n75_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n71_α:
 jmp qword ptr [rbp + 80]
 xchain0_n71_β:
 jmp proc_d$3_ω
 xchain0_n72_α:
 mov edi, 0
 lea rsi, [rbp + 8384]
 lea rdx, [rbp + 8416]
 lea rcx, [rbp + 8448]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx115_1
 lea rcx, [rip + .Lx115_3]
 lea rdx, [rip + .Lx115_4]
 jmp rax
.Lx115_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx115_2
.Lx115_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx115_2
.Lx115_1:
 call rt_faildescr@PLT
.Lx115_2:
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n76_α
 xchain0_n72_β:
 jmp xchain0_n49_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain0_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 jmp xchain0_n77_α
# IR_VAR_REF
 xchain0_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain0_n78_α
# IR_LIT_STRING
 xchain0_n75_α:
 mov qword ptr [rbp + 5040], 1
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [rbp + 5048], rax
 jmp xchain0_n79_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "^"
# IR_VAR_REF
 xchain0_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 jmp xchain0_n80_α
 xchain0_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7360] -> [zr+7296]
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7304], rax
# marshal arg1 = producer-box slot [zr+7216] -> [zr+7312]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7312], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7320], rax
# marshal arg2 = producer-box slot [zr+7248] -> [zr+7328]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7328], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n81_α
 xchain0_n77_β:
 jmp proc_d$3_ω
 xchain0_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6336]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6344], rax
# marshal arg1 = producer-box slot [zr+6416] -> [zr+6352]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n82_α
 xchain0_n78_β:
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain0_n83_α
# IR_VAR_REF
 xchain0_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain0_n84_α
# IR_LIT_STRING
 xchain0_n81_α:
 mov qword ptr [rbp + 7536], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 7544], rax
 jmp xchain0_n85_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "*"
# IR_VAR_REF
 xchain0_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain0_n86_α
# IR_VAR_REF
 xchain0_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain0_n87_α
# IR_VAR_REF
 xchain0_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 jmp xchain0_n88_α
# IR_VAR_REF
 xchain0_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain0_n89_α
# IR_LIT_STRING
 xchain0_n86_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain0_n90_α
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "/"
 xchain0_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+4976]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 4984], rax
# marshal arg1 = producer-box slot [zr+4896] -> [zr+4992]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 5000], rax
# marshal arg2 = producer-box slot [zr+4928] -> [zr+5008]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 5016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n91_α
 xchain0_n87_β:
 jmp xchain0_n92_α
 xchain0_n88_α:
 mov edi, 0
 lea rsi, [rbp + 8208]
 lea rdx, [rbp + 8240]
 lea rcx, [rbp + 8272]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx141_1
 lea rcx, [rip + .Lx141_3]
 lea rdx, [rip + .Lx141_4]
 jmp rax
.Lx141_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx141_2
.Lx141_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx141_2
.Lx141_1:
 call rt_faildescr@PLT
.Lx141_2:
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 cmp eax, 99
 je xchain0_n72_β
 jmp xchain0_n93_α
 xchain0_n88_β:
 jmp xchain0_n72_β
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain0_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 jmp xchain0_n94_α
# IR_LIT_STRING
 xchain0_n90_α:
 mov qword ptr [rbp + 6000], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 6008], rax
 jmp xchain0_n95_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "-"
 xchain0_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4816]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4824], rax
# marshal arg1 = producer-box slot [zr+4960] -> [zr+4832]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 4840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n96_α
 xchain0_n91_β:
 jmp xchain0_n92_α
 xchain0_n92_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3600]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n97_α
 xchain0_n92_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL
 xchain0_n93_α:
 lea rax, [rip + xchain0_n88_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
 xchain0_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7536] -> [zr+7472]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7480], rax
# marshal arg1 = producer-box slot [zr+7392] -> [zr+7488]
 mov rax, qword ptr [rbp + 7392]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7400]
 mov qword ptr [rbp + 7496], rax
# marshal arg2 = producer-box slot [zr+7424] -> [zr+7504]
 mov rax, qword ptr [rbp + 7424]
 mov qword ptr [rbp + 7504], rax
 mov rax, qword ptr [rbp + 7432]
 mov qword ptr [rbp + 7512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7472]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n98_α
 xchain0_n94_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain0_n95_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain0_n99_α
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "*"
# IR_VAR_REF
 xchain0_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 jmp xchain0_n100_α
# IR_VAR_REF
 xchain0_n97_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain0_n101_α
 xchain0_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7648] -> [zr+7584]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7584], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7592], rax
# marshal arg1 = producer-box slot [zr+7280] -> [zr+7600]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7608], rax
# marshal arg2 = producer-box slot [zr+7456] -> [zr+7616]
 mov rax, qword ptr [rbp + 7456]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7464]
 mov qword ptr [rbp + 7624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n102_α
 xchain0_n98_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 jmp xchain0_n103_α
# IR_VAR_REF
 xchain0_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain0_n104_α
# IR_LIT_STRING
 xchain0_n101_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain0_n105_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "-"
 xchain0_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7184] -> [zr+7136]
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7136], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7144], rax
# marshal arg1 = producer-box slot [zr+7568] -> [zr+7152]
 mov rax, qword ptr [rbp + 7568]
 mov qword ptr [rbp + 7152], rax
 mov rax, qword ptr [rbp + 7576]
 mov qword ptr [rbp + 7160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n106_α
 xchain0_n102_β:
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain0_n107_α
 xchain0_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4736] -> [zr+4688]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4696], rax
# marshal arg1 = producer-box slot [zr+4768] -> [zr+4704]
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n108_α
 xchain0_n104_β:
 jmp xchain0_n92_α
# IR_VAR_REF
 xchain0_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain0_n109_α
 xchain0_n106_α:
# IR_CUT
 jmp xchain0_n110_α
 xchain0_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5712] -> [zr+5648]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5656], rax
# marshal arg1 = producer-box slot [zr+5568] -> [zr+5664]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5672], rax
# marshal arg2 = producer-box slot [zr+5600] -> [zr+5680]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5648]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n111_α
 xchain0_n107_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n108_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain0_n112_α
 xchain0_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3504]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3512], rax
# marshal arg1 = producer-box slot [zr+3456] -> [zr+3520]
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3504]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n113_α
 xchain0_n109_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 jmp xchain0_n115_α
# IR_LIT_STRING
 xchain0_n111_α:
 mov qword ptr [rbp + 5888], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain0_n116_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n112_α:
 mov qword ptr [rbp + 4640], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 4648], rax
 jmp xchain0_n117_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "*"
 xchain0_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3424] -> [zr+3376]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3384], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3392]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3376]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n118_α
 xchain0_n113_β:
 jmp xchain0_n114_α
 xchain0_n114_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2800]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n119_α
 xchain0_n114_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n115_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 7056], rax
 mov qword ptr [rbp + 7064], rdx
 jmp xchain0_n120_α
# IR_VAR_REF
 xchain0_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 jmp xchain0_n121_α
# IR_LIT_STRING
 xchain0_n117_α:
 mov qword ptr [rbp + 4352], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 4360], rax
 jmp xchain0_n122_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "*"
# IR_VAR_REF
 xchain0_n118_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain0_n123_α
# IR_VAR_REF
 xchain0_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain0_n124_α
# IR_VAR_REF
 xchain0_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain0_n125_α
# IR_VAR_REF
 xchain0_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 jmp xchain0_n126_α
# IR_VAR_REF
 xchain0_n122_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain0_n127_α
# IR_VAR_REF
 xchain0_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain0_n128_α
# IR_LIT_STRING
 xchain0_n124_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain0_n129_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "exp"
 xchain0_n125_α:
 mov edi, 0
 lea rsi, [rbp + 7024]
 lea rdx, [rbp + 7056]
 lea rcx, [rbp + 7088]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx197_1
 lea rcx, [rip + .Lx197_3]
 lea rdx, [rip + .Lx197_4]
 jmp rax
.Lx197_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx197_2
.Lx197_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx197_2
.Lx197_1:
 call rt_faildescr@PLT
.Lx197_2:
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n130_α
 xchain0_n125_β:
 jmp xchain0_n49_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "d/3"
 xchain0_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5888] -> [zr+5824]
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5832], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5840]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5848], rax
# marshal arg2 = producer-box slot [zr+5776] -> [zr+5856]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5824]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5808], rax
 mov qword ptr [rbp + 5816], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n131_α
 xchain0_n126_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain0_n132_α
 xchain0_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3296] -> [zr+3248]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3256], rax
# marshal arg1 = producer-box slot [zr+3328] -> [zr+3264]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3248]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n133_α
 xchain0_n128_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain0_n134_α
# IR_VAR_REF
 xchain0_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain0_n135_α
 xchain0_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+5632] -> [zr+5952]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5960], rax
# marshal arg2 = producer-box slot [zr+5808] -> [zr+5968]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5936]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n136_α
 xchain0_n131_β:
 jmp proc_d$3_ω
 xchain0_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4352] -> [zr+4288]
 mov rax, qword ptr [rbp + 4352]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4360]
 mov qword ptr [rbp + 4296], rax
# marshal arg1 = producer-box slot [zr+4208] -> [zr+4304]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4312], rax
# marshal arg2 = producer-box slot [zr+4240] -> [zr+4320]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n137_α
 xchain0_n132_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain0_n138_α
 xchain0_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2720]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n139_α
 xchain0_n134_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain0_n141_α
# IR_LIT_STRING
 xchain0_n136_α:
 mov qword ptr [rbp + 6176], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain0_n142_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n137_α:
 mov qword ptr [rbp + 4528], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 4536], rax
 jmp xchain0_n143_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n138_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain0_n144_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "-"
 xchain0_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2624] -> [zr+2576]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2584], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2592]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n145_α
 xchain0_n139_β:
 jmp xchain0_n140_α
 xchain0_n140_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1856]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n146_α
 xchain0_n140_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain0_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain0_n147_α
# IR_VAR_REF
 xchain0_n142_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 jmp xchain0_n148_α
# IR_VAR_REF
 xchain0_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 jmp xchain0_n149_α
# IR_VAR_REF
 xchain0_n144_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain0_n150_α
# IR_VAR_REF
 xchain0_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain0_n151_α
# IR_VAR_REF
 xchain0_n146_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain0_n152_α
 xchain0_n147_α:
 mov edi, 0
 lea rsi, [rbp + 6848]
 lea rdx, [rbp + 6880]
 lea rcx, [rbp + 6912]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx231_1
 lea rcx, [rip + .Lx231_3]
 lea rdx, [rip + .Lx231_4]
 jmp rax
.Lx231_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx231_2
.Lx231_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx231_2
.Lx231_1:
 call rt_faildescr@PLT
.Lx231_2:
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 cmp eax, 99
 je xchain0_n125_β
 jmp xchain0_n153_α
 xchain0_n147_β:
 jmp xchain0_n125_β
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "d/3"
# IR_LIT_INTEGER
 xchain0_n148_α:
 mov qword ptr [rbp + 6064], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 6072], rax
 jmp xchain0_n154_α
.Lx232_0:
 .quad 2
# IR_VAR_REF
 xchain0_n149_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 jmp xchain0_n155_α
 xchain0_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3152]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3104] -> [zr+3168]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n156_α
 xchain0_n150_β:
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n151_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain0_n157_α
# IR_LIT_STRING
 xchain0_n152_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain0_n158_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "log"
# IR_MOVE_LABEL
 xchain0_n153_α:
 lea rax, [rip + xchain0_n147_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
 xchain0_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6176] -> [zr+6112]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6120], rax
# marshal arg1 = producer-box slot [zr+6032] -> [zr+6128]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 6128], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 6136], rax
# marshal arg2 = producer-box slot [zr+6064] -> [zr+6144]
 mov rax, qword ptr [rbp + 6064]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 6072]
 mov qword ptr [rbp + 6152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n159_α
 xchain0_n154_β:
 jmp proc_d$3_ω
 xchain0_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4464]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4472], rax
# marshal arg1 = producer-box slot [zr+4384] -> [zr+4480]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4488], rax
# marshal arg2 = producer-box slot [zr+4416] -> [zr+4496]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n160_α
 xchain0_n155_β:
 jmp proc_d$3_ω
 xchain0_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3024]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3032], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3040]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3024]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain0_n114_α
 jmp xchain0_n161_α
 xchain0_n156_β:
 jmp xchain0_n114_α
 xchain0_n157_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2448]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2528] -> [zr+2464]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n162_α
 xchain0_n157_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain0_n163_α
 xchain0_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6224]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6232], rax
# marshal arg1 = producer-box slot [zr+5920] -> [zr+6240]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 6248], rax
# marshal arg2 = producer-box slot [zr+6096] -> [zr+6256]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n164_α
 xchain0_n159_β:
 jmp xchain0_n65_α
 xchain0_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4576]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4584], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4592]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4600], rax
# marshal arg2 = producer-box slot [zr+4448] -> [zr+4608]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n165_α
 xchain0_n160_β:
 jmp xchain0_n92_α
 xchain0_n161_α:
# IR_CUT
 jmp xchain0_n166_α
# IR_VAR_REF
 xchain0_n162_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain0_n167_α
 xchain0_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1776]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n168_α
 xchain0_n163_β:
 jmp xchain0_n169_α
 xchain0_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5536] -> [zr+5488]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+6208] -> [zr+5504]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 5512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5488]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n170_α
 xchain0_n164_β:
 jmp xchain0_n65_α
 xchain0_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4128]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4136], rax
# marshal arg1 = producer-box slot [zr+4560] -> [zr+4144]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4128]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain0_n92_α
 jmp xchain0_n171_α
 xchain0_n165_β:
 jmp xchain0_n92_α
# IR_VAR_REF
 xchain0_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain0_n172_α
# IR_LIT_STRING
 xchain0_n167_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n173_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "*"
 xchain0_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1648]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n174_α
 xchain0_n168_β:
 jmp xchain0_n169_α
 xchain0_n169_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1008]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n175_α
 xchain0_n169_β:
 jmp proc_d$3_ω
 xchain0_n170_α:
# IR_CUT
 jmp xchain0_n176_α
 xchain0_n171_α:
# IR_CUT
 jmp xchain0_n177_α
# IR_VAR_REF
 xchain0_n172_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain0_n178_α
# IR_LIT_STRING
 xchain0_n173_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain0_n179_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "exp"
# IR_VAR_REF
 xchain0_n174_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n180_α
# IR_VAR_REF
 xchain0_n175_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain0_n181_α
# IR_VAR_REF
 xchain0_n176_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain0_n182_α
# IR_VAR_REF
 xchain0_n177_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain0_n183_α
# IR_VAR_REF
 xchain0_n178_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain0_n184_α
# IR_VAR_REF
 xchain0_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain0_n185_α
# IR_VAR_REF
 xchain0_n180_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n186_α
# IR_VAR_REF
 xchain0_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10272]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n187_α
# IR_VAR_REF
 xchain0_n182_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain0_n188_α
 xchain0_n183_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4048]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4056], rax
  .section .rodata
  .Lrkfn284: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 4048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n189_α
 xchain0_n183_β:
 jmp xchain0_n49_α
 xchain0_n184_α:
 mov edi, 0
 lea rsi, [rbp + 2912]
 lea rdx, [rbp + 2944]
 lea rcx, [rbp + 2976]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx286_1
 lea rcx, [rip + .Lx286_3]
 lea rdx, [rip + .Lx286_4]
 jmp rax
.Lx286_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx286_2
.Lx286_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx286_2
.Lx286_1:
 call rt_faildescr@PLT
.Lx286_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n190_α
 xchain0_n184_β:
 jmp xchain0_n49_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "d/3"
 xchain0_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2224]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n191_α
 xchain0_n185_β:
 jmp proc_d$3_ω
 xchain0_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n192_α
 xchain0_n186_β:
 jmp xchain0_n169_α
 xchain0_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain0_n194_α
 jmp xchain0_n193_α
 xchain0_n187_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain0_n195_α
# IR_VAR_REF
 xchain0_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain0_n196_α
# IR_MOVE_LABEL
 xchain0_n190_α:
 lea rax, [rip + xchain0_n184_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain0_n191_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n197_α
# IR_VAR_REF
 xchain0_n192_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n198_α
# IR_VAR_REF
 xchain0_n193_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain0_n199_α
 xchain0_n194_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain0_n200_α
 xchain0_n194_β:
 jmp proc_d$3_ω
 xchain0_n195_α:
 mov edi, 0
 lea rsi, [rbp + 5376]
 lea rdx, [rbp + 5408]
 lea rcx, [rbp + 5440]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx304_1
 lea rcx, [rip + .Lx304_3]
 lea rdx, [rip + .Lx304_4]
 jmp rax
.Lx304_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx304_2
.Lx304_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx304_2
.Lx304_1:
 call rt_faildescr@PLT
.Lx304_2:
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n201_α
 xchain0_n195_β:
 jmp xchain0_n49_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "d/3"
# IR_VAR
 xchain0_n196_α:
 mov rax, qword ptr [rbp + 10240]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 10248]
 mov qword ptr [rbp + 3976], rax
 jmp xchain0_n202_α
 xchain0_n197_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2352]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2360], rax
# marshal arg2 = producer-box slot [zr+2288] -> [zr+2368]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n203_α
 xchain0_n197_β:
 jmp xchain0_n140_α
# IR_LIT_STRING
 xchain0_n198_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n204_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "/"
# IR_VAR_REF
 xchain0_n199_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10272]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n205_α
# IR_VAR_REF
 xchain0_n200_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n206_α
# IR_VAR_REF
 xchain0_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain0_n207_α
# IR_LIT_INTEGER
 xchain0_n202_α:
 mov qword ptr [rbp + 4000], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 4008], rax
 jmp xchain0_n208_α
.Lx315_0:
 .quad 1
 xchain0_n203_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2080]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2096]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2080]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain0_n140_α
 jmp xchain0_n209_α
 xchain0_n203_β:
 jmp xchain0_n140_α
# IR_VAR_REF
 xchain0_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n210_α
 xchain0_n205_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain0_n194_α
 jmp xchain0_n211_α
 xchain0_n205_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n206_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n212_α
# IR_VAR_REF
 xchain0_n207_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 jmp xchain0_n213_α
 xchain0_n208_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3920]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3928], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+3936]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 3920]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n214_α
 xchain0_n208_β:
 jmp xchain0_n49_α
 xchain0_n209_α:
# IR_CUT
 jmp xchain0_n215_α
# IR_VAR_REF
 xchain0_n210_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain0_n216_α
# IR_VAR_REF
 xchain0_n211_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n217_α
 xchain0_n212_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n218_α
 xchain0_n212_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 jmp xchain0_n219_α
 xchain0_n214_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3824]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3832], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3840]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 3824]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n220_α
 xchain0_n214_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n215_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain0_n221_α
 xchain0_n216_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1408]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1416], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1424]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n222_α
 xchain0_n216_β:
 jmp xchain0_n169_α
# IR_LIT_INTEGER
 xchain0_n217_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain0_n223_α
.Lx337_0:
 .quad 1
# IR_VAR_REF
 xchain0_n218_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n224_α
 xchain0_n219_α:
 mov edi, 0
 lea rsi, [rbp + 5200]
 lea rdx, [rbp + 5232]
 lea rcx, [rbp + 5264]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx341_1
 lea rcx, [rip + .Lx341_3]
 lea rdx, [rip + .Lx341_4]
 jmp rax
.Lx341_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx341_2
.Lx341_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx341_2
.Lx341_1:
 call rt_faildescr@PLT
.Lx341_2:
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je xchain0_n195_β
 jmp xchain0_n225_α
 xchain0_n219_β:
 jmp xchain0_n195_β
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain0_n220_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain0_n226_α
# IR_VAR_REF
 xchain0_n221_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain0_n227_α
 xchain0_n222_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1248]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain0_n169_α
 jmp xchain0_n228_α
 xchain0_n222_β:
 jmp xchain0_n169_α
 xchain0_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 624]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain0_n194_α
 jmp xchain0_n229_α
 xchain0_n223_β:
 jmp xchain0_n194_α
# IR_VAR_REF
 xchain0_n224_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n230_α
# IR_MOVE_LABEL
 xchain0_n225_α:
 lea rax, [rip + xchain0_n219_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain0_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain0_n231_α
# IR_VAR_REF
 xchain0_n227_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain0_n232_α
 xchain0_n228_α:
# IR_CUT
 jmp xchain0_n233_α
 xchain0_n229_α:
# IR_CUT
 jmp xchain0_n234_α
 xchain0_n230_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n235_α
 xchain0_n230_β:
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n231_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain0_n236_α
 xchain0_n232_α:
 mov edi, 0
 lea rsi, [rbp + 1968]
 lea rdx, [rbp + 2000]
 lea rcx, [rbp + 2032]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx362_1
 lea rcx, [rip + .Lx362_3]
 lea rdx, [rip + .Lx362_4]
 jmp rax
.Lx362_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx362_2
.Lx362_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx362_2
.Lx362_1:
 call rt_faildescr@PLT
.Lx362_2:
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n237_α
 xchain0_n232_β:
 jmp xchain0_n49_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain0_n233_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n238_α
# IR_MOVE_LABEL
 xchain0_n234_α:
 lea rax, [rip + xchain0_n194_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain0_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n239_α
 xchain0_n236_α:
 mov edi, 0
 lea rsi, [rbp + 3712]
 lea rdx, [rbp + 3744]
 lea rcx, [rbp + 3776]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx370_1
 lea rcx, [rip + .Lx370_3]
 lea rdx, [rip + .Lx370_4]
 jmp rax
.Lx370_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx370_2
.Lx370_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx370_2
.Lx370_1:
 call rt_faildescr@PLT
.Lx370_2:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n240_α
 xchain0_n236_β:
 jmp xchain0_n49_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain0_n237_α:
 lea rax, [rip + xchain0_n232_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain0_n238_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n241_α
# IR_LIT_INTEGER
 xchain0_n239_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain0_n242_α
.Lx375_0:
 .quad 0
# IR_MOVE_LABEL
 xchain0_n240_α:
 lea rax, [rip + xchain0_n236_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain0_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n243_α
 xchain0_n242_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 192]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n244_α
 xchain0_n242_β:
 jmp xchain0_n49_α
 xchain0_n243_α:
 mov edi, 0
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1152]
 lea rcx, [rbp + 1184]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx382_1
 lea rcx, [rip + .Lx382_3]
 lea rdx, [rip + .Lx382_4]
 jmp rax
.Lx382_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx382_2
.Lx382_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx382_2
.Lx382_1:
 call rt_faildescr@PLT
.Lx382_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n245_α
 xchain0_n243_β:
 jmp xchain0_n49_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain0_n244_α:
 lea rax, [rip + xchain0_n49_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_MOVE_LABEL
 xchain0_n245_α:
 lea rax, [rip + xchain0_n243_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
proc_d$3_res:
add rsp, 8
pop rbp
proc_d$3_β:
jmp xchain0_n71_α
proc_d$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 10344]
lea rsp, [rbp + 10368]
mov rbp, [rbp + 10360]
jmp rax
proc_d$3_ω:
mov rax, [rbp + 10352]
lea rsp, [rbp + 10368]
mov rbp, [rbp + 10360]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "d/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_d$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 10336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
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
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1480], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain387_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n1_α
 xchain387_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain387_n1_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain387_n2_α
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "*"
# IR_LIT_STRING
 xchain387_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain387_n3_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "+"
# IR_LIT_STRING
 xchain387_n3_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain387_n4_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain387_n4_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain387_n5_α
.Lx392_0:
 .quad 1
 xchain387_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+464]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+480]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n6_α
 xchain387_n5_β:
 jmp main_ω
# IR_LIT_STRING
 xchain387_n6_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain387_n7_α
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "*"
# IR_LIT_STRING
 xchain387_n7_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain387_n8_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "+"
# IR_LIT_STRING
 xchain387_n8_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain387_n9_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "^"
# IR_LIT_STRING
 xchain387_n9_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain387_n10_α
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain387_n10_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain387_n11_α
.Lx398_0:
 .quad 2
 xchain387_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+640]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+656]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n12_α
 xchain387_n11_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain387_n12_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain387_n13_α
.Lx400_0:
 .quad 2
 xchain387_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+784]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+800]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n14_α
 xchain387_n13_β:
 jmp main_ω
# IR_LIT_STRING
 xchain387_n14_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain387_n15_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "+"
# IR_LIT_STRING
 xchain387_n15_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain387_n16_α
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "^"
# IR_LIT_STRING
 xchain387_n16_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain387_n17_α
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain387_n17_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain387_n18_α
.Lx405_0:
 .quad 3
 xchain387_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+960]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+976]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n19_α
 xchain387_n18_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain387_n19_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain387_n20_α
.Lx407_0:
 .quad 3
 xchain387_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+1104]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1112], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1120]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n21_α
 xchain387_n20_β:
 jmp main_ω
 xchain387_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+1216]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 1224], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1232]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain387_n22_α
 xchain387_n21_β:
 jmp main_ω
 xchain387_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+1328]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 1336], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1344]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain387_n24_α
 jmp xchain387_n23_α
 xchain387_n22_β:
 jmp xchain387_n24_α
# IR_LIT_STRING
 xchain387_n23_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain387_n25_α
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "x"
 xchain387_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain387_n24_β:
 jmp main_ω
# IR_VAR_REF
 xchain387_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain387_n26_α
 xchain387_n26_α:
 mov edi, 0
 lea rsi, [rbp + 1296]
 lea rdx, [rbp + 1408]
 lea rcx, [rbp + 1440]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx416_1
 lea rcx, [rip + .Lx416_3]
 lea rdx, [rip + .Lx416_4]
 jmp rax
.Lx416_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx416_2
.Lx416_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx416_2
.Lx416_1:
 call rt_faildescr@PLT
.Lx416_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain387_n24_α
 jmp xchain387_n27_α
 xchain387_n26_β:
 jmp xchain387_n24_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "d/3"
# IR_VAR
 xchain387_n27_α:
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 264], rax
 jmp xchain387_n28_α
 xchain387_n28_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn420: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn420]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain387_n26_β
 jmp xchain387_n29_α
 xchain387_n28_β:
 jmp xchain387_n26_β
# IR_LIT_STRING
 xchain387_n29_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain387_n30_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string ""
 xchain387_n30_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn423: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn423]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain387_n26_β
 jmp xchain387_n31_α
 xchain387_n30_β:
 jmp xchain387_n26_β
# IR_MOVE_LABEL
 xchain387_n31_α:
 lea rax, [rip + xchain387_n26_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain387_n32_α:
 jmp qword ptr [rbp + 32]
 xchain387_n32_β:
 jmp main_ω
main_β:
jmp xchain387_n32_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1480]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1480]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
