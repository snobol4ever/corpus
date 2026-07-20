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
  .globl proc_queens$2_α
proc_queens$2_α:
#=======================================================================================================================
    .global proc_queens$2_α
    .global proc_queens$2_β
    .global proc_queens$2_γ
    .global proc_queens$2_ω
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
proc_queens$2_α_body:
lea rax, [rip + xchain52_n12_β]
mov qword ptr [rbp + 608], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
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
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain52_n6_α
 xchain52_n5_α:
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
 xchain52_n5_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain52_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain52_n7_α
 xchain52_n7_α:
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
 je xchain52_n5_α
 jmp xchain52_n8_α
 xchain52_n7_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain52_n9_α
# IR_LIT_STRING
 xchain52_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain52_n10_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "[]"
# IR_VAR_REF
 xchain52_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain52_n11_α
 xchain52_n11_α:
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
 mov rdi, qword ptr [rip + .Lx71_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx71_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx71_3]
 lea rdx, [rip + .Lx71_4]
 jmp rax
.Lx71_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx71_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx71_2
.Lx71_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx71_2
.Lx71_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx71_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx71_2
.Lx71_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx71_2
.Lx71_1:
 call rt_faildescr@PLT
.Lx71_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n12_α
 xchain52_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain52_n12_α:
 lea rax, [rip + xchain52_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2_γ
 xchain52_n12_β:
 jmp xchain52_n11_β
proc_queens$2_res:
add rsp, 8
pop rbp
proc_queens$2_β:
jmp qword ptr [rbp + 608]
proc_queens$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_queens$2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_not_attack$2_α
proc_not_attack$2_α:
#=======================================================================================================================
    .global proc_not_attack$2_α
    .global proc_not_attack$2_β
    .global proc_not_attack$2_γ
    .global proc_not_attack$2_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 600], rsp
  mov rdi, rsp
  mov esi, 592
  mov edx, 640
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2_α_body:
 xchain74_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp xchain74_n1_α
 xchain74_n0_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain74_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain74_n2_α
# IR_VAR_REF
 xchain74_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain74_n3_α
 xchain74_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain74_n5_α
 jmp xchain74_n4_α
 xchain74_n3_β:
 jmp xchain74_n5_α
# IR_VAR_REF
 xchain74_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain74_n6_α
 xchain74_n5_α:
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
 xchain74_n5_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain74_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain74_n7_α
 xchain74_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain74_n5_α
 jmp xchain74_n8_α
 xchain74_n7_β:
 jmp xchain74_n5_α
# IR_VAR_REF
 xchain74_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain74_n9_α
# IR_VAR_REF
 xchain74_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain74_n10_α
# IR_LIT_INTEGER
 xchain74_n10_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain74_n11_α
.Lx91_0:
 .quad 1
 xchain74_n11_α:
 mov edi, 3
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 272]
 lea rcx, [rbp + 304]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx93_1
 lea rcx, [rip + .Lx93_3]
 lea rdx, [rip + .Lx93_4]
 jmp rax
.Lx93_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx93_2
.Lx93_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx93_2
.Lx93_1:
 call rt_faildescr@PLT
.Lx93_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain74_n5_α
 jmp xchain74_n12_α
 xchain74_n11_β:
 jmp xchain74_n5_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "not_attack/3"
# IR_MOVE_LABEL
 xchain74_n12_α:
 lea rax, [rip + xchain74_n11_β]
 mov qword ptr [rbp + 64], rax
 jmp proc_not_attack$2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain74_n13_α:
 jmp qword ptr [rbp + 64]
 xchain74_n13_β:
 jmp proc_not_attack$2_ω
proc_not_attack$2_res:
add rsp, 8
pop rbp
proc_not_attack$2_β:
jmp xchain74_n13_α
proc_not_attack$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_not_attack$2_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_not_attack$3_α
proc_not_attack$3_α:
#=======================================================================================================================
    .global proc_not_attack$3_α
    .global proc_not_attack$3_β
    .global proc_not_attack$3_γ
    .global proc_not_attack$3_ω
  sub rsp, 2016
  mov [rsp + 1992], rcx
  mov [rsp + 2000], rdx
  mov [rsp + 2008], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1896], rsp
  mov rdi, rsp
  mov esi, 1888
  mov edx, 1984
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$3_α_body:
 xchain98_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain98_n1_α
 xchain98_n0_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain98_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain98_n2_α
# IR_LIT_STRING
 xchain98_n2_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain98_n3_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "[]"
 xchain98_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1776]
 mov rsi, qword ptr [rip + .Lx103_2]
 jmp .Lx103_3
.Lx103_2:
 .quad .Lx103_2_s
.Lx103_2_s:
 .string "[]"
.Lx103_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain98_n5_α
 jmp xchain98_n4_α
 xchain98_n3_β:
 jmp xchain98_n5_α
# IR_VAR_REF
 xchain98_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain98_n6_α
 xchain98_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1472]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain98_n7_α
 xchain98_n5_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain98_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain98_n8_α
# IR_VAR_REF
 xchain98_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain98_n9_α
 xchain98_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1664]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain98_n5_α
 jmp xchain98_n10_α
 xchain98_n8_β:
 jmp xchain98_n5_α
# IR_VAR_REF
 xchain98_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain98_n11_α
# IR_VAR_REF
 xchain98_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain98_n12_α
# IR_VAR_REF
 xchain98_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain98_n13_α
# IR_VAR_REF
 xchain98_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain98_n14_α
 xchain98_n13_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1328]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n15_α
 xchain98_n13_β:
 jmp xchain98_n16_α
 xchain98_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain98_n5_α
 jmp xchain98_n17_α
 xchain98_n14_β:
 jmp xchain98_n5_α
# IR_VAR_REF
 xchain98_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain98_n18_α
 xchain98_n16_α:
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
 xchain98_n16_β:
 jmp proc_not_attack$3_ω
 xchain98_n17_α:
# IR_CUT
 jmp xchain98_n19_α
# IR_VAR_REF
 xchain98_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain98_n20_α
# IR_MOVE_LABEL
 xchain98_n19_α:
 lea rax, [rip + xchain98_n5_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_not_attack$3_γ
 xchain98_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n22_α
 xchain98_n20_β:
 jmp xchain98_n16_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain98_n21_α:
 jmp qword ptr [rbp + 80]
 xchain98_n21_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain98_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain98_n23_α
# IR_VAR_REF
 xchain98_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain98_n24_α
 xchain98_n24_α:
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
 je xchain98_n16_α
 jmp xchain98_n25_α
 xchain98_n24_β:
 jmp xchain98_n16_α
# IR_VAR
 xchain98_n25_α:
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 872], rax
 jmp xchain98_n26_α
# IR_VAR
 xchain98_n26_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 968], rax
 jmp xchain98_n27_α
# IR_VAR
 xchain98_n27_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1000], rax
 jmp xchain98_n28_α
 xchain98_n28_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n29_α
 xchain98_n28_β:
 jmp xchain98_n16_α
 xchain98_n29_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n30_α
 xchain98_n29_β:
 jmp xchain98_n16_α
# IR_VAR
 xchain98_n30_α:
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 648], rax
 jmp xchain98_n31_α
# IR_VAR
 xchain98_n31_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 744], rax
 jmp xchain98_n32_α
# IR_VAR
 xchain98_n32_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 776], rax
 jmp xchain98_n33_α
 xchain98_n33_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n34_α
 xchain98_n33_β:
 jmp xchain98_n16_α
 xchain98_n34_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n35_α
 xchain98_n34_β:
 jmp xchain98_n16_α
# IR_VAR_REF
 xchain98_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain98_n36_α
# IR_VAR
 xchain98_n36_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 520], rax
 jmp xchain98_n37_α
# IR_LIT_INTEGER
 xchain98_n37_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain98_n38_α
.Lx158_0:
 .quad 1
 xchain98_n38_α:
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
 je xchain98_n16_α
 jmp xchain98_n39_α
 xchain98_n38_β:
 jmp xchain98_n16_α
 xchain98_n39_α:
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
 je xchain98_n16_α
 jmp xchain98_n40_α
 xchain98_n39_β:
 jmp xchain98_n16_α
# IR_VAR_REF
 xchain98_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain98_n41_α
# IR_VAR_REF
 xchain98_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain98_n42_α
# IR_VAR_REF
 xchain98_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain98_n43_α
 xchain98_n43_α:
 mov edi, 3
 lea rsi, [rbp + 256]
 lea rdx, [rbp + 288]
 lea rcx, [rbp + 320]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx168_1
 lea rcx, [rip + .Lx168_3]
 lea rdx, [rip + .Lx168_4]
 jmp rax
.Lx168_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx168_2
.Lx168_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx168_2
.Lx168_1:
 call rt_faildescr@PLT
.Lx168_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain98_n16_α
 jmp xchain98_n44_α
 xchain98_n43_β:
 jmp xchain98_n16_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "not_attack/3"
# IR_MOVE_LABEL
 xchain98_n44_α:
 lea rax, [rip + xchain98_n43_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_not_attack$3_γ
proc_not_attack$3_res:
add rsp, 8
pop rbp
proc_not_attack$3_β:
jmp xchain98_n21_α
proc_not_attack$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1992]
lea rsp, [rbp + 2016]
mov rbp, [rbp + 2008]
jmp rax
proc_not_attack$3_ω:
mov rax, [rbp + 2000]
lea rsp, [rbp + 2016]
mov rbp, [rbp + 2008]
jmp rax
  .globl proc_queens_2$3_α
proc_queens_2$3_α:
#=======================================================================================================================
    .global proc_queens_2$3_α
    .global proc_queens_2$3_β
    .global proc_queens_2$3_γ
    .global proc_queens_2$3_ω
  sub rsp, 2000
  mov [rsp + 1976], rcx
  mov [rsp + 1984], rdx
  mov [rsp + 1992], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1864], rsp
  mov rdi, rsp
  mov esi, 1840
  mov edx, 1968
  call rt_jmp_frame_lexprep2@PLT
proc_queens_2$3_α_body:
lea rax, [rip + xchain171_n17_β]
mov qword ptr [rbp + 1840], rax
 xchain171_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp xchain171_n1_α
 xchain171_n0_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain171_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain171_n2_α
# IR_LIT_STRING
 xchain171_n2_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain171_n3_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "[]"
 xchain171_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1728]
 mov rsi, qword ptr [rip + .Lx176_2]
 jmp .Lx176_3
.Lx176_2:
 .quad .Lx176_2_s
.Lx176_2_s:
 .string "[]"
.Lx176_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain171_n5_α
 jmp xchain171_n4_α
 xchain171_n3_β:
 jmp xchain171_n5_α
# IR_VAR_REF
 xchain171_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain171_n6_α
 xchain171_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1424]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp xchain171_n7_α
 xchain171_n5_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain171_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain171_n8_α
# IR_VAR_REF
 xchain171_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain171_n9_α
 xchain171_n8_α:
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
 je xchain171_n5_α
 jmp xchain171_n10_α
 xchain171_n8_β:
 jmp xchain171_n5_α
# IR_VAR_REF
 xchain171_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain171_n11_α
# IR_VAR_REF
 xchain171_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain171_n12_α
# IR_VAR_REF
 xchain171_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain171_n13_α
# IR_VAR_REF
 xchain171_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain171_n14_α
 xchain171_n13_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1280]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain171_n16_α
 jmp xchain171_n15_α
 xchain171_n13_β:
 jmp xchain171_n16_α
 xchain171_n14_α:
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
 je xchain171_n5_α
 jmp xchain171_n17_α
 xchain171_n14_β:
 jmp xchain171_n5_α
# IR_VAR_REF
 xchain171_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain171_n18_α
 xchain171_n16_α:
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
 je proc_queens_2$3_ω
 jmp proc_queens_2$3_ω
 xchain171_n16_β:
 jmp proc_queens_2$3_ω
# IR_SUSPEND yield+resume
 xchain171_n17_α:
 lea rax, [rip + xchain171_n17_β]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$3_γ
 xchain171_n17_β:
 jmp xchain171_n5_α
# IR_VAR_REF
 xchain171_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain171_n19_α
 xchain171_n19_α:
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
 je xchain171_n16_α
 jmp xchain171_n20_α
 xchain171_n19_β:
 jmp xchain171_n16_α
# IR_VAR_REF
 xchain171_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain171_n21_α
# IR_VAR_REF
 xchain171_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain171_n22_α
 xchain171_n22_α:
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
 je xchain171_n16_α
 jmp xchain171_n23_α
 xchain171_n22_β:
 jmp xchain171_n16_α
# IR_VAR_REF
 xchain171_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain171_n24_α
# IR_LIT_STRING
 xchain171_n24_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain171_n25_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
# IR_VAR_REF
 xchain171_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain171_n26_α
# IR_VAR_REF
 xchain171_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain171_n27_α
 xchain171_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+864]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+880]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain171_n16_α
 jmp xchain171_n28_α
 xchain171_n27_β:
 jmp xchain171_n16_α
# IR_VAR_REF
 xchain171_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1872]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain171_n29_α
 xchain171_n29_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx219_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx219_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx219_3]
 lea rdx, [rip + .Lx219_4]
 jmp rax
.Lx219_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx219_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx219_2
.Lx219_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx219_2
.Lx219_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx219_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx219_2
.Lx219_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx219_2
.Lx219_1:
 call rt_faildescr@PLT
.Lx219_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain171_n16_α
 jmp xchain171_n30_α
 xchain171_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain171_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain171_n31_α
# IR_VAR_REF
 xchain171_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain171_n32_α
 xchain171_n32_α:
 mov edi, 2
 lea rsi, [rbp + 576]
 lea rdx, [rbp + 608]
 call rt_proc_call_open_det2@PLT
 test rax, rax
 je .Lx225_1
 lea rcx, [rip + .Lx225_3]
 lea rdx, [rip + .Lx225_4]
 jmp rax
.Lx225_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx225_2
.Lx225_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx225_2
.Lx225_1:
 call rt_faildescr@PLT
.Lx225_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain171_n29_β
 jmp xchain171_n33_α
 xchain171_n32_β:
 jmp xchain171_n29_β
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain171_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1872]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain171_n34_α
# IR_LIT_STRING
 xchain171_n34_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain171_n35_α
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "."
# IR_VAR_REF
 xchain171_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain171_n36_α
# IR_VAR_REF
 xchain171_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain171_n37_α
 xchain171_n37_α:
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
 je xchain171_n16_α
 jmp xchain171_n38_α
 xchain171_n37_β:
 jmp xchain171_n16_α
# IR_VAR_REF
 xchain171_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain171_n39_α
 xchain171_n39_α:
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
 mov rdi, qword ptr [rip + .Lx237_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx237_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx237_3]
 lea rdx, [rip + .Lx237_4]
 jmp rax
.Lx237_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx237_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx237_2
.Lx237_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx237_2
.Lx237_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx237_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx237_2
.Lx237_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx237_2
.Lx237_1:
 call rt_faildescr@PLT
.Lx237_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain171_n32_β
 jmp xchain171_n40_α
 xchain171_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain171_n40_α:
 lea rax, [rip + xchain171_n40_β]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$3_γ
 xchain171_n40_β:
 jmp xchain171_n39_β
proc_queens_2$3_res:
add rsp, 8
pop rbp
proc_queens_2$3_β:
jmp qword ptr [rbp + 1840]
proc_queens_2$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens_2$3_res]
push rax
mov rax, [rbp + 1976]
mov rbp, [rbp + 1992]
jmp rax
proc_queens_2$3_ω:
mov rax, [rbp + 1984]
lea rsp, [rbp + 2000]
mov rbp, [rbp + 1992]
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
  .Lstartup_pname1: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_not_attack$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_not_attack$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1984
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "queens_2/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_queens_2$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1968
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
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
  mov qword ptr [rsp + 1592], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain240_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain240_n1_α
 xchain240_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain240_n1_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain240_n2_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n2_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain240_n3_α
.Lx243_0:
 .quad 1
# IR_LIT_STRING
 xchain240_n3_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain240_n4_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n4_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain240_n5_α
.Lx245_0:
 .quad 2
# IR_LIT_STRING
 xchain240_n5_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain240_n6_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n6_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain240_n7_α
.Lx247_0:
 .quad 3
# IR_LIT_STRING
 xchain240_n7_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain240_n8_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n8_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain240_n9_α
.Lx249_0:
 .quad 4
# IR_LIT_STRING
 xchain240_n9_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain240_n10_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n10_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain240_n11_α
.Lx251_0:
 .quad 5
# IR_LIT_STRING
 xchain240_n11_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain240_n12_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n12_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain240_n13_α
.Lx253_0:
 .quad 6
# IR_LIT_STRING
 xchain240_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain240_n14_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n14_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain240_n15_α
.Lx255_0:
 .quad 7
# IR_LIT_STRING
 xchain240_n15_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain240_n16_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain240_n16_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain240_n17_α
.Lx257_0:
 .quad 8
# IR_LIT_STRING
 xchain240_n17_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain240_n18_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "[]"
 xchain240_n18_α:
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
# marshal arg2 = producer-box slot [zr+368] -> [zr+480]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je main_ω
 jmp xchain240_n19_α
 xchain240_n18_β:
 jmp main_ω
 xchain240_n19_α:
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
 je main_ω
 jmp xchain240_n20_α
 xchain240_n19_β:
 jmp main_ω
 xchain240_n20_α:
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
 je main_ω
 jmp xchain240_n21_α
 xchain240_n20_β:
 jmp main_ω
 xchain240_n21_α:
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
 je main_ω
 jmp xchain240_n22_α
 xchain240_n21_β:
 jmp main_ω
 xchain240_n22_α:
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
 je main_ω
 jmp xchain240_n23_α
 xchain240_n22_β:
 jmp main_ω
 xchain240_n23_α:
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
 je main_ω
 jmp xchain240_n24_α
 xchain240_n23_β:
 jmp main_ω
 xchain240_n24_α:
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
 je main_ω
 jmp xchain240_n25_α
 xchain240_n24_β:
 jmp main_ω
 xchain240_n25_α:
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
 je xchain240_n27_α
 jmp xchain240_n26_α
 xchain240_n25_β:
 jmp xchain240_n27_α
# IR_VAR_REF
 xchain240_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain240_n28_α
 xchain240_n27_α:
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
 xchain240_n27_β:
 jmp main_ω
 xchain240_n28_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx271_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx271_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx271_3]
 lea rdx, [rip + .Lx271_4]
 jmp rax
.Lx271_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx271_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx271_2
.Lx271_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx271_2
.Lx271_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx271_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx271_2
.Lx271_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx271_2
.Lx271_1:
 call rt_faildescr@PLT
.Lx271_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain240_n27_α
 jmp xchain240_n29_α
 xchain240_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "queens/2"
# IR_VAR
 xchain240_n29_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 264], rax
 jmp xchain240_n30_α
 xchain240_n30_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn275: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn275]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain240_n28_β
 jmp xchain240_n31_α
 xchain240_n30_β:
 jmp xchain240_n28_β
# IR_LIT_STRING
 xchain240_n31_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain240_n32_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string ""
 xchain240_n32_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn278: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn278]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain240_n28_β
 jmp xchain240_n33_α
 xchain240_n32_β:
 jmp xchain240_n28_β
# IR_MOVE_LABEL
 xchain240_n33_α:
 lea rax, [rip + xchain240_n28_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain240_n34_α:
 jmp qword ptr [rbp + 32]
 xchain240_n34_β:
 jmp main_ω
main_β:
jmp xchain240_n34_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1592]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1592]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
