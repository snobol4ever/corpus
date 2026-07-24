  .intel_syntax noprefix
  .text
  .globl proc_reverse$2F2_α
proc_reverse$2F2_α:
#=======================================================================================================================
    .global proc_reverse$2F2_α
    .global proc_reverse$2F2_β
    .global proc_reverse$2F2_γ
    .global proc_reverse$2F2_ω
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
proc_reverse$2F2_α_body:
lea rax, [rip + xchain0_n12_β]
mov qword ptr [rbp + 608], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2F2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_reverse$2F2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
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
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
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
 je proc_reverse$2F2_ω
 jmp proc_reverse$2F2_ω
 xchain0_n5_β:
 jmp proc_reverse$2F2_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n7_α
 xchain0_n7_α:
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
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n9_α
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n10_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n11_α
 xchain0_n11_α:
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
 mov rdi, qword ptr [rip + .Lx19_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx19_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx19_3]
 lea rdx, [rip + .Lx19_4]
 jmp rax
.Lx19_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx19_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx19_2
.Lx19_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx19_2
.Lx19_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx19_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx19_2
.Lx19_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx19_2
.Lx19_1:
 call rt_faildescr@PLT
.Lx19_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain0_n12_α:
 lea rax, [rip + xchain0_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2F2_γ
 xchain0_n12_β:
 jmp xchain0_n11_β
proc_reverse$2F2_res:
add rsp, 8
pop rbp
proc_reverse$2F2_β:
jmp qword ptr [rbp + 608]
proc_reverse$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_reverse$2F2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_reverse$2F2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_$reverse_$2F3_α
proc_$reverse_$2F3_α:
#=======================================================================================================================
    .global proc_$reverse_$2F3_α
    .global proc_$reverse_$2F3_β
    .global proc_$reverse_$2F3_γ
    .global proc_$reverse_$2F3_ω
  sub rsp, 1856
  mov [rsp + 1832], rcx
  mov [rsp + 1840], rdx
  mov [rsp + 1848], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1752], rsp
  mov rdi, rsp
  mov esi, 1728
  mov edx, 1824
  call rt_jmp_frame_lexprep2@PLT
proc_$reverse_$2F3_α_body:
lea rax, [rip + xchain22_n25_β]
mov qword ptr [rbp + 1728], rax
 xchain22_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$2F3_ω
 jmp xchain22_n1_α
 xchain22_n0_β:
 jmp proc_$reverse_$2F3_ω
# IR_VAR_REF
 xchain22_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain22_n2_α
# IR_LIT_INTEGER
 xchain22_n2_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain22_n3_α
.Lx26_0:
 .quad 2
# IR_LIT_STRING
 xchain22_n3_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain22_n4_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "[]"
 xchain22_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1584]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1592], rax
# marshal arg2 = producer-box slot [zr+1696] -> [zr+1600]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain22_n6_α
 jmp xchain22_n5_α
 xchain22_n4_β:
 jmp xchain22_n6_α
# IR_VAR_REF
 xchain22_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain22_n7_α
# IR_VAR_REF
 xchain22_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain22_n8_α
# IR_LIT_STRING
 xchain22_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain22_n9_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain22_n8_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain22_n10_α
.Lx34_0:
 .quad 3
 xchain22_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1440]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1440]
 mov rsi, qword ptr [rip + .Lx35_2]
 jmp .Lx35_3
.Lx35_2:
 .quad .Lx35_2_s
.Lx35_2_s:
 .string "[]"
.Lx35_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain22_n12_α
 jmp xchain22_n11_α
 xchain22_n9_β:
 jmp xchain22_n12_α
# IR_LIT_INTEGER
 xchain22_n10_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain22_n13_α
.Lx36_0:
 .quad 0
# IR_VAR_REF
 xchain22_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain22_n14_α
 xchain22_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1136]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je proc_$reverse_$2F3_ω
 jmp xchain22_n6_α
 xchain22_n12_β:
 jmp proc_$reverse_$2F3_ω
 xchain22_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+976]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 984], rax
# marshal arg2 = producer-box slot [zr+1088] -> [zr+992]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain22_n16_α
 jmp xchain22_n15_α
 xchain22_n13_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain22_n17_α
# IR_VAR_REF
 xchain22_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain22_n18_α
 xchain22_n16_α:
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
 je proc_$reverse_$2F3_ω
 jmp proc_$reverse_$2F3_ω
 xchain22_n16_β:
 jmp proc_$reverse_$2F3_ω
 xchain22_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1328]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1312]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain22_n12_α
 jmp xchain22_n19_α
 xchain22_n17_β:
 jmp xchain22_n12_α
# IR_VAR_REF
 xchain22_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain22_n20_α
# IR_VAR_REF
 xchain22_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain22_n21_α
# IR_VAR_REF
 xchain22_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain22_n22_α
# IR_VAR_REF
 xchain22_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain22_n23_α
 xchain22_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+816]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain22_n16_α
 jmp xchain22_n24_α
 xchain22_n22_β:
 jmp xchain22_n16_α
 xchain22_n23_α:
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
 je xchain22_n12_α
 jmp xchain22_n25_α
 xchain22_n23_β:
 jmp xchain22_n12_α
# IR_VAR_REF
 xchain22_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain22_n26_α
# IR_SUSPEND yield+resume
 xchain22_n25_α:
 lea rax, [rip + xchain22_n25_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$2F3_γ
 xchain22_n25_β:
 jmp xchain22_n12_α
# IR_VAR_REF
 xchain22_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain22_n27_α
 xchain22_n27_α:
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
 je xchain22_n16_α
 jmp xchain22_n28_α
 xchain22_n27_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain22_n29_α
# IR_VAR_REF
 xchain22_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain22_n30_α
 xchain22_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain22_n16_α
 jmp xchain22_n31_α
 xchain22_n30_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain22_n32_α
# IR_LIT_STRING
 xchain22_n32_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain22_n33_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "."
# IR_VAR_REF
 xchain22_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain22_n34_α
# IR_VAR_REF
 xchain22_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain22_n35_α
 xchain22_n35_α:
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
 je xchain22_n16_α
 jmp xchain22_n36_α
 xchain22_n35_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain22_n37_α
 xchain22_n37_α:
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
 mov rdi, qword ptr [rip + .Lx80_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx80_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx80_3]
 lea rdx, [rip + .Lx80_4]
 jmp rax
.Lx80_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx80_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx80_2
.Lx80_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx80_2
.Lx80_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx80_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx80_2
.Lx80_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx80_2
.Lx80_1:
 call rt_faildescr@PLT
.Lx80_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain22_n16_α
 jmp xchain22_n38_α
 xchain22_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain22_n38_α:
 lea rax, [rip + xchain22_n38_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$2F3_γ
 xchain22_n38_β:
 jmp xchain22_n37_β
proc_$reverse_$2F3_res:
add rsp, 8
pop rbp
proc_$reverse_$2F3_β:
jmp qword ptr [rbp + 1728]
proc_$reverse_$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_$reverse_$2F3_res]
push rax
mov rax, [rbp + 1832]
mov rbp, [rbp + 1848]
jmp rax
proc_$reverse_$2F3_ω:
mov rax, [rbp + 1840]
lea rsp, [rbp + 1856]
mov rbp, [rbp + 1848]
jmp rax
  .globl proc_append$2F3_α
proc_append$2F3_α:
#=======================================================================================================================
    .global proc_append$2F3_α
    .global proc_append$2F3_β
    .global proc_append$2F3_γ
    .global proc_append$2F3_ω
  sub rsp, 1760
  mov [rsp + 1736], rcx
  mov [rsp + 1744], rdx
  mov [rsp + 1752], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1656], rsp
  mov rdi, rsp
  mov esi, 1632
  mov edx, 1728
  call rt_jmp_frame_lexprep2@PLT
proc_append$2F3_α_body:
lea rax, [rip + xchain83_n25_β]
mov qword ptr [rbp + 1632], rax
 xchain83_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_append$2F3_ω
 jmp xchain83_n1_α
 xchain83_n0_β:
 jmp proc_append$2F3_ω
# IR_VAR_REF
 xchain83_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain83_n2_α
# IR_LIT_INTEGER
 xchain83_n2_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain83_n3_α
.Lx87_0:
 .quad 2
# IR_LIT_STRING
 xchain83_n3_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain83_n4_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "[]"
 xchain83_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1488]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1504]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain83_n6_α
 jmp xchain83_n5_α
 xchain83_n4_β:
 jmp xchain83_n6_α
# IR_VAR_REF
 xchain83_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain83_n7_α
# IR_VAR_REF
 xchain83_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain83_n8_α
# IR_LIT_STRING
 xchain83_n7_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain83_n9_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain83_n8_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain83_n10_α
.Lx95_0:
 .quad 3
 xchain83_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1344]
 mov rsi, qword ptr [rip + .Lx96_2]
 jmp .Lx96_3
.Lx96_2:
 .quad .Lx96_2_s
.Lx96_2_s:
 .string "[]"
.Lx96_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain83_n12_α
 jmp xchain83_n11_α
 xchain83_n9_β:
 jmp xchain83_n12_α
# IR_LIT_INTEGER
 xchain83_n10_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain83_n13_α
.Lx97_0:
 .quad 0
# IR_VAR_REF
 xchain83_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain83_n14_α
 xchain83_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1040]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_append$2F3_ω
 jmp xchain83_n6_α
 xchain83_n12_β:
 jmp proc_append$2F3_ω
 xchain83_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+880]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+896]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain83_n16_α
 jmp xchain83_n15_α
 xchain83_n13_β:
 jmp xchain83_n16_α
# IR_VAR_REF
 xchain83_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain83_n17_α
# IR_VAR_REF
 xchain83_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain83_n18_α
 xchain83_n16_α:
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
 je proc_append$2F3_ω
 jmp proc_append$2F3_ω
 xchain83_n16_β:
 jmp proc_append$2F3_ω
 xchain83_n17_α:
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
 je xchain83_n12_α
 jmp xchain83_n19_α
 xchain83_n17_β:
 jmp xchain83_n12_α
# IR_VAR_REF
 xchain83_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain83_n20_α
# IR_VAR_REF
 xchain83_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain83_n21_α
# IR_VAR_REF
 xchain83_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain83_n22_α
# IR_VAR_REF
 xchain83_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain83_n23_α
 xchain83_n22_α:
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
 je xchain83_n16_α
 jmp xchain83_n24_α
 xchain83_n22_β:
 jmp xchain83_n16_α
 xchain83_n23_α:
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
 je xchain83_n12_α
 jmp xchain83_n25_α
 xchain83_n23_β:
 jmp xchain83_n12_α
# IR_VAR_REF
 xchain83_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain83_n26_α
# IR_SUSPEND yield+resume
 xchain83_n25_α:
 lea rax, [rip + xchain83_n25_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_append$2F3_γ
 xchain83_n25_β:
 jmp xchain83_n12_α
# IR_VAR_REF
 xchain83_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain83_n27_α
 xchain83_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain83_n16_α
 jmp xchain83_n28_α
 xchain83_n27_β:
 jmp xchain83_n16_α
# IR_VAR_REF
 xchain83_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain83_n29_α
# IR_VAR_REF
 xchain83_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain83_n30_α
# IR_VAR_REF
 xchain83_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain83_n31_α
 xchain83_n31_α:
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
 je xchain83_n16_α
 jmp xchain83_n32_α
 xchain83_n31_β:
 jmp xchain83_n16_α
# IR_VAR_REF
 xchain83_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain83_n33_α
# IR_VAR_REF
 xchain83_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain83_n34_α
# IR_VAR_REF
 xchain83_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain83_n35_α
 xchain83_n35_α:
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
 mov rdi, qword ptr [rip + .Lx139_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx139_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx139_3]
 lea rdx, [rip + .Lx139_4]
 jmp rax
.Lx139_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx139_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx139_2
.Lx139_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx139_2
.Lx139_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx139_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx139_2
.Lx139_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx139_2
.Lx139_1:
 call rt_faildescr@PLT
.Lx139_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain83_n16_α
 jmp xchain83_n36_α
 xchain83_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "append/3"
# IR_SUSPEND yield+resume
 xchain83_n36_α:
 lea rax, [rip + xchain83_n36_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_append$2F3_γ
 xchain83_n36_β:
 jmp xchain83_n35_β
proc_append$2F3_res:
add rsp, 8
pop rbp
proc_append$2F3_β:
jmp qword ptr [rbp + 1632]
proc_append$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_append$2F3_res]
push rax
mov rax, [rbp + 1736]
mov rbp, [rbp + 1752]
jmp rax
proc_append$2F3_ω:
mov rax, [rbp + 1744]
lea rsp, [rbp + 1760]
mov rbp, [rbp + 1752]
jmp rax
  .globl proc_nrev$2F2_α
proc_nrev$2F2_α:
#=======================================================================================================================
    .global proc_nrev$2F2_α
    .global proc_nrev$2F2_β
    .global proc_nrev$2F2_γ
    .global proc_nrev$2F2_ω
  sub rsp, 1728
  mov [rsp + 1704], rcx
  mov [rsp + 1712], rdx
  mov [rsp + 1720], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1624], rsp
  mov rdi, rsp
  mov esi, 1600
  mov edx, 1696
  call rt_jmp_frame_lexprep2@PLT
proc_nrev$2F2_α_body:
lea rax, [rip + xchain142_n19_β]
mov qword ptr [rbp + 1600], rax
 xchain142_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nrev$2F2_ω
 jmp xchain142_n1_α
 xchain142_n0_β:
 jmp proc_nrev$2F2_ω
# IR_VAR_REF
 xchain142_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain142_n2_α
# IR_LIT_INTEGER
 xchain142_n2_α:
 mov qword ptr [rbp + 1536], 6
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain142_n3_α
.Lx146_0:
 .quad 2
# IR_LIT_STRING
 xchain142_n3_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain142_n4_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "[]"
 xchain142_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1456]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1464], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1472]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain142_n6_α
 jmp xchain142_n5_α
 xchain142_n4_β:
 jmp xchain142_n6_α
# IR_VAR_REF
 xchain142_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain142_n7_α
# IR_VAR_REF
 xchain142_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain142_n8_α
# IR_LIT_STRING
 xchain142_n7_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain142_n9_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain142_n8_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain142_n10_α
.Lx154_0:
 .quad 3
 xchain142_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1312]
 mov rsi, qword ptr [rip + .Lx155_2]
 jmp .Lx155_3
.Lx155_2:
 .quad .Lx155_2_s
.Lx155_2_s:
 .string "[]"
.Lx155_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain142_n12_α
 jmp xchain142_n11_α
 xchain142_n9_β:
 jmp xchain142_n12_α
# IR_LIT_INTEGER
 xchain142_n10_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain142_n13_α
.Lx156_0:
 .quad 0
# IR_VAR_REF
 xchain142_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain142_n14_α
 xchain142_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1136]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je proc_nrev$2F2_ω
 jmp xchain142_n6_α
 xchain142_n12_β:
 jmp proc_nrev$2F2_ω
 xchain142_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+976]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 984], rax
# marshal arg2 = producer-box slot [zr+1088] -> [zr+992]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain142_n16_α
 jmp xchain142_n15_α
 xchain142_n13_β:
 jmp xchain142_n16_α
# IR_LIT_STRING
 xchain142_n14_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain142_n17_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "[]"
# IR_VAR_REF
 xchain142_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain142_n18_α
 xchain142_n16_α:
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
 je proc_nrev$2F2_ω
 jmp proc_nrev$2F2_ω
 xchain142_n16_β:
 jmp proc_nrev$2F2_ω
 xchain142_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1184]
 mov rsi, qword ptr [rip + .Lx165_2]
 jmp .Lx165_3
.Lx165_2:
 .quad .Lx165_2_s
.Lx165_2_s:
 .string "[]"
.Lx165_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain142_n12_α
 jmp xchain142_n19_α
 xchain142_n17_β:
 jmp xchain142_n12_α
# IR_VAR_REF
 xchain142_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain142_n20_α
# IR_SUSPEND yield+resume
 xchain142_n19_α:
 lea rax, [rip + xchain142_n19_β]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nrev$2F2_γ
 xchain142_n19_β:
 jmp xchain142_n12_α
# IR_VAR_REF
 xchain142_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain142_n21_α
 xchain142_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+816]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain142_n16_α
 jmp xchain142_n22_α
 xchain142_n21_β:
 jmp xchain142_n16_α
# IR_VAR_REF
 xchain142_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain142_n23_α
# IR_VAR_REF
 xchain142_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain142_n24_α
 xchain142_n24_α:
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
 je xchain142_n16_α
 jmp xchain142_n25_α
 xchain142_n24_β:
 jmp xchain142_n16_α
# IR_VAR_REF
 xchain142_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain142_n26_α
# IR_VAR_REF
 xchain142_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain142_n27_α
 xchain142_n27_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx183_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx183_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx183_3]
 lea rdx, [rip + .Lx183_4]
 jmp rax
.Lx183_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx183_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx183_2
.Lx183_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx183_2
.Lx183_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx183_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx183_2
.Lx183_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx183_2
.Lx183_1:
 call rt_faildescr@PLT
.Lx183_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain142_n16_α
 jmp xchain142_n28_α
 xchain142_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "nrev/2"
# IR_VAR_REF
 xchain142_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain142_n29_α
# IR_LIT_STRING
 xchain142_n29_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain142_n30_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_VAR_REF
 xchain142_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain142_n31_α
# IR_LIT_STRING
 xchain142_n31_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain142_n32_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "[]"
 xchain142_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+384]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 392], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+400]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain142_n16_α
 jmp xchain142_n33_α
 xchain142_n32_β:
 jmp xchain142_n16_α
# IR_VAR_REF
 xchain142_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain142_n34_α
 xchain142_n34_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx194_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx194_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx194_3]
 lea rdx, [rip + .Lx194_4]
 jmp rax
.Lx194_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx194_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx194_2
.Lx194_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx194_2
.Lx194_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx194_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx194_2
.Lx194_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx194_2
.Lx194_1:
 call rt_faildescr@PLT
.Lx194_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain142_n27_β
 jmp xchain142_n35_α
 xchain142_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "append/3"
# IR_SUSPEND yield+resume
 xchain142_n35_α:
 lea rax, [rip + xchain142_n35_β]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nrev$2F2_γ
 xchain142_n35_β:
 jmp xchain142_n34_β
proc_nrev$2F2_res:
add rsp, 8
pop rbp
proc_nrev$2F2_β:
jmp qword ptr [rbp + 1600]
proc_nrev$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nrev$2F2_res]
push rax
mov rax, [rbp + 1704]
mov rbp, [rbp + 1720]
jmp rax
proc_nrev$2F2_ω:
mov rax, [rbp + 1712]
lea rsp, [rbp + 1728]
mov rbp, [rbp + 1720]
jmp rax
  .globl proc_data$2F2_α
proc_data$2F2_α:
#=======================================================================================================================
    .global proc_data$2F2_α
    .global proc_data$2F2_β
    .global proc_data$2F2_γ
    .global proc_data$2F2_ω
  sub rsp, 1728
  mov [rsp + 1704], rcx
  mov [rsp + 1712], rdx
  mov [rsp + 1720], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1640], rsp
  mov rdi, rsp
  mov esi, 1616
  mov edx, 1696
  call rt_jmp_frame_lexprep2@PLT
proc_data$2F2_α_body:
lea rax, [rip + xchain197_n19_β]
mov qword ptr [rbp + 1616], rax
 xchain197_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_data$2F2_ω
 jmp xchain197_n1_α
 xchain197_n0_β:
 jmp proc_data$2F2_ω
# IR_VAR_REF
 xchain197_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain197_n2_α
# IR_LIT_INTEGER
 xchain197_n2_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain197_n3_α
.Lx201_0:
 .quad 2
# IR_LIT_STRING
 xchain197_n3_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain197_n4_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "[]"
 xchain197_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1472]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1480], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1488]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain197_n6_α
 jmp xchain197_n5_α
 xchain197_n4_β:
 jmp xchain197_n6_α
# IR_VAR_REF
 xchain197_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain197_n7_α
# IR_VAR_REF
 xchain197_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain197_n8_α
# IR_LIT_STRING
 xchain197_n7_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain197_n9_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain197_n8_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain197_n10_α
.Lx209_0:
 .quad 3
 xchain197_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1328]
 mov rsi, qword ptr [rip + .Lx210_2]
 jmp .Lx210_3
.Lx210_2:
 .quad .Lx210_2_s
.Lx210_2_s:
 .string "[]"
.Lx210_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain197_n12_α
 jmp xchain197_n11_α
 xchain197_n9_β:
 jmp xchain197_n12_α
# IR_LIT_INTEGER
 xchain197_n10_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain197_n13_α
.Lx211_0:
 .quad 0
# IR_VAR_REF
 xchain197_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain197_n14_α
 xchain197_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1152]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je proc_data$2F2_ω
 jmp xchain197_n6_α
 xchain197_n12_β:
 jmp proc_data$2F2_ω
 xchain197_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+992]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1008]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain197_n16_α
 jmp xchain197_n15_α
 xchain197_n13_β:
 jmp xchain197_n16_α
# IR_LIT_INTEGER
 xchain197_n14_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain197_n17_α
.Lx216_0:
 .quad 0
# IR_VAR_REF
 xchain197_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain197_n18_α
 xchain197_n16_α:
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
 je proc_data$2F2_ω
 jmp proc_data$2F2_ω
 xchain197_n16_β:
 jmp proc_data$2F2_ω
 xchain197_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1200]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain197_n12_α
 jmp xchain197_n19_α
 xchain197_n17_β:
 jmp xchain197_n12_α
# IR_LIT_STRING
 xchain197_n18_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain197_n20_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "a"
# IR_SUSPEND yield+resume
 xchain197_n19_α:
 lea rax, [rip + xchain197_n19_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2F2_γ
 xchain197_n19_β:
 jmp xchain197_n12_α
# IR_VAR_REF
 xchain197_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain197_n21_α
 xchain197_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+832]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain197_n16_α
 jmp xchain197_n22_α
 xchain197_n21_β:
 jmp xchain197_n16_α
# IR_VAR_REF
 xchain197_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain197_n23_α
# IR_VAR_REF
 xchain197_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain197_n24_α
 xchain197_n24_α:
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
 je xchain197_n16_α
 jmp xchain197_n25_α
 xchain197_n24_β:
 jmp xchain197_n16_α
# IR_VAR
 xchain197_n25_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 600], rax
 jmp xchain197_n26_α
# IR_LIT_INTEGER
 xchain197_n26_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain197_n27_α
.Lx234_0:
 .quad 0
 xchain197_n27_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain197_n16_α
 jmp xchain197_n28_α
 xchain197_n27_β:
 jmp xchain197_n16_α
# IR_VAR_REF
 xchain197_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain197_n29_α
# IR_VAR
 xchain197_n29_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 472], rax
 jmp xchain197_n30_α
# IR_LIT_INTEGER
 xchain197_n30_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain197_n31_α
.Lx240_0:
 .quad 1
 xchain197_n31_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain197_n16_α
 jmp xchain197_n32_α
 xchain197_n31_β:
 jmp xchain197_n16_α
 xchain197_n32_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain197_n16_α
 jmp xchain197_n33_α
 xchain197_n32_β:
 jmp xchain197_n16_α
# IR_VAR_REF
 xchain197_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain197_n34_α
# IR_VAR_REF
 xchain197_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain197_n35_α
 xchain197_n35_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx248_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx248_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx248_3]
 lea rdx, [rip + .Lx248_4]
 jmp rax
.Lx248_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx248_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx248_2
.Lx248_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx248_2
.Lx248_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx248_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx248_2
.Lx248_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx248_2
.Lx248_1:
 call rt_faildescr@PLT
.Lx248_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain197_n16_α
 jmp xchain197_n36_α
 xchain197_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "data/2"
# IR_SUSPEND yield+resume
 xchain197_n36_α:
 lea rax, [rip + xchain197_n36_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2F2_γ
 xchain197_n36_β:
 jmp xchain197_n35_β
proc_data$2F2_res:
add rsp, 8
pop rbp
proc_data$2F2_β:
jmp qword ptr [rbp + 1616]
proc_data$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_data$2F2_res]
push rax
mov rax, [rbp + 1704]
mov rbp, [rbp + 1720]
jmp rax
proc_data$2F2_ω:
mov rax, [rbp + 1712]
lea rsp, [rbp + 1728]
mov rbp, [rbp + 1720]
jmp rax
  .globl proc_data$2F1_α
proc_data$2F1_α:
#=======================================================================================================================
    .global proc_data$2F1_α
    .global proc_data$2F1_β
    .global proc_data$2F1_γ
    .global proc_data$2F1_ω
  sub rsp, 496
  mov [rsp + 472], rcx
  mov [rsp + 480], rdx
  mov [rsp + 488], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 416
  mov edx, 464
  call rt_jmp_frame_lexprep2@PLT
proc_data$2F1_α_body:
lea rax, [rip + xchain251_n8_β]
mov qword ptr [rbp + 416], rax
 xchain251_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_data$2F1_ω
 jmp xchain251_n1_α
 xchain251_n0_β:
 jmp proc_data$2F1_ω
# IR_VAR_REF
 xchain251_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain251_n2_α
# IR_VAR_REF
 xchain251_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain251_n3_α
 xchain251_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain251_n5_α
 jmp xchain251_n4_α
 xchain251_n3_β:
 jmp xchain251_n5_α
# IR_VAR_REF
 xchain251_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 448]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain251_n6_α
 xchain251_n5_α:
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
 je proc_data$2F1_ω
 jmp proc_data$2F1_ω
 xchain251_n5_β:
 jmp proc_data$2F1_ω
# IR_LIT_INTEGER
 xchain251_n6_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain251_n7_α
.Lx261_0:
 .quad 30
 xchain251_n7_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx263_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx263_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx263_3]
 lea rdx, [rip + .Lx263_4]
 jmp rax
.Lx263_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx263_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx263_2
.Lx263_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx263_2
.Lx263_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx263_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx263_2
.Lx263_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx263_2
.Lx263_1:
 call rt_faildescr@PLT
.Lx263_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain251_n5_α
 jmp xchain251_n8_α
 xchain251_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "data/2"
# IR_SUSPEND yield+resume
 xchain251_n8_α:
 lea rax, [rip + xchain251_n8_β]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2F1_γ
 xchain251_n8_β:
 jmp xchain251_n7_β
proc_data$2F1_res:
add rsp, 8
pop rbp
proc_data$2F1_β:
jmp qword ptr [rbp + 416]
proc_data$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_data$2F1_res]
push rax
mov rax, [rbp + 472]
mov rbp, [rbp + 488]
jmp rax
proc_data$2F1_ω:
mov rax, [rbp + 480]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "reverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_reverse$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "$reverse_/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_$reverse_$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1824
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_append$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1728
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "nrev/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nrev$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1696
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "data/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_data$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1696
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "data/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_data$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 464
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
  mov qword ptr [rsp + 536], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain266_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain266_n1_α
 xchain266_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain266_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain266_n2_α
 xchain266_n2_α:
 mov qword ptr [rbp + 464], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx271_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx271_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx271_3]
 lea rdx, [rip + .Lx271_4]
 jmp rax
.Lx271_3:
 mov qword ptr [rbp + 472], rsp
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx271_5
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx271_2
.Lx271_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx271_2
.Lx271_4:
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx271_6
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx271_2
.Lx271_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx271_2
.Lx271_1:
 call rt_faildescr@PLT
.Lx271_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain266_n4_α
 jmp xchain266_n3_α
 xchain266_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 472]
 jmp qword ptr [rsp]
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "data/1"
# IR_VAR_REF
 xchain266_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 560]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain266_n5_α
 xchain266_n4_α:
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
 xchain266_n4_β:
 jmp main_ω
# IR_VAR_REF
 xchain266_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain266_n6_α
 xchain266_n6_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx278_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx278_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx278_3]
 lea rdx, [rip + .Lx278_4]
 jmp rax
.Lx278_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx278_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx278_2
.Lx278_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx278_2
.Lx278_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx278_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx278_2
.Lx278_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx278_2
.Lx278_1:
 call rt_faildescr@PLT
.Lx278_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain266_n2_β
 jmp xchain266_n7_α
 xchain266_n6_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "nrev/2"
# IR_VAR
 xchain266_n7_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
 jmp xchain266_n8_α
 xchain266_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn282: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn282]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain266_n6_β
 jmp xchain266_n9_α
 xchain266_n8_β:
 jmp xchain266_n6_β
# IR_LIT_STRING
 xchain266_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain266_n10_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string ""
 xchain266_n10_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn285: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn285]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain266_n6_β
 jmp xchain266_n11_α
 xchain266_n10_β:
 jmp xchain266_n6_β
# IR_MOVE_LABEL
 xchain266_n11_α:
 lea rax, [rip + xchain266_n6_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain266_n12_α:
 jmp qword ptr [rbp + 32]
 xchain266_n12_β:
 jmp main_ω
main_β:
jmp xchain266_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 536]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 536]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
