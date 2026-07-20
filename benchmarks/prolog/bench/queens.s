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
lea rax, [rip + xchain0_n18_β]
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
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n3_α
# IR_VAR_REF
 xchain0_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n4_α
 xchain0_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1200]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain0_n7_α
 xchain0_n6_α:
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
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n10_α
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n13_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n15_α
 xchain0_n14_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+720]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n17_α
 xchain0_n15_α:
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
 je xchain0_n6_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
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
 xchain0_n17_β:
 jmp proc_sel$3_ω
# IR_SUSPEND yield+resume
 xchain0_n18_α:
 lea rax, [rip + xchain0_n18_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$3_γ
 xchain0_n18_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n21_α
 xchain0_n21_α:
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
 je xchain0_n17_α
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n24_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n17_α
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
 je xchain0_n17_α
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
  .globl proc_queens$3_α
proc_queens$3_α:
#=======================================================================================================================
    .global proc_queens$3_α
    .global proc_queens$3_β
    .global proc_queens$3_γ
    .global proc_queens$3_ω
  sub rsp, 1808
  mov [rsp + 1784], rcx
  mov [rsp + 1792], rdx
  mov [rsp + 1800], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1688], rsp
  mov rdi, rsp
  mov esi, 1664
  mov edx, 1776
  call rt_jmp_frame_lexprep2@PLT
proc_queens$3_α_body:
lea rax, [rip + xchain52_n17_β]
mov qword ptr [rbp + 1664], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens$3_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_queens$3_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain52_n2_α
# IR_LIT_STRING
 xchain52_n2_α:
 mov qword ptr [rbp + 1632], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain52_n3_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "[]"
 xchain52_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1552]
 mov rsi, qword ptr [rip + .Lx57_2]
 jmp .Lx57_3
.Lx57_2:
 .quad .Lx57_2_s
.Lx57_2_s:
 .string "[]"
.Lx57_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain52_n6_α
 xchain52_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1248]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je proc_queens$3_ω
 jmp xchain52_n7_α
 xchain52_n5_β:
 jmp proc_queens$3_ω
# IR_VAR_REF
 xchain52_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain52_n8_α
# IR_VAR_REF
 xchain52_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain52_n9_α
 xchain52_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1424]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n10_α
 xchain52_n8_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain52_n11_α
# IR_VAR_REF
 xchain52_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain52_n12_α
 xchain52_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n13_α
 xchain52_n11_β:
 jmp xchain52_n14_α
# IR_VAR_REF
 xchain52_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain52_n15_α
# IR_VAR_REF
 xchain52_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain52_n16_α
 xchain52_n14_α:
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
 je proc_queens$3_ω
 jmp proc_queens$3_ω
 xchain52_n14_β:
 jmp proc_queens$3_ω
 xchain52_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n17_α
 xchain52_n15_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain52_n18_α
# IR_SUSPEND yield+resume
 xchain52_n17_α:
 lea rax, [rip + xchain52_n17_β]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$3_γ
 xchain52_n17_β:
 jmp xchain52_n5_α
 xchain52_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n19_α
 xchain52_n18_β:
 jmp xchain52_n14_α
# IR_VAR_REF
 xchain52_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain52_n20_α
# IR_VAR_REF
 xchain52_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain52_n21_α
 xchain52_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n22_α
 xchain52_n21_β:
 jmp xchain52_n14_α
# IR_VAR_REF
 xchain52_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain52_n23_α
# IR_VAR_REF
 xchain52_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain52_n24_α
# IR_VAR_REF
 xchain52_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain52_n25_α
 xchain52_n25_α:
 mov qword ptr [rbp + 720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx94_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx94_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx94_3]
 lea rdx, [rip + .Lx94_4]
 jmp rax
.Lx94_3:
 mov qword ptr [rbp + 728], rsp
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx94_5
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx94_2
.Lx94_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx94_2
.Lx94_4:
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx94_6
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx94_2
.Lx94_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx94_2
.Lx94_1:
 call rt_faildescr@PLT
.Lx94_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n26_α
 xchain52_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 728]
 jmp qword ptr [rsp]
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain52_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain52_n27_α
# IR_VAR_REF
 xchain52_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain52_n28_α
 xchain52_n28_α:
 mov qword ptr [rbp + 560], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx100_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx100_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx100_3]
 lea rdx, [rip + .Lx100_4]
 jmp rax
.Lx100_3:
 mov qword ptr [rbp + 568], rsp
 mov rax, qword ptr [rbp + 560]
 test rax, rax
 jne .Lx100_5
 mov qword ptr [rbp + 560], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx100_2
.Lx100_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx100_2
.Lx100_4:
 mov rax, qword ptr [rbp + 560]
 test rax, rax
 jne .Lx100_6
 mov qword ptr [rbp + 560], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx100_2
.Lx100_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx100_2
.Lx100_1:
 call rt_faildescr@PLT
.Lx100_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain52_n25_β
 jmp xchain52_n29_α
 xchain52_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 568]
 jmp qword ptr [rsp]
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain52_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain52_n30_α
# IR_LIT_STRING
 xchain52_n30_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain52_n31_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "."
# IR_VAR_REF
 xchain52_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain52_n32_α
# IR_VAR_REF
 xchain52_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain52_n33_α
 xchain52_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+400]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+416]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n34_α
 xchain52_n33_β:
 jmp xchain52_n14_α
# IR_VAR_REF
 xchain52_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain52_n35_α
 xchain52_n35_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx112_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx112_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx112_3]
 lea rdx, [rip + .Lx112_4]
 jmp rax
.Lx112_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx112_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx112_2
.Lx112_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx112_2
.Lx112_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx112_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx112_2
.Lx112_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx112_2
.Lx112_1:
 call rt_faildescr@PLT
.Lx112_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain52_n28_β
 jmp xchain52_n36_α
 xchain52_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain52_n36_α:
 lea rax, [rip + xchain52_n36_β]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$3_γ
 xchain52_n36_β:
 jmp xchain52_n35_β
proc_queens$3_res:
add rsp, 8
pop rbp
proc_queens$3_β:
jmp qword ptr [rbp + 1664]
proc_queens$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$3_res]
push rax
mov rax, [rbp + 1784]
mov rbp, [rbp + 1800]
jmp rax
proc_queens$3_ω:
mov rax, [rbp + 1792]
lea rsp, [rbp + 1808]
mov rbp, [rbp + 1800]
jmp rax
  .globl proc_queens$2_α
proc_queens$2_α:
#=======================================================================================================================
    .global proc_queens$2_α
    .global proc_queens$2_β
    .global proc_queens$2_γ
    .global proc_queens$2_ω
  sub rsp, 896
  mov [rsp + 872], rcx
  mov [rsp + 880], rdx
  mov [rsp + 888], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 808], rsp
  mov rdi, rsp
  mov esi, 784
  mov edx, 864
  call rt_jmp_frame_lexprep2@PLT
proc_queens$2_α_body:
lea rax, [rip + xchain115_n16_β]
mov qword ptr [rbp + 784], rax
 xchain115_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp xchain115_n1_α
 xchain115_n0_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain115_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain115_n2_α
# IR_VAR_REF
 xchain115_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 848]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain115_n3_α
 xchain115_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain115_n5_α
 jmp xchain115_n4_α
 xchain115_n3_β:
 jmp xchain115_n5_α
# IR_VAR_REF
 xchain115_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain115_n6_α
 xchain115_n5_α:
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
 je proc_queens$2_ω
 jmp proc_queens$2_ω
 xchain115_n5_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain115_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain115_n7_α
 xchain115_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain115_n5_α
 jmp xchain115_n8_α
 xchain115_n7_β:
 jmp xchain115_n5_α
# IR_LIT_INTEGER
 xchain115_n8_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain115_n9_α
.Lx128_0:
 .quad 1
# IR_VAR_REF
 xchain115_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 848]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain115_n10_α
# IR_VAR_REF
 xchain115_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain115_n11_α
 xchain115_n11_α:
 mov edi, 3
 lea rsi, [rbp + 432]
 lea rdx, [rbp + 464]
 lea rcx, [rbp + 496]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx134_1
 lea rcx, [rip + .Lx134_3]
 lea rdx, [rip + .Lx134_4]
 jmp rax
.Lx134_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx134_2
.Lx134_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx134_2
.Lx134_1:
 call rt_faildescr@PLT
.Lx134_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain115_n5_α
 jmp xchain115_n12_α
 xchain115_n11_β:
 jmp xchain115_n5_α
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "range/3"
# IR_VAR_REF
 xchain115_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain115_n13_α
# IR_LIT_STRING
 xchain115_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain115_n14_α
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "[]"
# IR_VAR_REF
 xchain115_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain115_n15_α
 xchain115_n15_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx141_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx141_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx141_3]
 lea rdx, [rip + .Lx141_4]
 jmp rax
.Lx141_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx141_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx141_2
.Lx141_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx141_2
.Lx141_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx141_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx141_2
.Lx141_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx141_2
.Lx141_1:
 call rt_faildescr@PLT
.Lx141_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain115_n11_β
 jmp xchain115_n16_α
 xchain115_n15_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain115_n16_α:
 lea rax, [rip + xchain115_n16_β]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2_γ
 xchain115_n16_β:
 jmp xchain115_n15_β
proc_queens$2_res:
add rsp, 8
pop rbp
proc_queens$2_β:
jmp qword ptr [rbp + 784]
proc_queens$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2_res]
push rax
mov rax, [rbp + 872]
mov rbp, [rbp + 888]
jmp rax
proc_queens$2_ω:
mov rax, [rbp + 880]
lea rsp, [rbp + 896]
mov rbp, [rbp + 888]
jmp rax
  .globl proc_range$3_α
proc_range$3_α:
#=======================================================================================================================
    .global proc_range$3_α
    .global proc_range$3_β
    .global proc_range$3_γ
    .global proc_range$3_ω
  sub rsp, 1824
  mov [rsp + 1800], rcx
  mov [rsp + 1808], rdx
  mov [rsp + 1816], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1720], rsp
  mov rdi, rsp
  mov esi, 1712
  mov edx, 1792
  call rt_jmp_frame_lexprep2@PLT
proc_range$3_α_body:
 xchain144_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_range$3_ω
 jmp xchain144_n1_α
 xchain144_n0_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain144_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain144_n2_α
# IR_VAR_REF
 xchain144_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain144_n3_α
 xchain144_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain144_n5_α
 jmp xchain144_n4_α
 xchain144_n3_β:
 jmp xchain144_n5_α
# IR_VAR_REF
 xchain144_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain144_n6_α
 xchain144_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1152]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je proc_range$3_ω
 jmp xchain144_n7_α
 xchain144_n5_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain144_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain144_n8_α
# IR_VAR_REF
 xchain144_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain144_n9_α
 xchain144_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain144_n5_α
 jmp xchain144_n10_α
 xchain144_n8_β:
 jmp xchain144_n5_α
# IR_VAR_REF
 xchain144_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain144_n11_α
# IR_VAR_REF
 xchain144_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain144_n12_α
 xchain144_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n13_α
 xchain144_n11_β:
 jmp xchain144_n14_α
# IR_LIT_STRING
 xchain144_n12_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain144_n15_α
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "."
# IR_VAR_REF
 xchain144_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain144_n16_α
 xchain144_n14_α:
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
 je proc_range$3_ω
 jmp proc_range$3_ω
 xchain144_n14_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain144_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain144_n17_α
# IR_VAR_REF
 xchain144_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain144_n18_α
# IR_LIT_STRING
 xchain144_n17_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain144_n19_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "[]"
 xchain144_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n20_α
 xchain144_n18_β:
 jmp xchain144_n14_α
 xchain144_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1376]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1280] -> [zr+1392]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain144_n5_α
 jmp xchain144_n21_α
 xchain144_n19_β:
 jmp xchain144_n5_α
# IR_VAR_REF
 xchain144_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain144_n22_α
 xchain144_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1216]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain144_n5_α
 jmp xchain144_n23_α
 xchain144_n21_β:
 jmp xchain144_n5_α
# IR_VAR_REF
 xchain144_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain144_n24_α
 xchain144_n23_α:
# IR_CUT
 jmp xchain144_n25_α
# IR_VAR_REF
 xchain144_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain144_n26_α
# IR_MOVE_LABEL
 xchain144_n25_α:
 lea rax, [rip + xchain144_n5_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_range$3_γ
 xchain144_n26_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+752]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n28_α
 xchain144_n26_β:
 jmp xchain144_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain144_n27_α:
 jmp qword ptr [rbp + 80]
 xchain144_n27_β:
 jmp proc_range$3_ω
# IR_VAR
 xchain144_n28_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 648], rax
 jmp xchain144_n29_α
# IR_VAR
 xchain144_n29_α:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 680], rax
 jmp xchain144_n30_α
 xchain144_n30_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_lt (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_cmp_lt@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n31_α
 xchain144_n30_β:
 jmp xchain144_n14_α
# IR_VAR_REF
 xchain144_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain144_n32_α
# IR_VAR
 xchain144_n32_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 520], rax
 jmp xchain144_n33_α
# IR_LIT_INTEGER
 xchain144_n33_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain144_n34_α
.Lx197_0:
 .quad 1
 xchain144_n34_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n35_α
 xchain144_n34_β:
 jmp xchain144_n14_α
 xchain144_n35_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n36_α
 xchain144_n35_β:
 jmp xchain144_n14_α
# IR_VAR_REF
 xchain144_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain144_n37_α
# IR_VAR_REF
 xchain144_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain144_n38_α
# IR_VAR_REF
 xchain144_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain144_n39_α
 xchain144_n39_α:
 mov edi, 3
 lea rsi, [rbp + 256]
 lea rdx, [rbp + 288]
 lea rcx, [rbp + 320]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx207_1
 lea rcx, [rip + .Lx207_3]
 lea rdx, [rip + .Lx207_4]
 jmp rax
.Lx207_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx207_2
.Lx207_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx207_2
.Lx207_1:
 call rt_faildescr@PLT
.Lx207_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain144_n14_α
 jmp xchain144_n40_α
 xchain144_n39_β:
 jmp xchain144_n14_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "range/3"
# IR_MOVE_LABEL
 xchain144_n40_α:
 lea rax, [rip + xchain144_n39_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_range$3_γ
proc_range$3_res:
add rsp, 8
pop rbp
proc_range$3_β:
jmp xchain144_n27_α
proc_range$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1800]
lea rsp, [rbp + 1824]
mov rbp, [rbp + 1816]
jmp rax
proc_range$3_ω:
mov rax, [rbp + 1808]
lea rsp, [rbp + 1824]
mov rbp, [rbp + 1816]
jmp rax
  .globl proc_not_attack$2_α
proc_not_attack$2_α:
#=======================================================================================================================
    .global proc_not_attack$2_α
    .global proc_not_attack$2_β
    .global proc_not_attack$2_γ
    .global proc_not_attack$2_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 608
  mov edx, 672
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2_α_body:
lea rax, [rip + xchain210_n12_β]
mov qword ptr [rbp + 608], rax
 xchain210_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp xchain210_n1_α
 xchain210_n0_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain210_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain210_n2_α
# IR_VAR_REF
 xchain210_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain210_n3_α
 xchain210_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain210_n5_α
 jmp xchain210_n4_α
 xchain210_n3_β:
 jmp xchain210_n5_α
# IR_VAR_REF
 xchain210_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain210_n6_α
 xchain210_n5_α:
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
 je proc_not_attack$2_ω
 jmp proc_not_attack$2_ω
 xchain210_n5_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain210_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain210_n7_α
 xchain210_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain210_n5_α
 jmp xchain210_n8_α
 xchain210_n7_β:
 jmp xchain210_n5_α
# IR_VAR_REF
 xchain210_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain210_n9_α
# IR_VAR_REF
 xchain210_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain210_n10_α
# IR_LIT_INTEGER
 xchain210_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain210_n11_α
.Lx227_0:
 .quad 1
 xchain210_n11_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx229_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx229_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx229_3]
 lea rdx, [rip + .Lx229_4]
 jmp rax
.Lx229_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx229_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx229_2
.Lx229_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx229_2
.Lx229_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx229_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx229_2
.Lx229_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx229_2
.Lx229_1:
 call rt_faildescr@PLT
.Lx229_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain210_n5_α
 jmp xchain210_n12_α
 xchain210_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain210_n12_α:
 lea rax, [rip + xchain210_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2_γ
 xchain210_n12_β:
 jmp xchain210_n11_β
proc_not_attack$2_res:
add rsp, 8
pop rbp
proc_not_attack$2_β:
jmp qword ptr [rbp + 608]
proc_not_attack$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_not_attack$2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_not_attack$3_α
proc_not_attack$3_α:
#=======================================================================================================================
    .global proc_not_attack$3_α
    .global proc_not_attack$3_β
    .global proc_not_attack$3_γ
    .global proc_not_attack$3_ω
  sub rsp, 2048
  mov [rsp + 2024], rcx
  mov [rsp + 2032], rdx
  mov [rsp + 2040], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1928], rsp
  mov rdi, rsp
  mov esi, 1904
  mov edx, 2016
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$3_α_body:
lea rax, [rip + xchain232_n17_β]
mov qword ptr [rbp + 1904], rax
 xchain232_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain232_n1_α
 xchain232_n0_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain232_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain232_n2_α
# IR_LIT_STRING
 xchain232_n2_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain232_n3_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "[]"
 xchain232_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1792]
 mov rsi, qword ptr [rip + .Lx237_2]
 jmp .Lx237_3
.Lx237_2:
 .quad .Lx237_2_s
.Lx237_2_s:
 .string "[]"
.Lx237_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain232_n5_α
 jmp xchain232_n4_α
 xchain232_n3_β:
 jmp xchain232_n5_α
# IR_VAR_REF
 xchain232_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain232_n6_α
 xchain232_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1488]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain232_n7_α
 xchain232_n5_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain232_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain232_n8_α
# IR_VAR_REF
 xchain232_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain232_n9_α
 xchain232_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain232_n5_α
 jmp xchain232_n10_α
 xchain232_n8_β:
 jmp xchain232_n5_α
# IR_VAR_REF
 xchain232_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain232_n11_α
# IR_VAR_REF
 xchain232_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain232_n12_α
# IR_VAR_REF
 xchain232_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain232_n13_α
# IR_VAR_REF
 xchain232_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain232_n14_α
 xchain232_n13_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1344]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n15_α
 xchain232_n13_β:
 jmp xchain232_n16_α
 xchain232_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain232_n5_α
 jmp xchain232_n17_α
 xchain232_n14_β:
 jmp xchain232_n5_α
# IR_VAR_REF
 xchain232_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain232_n18_α
 xchain232_n16_α:
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
 je proc_not_attack$3_ω
 jmp proc_not_attack$3_ω
 xchain232_n16_β:
 jmp proc_not_attack$3_ω
# IR_SUSPEND yield+resume
 xchain232_n17_α:
 lea rax, [rip + xchain232_n17_β]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$3_γ
 xchain232_n17_β:
 jmp xchain232_n5_α
# IR_VAR_REF
 xchain232_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain232_n19_α
 xchain232_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n20_α
 xchain232_n19_β:
 jmp xchain232_n16_α
# IR_VAR_REF
 xchain232_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain232_n21_α
# IR_VAR_REF
 xchain232_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain232_n22_α
 xchain232_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n23_α
 xchain232_n22_β:
 jmp xchain232_n16_α
# IR_VAR
 xchain232_n23_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 888], rax
 jmp xchain232_n24_α
# IR_VAR
 xchain232_n24_α:
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 984], rax
 jmp xchain232_n25_α
# IR_VAR
 xchain232_n25_α:
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1016], rax
 jmp xchain232_n26_α
 xchain232_n26_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n27_α
 xchain232_n26_β:
 jmp xchain232_n16_α
 xchain232_n27_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n28_α
 xchain232_n27_β:
 jmp xchain232_n16_α
# IR_VAR
 xchain232_n28_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 664], rax
 jmp xchain232_n29_α
# IR_VAR
 xchain232_n29_α:
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 760], rax
 jmp xchain232_n30_α
# IR_VAR
 xchain232_n30_α:
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 792], rax
 jmp xchain232_n31_α
 xchain232_n31_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n32_α
 xchain232_n31_β:
 jmp xchain232_n16_α
 xchain232_n32_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n33_α
 xchain232_n32_β:
 jmp xchain232_n16_α
# IR_VAR_REF
 xchain232_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain232_n34_α
# IR_VAR
 xchain232_n34_α:
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 536], rax
 jmp xchain232_n35_α
# IR_LIT_INTEGER
 xchain232_n35_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain232_n36_α
.Lx289_0:
 .quad 1
 xchain232_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+496]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n37_α
 xchain232_n36_β:
 jmp xchain232_n16_α
 xchain232_n37_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n38_α
 xchain232_n37_β:
 jmp xchain232_n16_α
# IR_VAR_REF
 xchain232_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain232_n39_α
# IR_VAR_REF
 xchain232_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain232_n40_α
# IR_VAR_REF
 xchain232_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain232_n41_α
 xchain232_n41_α:
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
 mov rdi, qword ptr [rip + .Lx299_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx299_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx299_3]
 lea rdx, [rip + .Lx299_4]
 jmp rax
.Lx299_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx299_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx299_2
.Lx299_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx299_2
.Lx299_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx299_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx299_2
.Lx299_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx299_2
.Lx299_1:
 call rt_faildescr@PLT
.Lx299_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain232_n16_α
 jmp xchain232_n42_α
 xchain232_n41_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain232_n42_α:
 lea rax, [rip + xchain232_n42_β]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$3_γ
 xchain232_n42_β:
 jmp xchain232_n41_β
proc_not_attack$3_res:
add rsp, 8
pop rbp
proc_not_attack$3_β:
jmp qword ptr [rbp + 1904]
proc_not_attack$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$3_res]
push rax
mov rax, [rbp + 2024]
mov rbp, [rbp + 2040]
jmp rax
proc_not_attack$3_ω:
mov rax, [rbp + 2032]
lea rsp, [rbp + 2048]
mov rbp, [rbp + 2040]
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
  .Lstartup_pname1: .string "queens/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1776
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_queens$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 864
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "range/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_range$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1792
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_not_attack$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_not_attack$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2016
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
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
  mov qword ptr [rsp + 440], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain302_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain302_n1_α
 xchain302_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain302_n1_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain302_n2_α
.Lx304_0:
 .quad 16
# IR_VAR_REF
 xchain302_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain302_n3_α
 xchain302_n3_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx308_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx308_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx308_3]
 lea rdx, [rip + .Lx308_4]
 jmp rax
.Lx308_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx308_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx308_2
.Lx308_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx308_2
.Lx308_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx308_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx308_2
.Lx308_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx308_2
.Lx308_1:
 call rt_faildescr@PLT
.Lx308_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain302_n5_α
 jmp xchain302_n4_α
 xchain302_n3_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "queens/2"
# IR_VAR
 xchain302_n4_α:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 264], rax
 jmp xchain302_n6_α
 xchain302_n5_α:
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
 xchain302_n5_β:
 jmp main_ω
 xchain302_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn313: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn313]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain302_n3_β
 jmp xchain302_n7_α
 xchain302_n6_β:
 jmp xchain302_n3_β
# IR_LIT_STRING
 xchain302_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain302_n8_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string ""
 xchain302_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn316: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn316]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain302_n3_β
 jmp xchain302_n9_α
 xchain302_n8_β:
 jmp xchain302_n3_β
# IR_MOVE_LABEL
 xchain302_n9_α:
 lea rax, [rip + xchain302_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain302_n10_α:
 jmp qword ptr [rbp + 32]
 xchain302_n10_β:
 jmp main_ω
main_β:
jmp xchain302_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 440]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 440]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
