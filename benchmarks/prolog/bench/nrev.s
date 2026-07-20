  .intel_syntax noprefix
  .text
  .globl proc_reverse$2_α
proc_reverse$2_α:
#=======================================================================================================================
    .global proc_reverse$2_α
    .global proc_reverse$2_β
    .global proc_reverse$2_γ
    .global proc_reverse$2_ω
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
proc_reverse$2_α_body:
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
 je proc_reverse$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_reverse$2_ω
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
 je proc_reverse$2_ω
 jmp proc_reverse$2_ω
 xchain0_n5_β:
 jmp proc_reverse$2_ω
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
 jmp proc_reverse$2_γ
 xchain0_n12_β:
 jmp xchain0_n11_β
proc_reverse$2_res:
add rsp, 8
pop rbp
proc_reverse$2_β:
jmp qword ptr [rbp + 608]
proc_reverse$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_reverse$2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_reverse$2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_$reverse_$3_α
proc_$reverse_$3_α:
#=======================================================================================================================
    .global proc_$reverse_$3_α
    .global proc_$reverse_$3_β
    .global proc_$reverse_$3_γ
    .global proc_$reverse_$3_ω
  sub rsp, 1504
  mov [rsp + 1480], rcx
  mov [rsp + 1488], rdx
  mov [rsp + 1496], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1400], rsp
  mov rdi, rsp
  mov esi, 1376
  mov edx, 1472
  call rt_jmp_frame_lexprep2@PLT
proc_$reverse_$3_α_body:
lea rax, [rip + xchain22_n17_β]
mov qword ptr [rbp + 1376], rax
 xchain22_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain22_n1_α
 xchain22_n0_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain22_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain22_n2_α
# IR_LIT_STRING
 xchain22_n2_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain22_n3_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "[]"
 xchain22_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1264]
 mov rsi, qword ptr [rip + .Lx27_2]
 jmp .Lx27_3
.Lx27_2:
 .quad .Lx27_2_s
.Lx27_2_s:
 .string "[]"
.Lx27_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain22_n5_α
 jmp xchain22_n4_α
 xchain22_n3_β:
 jmp xchain22_n5_α
# IR_VAR_REF
 xchain22_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain22_n6_α
 xchain22_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+960]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain22_n7_α
 xchain22_n5_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain22_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain22_n8_α
# IR_VAR_REF
 xchain22_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain22_n9_α
 xchain22_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain22_n5_α
 jmp xchain22_n10_α
 xchain22_n8_β:
 jmp xchain22_n5_α
# IR_VAR_REF
 xchain22_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain22_n11_α
# IR_VAR_REF
 xchain22_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain22_n12_α
# IR_VAR_REF
 xchain22_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain22_n13_α
# IR_VAR_REF
 xchain22_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain22_n14_α
 xchain22_n13_α:
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
 jmp xchain22_n15_α
 xchain22_n13_β:
 jmp xchain22_n16_α
 xchain22_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain22_n5_α
 jmp xchain22_n17_α
 xchain22_n14_β:
 jmp xchain22_n5_α
# IR_VAR_REF
 xchain22_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
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
 je proc_$reverse_$3_ω
 jmp proc_$reverse_$3_ω
 xchain22_n16_β:
 jmp proc_$reverse_$3_ω
# IR_SUSPEND yield+resume
 xchain22_n17_α:
 lea rax, [rip + xchain22_n17_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain22_n17_β:
 jmp xchain22_n5_α
# IR_VAR_REF
 xchain22_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain22_n19_α
 xchain22_n19_α:
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
 jmp xchain22_n20_α
 xchain22_n19_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain22_n21_α
# IR_VAR_REF
 xchain22_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain22_n22_α
 xchain22_n22_α:
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
 jmp xchain22_n23_α
 xchain22_n22_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain22_n24_α
# IR_LIT_STRING
 xchain22_n24_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain22_n25_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "."
# IR_VAR_REF
 xchain22_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain22_n26_α
# IR_VAR_REF
 xchain22_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain22_n27_α
 xchain22_n27_α:
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
 jmp xchain22_n28_α
 xchain22_n27_β:
 jmp xchain22_n16_α
# IR_VAR_REF
 xchain22_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain22_n29_α
 xchain22_n29_α:
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
 mov rdi, qword ptr [rip + .Lx70_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx70_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx70_3]
 lea rdx, [rip + .Lx70_4]
 jmp rax
.Lx70_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx70_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx70_2
.Lx70_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx70_2
.Lx70_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx70_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx70_2
.Lx70_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx70_2
.Lx70_1:
 call rt_faildescr@PLT
.Lx70_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain22_n16_α
 jmp xchain22_n30_α
 xchain22_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain22_n30_α:
 lea rax, [rip + xchain22_n30_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain22_n30_β:
 jmp xchain22_n29_β
proc_$reverse_$3_res:
add rsp, 8
pop rbp
proc_$reverse_$3_β:
jmp qword ptr [rbp + 1376]
proc_$reverse_$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_$reverse_$3_res]
push rax
mov rax, [rbp + 1480]
mov rbp, [rbp + 1496]
jmp rax
proc_$reverse_$3_ω:
mov rax, [rbp + 1488]
lea rsp, [rbp + 1504]
mov rbp, [rbp + 1496]
jmp rax
  .globl proc_append$3_α
proc_append$3_α:
#=======================================================================================================================
    .global proc_append$3_α
    .global proc_append$3_β
    .global proc_append$3_γ
    .global proc_append$3_ω
  sub rsp, 1408
  mov [rsp + 1384], rcx
  mov [rsp + 1392], rdx
  mov [rsp + 1400], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1304], rsp
  mov rdi, rsp
  mov esi, 1280
  mov edx, 1376
  call rt_jmp_frame_lexprep2@PLT
proc_append$3_α_body:
lea rax, [rip + xchain73_n17_β]
mov qword ptr [rbp + 1280], rax
 xchain73_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp xchain73_n1_α
 xchain73_n0_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain73_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain73_n2_α
# IR_LIT_STRING
 xchain73_n2_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain73_n3_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "[]"
 xchain73_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1168]
 mov rsi, qword ptr [rip + .Lx78_2]
 jmp .Lx78_3
.Lx78_2:
 .quad .Lx78_2_s
.Lx78_2_s:
 .string "[]"
.Lx78_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain73_n5_α
 jmp xchain73_n4_α
 xchain73_n3_β:
 jmp xchain73_n5_α
# IR_VAR_REF
 xchain73_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain73_n6_α
 xchain73_n5_α:
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
 je proc_append$3_ω
 jmp xchain73_n7_α
 xchain73_n5_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain73_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain73_n8_α
# IR_VAR_REF
 xchain73_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain73_n9_α
 xchain73_n8_α:
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
 je xchain73_n5_α
 jmp xchain73_n10_α
 xchain73_n8_β:
 jmp xchain73_n5_α
# IR_VAR_REF
 xchain73_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain73_n11_α
# IR_VAR_REF
 xchain73_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain73_n12_α
# IR_VAR_REF
 xchain73_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain73_n13_α
# IR_VAR_REF
 xchain73_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain73_n14_α
 xchain73_n13_α:
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
 je xchain73_n16_α
 jmp xchain73_n15_α
 xchain73_n13_β:
 jmp xchain73_n16_α
 xchain73_n14_α:
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
 je xchain73_n5_α
 jmp xchain73_n17_α
 xchain73_n14_β:
 jmp xchain73_n5_α
# IR_VAR_REF
 xchain73_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain73_n18_α
 xchain73_n16_α:
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
 je proc_append$3_ω
 jmp proc_append$3_ω
 xchain73_n16_β:
 jmp proc_append$3_ω
# IR_SUSPEND yield+resume
 xchain73_n17_α:
 lea rax, [rip + xchain73_n17_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_append$3_γ
 xchain73_n17_β:
 jmp xchain73_n5_α
# IR_VAR_REF
 xchain73_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain73_n19_α
 xchain73_n19_α:
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
 je xchain73_n16_α
 jmp xchain73_n20_α
 xchain73_n19_β:
 jmp xchain73_n16_α
# IR_VAR_REF
 xchain73_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain73_n21_α
# IR_VAR_REF
 xchain73_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain73_n22_α
# IR_VAR_REF
 xchain73_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain73_n23_α
 xchain73_n23_α:
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
 je xchain73_n16_α
 jmp xchain73_n24_α
 xchain73_n23_β:
 jmp xchain73_n16_α
# IR_VAR_REF
 xchain73_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain73_n25_α
# IR_VAR_REF
 xchain73_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain73_n26_α
# IR_VAR_REF
 xchain73_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain73_n27_α
 xchain73_n27_α:
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
 mov rdi, qword ptr [rip + .Lx119_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx119_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx119_3]
 lea rdx, [rip + .Lx119_4]
 jmp rax
.Lx119_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx119_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx119_2
.Lx119_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx119_2
.Lx119_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx119_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx119_2
.Lx119_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx119_2
.Lx119_1:
 call rt_faildescr@PLT
.Lx119_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain73_n16_α
 jmp xchain73_n28_α
 xchain73_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "append/3"
# IR_SUSPEND yield+resume
 xchain73_n28_α:
 lea rax, [rip + xchain73_n28_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_append$3_γ
 xchain73_n28_β:
 jmp xchain73_n27_β
proc_append$3_res:
add rsp, 8
pop rbp
proc_append$3_β:
jmp qword ptr [rbp + 1280]
proc_append$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_append$3_res]
push rax
mov rax, [rbp + 1384]
mov rbp, [rbp + 1400]
jmp rax
proc_append$3_ω:
mov rax, [rbp + 1392]
lea rsp, [rbp + 1408]
mov rbp, [rbp + 1400]
jmp rax
  .globl proc_nrev$2_α
proc_nrev$2_α:
#=======================================================================================================================
    .global proc_nrev$2_α
    .global proc_nrev$2_β
    .global proc_nrev$2_γ
    .global proc_nrev$2_ω
  sub rsp, 1376
  mov [rsp + 1352], rcx
  mov [rsp + 1360], rdx
  mov [rsp + 1368], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1272], rsp
  mov rdi, rsp
  mov esi, 1248
  mov edx, 1344
  call rt_jmp_frame_lexprep2@PLT
proc_nrev$2_α_body:
lea rax, [rip + xchain122_n10_β]
mov qword ptr [rbp + 1248], rax
 xchain122_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp xchain122_n1_α
 xchain122_n0_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain122_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain122_n2_α
# IR_LIT_STRING
 xchain122_n2_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain122_n3_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "[]"
 xchain122_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1136]
 mov rsi, qword ptr [rip + .Lx127_2]
 jmp .Lx127_3
.Lx127_2:
 .quad .Lx127_2_s
.Lx127_2_s:
 .string "[]"
.Lx127_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain122_n5_α
 jmp xchain122_n4_α
 xchain122_n3_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain122_n6_α
 xchain122_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+960]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp xchain122_n7_α
 xchain122_n5_β:
 jmp proc_nrev$2_ω
# IR_LIT_STRING
 xchain122_n6_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain122_n8_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "[]"
# IR_VAR_REF
 xchain122_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain122_n9_α
 xchain122_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1008]
 mov rsi, qword ptr [rip + .Lx134_2]
 jmp .Lx134_3
.Lx134_2:
 .quad .Lx134_2_s
.Lx134_2_s:
 .string "[]"
.Lx134_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain122_n5_α
 jmp xchain122_n10_α
 xchain122_n8_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain122_n11_α
# IR_SUSPEND yield+resume
 xchain122_n10_α:
 lea rax, [rip + xchain122_n10_β]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nrev$2_γ
 xchain122_n10_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain122_n12_α
 xchain122_n12_α:
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
 je xchain122_n14_α
 jmp xchain122_n13_α
 xchain122_n12_β:
 jmp xchain122_n14_α
# IR_VAR_REF
 xchain122_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain122_n15_α
 xchain122_n14_α:
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
 je proc_nrev$2_ω
 jmp proc_nrev$2_ω
 xchain122_n14_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain122_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain122_n16_α
 xchain122_n16_α:
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
 je xchain122_n14_α
 jmp xchain122_n17_α
 xchain122_n16_β:
 jmp xchain122_n14_α
# IR_VAR_REF
 xchain122_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain122_n19_α
 xchain122_n19_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx153_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx153_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx153_3]
 lea rdx, [rip + .Lx153_4]
 jmp rax
.Lx153_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx153_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx153_2
.Lx153_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx153_2
.Lx153_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx153_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx153_2
.Lx153_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx153_2
.Lx153_1:
 call rt_faildescr@PLT
.Lx153_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain122_n14_α
 jmp xchain122_n20_α
 xchain122_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "nrev/2"
# IR_VAR_REF
 xchain122_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain122_n21_α
# IR_LIT_STRING
 xchain122_n21_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain122_n22_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
# IR_VAR_REF
 xchain122_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain122_n23_α
# IR_LIT_STRING
 xchain122_n23_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain122_n24_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "[]"
 xchain122_n24_α:
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
 je xchain122_n14_α
 jmp xchain122_n25_α
 xchain122_n24_β:
 jmp xchain122_n14_α
# IR_VAR_REF
 xchain122_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain122_n26_α
 xchain122_n26_α:
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
 mov rdi, qword ptr [rip + .Lx164_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx164_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx164_3]
 lea rdx, [rip + .Lx164_4]
 jmp rax
.Lx164_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx164_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx164_2
.Lx164_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx164_2
.Lx164_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx164_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx164_2
.Lx164_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx164_2
.Lx164_1:
 call rt_faildescr@PLT
.Lx164_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain122_n19_β
 jmp xchain122_n27_α
 xchain122_n26_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "append/3"
# IR_SUSPEND yield+resume
 xchain122_n27_α:
 lea rax, [rip + xchain122_n27_β]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nrev$2_γ
 xchain122_n27_β:
 jmp xchain122_n26_β
proc_nrev$2_res:
add rsp, 8
pop rbp
proc_nrev$2_β:
jmp qword ptr [rbp + 1248]
proc_nrev$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nrev$2_res]
push rax
mov rax, [rbp + 1352]
mov rbp, [rbp + 1368]
jmp rax
proc_nrev$2_ω:
mov rax, [rbp + 1360]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
  .globl proc_data$2_α
proc_data$2_α:
#=======================================================================================================================
    .global proc_data$2_α
    .global proc_data$2_β
    .global proc_data$2_γ
    .global proc_data$2_ω
  sub rsp, 1376
  mov [rsp + 1352], rcx
  mov [rsp + 1360], rdx
  mov [rsp + 1368], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1288], rsp
  mov rdi, rsp
  mov esi, 1264
  mov edx, 1344
  call rt_jmp_frame_lexprep2@PLT
proc_data$2_α_body:
lea rax, [rip + xchain167_n10_β]
mov qword ptr [rbp + 1264], rax
 xchain167_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp xchain167_n1_α
 xchain167_n0_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain167_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain167_n2_α
# IR_LIT_STRING
 xchain167_n2_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain167_n3_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "[]"
 xchain167_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1152]
 mov rsi, qword ptr [rip + .Lx172_2]
 jmp .Lx172_3
.Lx172_2:
 .quad .Lx172_2_s
.Lx172_2_s:
 .string "[]"
.Lx172_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain167_n5_α
 jmp xchain167_n4_α
 xchain167_n3_β:
 jmp xchain167_n5_α
# IR_VAR_REF
 xchain167_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain167_n6_α
 xchain167_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+976]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp xchain167_n7_α
 xchain167_n5_β:
 jmp proc_data$2_ω
# IR_LIT_INTEGER
 xchain167_n6_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain167_n8_α
.Lx176_0:
 .quad 0
# IR_VAR_REF
 xchain167_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain167_n9_α
 xchain167_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1024]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain167_n5_α
 jmp xchain167_n10_α
 xchain167_n8_β:
 jmp xchain167_n5_α
# IR_LIT_STRING
 xchain167_n9_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain167_n11_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "a"
# IR_SUSPEND yield+resume
 xchain167_n10_α:
 lea rax, [rip + xchain167_n10_β]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2_γ
 xchain167_n10_β:
 jmp xchain167_n5_α
# IR_VAR_REF
 xchain167_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain167_n12_α
 xchain167_n12_α:
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
 je xchain167_n14_α
 jmp xchain167_n13_α
 xchain167_n12_β:
 jmp xchain167_n14_α
# IR_VAR_REF
 xchain167_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain167_n15_α
 xchain167_n14_α:
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
 je proc_data$2_ω
 jmp proc_data$2_ω
 xchain167_n14_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain167_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain167_n16_α
 xchain167_n16_α:
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
 je xchain167_n14_α
 jmp xchain167_n17_α
 xchain167_n16_β:
 jmp xchain167_n14_α
# IR_VAR
 xchain167_n17_α:
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 600], rax
 jmp xchain167_n18_α
# IR_LIT_INTEGER
 xchain167_n18_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain167_n19_α
.Lx194_0:
 .quad 0
 xchain167_n19_α:
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
 je xchain167_n14_α
 jmp xchain167_n20_α
 xchain167_n19_β:
 jmp xchain167_n14_α
# IR_VAR_REF
 xchain167_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain167_n21_α
# IR_VAR
 xchain167_n21_α:
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 472], rax
 jmp xchain167_n22_α
# IR_LIT_INTEGER
 xchain167_n22_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain167_n23_α
.Lx200_0:
 .quad 1
 xchain167_n23_α:
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
 je xchain167_n14_α
 jmp xchain167_n24_α
 xchain167_n23_β:
 jmp xchain167_n14_α
 xchain167_n24_α:
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
 je xchain167_n14_α
 jmp xchain167_n25_α
 xchain167_n24_β:
 jmp xchain167_n14_α
# IR_VAR_REF
 xchain167_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain167_n26_α
# IR_VAR_REF
 xchain167_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain167_n27_α
 xchain167_n27_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx208_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx208_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx208_3]
 lea rdx, [rip + .Lx208_4]
 jmp rax
.Lx208_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx208_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx208_2
.Lx208_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx208_2
.Lx208_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx208_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx208_2
.Lx208_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx208_2
.Lx208_1:
 call rt_faildescr@PLT
.Lx208_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain167_n14_α
 jmp xchain167_n28_α
 xchain167_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "data/2"
# IR_SUSPEND yield+resume
 xchain167_n28_α:
 lea rax, [rip + xchain167_n28_β]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2_γ
 xchain167_n28_β:
 jmp xchain167_n27_β
proc_data$2_res:
add rsp, 8
pop rbp
proc_data$2_β:
jmp qword ptr [rbp + 1264]
proc_data$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_data$2_res]
push rax
mov rax, [rbp + 1352]
mov rbp, [rbp + 1368]
jmp rax
proc_data$2_ω:
mov rax, [rbp + 1360]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
  .globl proc_data$1_α
proc_data$1_α:
#=======================================================================================================================
    .global proc_data$1_α
    .global proc_data$1_β
    .global proc_data$1_γ
    .global proc_data$1_ω
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
proc_data$1_α_body:
lea rax, [rip + xchain211_n8_β]
mov qword ptr [rbp + 416], rax
 xchain211_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_data$1_ω
 jmp xchain211_n1_α
 xchain211_n0_β:
 jmp proc_data$1_ω
# IR_VAR_REF
 xchain211_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain211_n2_α
# IR_VAR_REF
 xchain211_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain211_n3_α
 xchain211_n3_α:
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
 je xchain211_n5_α
 jmp xchain211_n4_α
 xchain211_n3_β:
 jmp xchain211_n5_α
# IR_VAR_REF
 xchain211_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 448]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain211_n6_α
 xchain211_n5_α:
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
 je proc_data$1_ω
 jmp proc_data$1_ω
 xchain211_n5_β:
 jmp proc_data$1_ω
# IR_LIT_INTEGER
 xchain211_n6_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain211_n7_α
.Lx221_0:
 .quad 30
 xchain211_n7_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx223_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx223_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx223_3]
 lea rdx, [rip + .Lx223_4]
 jmp rax
.Lx223_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx223_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx223_2
.Lx223_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx223_2
.Lx223_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx223_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx223_2
.Lx223_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx223_2
.Lx223_1:
 call rt_faildescr@PLT
.Lx223_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain211_n5_α
 jmp xchain211_n8_α
 xchain211_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "data/2"
# IR_SUSPEND yield+resume
 xchain211_n8_α:
 lea rax, [rip + xchain211_n8_β]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$1_γ
 xchain211_n8_β:
 jmp xchain211_n7_β
proc_data$1_res:
add rsp, 8
pop rbp
proc_data$1_β:
jmp qword ptr [rbp + 416]
proc_data$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_data$1_res]
push rax
mov rax, [rbp + 472]
mov rbp, [rbp + 488]
jmp rax
proc_data$1_ω:
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
  lea rsi, [rip + proc_reverse$2_α]
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
  lea rsi, [rip + proc_$reverse_$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1472
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
  lea rsi, [rip + proc_append$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1376
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
  lea rsi, [rip + proc_nrev$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1344
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
  lea rsi, [rip + proc_data$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1344
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
  lea rsi, [rip + proc_data$1_α]
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
 xchain226_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain226_n1_α
 xchain226_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain226_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain226_n2_α
 xchain226_n2_α:
 mov qword ptr [rbp + 464], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx231_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx231_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx231_3]
 lea rdx, [rip + .Lx231_4]
 jmp rax
.Lx231_3:
 mov qword ptr [rbp + 472], rsp
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx231_5
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx231_2
.Lx231_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx231_2
.Lx231_4:
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx231_6
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx231_2
.Lx231_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx231_2
.Lx231_1:
 call rt_faildescr@PLT
.Lx231_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain226_n4_α
 jmp xchain226_n3_α
 xchain226_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 472]
 jmp qword ptr [rsp]
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "data/1"
# IR_VAR_REF
 xchain226_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 560]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain226_n5_α
 xchain226_n4_α:
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
 xchain226_n4_β:
 jmp main_ω
# IR_VAR_REF
 xchain226_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain226_n6_α
 xchain226_n6_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx238_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx238_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx238_3]
 lea rdx, [rip + .Lx238_4]
 jmp rax
.Lx238_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx238_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx238_2
.Lx238_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx238_2
.Lx238_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx238_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx238_2
.Lx238_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx238_2
.Lx238_1:
 call rt_faildescr@PLT
.Lx238_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain226_n2_β
 jmp xchain226_n7_α
 xchain226_n6_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "nrev/2"
# IR_VAR
 xchain226_n7_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
 jmp xchain226_n8_α
 xchain226_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn242: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn242]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain226_n6_β
 jmp xchain226_n9_α
 xchain226_n8_β:
 jmp xchain226_n6_β
# IR_LIT_STRING
 xchain226_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain226_n10_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string ""
 xchain226_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn245: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain226_n6_β
 jmp xchain226_n11_α
 xchain226_n10_β:
 jmp xchain226_n6_β
# IR_MOVE_LABEL
 xchain226_n11_α:
 lea rax, [rip + xchain226_n6_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain226_n12_α:
 jmp qword ptr [rbp + 32]
 xchain226_n12_β:
 jmp main_ω
main_β:
jmp xchain226_n12_α
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
