  .intel_syntax noprefix
  .text
  .globl proc_sel$3_α
proc_sel$3_α:
#=======================================================================================================================
    .global proc_sel$3_α
    .global proc_sel$3_β
    .global proc_sel$3_γ
    .global proc_sel$3_ω
  sub rsp, 1472
  mov [rsp + 1448], rcx
  mov [rsp + 1456], rdx
  mov [rsp + 1464], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1352], rsp
  mov rdi, rsp
  mov esi, 1328
  mov edx, 1440
  call rt_jmp_frame_lexprep2@PLT
proc_sel$3_α_body:
lea rax, [rip + xchain0_n19_β]
mov qword ptr [rbp + 1328], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sel$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+864]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_sel$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n11_α
 xchain0_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1072]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n16_α
 xchain0_n14_α:
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
 je proc_sel$3_ω
 jmp proc_sel$3_ω
 xchain0_n14_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n18_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain0_n20_α
# IR_SUSPEND yield+resume
 xchain0_n19_α:
 lea rax, [rip + xchain0_n19_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$3_γ
 xchain0_n19_β:
 jmp xchain0_n5_α
 xchain0_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+592]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n24_α
 xchain0_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+416]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n26_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n28_α
 xchain0_n28_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx49_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx49_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx49_3]
 lea rdx, [rip + .Lx49_4]
 jmp rax
.Lx49_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx49_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx49_2
.Lx49_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx49_2
.Lx49_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx49_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx49_2
.Lx49_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx49_2
.Lx49_1:
 call rt_faildescr@PLT
.Lx49_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "sel/3"
# IR_SUSPEND yield+resume
 xchain0_n29_α:
 lea rax, [rip + xchain0_n29_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$3_γ
 xchain0_n29_β:
 jmp xchain0_n28_β
proc_sel$3_res:
add rsp, 8
pop rbp
proc_sel$3_β:
jmp qword ptr [rbp + 1328]
proc_sel$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sel$3_res]
push rax
mov rax, [rbp + 1448]
mov rbp, [rbp + 1464]
jmp rax
proc_sel$3_ω:
mov rax, [rbp + 1456]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
jmp rax
  .globl proc_q10$1_α
proc_q10$1_α:
#=======================================================================================================================
    .global proc_q10$1_α
    .global proc_q10$1_β
    .global proc_q10$1_γ
    .global proc_q10$1_ω
  sub rsp, 1936
  mov [rsp + 1912], rcx
  mov [rsp + 1920], rdx
  mov [rsp + 1928], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1856
  mov edx, 1904
  call rt_jmp_frame_lexprep2@PLT
proc_q10$1_α_body:
lea rax, [rip + xchain52_n38_β]
mov qword ptr [rbp + 1856], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_q10$1_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_LIT_STRING
 xchain52_n4_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain52_n6_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "."
 xchain52_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp proc_q10$1_ω
 xchain52_n5_β:
 jmp proc_q10$1_ω
# IR_LIT_INTEGER
 xchain52_n6_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain52_n7_α
.Lx61_0:
 .quad 1
# IR_LIT_STRING
 xchain52_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain52_n8_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n8_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain52_n9_α
.Lx63_0:
 .quad 2
# IR_LIT_STRING
 xchain52_n9_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain52_n10_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n10_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain52_n11_α
.Lx65_0:
 .quad 3
# IR_LIT_STRING
 xchain52_n11_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain52_n12_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n12_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain52_n13_α
.Lx67_0:
 .quad 4
# IR_LIT_STRING
 xchain52_n13_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain52_n14_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n14_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain52_n15_α
.Lx69_0:
 .quad 5
# IR_LIT_STRING
 xchain52_n15_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain52_n16_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n16_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain52_n17_α
.Lx71_0:
 .quad 6
# IR_LIT_STRING
 xchain52_n17_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain52_n18_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n18_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain52_n19_α
.Lx73_0:
 .quad 7
# IR_LIT_STRING
 xchain52_n19_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain52_n20_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n20_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain52_n21_α
.Lx75_0:
 .quad 8
# IR_LIT_STRING
 xchain52_n21_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain52_n22_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n22_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain52_n23_α
.Lx77_0:
 .quad 9
# IR_LIT_STRING
 xchain52_n23_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain52_n24_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n24_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain52_n25_α
.Lx79_0:
 .quad 10
# IR_LIT_STRING
 xchain52_n25_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain52_n26_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "[]"
 xchain52_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+320]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n27_α
 xchain52_n26_β:
 jmp proc_q10$1_ω
 xchain52_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+464]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+480]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n28_α
 xchain52_n27_β:
 jmp proc_q10$1_ω
 xchain52_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+608]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+624]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n29_α
 xchain52_n28_β:
 jmp proc_q10$1_ω
 xchain52_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+752]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+768]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n30_α
 xchain52_n29_β:
 jmp proc_q10$1_ω
 xchain52_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+896]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+912]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n31_α
 xchain52_n30_β:
 jmp proc_q10$1_ω
 xchain52_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1040]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+1056]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n32_α
 xchain52_n31_β:
 jmp proc_q10$1_ω
 xchain52_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1184]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1192], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1200]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n33_α
 xchain52_n32_β:
 jmp proc_q10$1_ω
 xchain52_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1328]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1336], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1344]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n34_α
 xchain52_n33_β:
 jmp proc_q10$1_ω
 xchain52_n34_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1472]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1480], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1488]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain52_n35_α
 xchain52_n34_β:
 jmp proc_q10$1_ω
 xchain52_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1616]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1624], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1632]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n36_α
 xchain52_n35_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain52_n37_α
 xchain52_n37_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx94_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx94_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx94_3]
 lea rdx, [rip + .Lx94_4]
 jmp rax
.Lx94_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx94_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx94_2
.Lx94_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx94_2
.Lx94_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx94_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx94_2
.Lx94_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx94_2
.Lx94_1:
 call rt_faildescr@PLT
.Lx94_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n38_α
 xchain52_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "q/2"
# IR_SUSPEND yield+resume
 xchain52_n38_α:
 lea rax, [rip + xchain52_n38_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_q10$1_γ
 xchain52_n38_β:
 jmp xchain52_n37_β
proc_q10$1_res:
add rsp, 8
pop rbp
proc_q10$1_β:
jmp qword ptr [rbp + 1856]
proc_q10$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q10$1_res]
push rax
mov rax, [rbp + 1912]
mov rbp, [rbp + 1928]
jmp rax
proc_q10$1_ω:
mov rax, [rbp + 1920]
lea rsp, [rbp + 1936]
mov rbp, [rbp + 1928]
jmp rax
  .globl proc_test$2_α
proc_test$2_α:
#=======================================================================================================================
    .global proc_test$2_α
    .global proc_test$2_β
    .global proc_test$2_γ
    .global proc_test$2_ω
  sub rsp, 1152
  mov [rsp + 1128], rcx
  mov [rsp + 1136], rdx
  mov [rsp + 1144], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1064], rsp
  mov rdi, rsp
  mov esi, 1040
  mov edx, 1120
  call rt_jmp_frame_lexprep2@PLT
proc_test$2_α_body:
lea rax, [rip + xchain97_n10_β]
mov qword ptr [rbp + 1040], rax
 xchain97_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp xchain97_n1_α
 xchain97_n0_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain97_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain97_n2_α
# IR_LIT_STRING
 xchain97_n2_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain97_n3_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "[]"
 xchain97_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 928]
 mov rsi, qword ptr [rip + .Lx102_2]
 jmp .Lx102_3
.Lx102_2:
 .quad .Lx102_2_s
.Lx102_2_s:
 .string "[]"
.Lx102_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain97_n5_α
 jmp xchain97_n4_α
 xchain97_n3_β:
 jmp xchain97_n5_α
# IR_VAR_REF
 xchain97_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain97_n6_α
 xchain97_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+752]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp xchain97_n7_α
 xchain97_n5_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain97_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1088]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain97_n8_α
# IR_VAR_REF
 xchain97_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain97_n9_α
 xchain97_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain97_n5_α
 jmp xchain97_n10_α
 xchain97_n8_β:
 jmp xchain97_n5_α
# IR_VAR_REF
 xchain97_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1072]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain97_n11_α
# IR_SUSPEND yield+resume
 xchain97_n10_α:
 lea rax, [rip + xchain97_n10_β]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2_γ
 xchain97_n10_β:
 jmp xchain97_n5_α
# IR_VAR_REF
 xchain97_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1104]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain97_n12_α
 xchain97_n12_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+608]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain97_n14_α
 jmp xchain97_n13_α
 xchain97_n12_β:
 jmp xchain97_n14_α
# IR_VAR_REF
 xchain97_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain97_n15_α
 xchain97_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp proc_test$2_ω
 xchain97_n14_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain97_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1088]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain97_n16_α
 xchain97_n16_α:
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
 je xchain97_n14_α
 jmp xchain97_n17_α
 xchain97_n16_β:
 jmp xchain97_n14_α
# IR_VAR_REF
 xchain97_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1104]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain97_n18_α
# IR_VAR_REF
 xchain97_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1088]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain97_n19_α
 xchain97_n19_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx129_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx129_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx129_3]
 lea rdx, [rip + .Lx129_4]
 jmp rax
.Lx129_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx129_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx129_2
.Lx129_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx129_2
.Lx129_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx129_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx129_2
.Lx129_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx129_2
.Lx129_1:
 call rt_faildescr@PLT
.Lx129_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain97_n14_α
 jmp xchain97_n20_α
 xchain97_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "test/2"
# IR_VAR_REF
 xchain97_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1072]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain97_n21_α
# IR_VAR_REF
 xchain97_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1088]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain97_n22_α
 xchain97_n22_α:
 mov edi, 3
 lea rsi, [rbp + 224]
 lea rdx, [rbp + 256]
 call rt_proc_call_open_det2@PLT
 test rax, rax
 je .Lx135_1
 lea rcx, [rip + .Lx135_3]
 lea rdx, [rip + .Lx135_4]
 jmp rax
.Lx135_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx135_2
.Lx135_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx135_2
.Lx135_1:
 call rt_faildescr@PLT
.Lx135_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain97_n19_β
 jmp xchain97_n23_α
 xchain97_n22_β:
 jmp xchain97_n19_β
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "nd/2"
# IR_SUSPEND yield+resume
 xchain97_n23_α:
 lea rax, [rip + xchain97_n23_β]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2_γ
 xchain97_n23_β:
 jmp xchain97_n22_β
proc_test$2_res:
add rsp, 8
pop rbp
proc_test$2_β:
jmp qword ptr [rbp + 1040]
proc_test$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_test$2_res]
push rax
mov rax, [rbp + 1128]
mov rbp, [rbp + 1144]
jmp rax
proc_test$2_ω:
mov rax, [rbp + 1136]
lea rsp, [rbp + 1152]
mov rbp, [rbp + 1144]
jmp rax
  .globl proc_nd$2_α
proc_nd$2_α:
#=======================================================================================================================
    .global proc_nd$2_α
    .global proc_nd$2_β
    .global proc_nd$2_γ
    .global proc_nd$2_ω
  sub rsp, 1792
  mov [rsp + 1768], rcx
  mov [rsp + 1776], rdx
  mov [rsp + 1784], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1640], rsp
  mov rdi, rsp
  mov esi, 1632
  mov edx, 1760
  call rt_jmp_frame_lexprep2@PLT
proc_nd$2_α_body:
 xchain138_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nd$2_ω
 jmp xchain138_n1_α
 xchain138_n0_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain138_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain138_n2_α
# IR_LIT_STRING
 xchain138_n2_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain138_n3_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "p"
# IR_VAR_REF
 xchain138_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain138_n4_α
# IR_VAR_REF
 xchain138_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain138_n5_α
 xchain138_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1552]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1560], rax
# marshal arg2 = producer-box slot [zr+1488] -> [zr+1568]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n6_α
 xchain138_n5_β:
 jmp xchain138_n7_α
 xchain138_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1392]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n8_α
 xchain138_n6_β:
 jmp xchain138_n7_α
 xchain138_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_nd$2_ω
 jmp proc_nd$2_ω
 xchain138_n7_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain138_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain138_n9_α
# IR_LIT_STRING
 xchain138_n9_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain138_n10_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "p"
# IR_VAR_REF
 xchain138_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain138_n11_α
# IR_VAR_REF
 xchain138_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain138_n12_α
 xchain138_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1280]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1216] -> [zr+1296]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n13_α
 xchain138_n12_β:
 jmp xchain138_n7_α
 xchain138_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1120]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n14_α
 xchain138_n13_β:
 jmp xchain138_n7_α
# IR_VAR_REF
 xchain138_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain138_n15_α
# IR_VAR
 xchain138_n15_α:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1032], rax
 jmp xchain138_n16_α
# IR_VAR
 xchain138_n16_α:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1064], rax
 jmp xchain138_n17_α
 xchain138_n17_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n18_α
 xchain138_n17_β:
 jmp xchain138_n7_α
 xchain138_n18_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n19_α
 xchain138_n18_β:
 jmp xchain138_n7_α
# IR_VAR_REF
 xchain138_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain138_n20_α
# IR_VAR
 xchain138_n20_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 808], rax
 jmp xchain138_n21_α
# IR_VAR
 xchain138_n21_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 840], rax
 jmp xchain138_n22_α
 xchain138_n22_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n23_α
 xchain138_n22_β:
 jmp xchain138_n7_α
 xchain138_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n24_α
 xchain138_n23_β:
 jmp xchain138_n7_α
# IR_VAR
 xchain138_n24_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 584], rax
 jmp xchain138_n25_α
# IR_VAR
 xchain138_n25_α:
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 616], rax
 jmp xchain138_n26_α
 xchain138_n26_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n27_α
 xchain138_n26_β:
 jmp xchain138_n7_α
# IR_VAR_REF
 xchain138_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain138_n28_α
# IR_VAR
 xchain138_n28_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 456], rax
 jmp xchain138_n29_α
# IR_VAR
 xchain138_n29_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 488], rax
 jmp xchain138_n30_α
 xchain138_n30_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n31_α
 xchain138_n30_β:
 jmp xchain138_n7_α
 xchain138_n31_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n32_α
 xchain138_n31_β:
 jmp xchain138_n7_α
# IR_VAR
 xchain138_n32_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 232], rax
 jmp xchain138_n33_α
# IR_VAR
 xchain138_n33_α:
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 264], rax
 jmp xchain138_n34_α
 xchain138_n34_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain138_n7_α
 jmp xchain138_n35_α
 xchain138_n34_β:
 jmp xchain138_n7_α
# IR_MOVE_LABEL
 xchain138_n35_α:
 lea rax, [rip + xchain138_n7_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_nd$2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain138_n36_α:
 jmp qword ptr [rbp + 64]
 xchain138_n36_β:
 jmp proc_nd$2_ω
proc_nd$2_res:
add rsp, 8
pop rbp
proc_nd$2_β:
jmp xchain138_n36_α
proc_nd$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1768]
lea rsp, [rbp + 1792]
mov rbp, [rbp + 1784]
jmp rax
proc_nd$2_ω:
mov rax, [rbp + 1776]
lea rsp, [rbp + 1792]
mov rbp, [rbp + 1784]
jmp rax
  .globl proc_safe$2_α
proc_safe$2_α:
#=======================================================================================================================
    .global proc_safe$2_α
    .global proc_safe$2_β
    .global proc_safe$2_γ
    .global proc_safe$2_ω
  sub rsp, 1312
  mov [rsp + 1288], rcx
  mov [rsp + 1296], rdx
  mov [rsp + 1304], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1224], rsp
  mov rdi, rsp
  mov esi, 1200
  mov edx, 1280
  call rt_jmp_frame_lexprep2@PLT
proc_safe$2_α_body:
lea rax, [rip + xchain197_n10_β]
mov qword ptr [rbp + 1200], rax
 xchain197_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp xchain197_n1_α
 xchain197_n0_β:
 jmp proc_safe$2_ω
# IR_VAR_REF
 xchain197_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain197_n2_α
# IR_VAR_REF
 xchain197_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain197_n3_α
 xchain197_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain197_n5_α
 jmp xchain197_n4_α
 xchain197_n3_β:
 jmp xchain197_n5_α
# IR_VAR_REF
 xchain197_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain197_n6_α
 xchain197_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+912]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp xchain197_n7_α
 xchain197_n5_β:
 jmp proc_safe$2_ω
# IR_LIT_STRING
 xchain197_n6_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain197_n8_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "[]"
# IR_VAR_REF
 xchain197_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain197_n9_α
 xchain197_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 960]
 mov rsi, qword ptr [rip + .Lx210_2]
 jmp .Lx210_3
.Lx210_2:
 .quad .Lx210_2_s
.Lx210_2_s:
 .string "[]"
.Lx210_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain197_n5_α
 jmp xchain197_n10_α
 xchain197_n8_β:
 jmp xchain197_n5_α
# IR_VAR_REF
 xchain197_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain197_n11_α
# IR_SUSPEND yield+resume
 xchain197_n10_α:
 lea rax, [rip + xchain197_n10_β]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2_γ
 xchain197_n10_β:
 jmp xchain197_n5_α
 xchain197_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain197_n13_α
 jmp xchain197_n12_α
 xchain197_n11_β:
 jmp xchain197_n13_α
# IR_VAR_REF
 xchain197_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain197_n14_α
 xchain197_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp proc_safe$2_ω
 xchain197_n13_β:
 jmp proc_safe$2_ω
# IR_VAR_REF
 xchain197_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain197_n15_α
# IR_VAR_REF
 xchain197_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain197_n16_α
 xchain197_n16_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+640]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain197_n13_α
 jmp xchain197_n17_α
 xchain197_n16_β:
 jmp xchain197_n13_α
# IR_VAR_REF
 xchain197_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain197_n18_α
# IR_VAR_REF
 xchain197_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain197_n19_α
 xchain197_n19_α:
 mov qword ptr [rbp + 496], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx229_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx229_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx229_3]
 lea rdx, [rip + .Lx229_4]
 jmp rax
.Lx229_3:
 mov qword ptr [rbp + 504], rsp
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx229_5
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx229_2
.Lx229_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx229_2
.Lx229_4:
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx229_6
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx229_2
.Lx229_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx229_2
.Lx229_1:
 call rt_faildescr@PLT
.Lx229_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain197_n13_α
 jmp xchain197_n20_α
 xchain197_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 504]
 jmp qword ptr [rsp]
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "test/2"
# IR_LIT_STRING
 xchain197_n20_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain197_n21_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "."
# IR_VAR_REF
 xchain197_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain197_n22_α
# IR_VAR_REF
 xchain197_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain197_n23_α
 xchain197_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+336]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 344], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+352]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain197_n13_α
 jmp xchain197_n24_α
 xchain197_n23_β:
 jmp xchain197_n13_α
# IR_VAR_REF
 xchain197_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain197_n25_α
 xchain197_n25_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx239_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx239_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx239_3]
 lea rdx, [rip + .Lx239_4]
 jmp rax
.Lx239_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx239_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx239_2
.Lx239_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx239_2
.Lx239_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx239_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx239_2
.Lx239_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx239_2
.Lx239_1:
 call rt_faildescr@PLT
.Lx239_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain197_n19_β
 jmp xchain197_n26_α
 xchain197_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain197_n26_α:
 lea rax, [rip + xchain197_n26_β]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2_γ
 xchain197_n26_β:
 jmp xchain197_n25_β
proc_safe$2_res:
add rsp, 8
pop rbp
proc_safe$2_β:
jmp qword ptr [rbp + 1200]
proc_safe$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_safe$2_res]
push rax
mov rax, [rbp + 1288]
mov rbp, [rbp + 1304]
jmp rax
proc_safe$2_ω:
mov rax, [rbp + 1296]
lea rsp, [rbp + 1312]
mov rbp, [rbp + 1304]
jmp rax
  .globl proc_perm$2_α
proc_perm$2_α:
#=======================================================================================================================
    .global proc_perm$2_α
    .global proc_perm$2_β
    .global proc_perm$2_γ
    .global proc_perm$2_ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1128], rsp
  mov rdi, rsp
  mov esi, 1104
  mov edx, 1200
  call rt_jmp_frame_lexprep2@PLT
proc_perm$2_α_body:
lea rax, [rip + xchain242_n10_β]
mov qword ptr [rbp + 1104], rax
 xchain242_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp xchain242_n1_α
 xchain242_n0_β:
 jmp proc_perm$2_ω
# IR_VAR_REF
 xchain242_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain242_n2_α
# IR_LIT_STRING
 xchain242_n2_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain242_n3_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "[]"
 xchain242_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 992]
 mov rsi, qword ptr [rip + .Lx247_2]
 jmp .Lx247_3
.Lx247_2:
 .quad .Lx247_2_s
.Lx247_2_s:
 .string "[]"
.Lx247_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain242_n5_α
 jmp xchain242_n4_α
 xchain242_n3_β:
 jmp xchain242_n5_α
# IR_VAR_REF
 xchain242_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain242_n6_α
 xchain242_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+816]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp xchain242_n7_α
 xchain242_n5_β:
 jmp proc_perm$2_ω
# IR_LIT_STRING
 xchain242_n6_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain242_n8_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "[]"
# IR_VAR_REF
 xchain242_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain242_n9_α
 xchain242_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 864]
 mov rsi, qword ptr [rip + .Lx254_2]
 jmp .Lx254_3
.Lx254_2:
 .quad .Lx254_2_s
.Lx254_2_s:
 .string "[]"
.Lx254_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain242_n5_α
 jmp xchain242_n10_α
 xchain242_n8_β:
 jmp xchain242_n5_α
# IR_VAR_REF
 xchain242_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain242_n11_α
# IR_SUSPEND yield+resume
 xchain242_n10_α:
 lea rax, [rip + xchain242_n10_β]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2_γ
 xchain242_n10_β:
 jmp xchain242_n5_α
 xchain242_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain242_n13_α
 jmp xchain242_n12_α
 xchain242_n11_β:
 jmp xchain242_n13_α
# IR_VAR_REF
 xchain242_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain242_n14_α
 xchain242_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp proc_perm$2_ω
 xchain242_n13_β:
 jmp proc_perm$2_ω
# IR_VAR_REF
 xchain242_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain242_n15_α
# IR_VAR_REF
 xchain242_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain242_n16_α
 xchain242_n16_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+544]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain242_n13_α
 jmp xchain242_n17_α
 xchain242_n16_β:
 jmp xchain242_n13_α
# IR_VAR_REF
 xchain242_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain242_n18_α
# IR_VAR_REF
 xchain242_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain242_n19_α
# IR_VAR_REF
 xchain242_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1136]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain242_n20_α
 xchain242_n20_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx275_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx275_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx275_3]
 lea rdx, [rip + .Lx275_4]
 jmp rax
.Lx275_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx275_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx275_2
.Lx275_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx275_2
.Lx275_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx275_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx275_2
.Lx275_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx275_2
.Lx275_1:
 call rt_faildescr@PLT
.Lx275_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain242_n13_α
 jmp xchain242_n21_α
 xchain242_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain242_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1136]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain242_n22_α
# IR_VAR_REF
 xchain242_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain242_n23_α
 xchain242_n23_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx281_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx281_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx281_3]
 lea rdx, [rip + .Lx281_4]
 jmp rax
.Lx281_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx281_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx281_2
.Lx281_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx281_2
.Lx281_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx281_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx281_2
.Lx281_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx281_2
.Lx281_1:
 call rt_faildescr@PLT
.Lx281_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain242_n20_β
 jmp xchain242_n24_α
 xchain242_n23_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "perm/2"
# IR_SUSPEND yield+resume
 xchain242_n24_α:
 lea rax, [rip + xchain242_n24_β]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2_γ
 xchain242_n24_β:
 jmp xchain242_n23_β
proc_perm$2_res:
add rsp, 8
pop rbp
proc_perm$2_β:
jmp qword ptr [rbp + 1104]
proc_perm$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_perm$2_res]
push rax
mov rax, [rbp + 1208]
mov rbp, [rbp + 1224]
jmp rax
proc_perm$2_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_pair$3_α
proc_pair$3_α:
#=======================================================================================================================
    .global proc_pair$3_α
    .global proc_pair$3_β
    .global proc_pair$3_γ
    .global proc_pair$3_ω
  sub rsp, 1616
  mov [rsp + 1592], rcx
  mov [rsp + 1600], rdx
  mov [rsp + 1608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1472
  mov edx, 1584
  call rt_jmp_frame_lexprep2@PLT
proc_pair$3_α_body:
lea rax, [rip + xchain284_n17_β]
mov qword ptr [rbp + 1472], rax
 xchain284_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain284_n1_α
 xchain284_n0_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain284_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain284_n2_α
# IR_LIT_STRING
 xchain284_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain284_n3_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "[]"
 xchain284_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1360]
 mov rsi, qword ptr [rip + .Lx289_2]
 jmp .Lx289_3
.Lx289_2:
 .quad .Lx289_2_s
.Lx289_2_s:
 .string "[]"
.Lx289_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain284_n5_α
 jmp xchain284_n4_α
 xchain284_n3_β:
 jmp xchain284_n5_α
# IR_VAR_REF
 xchain284_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain284_n6_α
 xchain284_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain284_n7_α
 xchain284_n5_β:
 jmp proc_pair$3_ω
# IR_LIT_STRING
 xchain284_n6_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain284_n8_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "[]"
# IR_VAR_REF
 xchain284_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain284_n9_α
 xchain284_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1232]
 mov rsi, qword ptr [rip + .Lx296_2]
 jmp .Lx296_3
.Lx296_2:
 .quad .Lx296_2_s
.Lx296_2_s:
 .string "[]"
.Lx296_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain284_n5_α
 jmp xchain284_n10_α
 xchain284_n8_β:
 jmp xchain284_n5_α
# IR_VAR_REF
 xchain284_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain284_n11_α
# IR_VAR_REF
 xchain284_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain284_n12_α
# IR_VAR_REF
 xchain284_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain284_n13_α
# IR_LIT_STRING
 xchain284_n12_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain284_n14_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "[]"
 xchain284_n13_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+912]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain284_n16_α
 jmp xchain284_n15_α
 xchain284_n13_β:
 jmp xchain284_n16_α
 xchain284_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1104]
 mov rsi, qword ptr [rip + .Lx305_2]
 jmp .Lx305_3
.Lx305_2:
 .quad .Lx305_2_s
.Lx305_2_s:
 .string "[]"
.Lx305_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain284_n5_α
 jmp xchain284_n17_α
 xchain284_n14_β:
 jmp xchain284_n5_α
# IR_VAR_REF
 xchain284_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain284_n18_α
 xchain284_n16_α:
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
 je proc_pair$3_ω
 jmp proc_pair$3_ω
 xchain284_n16_β:
 jmp proc_pair$3_ω
# IR_SUSPEND yield+resume
 xchain284_n17_α:
 lea rax, [rip + xchain284_n17_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$3_γ
 xchain284_n17_β:
 jmp xchain284_n5_α
# IR_VAR_REF
 xchain284_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain284_n19_α
# IR_VAR_REF
 xchain284_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain284_n20_α
 xchain284_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+736]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain284_n16_α
 jmp xchain284_n21_α
 xchain284_n20_β:
 jmp xchain284_n16_α
# IR_VAR_REF
 xchain284_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain284_n22_α
# IR_LIT_STRING
 xchain284_n22_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain284_n23_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "p"
# IR_VAR_REF
 xchain284_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain284_n24_α
# IR_VAR_REF
 xchain284_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain284_n25_α
 xchain284_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+576]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+592]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain284_n16_α
 jmp xchain284_n26_α
 xchain284_n25_β:
 jmp xchain284_n16_α
# IR_VAR_REF
 xchain284_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain284_n27_α
 xchain284_n27_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+416]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+432]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+656] -> [zr+448]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain284_n16_α
 jmp xchain284_n28_α
 xchain284_n27_β:
 jmp xchain284_n16_α
# IR_VAR_REF
 xchain284_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain284_n29_α
# IR_VAR_REF
 xchain284_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain284_n30_α
# IR_VAR_REF
 xchain284_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain284_n31_α
 xchain284_n31_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx334_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx334_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx334_3]
 lea rdx, [rip + .Lx334_4]
 jmp rax
.Lx334_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx334_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx334_2
.Lx334_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx334_2
.Lx334_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx334_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx334_2
.Lx334_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx334_2
.Lx334_1:
 call rt_faildescr@PLT
.Lx334_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain284_n16_α
 jmp xchain284_n32_α
 xchain284_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "pair/3"
# IR_SUSPEND yield+resume
 xchain284_n32_α:
 lea rax, [rip + xchain284_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$3_γ
 xchain284_n32_β:
 jmp xchain284_n31_β
proc_pair$3_res:
add rsp, 8
pop rbp
proc_pair$3_β:
jmp qword ptr [rbp + 1472]
proc_pair$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_pair$3_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_pair$3_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
  .globl proc_q$2_α
proc_q$2_α:
#=======================================================================================================================
    .global proc_q$2_α
    .global proc_q$2_β
    .global proc_q$2_γ
    .global proc_q$2_ω
  sub rsp, 1008
  mov [rsp + 984], rcx
  mov [rsp + 992], rdx
  mov [rsp + 1000], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 896
  mov edx, 976
  call rt_jmp_frame_lexprep2@PLT
proc_q$2_α_body:
lea rax, [rip + xchain337_n18_β]
mov qword ptr [rbp + 896], rax
 xchain337_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_q$2_ω
 jmp xchain337_n1_α
 xchain337_n0_β:
 jmp proc_q$2_ω
# IR_VAR_REF
 xchain337_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain337_n2_α
# IR_VAR_REF
 xchain337_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain337_n3_α
 xchain337_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain337_n5_α
 jmp xchain337_n4_α
 xchain337_n3_β:
 jmp xchain337_n5_α
# IR_VAR_REF
 xchain337_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain337_n6_α
 xchain337_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_q$2_ω
 jmp proc_q$2_ω
 xchain337_n5_β:
 jmp proc_q$2_ω
# IR_VAR_REF
 xchain337_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain337_n7_α
 xchain337_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain337_n5_α
 jmp xchain337_n8_α
 xchain337_n7_β:
 jmp xchain337_n5_α
# IR_VAR_REF
 xchain337_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain337_n9_α
# IR_VAR_REF
 xchain337_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 960]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain337_n10_α
 xchain337_n10_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx355_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx355_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx355_3]
 lea rdx, [rip + .Lx355_4]
 jmp rax
.Lx355_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx355_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx355_2
.Lx355_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx355_2
.Lx355_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx355_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx355_2
.Lx355_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx355_2
.Lx355_1:
 call rt_faildescr@PLT
.Lx355_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain337_n5_α
 jmp xchain337_n11_α
 xchain337_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "perm/2"
# IR_VAR_REF
 xchain337_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain337_n12_α
# IR_VAR_REF
 xchain337_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 960]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain337_n13_α
# IR_VAR_REF
 xchain337_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain337_n14_α
 xchain337_n14_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx363_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx363_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx363_3]
 lea rdx, [rip + .Lx363_4]
 jmp rax
.Lx363_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx363_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx363_2
.Lx363_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx363_2
.Lx363_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx363_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx363_2
.Lx363_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx363_2
.Lx363_1:
 call rt_faildescr@PLT
.Lx363_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain337_n10_β
 jmp xchain337_n15_α
 xchain337_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "pair/3"
# IR_LIT_STRING
 xchain337_n15_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain337_n16_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "[]"
# IR_VAR_REF
 xchain337_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain337_n17_α
 xchain337_n17_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx368_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx368_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx368_3]
 lea rdx, [rip + .Lx368_4]
 jmp rax
.Lx368_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx368_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx368_2
.Lx368_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx368_2
.Lx368_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx368_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx368_2
.Lx368_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx368_2
.Lx368_1:
 call rt_faildescr@PLT
.Lx368_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain337_n14_β
 jmp xchain337_n18_α
 xchain337_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain337_n18_α:
 lea rax, [rip + xchain337_n18_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_q$2_γ
 xchain337_n18_β:
 jmp xchain337_n17_β
proc_q$2_res:
add rsp, 8
pop rbp
proc_q$2_β:
jmp qword ptr [rbp + 896]
proc_q$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q$2_res]
push rax
mov rax, [rbp + 984]
mov rbp, [rbp + 1000]
jmp rax
proc_q$2_ω:
mov rax, [rbp + 992]
lea rsp, [rbp + 1008]
mov rbp, [rbp + 1000]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "sel/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sel$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1440
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "q10/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_q10$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1904
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "test/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_test$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1120
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "nd/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nd$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1760
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "safe/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_safe$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1280
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "perm/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_perm$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "pair/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_pair$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1584
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "q/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_q$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 976
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain371_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain371_n1_α
 xchain371_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain371_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain371_n2_α
 xchain371_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx376_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx376_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx376_3]
 lea rdx, [rip + .Lx376_4]
 jmp rax
.Lx376_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx376_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx376_2
.Lx376_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx376_2
.Lx376_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx376_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx376_2
.Lx376_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx376_2
.Lx376_1:
 call rt_faildescr@PLT
.Lx376_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain371_n4_α
 jmp xchain371_n3_α
 xchain371_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "q10/1"
# IR_VAR
 xchain371_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain371_n5_α
 xchain371_n4_α:
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
 xchain371_n4_β:
 jmp main_ω
 xchain371_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn381: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain371_n2_β
 jmp xchain371_n6_α
 xchain371_n5_β:
 jmp xchain371_n2_β
# IR_LIT_STRING
 xchain371_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain371_n7_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string ""
 xchain371_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn384: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn384]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain371_n2_β
 jmp xchain371_n8_α
 xchain371_n7_β:
 jmp xchain371_n2_β
# IR_MOVE_LABEL
 xchain371_n8_α:
 lea rax, [rip + xchain371_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain371_n9_α:
 jmp qword ptr [rbp + 32]
 xchain371_n9_β:
 jmp main_ω
main_β:
jmp xchain371_n9_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 392]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 392]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
