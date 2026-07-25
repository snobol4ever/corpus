  .intel_syntax noprefix
  .text
  .globl proc_sel$2F3_α
proc_sel$2F3_α:
#=======================================================================================================================
    .global proc_sel$2F3_α
    .global proc_sel$2F3_β
    .global proc_sel$2F3_γ
    .global proc_sel$2F3_ω
  sub rsp, 1360
  mov [rsp + 1336], rcx
  mov [rsp + 1344], rdx
  mov [rsp + 1352], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1240], rsp
  mov rdi, rsp
  mov esi, 1216
  mov edx, 1328
  call rt_jmp_frame_lexprep2@PLT
proc_sel$2F3_α_body:
lea rax, [rip + xchain0_n19_β]
mov qword ptr [rbp + 1216], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sel$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sel$2F3_ω
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
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+800]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_sel$2F3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_sel$2F3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n11_α
 xchain0_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+992]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
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
 je proc_sel$2F3_ω
 jmp proc_sel$2F3_ω
 xchain0_n14_β:
 jmp proc_sel$2F3_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n18_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n20_α
# IR_SUSPEND yield+resume
 xchain0_n19_α:
 lea rax, [rip + xchain0_n19_β]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n19_β:
 jmp xchain0_n5_α
 xchain0_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+560]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n24_α
 xchain0_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n26_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n28_α
 xchain0_n28_α:
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
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx49_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx49_2
.Lx49_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx49_2
.Lx49_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx49_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx49_2
.Lx49_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx49_2
.Lx49_1:
 call rt_faildescr@PLT
.Lx49_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "sel/3"
# IR_SUSPEND yield+resume
 xchain0_n29_α:
 lea rax, [rip + xchain0_n29_β]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n29_β:
 jmp xchain0_n28_β
proc_sel$2F3_res:
add rsp, 8
pop rbp
proc_sel$2F3_β:
jmp qword ptr [rbp + 1216]
proc_sel$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sel$2F3_res]
push rax
mov rax, [rbp + 1336]
mov rbp, [rbp + 1352]
jmp rax
proc_sel$2F3_ω:
mov rax, [rbp + 1344]
lea rsp, [rbp + 1360]
mov rbp, [rbp + 1352]
jmp rax
  .globl proc_q10$2F1_α
proc_q10$2F1_α:
#=======================================================================================================================
    .global proc_q10$2F1_α
    .global proc_q10$2F1_β
    .global proc_q10$2F1_γ
    .global proc_q10$2F1_ω
  sub rsp, 1904
  mov [rsp + 1880], rcx
  mov [rsp + 1888], rdx
  mov [rsp + 1896], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1848], rsp
  mov rdi, rsp
  mov esi, 1824
  mov edx, 1872
  call rt_jmp_frame_lexprep2@PLT
proc_q10$2F1_α_body:
lea rax, [rip + xchain52_n38_β]
mov qword ptr [rbp + 1824], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_q10$2F1_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1728]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1728]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_LIT_STRING
 xchain52_n4_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 1656], rax
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
 je proc_q10$2F1_ω
 jmp proc_q10$2F1_ω
 xchain52_n5_β:
 jmp proc_q10$2F1_ω
# IR_LIT_INTEGER
 xchain52_n6_α:
 mov qword ptr [rbp + 1536], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain52_n7_α
.Lx61_0:
 .quad 1
# IR_LIT_STRING
 xchain52_n7_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain52_n8_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n8_α:
 mov qword ptr [rbp + 1392], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain52_n9_α
.Lx63_0:
 .quad 2
# IR_LIT_STRING
 xchain52_n9_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain52_n10_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n10_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain52_n11_α
.Lx65_0:
 .quad 3
# IR_LIT_STRING
 xchain52_n11_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain52_n12_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n12_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain52_n13_α
.Lx67_0:
 .quad 4
# IR_LIT_STRING
 xchain52_n13_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain52_n14_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n14_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain52_n15_α
.Lx69_0:
 .quad 5
# IR_LIT_STRING
 xchain52_n15_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain52_n16_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n16_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain52_n17_α
.Lx71_0:
 .quad 6
# IR_LIT_STRING
 xchain52_n17_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain52_n18_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n18_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain52_n19_α
.Lx73_0:
 .quad 7
# IR_LIT_STRING
 xchain52_n19_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain52_n20_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n20_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain52_n21_α
.Lx75_0:
 .quad 8
# IR_LIT_STRING
 xchain52_n21_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain52_n22_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n22_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain52_n23_α
.Lx77_0:
 .quad 9
# IR_LIT_STRING
 xchain52_n23_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain52_n24_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n24_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain52_n25_α
.Lx79_0:
 .quad 10
# IR_LIT_STRING
 xchain52_n25_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain52_n26_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "[]"
 xchain52_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+304]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+320]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n27_α
 xchain52_n26_β:
 jmp proc_q10$2F1_ω
 xchain52_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+448]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+464]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n28_α
 xchain52_n27_β:
 jmp proc_q10$2F1_ω
 xchain52_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+592]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+608]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n29_α
 xchain52_n28_β:
 jmp proc_q10$2F1_ω
 xchain52_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+736]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+752]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n30_α
 xchain52_n29_β:
 jmp proc_q10$2F1_ω
 xchain52_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+880]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+896]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n31_α
 xchain52_n30_β:
 jmp proc_q10$2F1_ω
 xchain52_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+1024]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1032], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+1040]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n32_α
 xchain52_n31_β:
 jmp proc_q10$2F1_ω
 xchain52_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1168]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1184]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n33_α
 xchain52_n32_β:
 jmp proc_q10$2F1_ω
 xchain52_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1312]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1320], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+1328]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n34_α
 xchain52_n33_β:
 jmp proc_q10$2F1_ω
 xchain52_n34_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1456]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1464], rax
# marshal arg2 = producer-box slot [zr+1280] -> [zr+1472]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n35_α
 xchain52_n34_β:
 jmp proc_q10$2F1_ω
 xchain52_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1600]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1608], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1616]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n36_α
 xchain52_n35_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain52_n37_α
 xchain52_n37_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
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
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx94_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx94_2
.Lx94_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx94_2
.Lx94_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx94_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx94_2
.Lx94_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx94_2
.Lx94_1:
 call rt_faildescr@PLT
.Lx94_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n38_α
 xchain52_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "q/2"
# IR_SUSPEND yield+resume
 xchain52_n38_α:
 lea rax, [rip + xchain52_n38_β]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_q10$2F1_γ
 xchain52_n38_β:
 jmp xchain52_n37_β
proc_q10$2F1_res:
add rsp, 8
pop rbp
proc_q10$2F1_β:
jmp qword ptr [rbp + 1824]
proc_q10$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q10$2F1_res]
push rax
mov rax, [rbp + 1880]
mov rbp, [rbp + 1896]
jmp rax
proc_q10$2F1_ω:
mov rax, [rbp + 1888]
lea rsp, [rbp + 1904]
mov rbp, [rbp + 1896]
jmp rax
  .globl proc_test$2F2_α
proc_test$2F2_α:
#=======================================================================================================================
    .global proc_test$2F2_α
    .global proc_test$2F2_β
    .global proc_test$2F2_γ
    .global proc_test$2F2_ω
  sub rsp, 1392
  mov [rsp + 1368], rcx
  mov [rsp + 1376], rdx
  mov [rsp + 1384], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1304], rsp
  mov rdi, rsp
  mov esi, 1280
  mov edx, 1360
  call rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
lea rax, [rip + xchain97_n19_β]
mov qword ptr [rbp + 1280], rax
 xchain97_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_test$2F2_ω
 jmp xchain97_n1_α
 xchain97_n0_β:
 jmp proc_test$2F2_ω
# IR_VAR_REF
 xchain97_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain97_n2_α
# IR_LIT_INTEGER
 xchain97_n2_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain97_n3_α
.Lx101_0:
 .quad 2
# IR_LIT_STRING
 xchain97_n3_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain97_n4_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "[]"
 xchain97_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1248] -> [zr+1168]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain97_n6_α
 jmp xchain97_n5_α
 xchain97_n4_β:
 jmp xchain97_n6_α
# IR_VAR_REF
 xchain97_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain97_n7_α
# IR_VAR_REF
 xchain97_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain97_n8_α
# IR_LIT_STRING
 xchain97_n7_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain97_n9_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain97_n8_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain97_n10_α
.Lx109_0:
 .quad 3
 xchain97_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1024]
 mov rsi, qword ptr [rip + .Lx110_2]
 jmp .Lx110_3
.Lx110_2:
 .quad .Lx110_2_s
.Lx110_2_s:
 .string "[]"
.Lx110_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain97_n12_α
 jmp xchain97_n11_α
 xchain97_n9_β:
 jmp xchain97_n12_α
# IR_LIT_INTEGER
 xchain97_n10_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain97_n13_α
.Lx111_0:
 .quad 0
# IR_VAR_REF
 xchain97_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain97_n14_α
 xchain97_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_test$2F2_ω
 jmp xchain97_n6_α
 xchain97_n12_β:
 jmp proc_test$2F2_ω
 xchain97_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+816] -> [zr+736]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n15_α
 xchain97_n13_β:
 jmp xchain97_n16_α
# IR_VAR_REF
 xchain97_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain97_n17_α
# IR_VAR_REF
 xchain97_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain97_n18_α
 xchain97_n16_α:
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
 je proc_test$2F2_ω
 jmp proc_test$2F2_ω
 xchain97_n16_β:
 jmp proc_test$2F2_ω
 xchain97_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain97_n12_α
 jmp xchain97_n19_α
 xchain97_n17_β:
 jmp xchain97_n12_α
# IR_VAR_REF
 xchain97_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain97_n20_α
# IR_SUSPEND yield+resume
 xchain97_n19_α:
 lea rax, [rip + xchain97_n19_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2F2_γ
 xchain97_n19_β:
 jmp xchain97_n12_α
# IR_VAR_REF
 xchain97_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain97_n21_α
 xchain97_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+576]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n22_α
 xchain97_n21_β:
 jmp xchain97_n16_α
# IR_VAR_REF
 xchain97_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain97_n23_α
# IR_VAR_REF
 xchain97_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain97_n24_α
 xchain97_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n25_α
 xchain97_n24_β:
 jmp xchain97_n16_α
# IR_VAR_REF
 xchain97_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain97_n26_α
# IR_VAR_REF
 xchain97_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain97_n27_α
 xchain97_n27_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx139_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx139_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx139_3]
 lea rdx, [rip + .Lx139_4]
 jmp rax
.Lx139_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx139_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx139_2
.Lx139_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx139_2
.Lx139_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx139_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx139_2
.Lx139_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx139_2
.Lx139_1:
 call rt_faildescr@PLT
.Lx139_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n28_α
 xchain97_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "test/2"
# IR_VAR_REF
 xchain97_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain97_n29_α
# IR_VAR_REF
 xchain97_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain97_n30_α
 xchain97_n30_α:
 lea rsi, [rbp + 208]
 lea rdx, [rbp + 240]
 call proc_nd$2F2_dcα
 jmp .Lx145_2
.Lx145_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain97_n27_β
 jmp xchain97_n31_α
 xchain97_n30_β:
 jmp xchain97_n27_β
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "nd/2"
# IR_SUSPEND yield+resume
 xchain97_n31_α:
 lea rax, [rip + xchain97_n31_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2F2_γ
 xchain97_n31_β:
 jmp xchain97_n30_β
proc_test$2F2_res:
add rsp, 8
pop rbp
proc_test$2F2_β:
jmp qword ptr [rbp + 1280]
proc_test$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_test$2F2_res]
push rax
mov rax, [rbp + 1368]
mov rbp, [rbp + 1384]
jmp rax
proc_test$2F2_ω:
mov rax, [rbp + 1376]
lea rsp, [rbp + 1392]
mov rbp, [rbp + 1384]
jmp rax
  .globl proc_nd$2F2_α
proc_nd$2F2_α:
#=======================================================================================================================
    .global proc_nd$2F2_α
    .global proc_nd$2F2_β
    .global proc_nd$2F2_γ
    .global proc_nd$2F2_ω
  sub rsp, 1664
  mov [rsp + 1640], rcx
  mov [rsp + 1648], rdx
  mov [rsp + 1656], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1512], rsp
  mov rdi, rsp
  mov esi, 1504
  mov edx, 1632
  call rt_jmp_frame_lexprep2@PLT
proc_nd$2F2_α_body:
 xchain148_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nd$2F2_ω
 jmp xchain148_n1_α
 xchain148_n0_β:
 jmp proc_nd$2F2_ω
# IR_VAR_REF
 xchain148_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain148_n2_α
# IR_LIT_STRING
 xchain148_n2_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain148_n3_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "p"
# IR_VAR_REF
 xchain148_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain148_n4_α
# IR_VAR_REF
 xchain148_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain148_n5_α
 xchain148_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1424]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1432], rax
# marshal arg2 = producer-box slot [zr+1360] -> [zr+1440]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n6_α
 xchain148_n5_β:
 jmp xchain148_n7_α
 xchain148_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1280]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n8_α
 xchain148_n6_β:
 jmp xchain148_n7_α
 xchain148_n7_α:
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
 je proc_nd$2F2_ω
 jmp proc_nd$2F2_ω
 xchain148_n7_β:
 jmp proc_nd$2F2_ω
# IR_VAR_REF
 xchain148_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain148_n9_α
# IR_LIT_STRING
 xchain148_n9_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain148_n10_α
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "p"
# IR_VAR_REF
 xchain148_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain148_n11_α
# IR_VAR_REF
 xchain148_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain148_n12_α
 xchain148_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1168]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n13_α
 xchain148_n12_β:
 jmp xchain148_n7_α
 xchain148_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1024]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n14_α
 xchain148_n13_β:
 jmp xchain148_n7_α
# IR_VAR_REF
 xchain148_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain148_n15_α
# IR_VAR
 xchain148_n15_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 936], rax
 jmp xchain148_n16_α
# IR_VAR
 xchain148_n16_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 968], rax
 jmp xchain148_n17_α
 xchain148_n17_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n18_α
 xchain148_n17_β:
 jmp xchain148_n7_α
 xchain148_n18_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n19_α
 xchain148_n18_β:
 jmp xchain148_n7_α
# IR_VAR_REF
 xchain148_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain148_n20_α
# IR_VAR
 xchain148_n20_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 728], rax
 jmp xchain148_n21_α
# IR_VAR
 xchain148_n21_α:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 760], rax
 jmp xchain148_n22_α
 xchain148_n22_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n23_α
 xchain148_n22_β:
 jmp xchain148_n7_α
 xchain148_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n24_α
 xchain148_n23_β:
 jmp xchain148_n7_α
# IR_VAR
 xchain148_n24_α:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 520], rax
 jmp xchain148_n25_α
# IR_VAR
 xchain148_n25_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 552], rax
 jmp xchain148_n26_α
 xchain148_n26_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n27_α
 xchain148_n26_β:
 jmp xchain148_n7_α
# IR_VAR_REF
 xchain148_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain148_n28_α
# IR_VAR
 xchain148_n28_α:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 408], rax
 jmp xchain148_n29_α
# IR_VAR
 xchain148_n29_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 440], rax
 jmp xchain148_n30_α
 xchain148_n30_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n31_α
 xchain148_n30_β:
 jmp xchain148_n7_α
 xchain148_n31_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n32_α
 xchain148_n31_β:
 jmp xchain148_n7_α
# IR_VAR
 xchain148_n32_α:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 200], rax
 jmp xchain148_n33_α
# IR_VAR
 xchain148_n33_α:
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 232], rax
 jmp xchain148_n34_α
 xchain148_n34_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n35_α
 xchain148_n34_β:
 jmp xchain148_n7_α
# IR_MOVE_LABEL
 xchain148_n35_α:
 lea rax, [rip + xchain148_n7_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_nd$2F2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain148_n36_α:
 jmp qword ptr [rbp + 64]
 xchain148_n36_β:
 jmp proc_nd$2F2_ω
proc_nd$2F2_res:
add rsp, 8
pop rbp
proc_nd$2F2_β:
jmp xchain148_n36_α
proc_nd$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1640]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_nd$2F2_ω:
mov rax, [rbp + 1648]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_nd$2F2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1680
 mov qword ptr [rsp + 1672], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1632], r11
 lea rax, [rip + .Lx207_2]
 mov qword ptr [rbp + 1640], rax
 lea rax, [rip + .Lx207_3]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1512], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 1504
 mov edx, 1632
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nd$2F2_α_body
.Lx207_2:
 mov rdx, qword ptr [rsp + -1680]
 mov rcx, rsp
 add rcx, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx207_3:
 mov rdi, qword ptr [rsp + -1680]
 mov rsi, rsp
 add rsi, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_safe$2F2_α
proc_safe$2F2_α:
#=======================================================================================================================
    .global proc_safe$2F2_α
    .global proc_safe$2F2_β
    .global proc_safe$2F2_γ
    .global proc_safe$2F2_ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1144], rsp
  mov rdi, rsp
  mov esi, 1120
  mov edx, 1200
  call rt_jmp_frame_lexprep2@PLT
proc_safe$2F2_α_body:
lea rax, [rip + xchain208_n10_β]
mov qword ptr [rbp + 1120], rax
 xchain208_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_safe$2F2_ω
 jmp xchain208_n1_α
 xchain208_n0_β:
 jmp proc_safe$2F2_ω
# IR_VAR_REF
 xchain208_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain208_n2_α
# IR_VAR_REF
 xchain208_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain208_n3_α
 xchain208_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n4_α
 xchain208_n3_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain208_n6_α
 xchain208_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_safe$2F2_ω
 jmp xchain208_n7_α
 xchain208_n5_β:
 jmp proc_safe$2F2_ω
# IR_LIT_STRING
 xchain208_n6_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain208_n8_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "[]"
# IR_VAR_REF
 xchain208_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain208_n9_α
 xchain208_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 912]
 mov rsi, qword ptr [rip + .Lx221_2]
 jmp .Lx221_3
.Lx221_2:
 .quad .Lx221_2_s
.Lx221_2_s:
 .string "[]"
.Lx221_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n10_α
 xchain208_n8_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain208_n11_α
# IR_SUSPEND yield+resume
 xchain208_n10_α:
 lea rax, [rip + xchain208_n10_β]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2F2_γ
 xchain208_n10_β:
 jmp xchain208_n5_α
 xchain208_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n12_α
 xchain208_n11_β:
 jmp xchain208_n13_α
# IR_VAR_REF
 xchain208_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain208_n14_α
 xchain208_n13_α:
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
 je proc_safe$2F2_ω
 jmp proc_safe$2F2_ω
 xchain208_n13_β:
 jmp proc_safe$2F2_ω
# IR_VAR_REF
 xchain208_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain208_n15_α
# IR_VAR_REF
 xchain208_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain208_n16_α
 xchain208_n16_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+624]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n17_α
 xchain208_n16_β:
 jmp xchain208_n13_α
# IR_VAR_REF
 xchain208_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain208_n18_α
# IR_VAR_REF
 xchain208_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain208_n19_α
 xchain208_n19_α:
 mov qword ptr [rbp + 480], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx240_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx240_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx240_3]
 lea rdx, [rip + .Lx240_4]
 jmp rax
.Lx240_3:
 mov qword ptr [rbp + 488], rsp
 mov rax, qword ptr [rbp + 480]
 test rax, rax
 jne .Lx240_5
 mov qword ptr [rbp + 480], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx240_2
.Lx240_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx240_2
.Lx240_4:
 mov rax, qword ptr [rbp + 480]
 test rax, rax
 jne .Lx240_6
 mov qword ptr [rbp + 480], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx240_2
.Lx240_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx240_2
.Lx240_1:
 call rt_faildescr@PLT
.Lx240_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n20_α
 xchain208_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 488]
 jmp qword ptr [rsp]
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "test/2"
# IR_LIT_STRING
 xchain208_n20_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain208_n21_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_VAR_REF
 xchain208_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain208_n22_α
# IR_VAR_REF
 xchain208_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain208_n23_α
 xchain208_n23_α:
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
 je xchain208_n13_α
 jmp xchain208_n24_α
 xchain208_n23_β:
 jmp xchain208_n13_α
# IR_VAR_REF
 xchain208_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain208_n25_α
 xchain208_n25_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx250_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx250_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx250_3]
 lea rdx, [rip + .Lx250_4]
 jmp rax
.Lx250_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx250_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx250_2
.Lx250_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx250_2
.Lx250_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx250_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx250_2
.Lx250_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx250_2
.Lx250_1:
 call rt_faildescr@PLT
.Lx250_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain208_n19_β
 jmp xchain208_n26_α
 xchain208_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain208_n26_α:
 lea rax, [rip + xchain208_n26_β]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2F2_γ
 xchain208_n26_β:
 jmp xchain208_n25_β
proc_safe$2F2_res:
add rsp, 8
pop rbp
proc_safe$2F2_β:
jmp qword ptr [rbp + 1120]
proc_safe$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_safe$2F2_res]
push rax
mov rax, [rbp + 1208]
mov rbp, [rbp + 1224]
jmp rax
proc_safe$2F2_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_perm$2F2_α
proc_perm$2F2_α:
#=======================================================================================================================
    .global proc_perm$2F2_α
    .global proc_perm$2F2_β
    .global proc_perm$2F2_γ
    .global proc_perm$2F2_ω
  sub rsp, 1312
  mov [rsp + 1288], rcx
  mov [rsp + 1296], rdx
  mov [rsp + 1304], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1184
  mov edx, 1280
  call rt_jmp_frame_lexprep2@PLT
proc_perm$2F2_α_body:
lea rax, [rip + xchain253_n19_β]
mov qword ptr [rbp + 1184], rax
 xchain253_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_perm$2F2_ω
 jmp xchain253_n1_α
 xchain253_n0_β:
 jmp proc_perm$2F2_ω
# IR_VAR_REF
 xchain253_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain253_n2_α
# IR_LIT_INTEGER
 xchain253_n2_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain253_n3_α
.Lx257_0:
 .quad 2
# IR_LIT_STRING
 xchain253_n3_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain253_n4_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "[]"
 xchain253_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1072]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain253_n6_α
 jmp xchain253_n5_α
 xchain253_n4_β:
 jmp xchain253_n6_α
# IR_VAR_REF
 xchain253_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain253_n8_α
# IR_LIT_STRING
 xchain253_n7_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain253_n9_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain253_n10_α
 xchain253_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 928]
 mov rsi, qword ptr [rip + .Lx267_2]
 jmp .Lx267_3
.Lx267_2:
 .quad .Lx267_2_s
.Lx267_2_s:
 .string "[]"
.Lx267_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain253_n12_α
 jmp xchain253_n11_α
 xchain253_n9_β:
 jmp xchain253_n12_α
 xchain253_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain253_n14_α
 jmp xchain253_n13_α
 xchain253_n10_β:
 jmp xchain253_n14_α
# IR_VAR_REF
 xchain253_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain253_n15_α
 xchain253_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+768]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je proc_perm$2F2_ω
 jmp xchain253_n6_α
 xchain253_n12_β:
 jmp proc_perm$2F2_ω
# IR_VAR_REF
 xchain253_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain253_n16_α
 xchain253_n14_α:
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
 je proc_perm$2F2_ω
 jmp proc_perm$2F2_ω
 xchain253_n14_β:
 jmp proc_perm$2F2_ω
# IR_LIT_STRING
 xchain253_n15_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain253_n17_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain253_n18_α
 xchain253_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 816]
 mov rsi, qword ptr [rip + .Lx278_2]
 jmp .Lx278_3
.Lx278_2:
 .quad .Lx278_2_s
.Lx278_2_s:
 .string "[]"
.Lx278_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain253_n12_α
 jmp xchain253_n19_α
 xchain253_n17_β:
 jmp xchain253_n12_α
# IR_VAR_REF
 xchain253_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain253_n20_α
# IR_SUSPEND yield+resume
 xchain253_n19_α:
 lea rax, [rip + xchain253_n19_β]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2F2_γ
 xchain253_n19_β:
 jmp xchain253_n12_α
 xchain253_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain253_n14_α
 jmp xchain253_n21_α
 xchain253_n20_β:
 jmp xchain253_n14_α
# IR_VAR_REF
 xchain253_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain253_n22_α
# IR_VAR_REF
 xchain253_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain253_n23_α
# IR_VAR_REF
 xchain253_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain253_n24_α
 xchain253_n24_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx291_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx291_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx291_3]
 lea rdx, [rip + .Lx291_4]
 jmp rax
.Lx291_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx291_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx291_2
.Lx291_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx291_2
.Lx291_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx291_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx291_2
.Lx291_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx291_2
.Lx291_1:
 call rt_faildescr@PLT
.Lx291_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain253_n14_α
 jmp xchain253_n25_α
 xchain253_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain253_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain253_n26_α
# IR_VAR_REF
 xchain253_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain253_n27_α
 xchain253_n27_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx297_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx297_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx297_3]
 lea rdx, [rip + .Lx297_4]
 jmp rax
.Lx297_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx297_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx297_2
.Lx297_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx297_2
.Lx297_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx297_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx297_2
.Lx297_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx297_2
.Lx297_1:
 call rt_faildescr@PLT
.Lx297_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain253_n24_β
 jmp xchain253_n28_α
 xchain253_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "perm/2"
# IR_SUSPEND yield+resume
 xchain253_n28_α:
 lea rax, [rip + xchain253_n28_β]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2F2_γ
 xchain253_n28_β:
 jmp xchain253_n27_β
proc_perm$2F2_res:
add rsp, 8
pop rbp
proc_perm$2F2_β:
jmp qword ptr [rbp + 1184]
proc_perm$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_perm$2F2_res]
push rax
mov rax, [rbp + 1288]
mov rbp, [rbp + 1304]
jmp rax
proc_perm$2F2_ω:
mov rax, [rbp + 1296]
lea rsp, [rbp + 1312]
mov rbp, [rbp + 1304]
jmp rax
  .globl proc_pair$2F3_α
proc_pair$2F3_α:
#=======================================================================================================================
    .global proc_pair$2F3_α
    .global proc_pair$2F3_β
    .global proc_pair$2F3_γ
    .global proc_pair$2F3_ω
  sub rsp, 1824
  mov [rsp + 1800], rcx
  mov [rsp + 1808], rdx
  mov [rsp + 1816], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1704], rsp
  mov rdi, rsp
  mov esi, 1680
  mov edx, 1792
  call rt_jmp_frame_lexprep2@PLT
proc_pair$2F3_α_body:
lea rax, [rip + xchain300_n25_β]
mov qword ptr [rbp + 1680], rax
 xchain300_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_pair$2F3_ω
 jmp xchain300_n1_α
 xchain300_n0_β:
 jmp proc_pair$2F3_ω
# IR_VAR_REF
 xchain300_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain300_n2_α
# IR_LIT_INTEGER
 xchain300_n2_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain300_n3_α
.Lx304_0:
 .quad 2
# IR_LIT_STRING
 xchain300_n3_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain300_n4_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "[]"
 xchain300_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1648] -> [zr+1568]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain300_n6_α
 jmp xchain300_n5_α
 xchain300_n4_β:
 jmp xchain300_n6_α
# IR_VAR_REF
 xchain300_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain300_n7_α
# IR_VAR_REF
 xchain300_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain300_n8_α
# IR_LIT_STRING
 xchain300_n7_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain300_n9_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain300_n8_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain300_n10_α
.Lx312_0:
 .quad 3
 xchain300_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1424]
 mov rsi, qword ptr [rip + .Lx313_2]
 jmp .Lx313_3
.Lx313_2:
 .quad .Lx313_2_s
.Lx313_2_s:
 .string "[]"
.Lx313_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n11_α
 xchain300_n9_β:
 jmp xchain300_n12_α
# IR_LIT_INTEGER
 xchain300_n10_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain300_n13_α
.Lx314_0:
 .quad 0
# IR_VAR_REF
 xchain300_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain300_n14_α
 xchain300_n12_α:
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
 je proc_pair$2F3_ω
 jmp xchain300_n6_α
 xchain300_n12_β:
 jmp proc_pair$2F3_ω
 xchain300_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1024]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n15_α
 xchain300_n13_β:
 jmp xchain300_n16_α
# IR_LIT_STRING
 xchain300_n14_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain300_n17_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "[]"
# IR_VAR_REF
 xchain300_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain300_n18_α
 xchain300_n16_α:
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
 je proc_pair$2F3_ω
 jmp proc_pair$2F3_ω
 xchain300_n16_β:
 jmp proc_pair$2F3_ω
 xchain300_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1312]
 mov rsi, qword ptr [rip + .Lx323_2]
 jmp .Lx323_3
.Lx323_2:
 .quad .Lx323_2_s
.Lx323_2_s:
 .string "[]"
.Lx323_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n19_α
 xchain300_n17_β:
 jmp xchain300_n12_α
# IR_VAR_REF
 xchain300_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain300_n20_α
# IR_VAR_REF
 xchain300_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain300_n21_α
# IR_VAR_REF
 xchain300_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain300_n22_α
# IR_LIT_STRING
 xchain300_n21_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain300_n23_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "[]"
 xchain300_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+864]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n24_α
 xchain300_n22_β:
 jmp xchain300_n16_α
 xchain300_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1200]
 mov rsi, qword ptr [rip + .Lx332_2]
 jmp .Lx332_3
.Lx332_2:
 .quad .Lx332_2_s
.Lx332_2_s:
 .string "[]"
.Lx332_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n25_α
 xchain300_n23_β:
 jmp xchain300_n12_α
# IR_VAR_REF
 xchain300_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain300_n26_α
# IR_SUSPEND yield+resume
 xchain300_n25_α:
 lea rax, [rip + xchain300_n25_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$2F3_γ
 xchain300_n25_β:
 jmp xchain300_n12_α
# IR_VAR_REF
 xchain300_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain300_n27_α
# IR_VAR_REF
 xchain300_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain300_n28_α
 xchain300_n28_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+704]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n29_α
 xchain300_n28_β:
 jmp xchain300_n16_α
# IR_VAR_REF
 xchain300_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain300_n30_α
# IR_LIT_STRING
 xchain300_n30_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain300_n31_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "p"
# IR_VAR_REF
 xchain300_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain300_n32_α
# IR_VAR_REF
 xchain300_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain300_n33_α
 xchain300_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+544]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+560]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n34_α
 xchain300_n33_β:
 jmp xchain300_n16_α
# IR_VAR_REF
 xchain300_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain300_n35_α
 xchain300_n35_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+416]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+432]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n36_α
 xchain300_n35_β:
 jmp xchain300_n16_α
# IR_VAR_REF
 xchain300_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain300_n37_α
# IR_VAR_REF
 xchain300_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain300_n38_α
# IR_VAR_REF
 xchain300_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain300_n39_α
 xchain300_n39_α:
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
 mov rdi, qword ptr [rip + .Lx360_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx360_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx360_3]
 lea rdx, [rip + .Lx360_4]
 jmp rax
.Lx360_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx360_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx360_2
.Lx360_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx360_2
.Lx360_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx360_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx360_2
.Lx360_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx360_2
.Lx360_1:
 call rt_faildescr@PLT
.Lx360_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n40_α
 xchain300_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "pair/3"
# IR_SUSPEND yield+resume
 xchain300_n40_α:
 lea rax, [rip + xchain300_n40_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$2F3_γ
 xchain300_n40_β:
 jmp xchain300_n39_β
proc_pair$2F3_res:
add rsp, 8
pop rbp
proc_pair$2F3_β:
jmp qword ptr [rbp + 1680]
proc_pair$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_pair$2F3_res]
push rax
mov rax, [rbp + 1800]
mov rbp, [rbp + 1816]
jmp rax
proc_pair$2F3_ω:
mov rax, [rbp + 1808]
lea rsp, [rbp + 1824]
mov rbp, [rbp + 1816]
jmp rax
  .globl proc_q$2F2_α
proc_q$2F2_α:
#=======================================================================================================================
    .global proc_q$2F2_α
    .global proc_q$2F2_β
    .global proc_q$2F2_γ
    .global proc_q$2F2_ω
  sub rsp, 960
  mov [rsp + 936], rcx
  mov [rsp + 944], rdx
  mov [rsp + 952], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 872], rsp
  mov rdi, rsp
  mov esi, 848
  mov edx, 928
  call rt_jmp_frame_lexprep2@PLT
proc_q$2F2_α_body:
lea rax, [rip + xchain363_n18_β]
mov qword ptr [rbp + 848], rax
 xchain363_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_q$2F2_ω
 jmp xchain363_n1_α
 xchain363_n0_β:
 jmp proc_q$2F2_ω
# IR_VAR_REF
 xchain363_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain363_n2_α
# IR_VAR_REF
 xchain363_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain363_n3_α
 xchain363_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain363_n5_α
 jmp xchain363_n4_α
 xchain363_n3_β:
 jmp xchain363_n5_α
# IR_VAR_REF
 xchain363_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain363_n6_α
 xchain363_n5_α:
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
 je proc_q$2F2_ω
 jmp proc_q$2F2_ω
 xchain363_n5_β:
 jmp proc_q$2F2_ω
# IR_VAR_REF
 xchain363_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain363_n7_α
 xchain363_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain363_n5_α
 jmp xchain363_n8_α
 xchain363_n7_β:
 jmp xchain363_n5_α
# IR_VAR_REF
 xchain363_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain363_n9_α
# IR_VAR_REF
 xchain363_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain363_n10_α
 xchain363_n10_α:
 mov qword ptr [rbp + 528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx381_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx381_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx381_3]
 lea rdx, [rip + .Lx381_4]
 jmp rax
.Lx381_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx381_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx381_2
.Lx381_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx381_2
.Lx381_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx381_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx381_2
.Lx381_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx381_2
.Lx381_1:
 call rt_faildescr@PLT
.Lx381_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain363_n5_α
 jmp xchain363_n11_α
 xchain363_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "perm/2"
# IR_VAR_REF
 xchain363_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain363_n12_α
# IR_VAR_REF
 xchain363_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain363_n13_α
# IR_VAR_REF
 xchain363_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain363_n14_α
 xchain363_n14_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx389_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx389_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx389_3]
 lea rdx, [rip + .Lx389_4]
 jmp rax
.Lx389_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx389_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx389_2
.Lx389_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx389_2
.Lx389_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx389_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx389_2
.Lx389_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx389_2
.Lx389_1:
 call rt_faildescr@PLT
.Lx389_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain363_n10_β
 jmp xchain363_n15_α
 xchain363_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "pair/3"
# IR_LIT_STRING
 xchain363_n15_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain363_n16_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "[]"
# IR_VAR_REF
 xchain363_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain363_n17_α
 xchain363_n17_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx394_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx394_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx394_3]
 lea rdx, [rip + .Lx394_4]
 jmp rax
.Lx394_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx394_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx394_2
.Lx394_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx394_2
.Lx394_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx394_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx394_2
.Lx394_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx394_2
.Lx394_1:
 call rt_faildescr@PLT
.Lx394_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain363_n14_β
 jmp xchain363_n18_α
 xchain363_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain363_n18_α:
 lea rax, [rip + xchain363_n18_β]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_q$2F2_γ
 xchain363_n18_β:
 jmp xchain363_n17_β
proc_q$2F2_res:
add rsp, 8
pop rbp
proc_q$2F2_β:
jmp qword ptr [rbp + 848]
proc_q$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q$2F2_res]
push rax
mov rax, [rbp + 936]
mov rbp, [rbp + 952]
jmp rax
proc_q$2F2_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "sel/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sel$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1328
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
  lea rsi, [rip + proc_q10$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1872
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
  lea rsi, [rip + proc_test$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1360
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
  lea rsi, [rip + proc_nd$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1632
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nd$2F2_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "safe/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_safe$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1200
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
  lea rsi, [rip + proc_perm$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1280
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
  lea rsi, [rip + proc_pair$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1792
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
  lea rsi, [rip + proc_q$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 928
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
  mov qword ptr [rsp + 344], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain397_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain397_n1_α
 xchain397_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain397_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain397_n2_α
 xchain397_n2_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx402_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx402_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx402_3]
 lea rdx, [rip + .Lx402_4]
 jmp rax
.Lx402_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx402_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx402_2
.Lx402_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx402_2
.Lx402_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx402_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx402_2
.Lx402_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx402_2
.Lx402_1:
 call rt_faildescr@PLT
.Lx402_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain397_n4_α
 jmp xchain397_n3_α
 xchain397_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "q10/1"
# IR_VAR
 xchain397_n3_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 216], rax
 jmp xchain397_n5_α
 xchain397_n4_α:
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
 xchain397_n4_β:
 jmp main_ω
 xchain397_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn407: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn407]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain397_n2_β
 jmp xchain397_n6_α
 xchain397_n5_β:
 jmp xchain397_n2_β
# IR_LIT_STRING
 xchain397_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain397_n7_α
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string ""
 xchain397_n7_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn410: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn410]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain397_n2_β
 jmp xchain397_n8_α
 xchain397_n7_β:
 jmp xchain397_n2_β
# IR_MOVE_LABEL
 xchain397_n8_α:
 lea rax, [rip + xchain397_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain397_n9_α:
 jmp qword ptr [rbp + 32]
 xchain397_n9_β:
 jmp main_ω
main_β:
jmp xchain397_n9_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 344]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 344]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
