  .intel_syntax noprefix
  .text
  .globl proc_mult$3_α
proc_mult$3_α:
#=======================================================================================================================
    .global proc_mult$3_α
    .global proc_mult$3_β
    .global proc_mult$3_γ
    .global proc_mult$3_ω
  sub rsp, 912
  mov [rsp + 888], rcx
  mov [rsp + 896], rdx
  mov [rsp + 904], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 800
  mov edx, 880
  call rt_jmp_frame_lexprep2@PLT
proc_mult$3_α_body:
lea rax, [rip + xchain0_n16_β]
mov qword ptr [rbp + 800], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_mult$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_mult$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
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
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
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
 je proc_mult$3_ω
 jmp proc_mult$3_ω
 xchain0_n5_β:
 jmp proc_mult$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 848]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n7_α
 xchain0_n7_α:
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
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 864]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n10_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 848]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n13_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n14_α
.Lx22_0:
 .quad 0
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 864]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n15_α
 xchain0_n15_α:
 mov qword ptr [rbp + 256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx26_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx26_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx26_3]
 lea rdx, [rip + .Lx26_4]
 jmp rax
.Lx26_3:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx26_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx26_2
.Lx26_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx26_2
.Lx26_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx26_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx26_2
.Lx26_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx26_2
.Lx26_1:
 call rt_faildescr@PLT
.Lx26_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n16_α
 xchain0_n15_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 264]
 jmp qword ptr [rsp]
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain0_n16_α:
 lea rax, [rip + xchain0_n16_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$3_γ
 xchain0_n16_β:
 jmp xchain0_n15_β
proc_mult$3_res:
add rsp, 8
pop rbp
proc_mult$3_β:
jmp qword ptr [rbp + 800]
proc_mult$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$3_res]
push rax
mov rax, [rbp + 888]
mov rbp, [rbp + 904]
jmp rax
proc_mult$3_ω:
mov rax, [rbp + 896]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
jmp rax
  .globl proc_mult$4_α
proc_mult$4_α:
#=======================================================================================================================
    .global proc_mult$4_α
    .global proc_mult$4_β
    .global proc_mult$4_γ
    .global proc_mult$4_ω
  sub rsp, 3296
  mov [rsp + 3272], rcx
  mov [rsp + 3280], rdx
  mov [rsp + 3288], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3128], rsp
  mov rdi, rsp
  mov esi, 3104
  mov edx, 3264
  call rt_jmp_frame_lexprep2@PLT
proc_mult$4_α_body:
lea rax, [rip + xchain29_n65_β]
mov qword ptr [rbp + 3104], rax
 xchain29_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain29_n1_α
 xchain29_n0_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain29_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain29_n2_α
# IR_VAR_REF
 xchain29_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain29_n3_α
# IR_VAR_REF
 xchain29_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3168]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain29_n4_α
 xchain29_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2976]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg2 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n5_α
 xchain29_n4_β:
 jmp xchain29_n6_α
# IR_VAR_REF
 xchain29_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain29_n7_α
 xchain29_n6_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1456]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain29_n8_α
 xchain29_n6_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain29_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain29_n9_α
# IR_VAR_REF
 xchain29_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain29_n10_α
 xchain29_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2816]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2824], rax
# marshal arg1 = producer-box slot [zr+2896] -> [zr+2832]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n11_α
 xchain29_n9_β:
 jmp xchain29_n6_α
# IR_LIT_STRING
 xchain29_n10_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain29_n12_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "[]"
# IR_VAR_REF
 xchain29_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain29_n13_α
 xchain29_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1328]
 mov rsi, qword ptr [rip + .Lx49_2]
 jmp .Lx49_3
.Lx49_2:
 .quad .Lx49_2_s
.Lx49_2_s:
 .string "[]"
.Lx49_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n14_α
 xchain29_n12_β:
 jmp xchain29_n15_α
# IR_VAR_REF
 xchain29_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3152]
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain29_n17_α
 xchain29_n15_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp proc_mult$4_ω
 xchain29_n15_β:
 jmp proc_mult$4_ω
 xchain29_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2736] -> [zr+2688]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2696], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2704]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n18_α
 xchain29_n16_β:
 jmp xchain29_n6_α
# IR_VAR_REF
 xchain29_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain29_n19_α
# IR_VAR_REF
 xchain29_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain29_n20_α
 xchain29_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n21_α
 xchain29_n19_β:
 jmp xchain29_n15_α
# IR_VAR_REF
 xchain29_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3136]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain29_n22_α
# IR_VAR_REF
 xchain29_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain29_n23_α
# IR_VAR_REF
 xchain29_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain29_n24_α
# IR_VAR_REF
 xchain29_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3152]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain29_n25_α
 xchain29_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2544]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2560]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2640] -> [zr+2576]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n26_α
 xchain29_n24_β:
 jmp xchain29_n6_α
 xchain29_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n27_α
 xchain29_n25_β:
 jmp xchain29_n15_α
# IR_VAR_REF
 xchain29_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain29_n28_α
# IR_VAR_REF
 xchain29_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain29_n29_α
# IR_VAR
 xchain29_n28_α:
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 2408], rax
 jmp xchain29_n30_α
# IR_LIT_STRING
 xchain29_n29_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain29_n31_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "."
# IR_VAR
 xchain29_n30_α:
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 2440], rax
 jmp xchain29_n32_α
# IR_VAR_REF
 xchain29_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3168]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain29_n33_α
 xchain29_n32_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 2352]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n34_α
 xchain29_n32_β:
 jmp xchain29_n6_α
# IR_LIT_STRING
 xchain29_n33_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain29_n35_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "."
# IR_VAR
 xchain29_n34_α:
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 2472], rax
 jmp xchain29_n36_α
# IR_VAR_REF
 xchain29_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3136]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain29_n37_α
 xchain29_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2288]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2296], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+2304]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2288]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n38_α
 xchain29_n36_β:
 jmp xchain29_n6_α
# IR_LIT_STRING
 xchain29_n37_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain29_n39_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "[]"
 xchain29_n38_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n40_α
 xchain29_n38_β:
 jmp xchain29_n6_α
 xchain29_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+832]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 840], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+848]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain29_n41_α
 xchain29_n39_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain29_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3136]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain29_n42_α
 xchain29_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+976]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 984], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+992]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n43_α
 xchain29_n41_β:
 jmp xchain29_n15_α
# IR_VAR
 xchain29_n42_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 2120], rax
 jmp xchain29_n44_α
 xchain29_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+672]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n45_α
 xchain29_n43_β:
 jmp xchain29_n15_α
# IR_LIT_INTEGER
 xchain29_n44_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain29_n46_α
.Lx98_0:
 .quad 10
# IR_VAR_REF
 xchain29_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3168]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain29_n47_α
 xchain29_n46_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+2080]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n48_α
 xchain29_n46_β:
 jmp xchain29_n6_α
# IR_VAR
 xchain29_n47_α:
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 584], rax
 jmp xchain29_n49_α
 xchain29_n48_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1968]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1976], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1968]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n50_α
 xchain29_n48_β:
 jmp xchain29_n6_α
# IR_LIT_INTEGER
 xchain29_n49_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain29_n51_α
.Lx105_0:
 .quad 10
# IR_VAR_REF
 xchain29_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain29_n52_α
 xchain29_n51_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n53_α
 xchain29_n51_β:
 jmp xchain29_n15_α
# IR_VAR
 xchain29_n52_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 1896], rax
 jmp xchain29_n54_α
 xchain29_n53_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n55_α
 xchain29_n53_β:
 jmp xchain29_n15_α
# IR_LIT_INTEGER
 xchain29_n54_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain29_n56_α
.Lx112_0:
 .quad 10
# IR_VAR_REF
 xchain29_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3136]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain29_n57_α
 xchain29_n56_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1840]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n58_α
 xchain29_n56_β:
 jmp xchain29_n6_α
# IR_VAR
 xchain29_n57_α:
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 360], rax
 jmp xchain29_n59_α
 xchain29_n58_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n60_α
 xchain29_n58_β:
 jmp xchain29_n6_α
# IR_LIT_INTEGER
 xchain29_n59_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain29_n61_α
.Lx119_0:
 .quad 10
# IR_VAR_REF
 xchain29_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3168]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain29_n62_α
 xchain29_n61_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n63_α
 xchain29_n61_β:
 jmp xchain29_n15_α
# IR_VAR_REF
 xchain29_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain29_n64_α
 xchain29_n63_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+224]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 208]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain29_n15_α
 jmp xchain29_n65_α
 xchain29_n63_β:
 jmp xchain29_n15_α
# IR_VAR_REF
 xchain29_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain29_n66_α
# IR_SUSPEND yield+resume
 xchain29_n65_α:
 lea rax, [rip + xchain29_n65_β]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$4_γ
 xchain29_n65_β:
 jmp xchain29_n15_α
# IR_VAR_REF
 xchain29_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain29_n67_α
 xchain29_n67_α:
 mov qword ptr [rbp + 1568], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1632]
 mov rdx, qword ptr [rbp + 1640]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx133_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx133_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx133_3]
 lea rdx, [rip + .Lx133_4]
 jmp rax
.Lx133_3:
 mov qword ptr [rbp + 1576], rsp
 mov rax, qword ptr [rbp + 1568]
 test rax, rax
 jne .Lx133_5
 mov qword ptr [rbp + 1568], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx133_2
.Lx133_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx133_2
.Lx133_4:
 mov rax, qword ptr [rbp + 1568]
 test rax, rax
 jne .Lx133_6
 mov qword ptr [rbp + 1568], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx133_2
.Lx133_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx133_2
.Lx133_1:
 call rt_faildescr@PLT
.Lx133_2:
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n68_α
 xchain29_n67_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1576]
 jmp qword ptr [rsp]
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain29_n68_α:
 lea rax, [rip + xchain29_n68_β]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$4_γ
 xchain29_n68_β:
 jmp xchain29_n67_β
proc_mult$4_res:
add rsp, 8
pop rbp
proc_mult$4_β:
jmp qword ptr [rbp + 3104]
proc_mult$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$4_res]
push rax
mov rax, [rbp + 3272]
mov rbp, [rbp + 3288]
jmp rax
proc_mult$4_ω:
mov rax, [rbp + 3280]
lea rsp, [rbp + 3296]
mov rbp, [rbp + 3288]
jmp rax
  .globl proc_odd$1_α
proc_odd$1_α:
#=======================================================================================================================
    .global proc_odd$1_α
    .global proc_odd$1_β
    .global proc_odd$1_γ
    .global proc_odd$1_ω
  sub rsp, 1040
  mov [rsp + 1016], rcx
  mov [rsp + 1024], rdx
  mov [rsp + 1032], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 976
  mov edx, 1008
  call rt_jmp_frame_lexprep2@PLT
proc_odd$1_α_body:
lea rax, [rip + xchain136_n4_β]
mov qword ptr [rbp + 976], rax
 xchain136_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain136_n1_α
 xchain136_n0_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain136_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain136_n2_α
# IR_LIT_INTEGER
 xchain136_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain136_n3_α
.Lx140_0:
 .quad 1
 xchain136_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 864]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain136_n5_α
 jmp xchain136_n4_α
 xchain136_n3_β:
 jmp xchain136_n5_α
# IR_SUSPEND yield+resume
 xchain136_n4_α:
 lea rax, [rip + xchain136_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain136_n4_β:
 jmp xchain136_n5_α
 xchain136_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain136_n6_α
 xchain136_n5_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain136_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain136_n7_α
# IR_LIT_INTEGER
 xchain136_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain136_n8_α
.Lx147_0:
 .quad 3
 xchain136_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 688]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain136_n10_α
 jmp xchain136_n9_α
 xchain136_n8_β:
 jmp xchain136_n10_α
# IR_SUSPEND yield+resume
 xchain136_n9_α:
 lea rax, [rip + xchain136_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain136_n9_β:
 jmp xchain136_n10_α
 xchain136_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain136_n11_α
 xchain136_n10_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain136_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain136_n12_α
# IR_LIT_INTEGER
 xchain136_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain136_n13_α
.Lx154_0:
 .quad 5
 xchain136_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 512]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain136_n15_α
 jmp xchain136_n14_α
 xchain136_n13_β:
 jmp xchain136_n15_α
# IR_SUSPEND yield+resume
 xchain136_n14_α:
 lea rax, [rip + xchain136_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain136_n14_β:
 jmp xchain136_n15_α
 xchain136_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain136_n16_α
 xchain136_n15_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain136_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain136_n17_α
# IR_LIT_INTEGER
 xchain136_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain136_n18_α
.Lx161_0:
 .quad 7
 xchain136_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 336]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n19_α
 xchain136_n18_β:
 jmp xchain136_n20_α
# IR_SUSPEND yield+resume
 xchain136_n19_α:
 lea rax, [rip + xchain136_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain136_n19_β:
 jmp xchain136_n20_α
 xchain136_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain136_n21_α
 xchain136_n20_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain136_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain136_n22_α
# IR_LIT_INTEGER
 xchain136_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain136_n23_α
.Lx168_0:
 .quad 9
 xchain136_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain136_n25_α
 jmp xchain136_n24_α
 xchain136_n23_β:
 jmp xchain136_n25_α
# IR_SUSPEND yield+resume
 xchain136_n24_α:
 lea rax, [rip + xchain136_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain136_n24_β:
 jmp xchain136_n25_α
 xchain136_n25_α:
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
 je proc_odd$1_ω
 jmp proc_odd$1_ω
 xchain136_n25_β:
 jmp proc_odd$1_ω
proc_odd$1_res:
add rsp, 8
pop rbp
proc_odd$1_β:
jmp qword ptr [rbp + 976]
proc_odd$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_odd$1_res]
push rax
mov rax, [rbp + 1016]
mov rbp, [rbp + 1032]
jmp rax
proc_odd$1_ω:
mov rax, [rbp + 1024]
lea rsp, [rbp + 1040]
mov rbp, [rbp + 1032]
jmp rax
  .globl proc_sum$3_α
proc_sum$3_α:
#=======================================================================================================================
    .global proc_sum$3_α
    .global proc_sum$3_β
    .global proc_sum$3_γ
    .global proc_sum$3_ω
  sub rsp, 880
  mov [rsp + 856], rcx
  mov [rsp + 864], rdx
  mov [rsp + 872], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 784
  mov edx, 848
  call rt_jmp_frame_lexprep2@PLT
proc_sum$3_α_body:
 xchain173_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sum$3_ω
 jmp xchain173_n1_α
 xchain173_n0_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain173_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain173_n2_α
# IR_VAR_REF
 xchain173_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain173_n3_α
 xchain173_n3_α:
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
 je xchain173_n5_α
 jmp xchain173_n4_α
 xchain173_n3_β:
 jmp xchain173_n5_α
# IR_VAR_REF
 xchain173_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain173_n6_α
 xchain173_n5_α:
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
 je proc_sum$3_ω
 jmp proc_sum$3_ω
 xchain173_n5_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain173_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain173_n7_α
 xchain173_n7_α:
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
 je xchain173_n5_α
 jmp xchain173_n8_α
 xchain173_n7_β:
 jmp xchain173_n5_α
# IR_VAR_REF
 xchain173_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain173_n9_α
# IR_VAR_REF
 xchain173_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain173_n10_α
 xchain173_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain173_n5_α
 jmp xchain173_n11_α
 xchain173_n10_β:
 jmp xchain173_n5_α
# IR_VAR_REF
 xchain173_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain173_n12_α
# IR_VAR_REF
 xchain173_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain173_n13_α
# IR_LIT_INTEGER
 xchain173_n13_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain173_n14_α
.Lx195_0:
 .quad 0
# IR_VAR_REF
 xchain173_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain173_n15_α
 xchain173_n15_α:
 mov edi, 4
 lea rsi, [rbp + 272]
 lea rdx, [rbp + 304]
 lea rcx, [rbp + 336]
 lea r8, [rbp + 368]
 call rt_proc_call_open_det4@PLT
 test rax, rax
 je .Lx199_1
 lea rcx, [rip + .Lx199_3]
 lea rdx, [rip + .Lx199_4]
 jmp rax
.Lx199_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx199_2
.Lx199_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx199_2
.Lx199_1:
 call rt_faildescr@PLT
.Lx199_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain173_n5_α
 jmp xchain173_n16_α
 xchain173_n15_β:
 jmp xchain173_n5_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain173_n16_α:
 lea rax, [rip + xchain173_n15_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_sum$3_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain173_n17_α:
 jmp qword ptr [rbp + 80]
 xchain173_n17_β:
 jmp proc_sum$3_ω
proc_sum$3_res:
add rsp, 8
pop rbp
proc_sum$3_β:
jmp xchain173_n17_α
proc_sum$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 856]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
proc_sum$3_ω:
mov rax, [rbp + 864]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
  .globl proc_sum$4_α
proc_sum$4_α:
#=======================================================================================================================
    .global proc_sum$4_α
    .global proc_sum$4_β
    .global proc_sum$4_γ
    .global proc_sum$4_ω
  sub rsp, 3312
  mov [rsp + 3288], rcx
  mov [rsp + 3296], rdx
  mov [rsp + 3304], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3112], rsp
  mov rdi, rsp
  mov esi, 3104
  mov edx, 3280
  call rt_jmp_frame_lexprep2@PLT
proc_sum$4_α_body:
 xchain204_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain204_n1_α
 xchain204_n0_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain204_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain204_n2_α
# IR_VAR_REF
 xchain204_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain204_n3_α
# IR_VAR_REF
 xchain204_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3152]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain204_n4_α
 xchain204_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2976]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg2 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain204_n6_α
 jmp xchain204_n5_α
 xchain204_n4_β:
 jmp xchain204_n6_α
# IR_VAR_REF
 xchain204_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain204_n7_α
 xchain204_n6_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1424]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain204_n8_α
 xchain204_n6_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain204_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain204_n9_α
# IR_VAR_REF
 xchain204_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain204_n10_α
# IR_VAR_REF
 xchain204_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3168]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain204_n11_α
# IR_LIT_STRING
 xchain204_n10_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain204_n12_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "[]"
 xchain204_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2800]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2808], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2816]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2824], rax
# marshal arg2 = producer-box slot [zr+2896] -> [zr+2832]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2800]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain204_n6_α
 jmp xchain204_n13_α
 xchain204_n11_β:
 jmp xchain204_n6_α
 xchain204_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1296]
 mov rsi, qword ptr [rip + .Lx224_2]
 jmp .Lx224_3
.Lx224_2:
 .quad .Lx224_2_s
.Lx224_2_s:
 .string "[]"
.Lx224_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain204_n15_α
 jmp xchain204_n14_α
 xchain204_n12_β:
 jmp xchain204_n15_α
# IR_VAR_REF
 xchain204_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain204_n16_α
# IR_VAR_REF
 xchain204_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain204_n17_α
 xchain204_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+864]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain204_n18_α
 xchain204_n15_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain204_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3120]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain204_n19_α
# IR_VAR_REF
 xchain204_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3136]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain204_n20_α
# IR_VAR_REF
 xchain204_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain204_n21_α
 xchain204_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2640]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2648], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2656]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2640]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain204_n6_α
 jmp xchain204_n22_α
 xchain204_n19_β:
 jmp xchain204_n6_α
 xchain204_n20_α:
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
 je xchain204_n15_α
 jmp xchain204_n23_α
 xchain204_n20_β:
 jmp xchain204_n15_α
# IR_LIT_STRING
 xchain204_n21_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain204_n24_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "[]"
# IR_VAR_REF
 xchain204_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain204_n25_α
# IR_VAR_REF
 xchain204_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain204_n26_α
 xchain204_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 736]
 mov rsi, qword ptr [rip + .Lx243_2]
 jmp .Lx243_3
.Lx243_2:
 .quad .Lx243_2_s
.Lx243_2_s:
 .string "[]"
.Lx243_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n27_α
 xchain204_n24_β:
 jmp xchain204_n28_α
# IR_VAR_REF
 xchain204_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain204_n29_α
# IR_LIT_INTEGER
 xchain204_n26_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain204_n30_α
.Lx246_0:
 .quad 0
# IR_VAR_REF
 xchain204_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain204_n31_α
 xchain204_n28_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp proc_sum$4_ω
 xchain204_n28_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain204_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain204_n32_α
 xchain204_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1040]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain204_n15_α
 jmp xchain204_n33_α
 xchain204_n30_β:
 jmp xchain204_n15_α
# IR_LIT_STRING
 xchain204_n31_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain204_n34_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "[]"
 xchain204_n32_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2496]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2496]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain204_n6_α
 jmp xchain204_n35_α
 xchain204_n32_β:
 jmp xchain204_n6_α
# IR_VAR_REF
 xchain204_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain204_n36_α
 xchain204_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 608]
 mov rsi, qword ptr [rip + .Lx257_2]
 jmp .Lx257_3
.Lx257_2:
 .quad .Lx257_2_s
.Lx257_2_s:
 .string "[]"
.Lx257_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n37_α
 xchain204_n34_β:
 jmp xchain204_n28_α
 xchain204_n35_α:
# IR_CUT
 jmp xchain204_n38_α
# IR_VAR_REF
 xchain204_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3136]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain204_n39_α
# IR_VAR_REF
 xchain204_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain204_n40_α
# IR_VAR_REF
 xchain204_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain204_n41_α
 xchain204_n39_α:
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
 je xchain204_n15_α
 jmp xchain204_n42_α
 xchain204_n39_β:
 jmp xchain204_n15_α
# IR_VAR_REF
 xchain204_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3120]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain204_n43_α
# IR_VAR
 xchain204_n41_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 2360], rax
 jmp xchain204_n44_α
 xchain204_n42_α:
# IR_CUT
 jmp xchain204_n45_α
 xchain204_n43_α:
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
 je xchain204_n28_α
 jmp xchain204_n46_α
 xchain204_n43_β:
 jmp xchain204_n28_α
# IR_VAR
 xchain204_n44_α:
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 2392], rax
 jmp xchain204_n47_α
# IR_MOVE_LABEL
 xchain204_n45_α:
 lea rax, [rip + xchain204_n15_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
# IR_VAR_REF
 xchain204_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain204_n49_α
 xchain204_n47_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2304]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n50_α
 xchain204_n47_β:
 jmp xchain204_n28_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain204_n48_α:
 jmp qword ptr [rbp + 96]
 xchain204_n48_β:
 jmp proc_sum$4_ω
# IR_LIT_STRING
 xchain204_n49_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain204_n51_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "."
# IR_VAR
 xchain204_n50_α:
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 2424], rax
 jmp xchain204_n52_α
# IR_VAR_REF
 xchain204_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3120]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain204_n53_α
 xchain204_n52_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2240]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2416] -> [zr+2256]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n54_α
 xchain204_n52_β:
 jmp xchain204_n28_α
# IR_LIT_STRING
 xchain204_n53_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain204_n55_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "[]"
 xchain204_n54_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2144]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2160]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n56_α
 xchain204_n54_β:
 jmp xchain204_n28_α
 xchain204_n55_α:
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
 je xchain204_n28_α
 jmp xchain204_n57_α
 xchain204_n55_β:
 jmp xchain204_n28_α
# IR_VAR_REF
 xchain204_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain204_n58_α
 xchain204_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+224]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 208]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n59_α
 xchain204_n57_β:
 jmp xchain204_n28_α
# IR_VAR
 xchain204_n58_α:
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 2072], rax
 jmp xchain204_n60_α
# IR_MOVE_LABEL
 xchain204_n59_α:
 lea rax, [rip + xchain204_n28_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
# IR_LIT_INTEGER
 xchain204_n60_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain204_n61_α
.Lx297_0:
 .quad 10
 xchain204_n61_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2016]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2024], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n62_α
 xchain204_n61_β:
 jmp xchain204_n28_α
 xchain204_n62_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1920]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1936]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n63_α
 xchain204_n62_β:
 jmp xchain204_n28_α
# IR_VAR_REF
 xchain204_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain204_n64_α
# IR_VAR
 xchain204_n64_α:
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 1848], rax
 jmp xchain204_n65_α
# IR_LIT_INTEGER
 xchain204_n65_α:
 mov qword ptr [rbp + 1872], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain204_n66_α
.Lx304_0:
 .quad 10
 xchain204_n66_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1808]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n67_α
 xchain204_n66_β:
 jmp xchain204_n28_α
 xchain204_n67_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n68_α
 xchain204_n67_β:
 jmp xchain204_n28_α
# IR_VAR_REF
 xchain204_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3152]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain204_n69_α
# IR_VAR_REF
 xchain204_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3168]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain204_n70_α
# IR_VAR_REF
 xchain204_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain204_n71_α
# IR_VAR_REF
 xchain204_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain204_n72_α
 xchain204_n72_α:
 mov edi, 4
 lea rsi, [rbp + 1552]
 lea rdx, [rbp + 1584]
 lea rcx, [rbp + 1616]
 lea r8, [rbp + 1648]
 call rt_proc_call_open_det4@PLT
 test rax, rax
 je .Lx316_1
 lea rcx, [rip + .Lx316_3]
 lea rdx, [rip + .Lx316_4]
 jmp rax
.Lx316_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx316_2
.Lx316_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx316_2
.Lx316_1:
 call rt_faildescr@PLT
.Lx316_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain204_n28_α
 jmp xchain204_n73_α
 xchain204_n72_β:
 jmp xchain204_n28_α
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain204_n73_α:
 lea rax, [rip + xchain204_n72_β]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
proc_sum$4_res:
add rsp, 8
pop rbp
proc_sum$4_β:
jmp xchain204_n48_α
proc_sum$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3288]
lea rsp, [rbp + 3312]
mov rbp, [rbp + 3304]
jmp rax
proc_sum$4_ω:
mov rax, [rbp + 3296]
lea rsp, [rbp + 3312]
mov rbp, [rbp + 3304]
jmp rax
  .globl proc_even$1_α
proc_even$1_α:
#=======================================================================================================================
    .global proc_even$1_α
    .global proc_even$1_β
    .global proc_even$1_γ
    .global proc_even$1_ω
  sub rsp, 1040
  mov [rsp + 1016], rcx
  mov [rsp + 1024], rdx
  mov [rsp + 1032], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 976
  mov edx, 1008
  call rt_jmp_frame_lexprep2@PLT
proc_even$1_α_body:
lea rax, [rip + xchain319_n4_β]
mov qword ptr [rbp + 976], rax
 xchain319_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain319_n1_α
 xchain319_n0_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain319_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain319_n2_α
# IR_LIT_INTEGER
 xchain319_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain319_n3_α
.Lx323_0:
 .quad 0
 xchain319_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 864]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain319_n5_α
 jmp xchain319_n4_α
 xchain319_n3_β:
 jmp xchain319_n5_α
# IR_SUSPEND yield+resume
 xchain319_n4_α:
 lea rax, [rip + xchain319_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain319_n4_β:
 jmp xchain319_n5_α
 xchain319_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain319_n6_α
 xchain319_n5_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain319_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain319_n7_α
# IR_LIT_INTEGER
 xchain319_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain319_n8_α
.Lx330_0:
 .quad 2
 xchain319_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 688]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain319_n10_α
 jmp xchain319_n9_α
 xchain319_n8_β:
 jmp xchain319_n10_α
# IR_SUSPEND yield+resume
 xchain319_n9_α:
 lea rax, [rip + xchain319_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain319_n9_β:
 jmp xchain319_n10_α
 xchain319_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain319_n11_α
 xchain319_n10_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain319_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain319_n12_α
# IR_LIT_INTEGER
 xchain319_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain319_n13_α
.Lx337_0:
 .quad 4
 xchain319_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 512]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain319_n15_α
 jmp xchain319_n14_α
 xchain319_n13_β:
 jmp xchain319_n15_α
# IR_SUSPEND yield+resume
 xchain319_n14_α:
 lea rax, [rip + xchain319_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain319_n14_β:
 jmp xchain319_n15_α
 xchain319_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain319_n16_α
 xchain319_n15_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain319_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain319_n17_α
# IR_LIT_INTEGER
 xchain319_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain319_n18_α
.Lx344_0:
 .quad 6
 xchain319_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 336]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain319_n20_α
 jmp xchain319_n19_α
 xchain319_n18_β:
 jmp xchain319_n20_α
# IR_SUSPEND yield+resume
 xchain319_n19_α:
 lea rax, [rip + xchain319_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain319_n19_β:
 jmp xchain319_n20_α
 xchain319_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain319_n21_α
 xchain319_n20_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain319_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain319_n22_α
# IR_LIT_INTEGER
 xchain319_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain319_n23_α
.Lx351_0:
 .quad 8
 xchain319_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain319_n25_α
 jmp xchain319_n24_α
 xchain319_n23_β:
 jmp xchain319_n25_α
# IR_SUSPEND yield+resume
 xchain319_n24_α:
 lea rax, [rip + xchain319_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain319_n24_β:
 jmp xchain319_n25_α
 xchain319_n25_α:
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
 je proc_even$1_ω
 jmp proc_even$1_ω
 xchain319_n25_β:
 jmp proc_even$1_ω
proc_even$1_res:
add rsp, 8
pop rbp
proc_even$1_β:
jmp qword ptr [rbp + 976]
proc_even$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_even$1_res]
push rax
mov rax, [rbp + 1016]
mov rbp, [rbp + 1032]
jmp rax
proc_even$1_ω:
mov rax, [rbp + 1024]
lea rsp, [rbp + 1040]
mov rbp, [rbp + 1032]
jmp rax
  .globl proc_top$16_α
proc_top$16_α:
#=======================================================================================================================
    .global proc_top$16_α
    .global proc_top$16_β
    .global proc_top$16_γ
    .global proc_top$16_ω
  sub rsp, 8784
  mov [rsp + 8760], rcx
  mov [rsp + 8768], rdx
  mov [rsp + 8776], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 8440], rsp
  mov rdi, rsp
  mov esi, 8416
  mov edx, 8752
  call rt_jmp_frame_lexprep2@PLT
proc_top$16_α_body:
lea rax, [rip + xchain356_n175_β]
mov qword ptr [rbp + 8416], rax
 xchain356_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n1_α
 xchain356_n0_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain356_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 jmp xchain356_n2_α
# IR_VAR_REF
 xchain356_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain356_n3_α
 xchain356_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8352] -> [zr+8304]
 mov rax, qword ptr [rbp + 8352]
 mov qword ptr [rbp + 8304], rax
 mov rax, qword ptr [rbp + 8360]
 mov qword ptr [rbp + 8312], rax
# marshal arg1 = producer-box slot [zr+8384] -> [zr+8320]
 mov rax, qword ptr [rbp + 8384]
 mov qword ptr [rbp + 8320], rax
 mov rax, qword ptr [rbp + 8392]
 mov qword ptr [rbp + 8328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8304]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8288], rax
 mov qword ptr [rbp + 8296], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n4_α
 xchain356_n3_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 jmp xchain356_n6_α
 xchain356_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp proc_top$16_ω
 xchain356_n5_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain356_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 jmp xchain356_n7_α
 xchain356_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8224] -> [zr+8176]
 mov rax, qword ptr [rbp + 8224]
 mov qword ptr [rbp + 8176], rax
 mov rax, qword ptr [rbp + 8232]
 mov qword ptr [rbp + 8184], rax
# marshal arg1 = producer-box slot [zr+8256] -> [zr+8192]
 mov rax, qword ptr [rbp + 8256]
 mov qword ptr [rbp + 8192], rax
 mov rax, qword ptr [rbp + 8264]
 mov qword ptr [rbp + 8200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8176]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n8_α
 xchain356_n7_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 jmp xchain356_n9_α
# IR_VAR_REF
 xchain356_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain356_n10_α
 xchain356_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8096] -> [zr+8048]
 mov rax, qword ptr [rbp + 8096]
 mov qword ptr [rbp + 8048], rax
 mov rax, qword ptr [rbp + 8104]
 mov qword ptr [rbp + 8056], rax
# marshal arg1 = producer-box slot [zr+8128] -> [zr+8064]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8048]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n11_α
 xchain356_n10_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 jmp xchain356_n12_α
# IR_VAR_REF
 xchain356_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain356_n13_α
 xchain356_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7968] -> [zr+7920]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 7920], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 7928], rax
# marshal arg1 = producer-box slot [zr+8000] -> [zr+7936]
 mov rax, qword ptr [rbp + 8000]
 mov qword ptr [rbp + 7936], rax
 mov rax, qword ptr [rbp + 8008]
 mov qword ptr [rbp + 7944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7920]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n14_α
 xchain356_n13_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain356_n15_α
# IR_VAR_REF
 xchain356_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain356_n16_α
 xchain356_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7840] -> [zr+7792]
 mov rax, qword ptr [rbp + 7840]
 mov qword ptr [rbp + 7792], rax
 mov rax, qword ptr [rbp + 7848]
 mov qword ptr [rbp + 7800], rax
# marshal arg1 = producer-box slot [zr+7872] -> [zr+7808]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7808], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7792]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n17_α
 xchain356_n16_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain356_n18_α
# IR_VAR_REF
 xchain356_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain356_n19_α
 xchain356_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7664]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7672], rax
# marshal arg1 = producer-box slot [zr+7744] -> [zr+7680]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7664]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n20_α
 xchain356_n19_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain356_n21_α
# IR_VAR_REF
 xchain356_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 jmp xchain356_n22_α
 xchain356_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7536]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7544], rax
# marshal arg1 = producer-box slot [zr+7616] -> [zr+7552]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7536]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n23_α
 xchain356_n22_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 jmp xchain356_n24_α
# IR_VAR_REF
 xchain356_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain356_n25_α
 xchain356_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7456] -> [zr+7408]
 mov rax, qword ptr [rbp + 7456]
 mov qword ptr [rbp + 7408], rax
 mov rax, qword ptr [rbp + 7464]
 mov qword ptr [rbp + 7416], rax
# marshal arg1 = producer-box slot [zr+7488] -> [zr+7424]
 mov rax, qword ptr [rbp + 7488]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 7496]
 mov qword ptr [rbp + 7432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7408]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n26_α
 xchain356_n25_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 144]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain356_n27_α
# IR_VAR_REF
 xchain356_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain356_n28_α
 xchain356_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7328] -> [zr+7280]
 mov rax, qword ptr [rbp + 7328]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7336]
 mov qword ptr [rbp + 7288], rax
# marshal arg1 = producer-box slot [zr+7360] -> [zr+7296]
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7280]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n29_α
 xchain356_n28_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 160]
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain356_n30_α
# IR_VAR_REF
 xchain356_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 jmp xchain356_n31_α
 xchain356_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7200] -> [zr+7152]
 mov rax, qword ptr [rbp + 7200]
 mov qword ptr [rbp + 7152], rax
 mov rax, qword ptr [rbp + 7208]
 mov qword ptr [rbp + 7160], rax
# marshal arg1 = producer-box slot [zr+7232] -> [zr+7168]
 mov rax, qword ptr [rbp + 7232]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7240]
 mov qword ptr [rbp + 7176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7152]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n32_α
 xchain356_n31_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 176]
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 jmp xchain356_n33_α
# IR_VAR_REF
 xchain356_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain356_n34_α
 xchain356_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7072] -> [zr+7024]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7024], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7032], rax
# marshal arg1 = producer-box slot [zr+7104] -> [zr+7040]
 mov rax, qword ptr [rbp + 7104]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 7112]
 mov qword ptr [rbp + 7048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7024]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7008], rax
 mov qword ptr [rbp + 7016], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n35_α
 xchain356_n34_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 192]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain356_n36_α
# IR_VAR_REF
 xchain356_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain356_n37_α
 xchain356_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6944] -> [zr+6896]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 6896], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 6904], rax
# marshal arg1 = producer-box slot [zr+6976] -> [zr+6912]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n38_α
 xchain356_n37_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 208]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain356_n39_α
# IR_VAR_REF
 xchain356_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain356_n40_α
 xchain356_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6816] -> [zr+6768]
 mov rax, qword ptr [rbp + 6816]
 mov qword ptr [rbp + 6768], rax
 mov rax, qword ptr [rbp + 6824]
 mov qword ptr [rbp + 6776], rax
# marshal arg1 = producer-box slot [zr+6848] -> [zr+6784]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6784], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6768]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n41_α
 xchain356_n40_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 224]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 jmp xchain356_n42_α
# IR_VAR_REF
 xchain356_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain356_n43_α
 xchain356_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6688] -> [zr+6640]
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 6648], rax
# marshal arg1 = producer-box slot [zr+6720] -> [zr+6656]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6640]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n44_α
 xchain356_n43_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 240]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain356_n45_α
# IR_VAR_REF
 xchain356_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain356_n46_α
 xchain356_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6560] -> [zr+6512]
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 6520], rax
# marshal arg1 = producer-box slot [zr+6592] -> [zr+6528]
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n47_α
 xchain356_n46_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 256]
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain356_n48_α
# IR_VAR_REF
 xchain356_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain356_n49_α
 xchain356_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6384]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6392], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6400]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n50_α
 xchain356_n49_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain356_n51_α
 xchain356_n51_α:
 mov qword ptr [rbp + 6304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6336]
 mov rdx, qword ptr [rbp + 6344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx442_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx442_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx442_3]
 lea rdx, [rip + .Lx442_4]
 jmp rax
.Lx442_3:
 mov qword ptr [rbp + 6312], rsp
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx442_5
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx442_2
.Lx442_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx442_2
.Lx442_4:
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx442_6
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx442_2
.Lx442_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx442_2
.Lx442_1:
 call rt_faildescr@PLT
.Lx442_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n52_α
 xchain356_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6312]
 jmp qword ptr [rsp]
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain356_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain356_n53_α
 xchain356_n53_α:
 mov qword ptr [rbp + 6208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx446_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx446_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx446_3]
 lea rdx, [rip + .Lx446_4]
 jmp rax
.Lx446_3:
 mov qword ptr [rbp + 6216], rsp
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx446_5
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx446_2
.Lx446_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx446_2
.Lx446_4:
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx446_6
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx446_2
.Lx446_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx446_2
.Lx446_1:
 call rt_faildescr@PLT
.Lx446_2:
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain356_n51_β
 jmp xchain356_n54_α
 xchain356_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6216]
 jmp qword ptr [rsp]
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain356_n55_α
 xchain356_n55_α:
 mov qword ptr [rbp + 6112], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6144]
 mov rdx, qword ptr [rbp + 6152]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx450_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx450_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx450_3]
 lea rdx, [rip + .Lx450_4]
 jmp rax
.Lx450_3:
 mov qword ptr [rbp + 6120], rsp
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx450_5
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx450_2
.Lx450_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx450_2
.Lx450_4:
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx450_6
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx450_2
.Lx450_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx450_2
.Lx450_1:
 call rt_faildescr@PLT
.Lx450_2:
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 cmp eax, 99
 je xchain356_n53_β
 jmp xchain356_n56_α
 xchain356_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6120]
 jmp qword ptr [rsp]
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain356_n57_α
 xchain356_n57_α:
 mov qword ptr [rbp + 6016], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6048]
 mov rdx, qword ptr [rbp + 6056]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx454_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx454_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx454_3]
 lea rdx, [rip + .Lx454_4]
 jmp rax
.Lx454_3:
 mov qword ptr [rbp + 6024], rsp
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx454_5
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx454_2
.Lx454_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx454_2
.Lx454_4:
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx454_6
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx454_2
.Lx454_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx454_2
.Lx454_1:
 call rt_faildescr@PLT
.Lx454_2:
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain356_n55_β
 jmp xchain356_n58_α
 xchain356_n57_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6024]
 jmp qword ptr [rsp]
.Lx454_0:
 .quad .Lx454_0_s
.Lx454_0_s:
 .string "even/1"
# IR_LIT_STRING
 xchain356_n58_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain356_n59_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain356_n60_α
# IR_LIT_STRING
 xchain356_n60_α:
 mov qword ptr [rbp + 5168], 1
 mov rax, qword ptr [rip + .Lx458_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain356_n61_α
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain356_n62_α
# IR_LIT_STRING
 xchain356_n62_α:
 mov qword ptr [rbp + 5024], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain356_n63_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain356_n64_α
# IR_LIT_STRING
 xchain356_n64_α:
 mov qword ptr [rbp + 4880], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain356_n65_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "[]"
 xchain356_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5024] -> [zr+4960]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4968], rax
# marshal arg1 = producer-box slot [zr+4912] -> [zr+4976]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 4984], rax
# marshal arg2 = producer-box slot [zr+4880] -> [zr+4992]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n66_α
 xchain356_n65_β:
 jmp proc_top$16_ω
 xchain356_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5168] -> [zr+5104]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5112], rax
# marshal arg1 = producer-box slot [zr+5056] -> [zr+5120]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5128], rax
# marshal arg2 = producer-box slot [zr+4944] -> [zr+5136]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 5144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n67_α
 xchain356_n66_β:
 jmp proc_top$16_ω
 xchain356_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5312] -> [zr+5248]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5256], rax
# marshal arg1 = producer-box slot [zr+5200] -> [zr+5264]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5264], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5272], rax
# marshal arg2 = producer-box slot [zr+5088] -> [zr+5280]
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 5288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n68_α
 xchain356_n67_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain356_n69_α
# IR_LIT_STRING
 xchain356_n69_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain356_n70_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain356_n71_α
# IR_LIT_STRING
 xchain356_n71_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain356_n72_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain356_n73_α
# IR_LIT_STRING
 xchain356_n73_α:
 mov qword ptr [rbp + 5664], 1
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [rbp + 5672], rax
 jmp xchain356_n74_α
.Lx476_0:
 .quad .Lx476_0_s
.Lx476_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain356_n75_α
# IR_LIT_STRING
 xchain356_n75_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain356_n76_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain356_n77_α
# IR_VAR_REF
 xchain356_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain356_n78_α
 xchain356_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5456]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5464], rax
# marshal arg1 = producer-box slot [zr+5408] -> [zr+5472]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5480], rax
# marshal arg2 = producer-box slot [zr+5376] -> [zr+5488]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n79_α
 xchain356_n78_β:
 jmp proc_top$16_ω
 xchain356_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5664] -> [zr+5600]
 mov rax, qword ptr [rbp + 5664]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 5672]
 mov qword ptr [rbp + 5608], rax
# marshal arg1 = producer-box slot [zr+5552] -> [zr+5616]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5624], rax
# marshal arg2 = producer-box slot [zr+5440] -> [zr+5632]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5600]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n80_α
 xchain356_n79_β:
 jmp proc_top$16_ω
 xchain356_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5744]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5744], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5752], rax
# marshal arg1 = producer-box slot [zr+5696] -> [zr+5760]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5768], rax
# marshal arg2 = producer-box slot [zr+5584] -> [zr+5776]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n81_α
 xchain356_n80_β:
 jmp proc_top$16_ω
 xchain356_n81_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5888]
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 5896], rax
# marshal arg1 = producer-box slot [zr+5840] -> [zr+5904]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5912], rax
# marshal arg2 = producer-box slot [zr+5728] -> [zr+5920]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5888]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n82_α
 xchain356_n81_β:
 jmp xchain356_n5_α
 xchain356_n82_α:
 mov qword ptr [rbp + 4848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5232]
 mov rdx, qword ptr [rbp + 5240]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5344]
 mov rdx, qword ptr [rbp + 5352]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5872]
 mov rdx, qword ptr [rbp + 5880]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx489_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx489_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx489_3]
 lea rdx, [rip + .Lx489_4]
 jmp rax
.Lx489_3:
 mov qword ptr [rbp + 4856], rsp
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx489_5
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx489_2
.Lx489_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx489_2
.Lx489_4:
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx489_6
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx489_2
.Lx489_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx489_2
.Lx489_1:
 call rt_faildescr@PLT
.Lx489_2:
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain356_n57_β
 jmp xchain356_n83_α
 xchain356_n82_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4856]
 jmp qword ptr [rsp]
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain356_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain356_n84_α
 xchain356_n84_α:
 mov qword ptr [rbp + 4720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx493_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx493_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx493_3]
 lea rdx, [rip + .Lx493_4]
 jmp rax
.Lx493_3:
 mov qword ptr [rbp + 4728], rsp
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx493_5
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx493_2
.Lx493_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx493_2
.Lx493_4:
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx493_6
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx493_2
.Lx493_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx493_2
.Lx493_1:
 call rt_faildescr@PLT
.Lx493_2:
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain356_n82_β
 jmp xchain356_n85_α
 xchain356_n84_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4728]
 jmp qword ptr [rsp]
.Lx493_0:
 .quad .Lx493_0_s
.Lx493_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain356_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain356_n86_α
 xchain356_n86_α:
 mov qword ptr [rbp + 4624], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx497_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx497_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx497_3]
 lea rdx, [rip + .Lx497_4]
 jmp rax
.Lx497_3:
 mov qword ptr [rbp + 4632], rsp
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx497_5
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx497_2
.Lx497_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx497_2
.Lx497_4:
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx497_6
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx497_2
.Lx497_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx497_2
.Lx497_1:
 call rt_faildescr@PLT
.Lx497_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain356_n84_β
 jmp xchain356_n87_α
 xchain356_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4632]
 jmp qword ptr [rsp]
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain356_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain356_n88_α
 xchain356_n88_α:
 mov qword ptr [rbp + 4528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx501_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx501_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx501_3]
 lea rdx, [rip + .Lx501_4]
 jmp rax
.Lx501_3:
 mov qword ptr [rbp + 4536], rsp
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx501_5
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx501_2
.Lx501_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx501_2
.Lx501_4:
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx501_6
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx501_2
.Lx501_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx501_2
.Lx501_1:
 call rt_faildescr@PLT
.Lx501_2:
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je xchain356_n86_β
 jmp xchain356_n89_α
 xchain356_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4536]
 jmp qword ptr [rsp]
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain356_n90_α
 xchain356_n90_α:
 mov qword ptr [rbp + 4432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4464]
 mov rdx, qword ptr [rbp + 4472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx505_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx505_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx505_3]
 lea rdx, [rip + .Lx505_4]
 jmp rax
.Lx505_3:
 mov qword ptr [rbp + 4440], rsp
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx505_5
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx505_2
.Lx505_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx505_2
.Lx505_4:
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx505_6
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx505_2
.Lx505_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx505_2
.Lx505_1:
 call rt_faildescr@PLT
.Lx505_2:
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain356_n88_β
 jmp xchain356_n91_α
 xchain356_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4440]
 jmp qword ptr [rsp]
.Lx505_0:
 .quad .Lx505_0_s
.Lx505_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain356_n92_α
 xchain356_n92_α:
 mov qword ptr [rbp + 4336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx509_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx509_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx509_3]
 lea rdx, [rip + .Lx509_4]
 jmp rax
.Lx509_3:
 mov qword ptr [rbp + 4344], rsp
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx509_5
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx509_2
.Lx509_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx509_2
.Lx509_4:
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx509_6
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx509_2
.Lx509_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx509_2
.Lx509_1:
 call rt_faildescr@PLT
.Lx509_2:
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain356_n90_β
 jmp xchain356_n93_α
 xchain356_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4344]
 jmp qword ptr [rsp]
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "zero/1"
# IR_VAR_REF
 xchain356_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain356_n94_α
 xchain356_n94_α:
 mov qword ptr [rbp + 4240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4272]
 mov rdx, qword ptr [rbp + 4280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx513_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx513_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx513_3]
 lea rdx, [rip + .Lx513_4]
 jmp rax
.Lx513_3:
 mov qword ptr [rbp + 4248], rsp
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx513_5
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx513_2
.Lx513_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx513_2
.Lx513_4:
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx513_6
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx513_2
.Lx513_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx513_2
.Lx513_1:
 call rt_faildescr@PLT
.Lx513_2:
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 cmp eax, 99
 je xchain356_n92_β
 jmp xchain356_n95_α
 xchain356_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4248]
 jmp qword ptr [rsp]
.Lx513_0:
 .quad .Lx513_0_s
.Lx513_0_s:
 .string "lefteven/1"
# IR_LIT_STRING
 xchain356_n95_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain356_n96_α
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain356_n97_α
# IR_LIT_STRING
 xchain356_n97_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain356_n98_α
.Lx517_0:
 .quad .Lx517_0_s
.Lx517_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain356_n99_α
# IR_LIT_STRING
 xchain356_n99_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain356_n100_α
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain356_n101_α
# IR_LIT_STRING
 xchain356_n101_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain356_n102_α
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "[]"
 xchain356_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3392] -> [zr+3328]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3336], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3344]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3352], rax
# marshal arg2 = producer-box slot [zr+3248] -> [zr+3360]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3328]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n103_α
 xchain356_n102_β:
 jmp proc_top$16_ω
 xchain356_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3536] -> [zr+3472]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3480], rax
# marshal arg1 = producer-box slot [zr+3424] -> [zr+3488]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3496], rax
# marshal arg2 = producer-box slot [zr+3312] -> [zr+3504]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 3512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3472]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n104_α
 xchain356_n103_β:
 jmp proc_top$16_ω
 xchain356_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3616]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3624], rax
# marshal arg1 = producer-box slot [zr+3568] -> [zr+3632]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3640], rax
# marshal arg2 = producer-box slot [zr+3456] -> [zr+3648]
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3616]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n105_α
 xchain356_n104_β:
 jmp xchain356_n5_α
# IR_VAR_REF
 xchain356_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain356_n106_α
# IR_LIT_STRING
 xchain356_n106_α:
 mov qword ptr [rbp + 4176], 1
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain356_n107_α
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain356_n108_α
# IR_LIT_STRING
 xchain356_n108_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain356_n109_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain356_n110_α
# IR_LIT_STRING
 xchain356_n110_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain356_n111_α
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain356_n112_α
# IR_VAR_REF
 xchain356_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain356_n113_α
 xchain356_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3888] -> [zr+3824]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3832], rax
# marshal arg1 = producer-box slot [zr+3776] -> [zr+3840]
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 3848], rax
# marshal arg2 = producer-box slot [zr+3744] -> [zr+3856]
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 3864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3824]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n114_α
 xchain356_n113_β:
 jmp proc_top$16_ω
 xchain356_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4032] -> [zr+3968]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+3984]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 3992], rax
# marshal arg2 = producer-box slot [zr+3808] -> [zr+4000]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 4008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n115_α
 xchain356_n114_β:
 jmp proc_top$16_ω
 xchain356_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4112]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4120], rax
# marshal arg1 = producer-box slot [zr+4064] -> [zr+4128]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4136], rax
# marshal arg2 = producer-box slot [zr+3952] -> [zr+4144]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 4152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n116_α
 xchain356_n115_β:
 jmp xchain356_n5_α
 xchain356_n116_α:
 mov qword ptr [rbp + 3216], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3712]
 mov rdx, qword ptr [rbp + 3720]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4096]
 mov rdx, qword ptr [rbp + 4104]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx544_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx544_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx544_3]
 lea rdx, [rip + .Lx544_4]
 jmp rax
.Lx544_3:
 mov qword ptr [rbp + 3224], rsp
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx544_5
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx544_2
.Lx544_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx544_2
.Lx544_4:
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx544_6
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx544_2
.Lx544_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx544_2
.Lx544_1:
 call rt_faildescr@PLT
.Lx544_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain356_n94_β
 jmp xchain356_n117_α
 xchain356_n116_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3224]
 jmp qword ptr [rsp]
.Lx544_0:
 .quad .Lx544_0_s
.Lx544_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain356_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain356_n118_α
 xchain356_n118_α:
 mov qword ptr [rbp + 3088], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx548_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx548_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx548_3]
 lea rdx, [rip + .Lx548_4]
 jmp rax
.Lx548_3:
 mov qword ptr [rbp + 3096], rsp
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx548_5
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx548_2
.Lx548_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx548_2
.Lx548_4:
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx548_6
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx548_2
.Lx548_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx548_2
.Lx548_1:
 call rt_faildescr@PLT
.Lx548_2:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain356_n116_β
 jmp xchain356_n119_α
 xchain356_n118_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3096]
 jmp qword ptr [rsp]
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain356_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain356_n120_α
 xchain356_n120_α:
 mov qword ptr [rbp + 2992], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx552_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx552_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx552_3]
 lea rdx, [rip + .Lx552_4]
 jmp rax
.Lx552_3:
 mov qword ptr [rbp + 3000], rsp
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx552_5
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx552_2
.Lx552_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx552_2
.Lx552_4:
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx552_6
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx552_2
.Lx552_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx552_2
.Lx552_1:
 call rt_faildescr@PLT
.Lx552_2:
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain356_n118_β
 jmp xchain356_n121_α
 xchain356_n120_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3000]
 jmp qword ptr [rsp]
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain356_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain356_n122_α
 xchain356_n122_α:
 mov qword ptr [rbp + 2896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx556_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx556_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx556_3]
 lea rdx, [rip + .Lx556_4]
 jmp rax
.Lx556_3:
 mov qword ptr [rbp + 2904], rsp
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx556_5
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx556_2
.Lx556_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx556_2
.Lx556_4:
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx556_6
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx556_2
.Lx556_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx556_2
.Lx556_1:
 call rt_faildescr@PLT
.Lx556_2:
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain356_n120_β
 jmp xchain356_n123_α
 xchain356_n122_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2904]
 jmp qword ptr [rsp]
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain356_n124_α
 xchain356_n124_α:
 mov qword ptr [rbp + 2800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2832]
 mov rdx, qword ptr [rbp + 2840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx560_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx560_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx560_3]
 lea rdx, [rip + .Lx560_4]
 jmp rax
.Lx560_3:
 mov qword ptr [rbp + 2808], rsp
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx560_5
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx560_2
.Lx560_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx560_2
.Lx560_4:
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx560_6
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx560_2
.Lx560_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx560_2
.Lx560_1:
 call rt_faildescr@PLT
.Lx560_2:
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain356_n122_β
 jmp xchain356_n125_α
 xchain356_n124_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2808]
 jmp qword ptr [rsp]
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "zero/1"
# IR_LIT_STRING
 xchain356_n125_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain356_n126_α
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain356_n127_α
# IR_LIT_STRING
 xchain356_n127_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain356_n128_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain356_n129_α
# IR_LIT_STRING
 xchain356_n129_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain356_n130_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain356_n131_α
# IR_LIT_STRING
 xchain356_n131_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain356_n132_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain356_n133_α
# IR_LIT_STRING
 xchain356_n133_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain356_n134_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "[]"
 xchain356_n134_α:
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
# marshal arg2 = producer-box slot [zr+944] -> [zr+1056]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n135_α
 xchain356_n134_β:
 jmp proc_top$16_ω
 xchain356_n135_α:
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
 je proc_top$16_ω
 jmp xchain356_n136_α
 xchain356_n135_β:
 jmp proc_top$16_ω
 xchain356_n136_α:
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
 je proc_top$16_ω
 jmp xchain356_n137_α
 xchain356_n136_β:
 jmp proc_top$16_ω
 xchain356_n137_α:
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
 je xchain356_n5_α
 jmp xchain356_n138_α
 xchain356_n137_β:
 jmp xchain356_n5_α
# IR_LIT_STRING
 xchain356_n138_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain356_n139_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain356_n139_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain356_n140_α
.Lx579_0:
 .quad 0
# IR_LIT_STRING
 xchain356_n140_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain356_n141_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain356_n142_α
# IR_LIT_STRING
 xchain356_n142_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain356_n143_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain356_n144_α
# IR_LIT_STRING
 xchain356_n144_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain356_n145_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain356_n146_α
# IR_LIT_STRING
 xchain356_n146_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain356_n147_α
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "[]"
 xchain356_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1648]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1656], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1664]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n148_α
 xchain356_n147_β:
 jmp proc_top$16_ω
 xchain356_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1792]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1800], rax
# marshal arg2 = producer-box slot [zr+1616] -> [zr+1808]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n149_α
 xchain356_n148_β:
 jmp proc_top$16_ω
 xchain356_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1936]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1944], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1952]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n150_α
 xchain356_n149_β:
 jmp proc_top$16_ω
 xchain356_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+2080]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 2088], rax
# marshal arg2 = producer-box slot [zr+1904] -> [zr+2096]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n151_α
 xchain356_n150_β:
 jmp xchain356_n5_α
# IR_LIT_STRING
 xchain356_n151_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain356_n152_α
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain356_n153_α
# IR_LIT_STRING
 xchain356_n153_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain356_n154_α
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain356_n155_α
# IR_LIT_STRING
 xchain356_n155_α:
 mov qword ptr [rbp + 2448], 1
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain356_n156_α
.Lx600_0:
 .quad .Lx600_0_s
.Lx600_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain356_n157_α
# IR_LIT_STRING
 xchain356_n157_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain356_n158_α
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "."
# IR_VAR_REF
 xchain356_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain356_n159_α
# IR_VAR_REF
 xchain356_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain356_n160_α
 xchain356_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2240]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2256]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2264], rax
# marshal arg2 = producer-box slot [zr+2160] -> [zr+2272]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n161_α
 xchain356_n160_β:
 jmp proc_top$16_ω
 xchain356_n161_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2384]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2400]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2408], rax
# marshal arg2 = producer-box slot [zr+2224] -> [zr+2416]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n162_α
 xchain356_n161_β:
 jmp proc_top$16_ω
 xchain356_n162_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2544]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2552], rax
# marshal arg2 = producer-box slot [zr+2368] -> [zr+2560]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain356_n163_α
 xchain356_n162_β:
 jmp proc_top$16_ω
 xchain356_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
# marshal arg1 = producer-box slot [zr+2624] -> [zr+2688]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2696], rax
# marshal arg2 = producer-box slot [zr+2512] -> [zr+2704]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain356_n5_α
 jmp xchain356_n164_α
 xchain356_n163_β:
 jmp xchain356_n5_α
 xchain356_n164_α:
 mov edi, 3
 lea rsi, [rbp + 1440]
 lea rdx, [rbp + 2048]
 lea rcx, [rbp + 2656]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx613_1
 lea rcx, [rip + .Lx613_3]
 lea rdx, [rip + .Lx613_4]
 jmp rax
.Lx613_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx613_2
.Lx613_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx613_2
.Lx613_1:
 call rt_faildescr@PLT
.Lx613_2:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain356_n124_β
 jmp xchain356_n165_α
 xchain356_n164_β:
 jmp xchain356_n124_β
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "sum/3"
# IR_VAR_REF
 xchain356_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain356_n166_α
 xchain356_n166_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx617_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx617_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx617_3]
 lea rdx, [rip + .Lx617_4]
 jmp rax
.Lx617_3:
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx617_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx617_2
.Lx617_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx617_2
.Lx617_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx617_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx617_2
.Lx617_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx617_2
.Lx617_1:
 call rt_faildescr@PLT
.Lx617_2:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain356_n164_β
 jmp xchain356_n167_α
 xchain356_n166_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain356_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain356_n168_α
 xchain356_n168_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx621_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx621_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx621_3]
 lea rdx, [rip + .Lx621_4]
 jmp rax
.Lx621_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx621_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx621_2
.Lx621_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx621_2
.Lx621_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx621_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx621_2
.Lx621_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx621_2
.Lx621_1:
 call rt_faildescr@PLT
.Lx621_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain356_n166_β
 jmp xchain356_n169_α
 xchain356_n168_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain356_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain356_n170_α
 xchain356_n170_α:
 mov qword ptr [rbp + 608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx625_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx625_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx625_3]
 lea rdx, [rip + .Lx625_4]
 jmp rax
.Lx625_3:
 mov qword ptr [rbp + 616], rsp
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx625_5
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx625_2
.Lx625_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx625_2
.Lx625_4:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx625_6
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx625_2
.Lx625_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx625_2
.Lx625_1:
 call rt_faildescr@PLT
.Lx625_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain356_n168_β
 jmp xchain356_n171_α
 xchain356_n170_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 616]
 jmp qword ptr [rsp]
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain356_n172_α
 xchain356_n172_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx629_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx629_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx629_3]
 lea rdx, [rip + .Lx629_4]
 jmp rax
.Lx629_3:
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx629_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx629_2
.Lx629_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx629_2
.Lx629_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx629_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx629_2
.Lx629_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx629_2
.Lx629_1:
 call rt_faildescr@PLT
.Lx629_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain356_n170_β
 jmp xchain356_n173_α
 xchain356_n172_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 520]
 jmp qword ptr [rsp]
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain356_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain356_n174_α
 xchain356_n174_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx633_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx633_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx633_3]
 lea rdx, [rip + .Lx633_4]
 jmp rax
.Lx633_3:
 mov qword ptr [rbp + 424], rsp
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx633_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx633_2
.Lx633_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx633_2
.Lx633_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx633_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx633_2
.Lx633_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx633_2
.Lx633_1:
 call rt_faildescr@PLT
.Lx633_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain356_n172_β
 jmp xchain356_n175_α
 xchain356_n174_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 424]
 jmp qword ptr [rsp]
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain356_n175_α:
 lea rax, [rip + xchain356_n175_β]
 mov qword ptr [rbp + 8416], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$16_γ
 xchain356_n175_β:
 jmp xchain356_n174_β
proc_top$16_res:
add rsp, 8
pop rbp
proc_top$16_β:
jmp qword ptr [rbp + 8416]
proc_top$16_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$16_res]
push rax
mov rax, [rbp + 8760]
mov rbp, [rbp + 8776]
jmp rax
proc_top$16_ω:
mov rax, [rbp + 8768]
lea rsp, [rbp + 8784]
mov rbp, [rbp + 8776]
jmp rax
  .globl proc_lefteven$1_α
proc_lefteven$1_α:
#=======================================================================================================================
    .global proc_lefteven$1_α
    .global proc_lefteven$1_β
    .global proc_lefteven$1_γ
    .global proc_lefteven$1_ω
  sub rsp, 864
  mov [rsp + 840], rcx
  mov [rsp + 848], rdx
  mov [rsp + 856], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 800
  mov edx, 832
  call rt_jmp_frame_lexprep2@PLT
proc_lefteven$1_α_body:
lea rax, [rip + xchain636_n4_β]
mov qword ptr [rbp + 800], rax
 xchain636_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain636_n1_α
 xchain636_n0_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain636_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain636_n2_α
# IR_LIT_INTEGER
 xchain636_n2_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx640_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain636_n3_α
.Lx640_0:
 .quad 2
 xchain636_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 688]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain636_n5_α
 jmp xchain636_n4_α
 xchain636_n3_β:
 jmp xchain636_n5_α
# IR_SUSPEND yield+resume
 xchain636_n4_α:
 lea rax, [rip + xchain636_n4_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain636_n4_β:
 jmp xchain636_n5_α
 xchain636_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain636_n6_α
 xchain636_n5_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain636_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain636_n7_α
# IR_LIT_INTEGER
 xchain636_n7_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx647_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain636_n8_α
.Lx647_0:
 .quad 4
 xchain636_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 512]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain636_n10_α
 jmp xchain636_n9_α
 xchain636_n8_β:
 jmp xchain636_n10_α
# IR_SUSPEND yield+resume
 xchain636_n9_α:
 lea rax, [rip + xchain636_n9_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain636_n9_β:
 jmp xchain636_n10_α
 xchain636_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain636_n11_α
 xchain636_n10_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain636_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain636_n12_α
# IR_LIT_INTEGER
 xchain636_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain636_n13_α
.Lx654_0:
 .quad 6
 xchain636_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 336]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain636_n15_α
 jmp xchain636_n14_α
 xchain636_n13_β:
 jmp xchain636_n15_α
# IR_SUSPEND yield+resume
 xchain636_n14_α:
 lea rax, [rip + xchain636_n14_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain636_n14_β:
 jmp xchain636_n15_α
 xchain636_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain636_n16_α
 xchain636_n15_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain636_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain636_n17_α
# IR_LIT_INTEGER
 xchain636_n17_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx661_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain636_n18_α
.Lx661_0:
 .quad 8
 xchain636_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain636_n20_α
 jmp xchain636_n19_α
 xchain636_n18_β:
 jmp xchain636_n20_α
# IR_SUSPEND yield+resume
 xchain636_n19_α:
 lea rax, [rip + xchain636_n19_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain636_n19_β:
 jmp xchain636_n20_α
 xchain636_n20_α:
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
 je proc_lefteven$1_ω
 jmp proc_lefteven$1_ω
 xchain636_n20_β:
 jmp proc_lefteven$1_ω
proc_lefteven$1_res:
add rsp, 8
pop rbp
proc_lefteven$1_β:
jmp qword ptr [rbp + 800]
proc_lefteven$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_lefteven$1_res]
push rax
mov rax, [rbp + 840]
mov rbp, [rbp + 856]
jmp rax
proc_lefteven$1_ω:
mov rax, [rbp + 848]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
  .globl proc_zero$1_α
proc_zero$1_α:
#=======================================================================================================================
    .global proc_zero$1_α
    .global proc_zero$1_β
    .global proc_zero$1_γ
    .global proc_zero$1_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 592
  mov edx, 640
  call rt_jmp_frame_lexprep2@PLT
proc_zero$1_α_body:
lea rax, [rip + xchain666_n4_β]
mov qword ptr [rbp + 592], rax
 xchain666_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain666_n1_α
 xchain666_n0_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain666_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain666_n2_α
# IR_LIT_STRING
 xchain666_n2_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx670_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain666_n3_α
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string "[]"
 xchain666_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 mov rsi, qword ptr [rip + .Lx671_2]
 jmp .Lx671_3
.Lx671_2:
 .quad .Lx671_2_s
.Lx671_2_s:
 .string "[]"
.Lx671_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n4_α
 xchain666_n3_β:
 jmp xchain666_n5_α
# IR_SUSPEND yield+resume
 xchain666_n4_α:
 lea rax, [rip + xchain666_n4_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain666_n4_β:
 jmp xchain666_n5_α
 xchain666_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain666_n6_α
 xchain666_n5_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain666_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain666_n7_α
# IR_LIT_INTEGER
 xchain666_n7_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx677_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain666_n8_α
.Lx677_0:
 .quad 0
# IR_VAR_REF
 xchain666_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain666_n9_α
 xchain666_n9_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+288]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain666_n11_α
 jmp xchain666_n10_α
 xchain666_n9_β:
 jmp xchain666_n11_α
# IR_VAR_REF
 xchain666_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain666_n12_α
 xchain666_n11_α:
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
 je proc_zero$1_ω
 jmp proc_zero$1_ω
 xchain666_n11_β:
 jmp proc_zero$1_ω
 xchain666_n12_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx685_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx685_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx685_3]
 lea rdx, [rip + .Lx685_4]
 jmp rax
.Lx685_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx685_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx685_2
.Lx685_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx685_2
.Lx685_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx685_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx685_2
.Lx685_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx685_2
.Lx685_1:
 call rt_faildescr@PLT
.Lx685_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain666_n11_α
 jmp xchain666_n13_α
 xchain666_n12_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx685_0:
 .quad .Lx685_0_s
.Lx685_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain666_n13_α:
 lea rax, [rip + xchain666_n13_β]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain666_n13_β:
 jmp xchain666_n12_β
proc_zero$1_res:
add rsp, 8
pop rbp
proc_zero$1_β:
jmp qword ptr [rbp + 592]
proc_zero$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_zero$1_res]
push rax
mov rax, [rbp + 648]
mov rbp, [rbp + 664]
jmp rax
proc_zero$1_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "mult/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_mult$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 880
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "mult/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_mult$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3264
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "odd/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_odd$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1008
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "sum/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_sum$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 848
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "sum/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_sum$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3280
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "even/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_even$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1008
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "top/16"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_top$16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 16
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 8752
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "lefteven/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_lefteven$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname8: .string "zero/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_zero$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname8]
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
  mov qword ptr [rsp + 3416], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain688_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n1_α
 xchain688_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain688_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain688_n2_α
# IR_VAR_REF
 xchain688_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain688_n3_α
# IR_VAR_REF
 xchain688_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain688_n4_α
# IR_VAR_REF
 xchain688_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain688_n5_α
# IR_VAR_REF
 xchain688_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain688_n6_α
# IR_VAR_REF
 xchain688_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain688_n7_α
# IR_VAR_REF
 xchain688_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain688_n8_α
# IR_VAR_REF
 xchain688_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain688_n9_α
# IR_VAR_REF
 xchain688_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain688_n10_α
# IR_VAR_REF
 xchain688_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain688_n11_α
# IR_VAR_REF
 xchain688_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain688_n12_α
# IR_VAR_REF
 xchain688_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain688_n13_α
# IR_VAR_REF
 xchain688_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain688_n14_α
# IR_VAR_REF
 xchain688_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain688_n15_α
# IR_VAR_REF
 xchain688_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain688_n16_α
# IR_VAR_REF
 xchain688_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain688_n17_α
 xchain688_n17_α:
 mov qword ptr [rbp + 2864], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov edi, 5
 mov rsi, qword ptr [rbp + 3056]
 mov rdx, qword ptr [rbp + 3064]
 call rt_arg_stage@PLT
 mov edi, 6
 mov rsi, qword ptr [rbp + 3088]
 mov rdx, qword ptr [rbp + 3096]
 call rt_arg_stage@PLT
 mov edi, 7
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov edi, 8
 mov rsi, qword ptr [rbp + 3152]
 mov rdx, qword ptr [rbp + 3160]
 call rt_arg_stage@PLT
 mov edi, 9
 mov rsi, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 call rt_arg_stage@PLT
 mov edi, 10
 mov rsi, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 call rt_arg_stage@PLT
 mov edi, 11
 mov rsi, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 call rt_arg_stage@PLT
 mov edi, 12
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov edi, 13
 mov rsi, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 call rt_arg_stage@PLT
 mov edi, 14
 mov rsi, qword ptr [rbp + 3344]
 mov rdx, qword ptr [rbp + 3352]
 call rt_arg_stage@PLT
 mov edi, 15
 mov rsi, qword ptr [rbp + 3376]
 mov rdx, qword ptr [rbp + 3384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx723_0]
 mov esi, 16
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx723_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx723_3]
 lea rdx, [rip + .Lx723_4]
 jmp rax
.Lx723_3:
 mov qword ptr [rbp + 2872], rsp
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx723_5
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx723_2
.Lx723_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx723_2
.Lx723_4:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx723_6
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx723_2
.Lx723_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx723_2
.Lx723_1:
 call rt_faildescr@PLT
.Lx723_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain688_n19_α
 jmp xchain688_n18_α
 xchain688_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2872]
 jmp qword ptr [rsp]
.Lx723_0:
 .quad .Lx723_0_s
.Lx723_0_s:
 .string "top/16"
# IR_LIT_STRING
 xchain688_n18_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain688_n20_α
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "."
 xchain688_n19_α:
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
 xchain688_n19_β:
 jmp main_ω
# IR_VAR_REF
 xchain688_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain688_n21_α
# IR_LIT_STRING
 xchain688_n21_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain688_n22_α
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain688_n23_α
# IR_LIT_STRING
 xchain688_n23_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx731_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain688_n24_α
.Lx731_0:
 .quad .Lx731_0_s
.Lx731_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain688_n25_α
# IR_LIT_STRING
 xchain688_n25_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx734_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain688_n26_α
.Lx734_0:
 .quad .Lx734_0_s
.Lx734_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain688_n27_α
# IR_LIT_STRING
 xchain688_n27_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain688_n28_α
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain688_n29_α
# IR_LIT_STRING
 xchain688_n29_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx740_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain688_n30_α
.Lx740_0:
 .quad .Lx740_0_s
.Lx740_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain688_n31_α
# IR_LIT_STRING
 xchain688_n31_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx743_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain688_n32_α
.Lx743_0:
 .quad .Lx743_0_s
.Lx743_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain688_n33_α
# IR_LIT_STRING
 xchain688_n33_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain688_n34_α
.Lx746_0:
 .quad .Lx746_0_s
.Lx746_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain688_n35_α
# IR_LIT_STRING
 xchain688_n35_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain688_n36_α
.Lx749_0:
 .quad .Lx749_0_s
.Lx749_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain688_n37_α
# IR_LIT_STRING
 xchain688_n37_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain688_n38_α
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain688_n39_α
# IR_LIT_STRING
 xchain688_n39_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx755_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain688_n40_α
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain688_n41_α
# IR_LIT_STRING
 xchain688_n41_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx758_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain688_n42_α
.Lx758_0:
 .quad .Lx758_0_s
.Lx758_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain688_n43_α
# IR_LIT_STRING
 xchain688_n43_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx761_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain688_n44_α
.Lx761_0:
 .quad .Lx761_0_s
.Lx761_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain688_n45_α
# IR_LIT_STRING
 xchain688_n45_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx764_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain688_n46_α
.Lx764_0:
 .quad .Lx764_0_s
.Lx764_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain688_n47_α
# IR_LIT_STRING
 xchain688_n47_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx767_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain688_n48_α
.Lx767_0:
 .quad .Lx767_0_s
.Lx767_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain688_n49_α
# IR_LIT_STRING
 xchain688_n49_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx770_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain688_n50_α
.Lx770_0:
 .quad .Lx770_0_s
.Lx770_0_s:
 .string "."
# IR_VAR_REF
 xchain688_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain688_n51_α
# IR_LIT_STRING
 xchain688_n51_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx773_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain688_n52_α
.Lx773_0:
 .quad .Lx773_0_s
.Lx773_0_s:
 .string "[]"
 xchain688_n52_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+368]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n53_α
 xchain688_n52_β:
 jmp main_ω
 xchain688_n53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+512]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n54_α
 xchain688_n53_β:
 jmp main_ω
 xchain688_n54_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+640]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+656]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n55_α
 xchain688_n54_β:
 jmp main_ω
 xchain688_n55_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+784]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+800]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n56_α
 xchain688_n55_β:
 jmp main_ω
 xchain688_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+928]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+944]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n57_α
 xchain688_n56_β:
 jmp main_ω
 xchain688_n57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+1072]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1080], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+1088]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n58_α
 xchain688_n57_β:
 jmp main_ω
 xchain688_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1216]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1224], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1232]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n59_α
 xchain688_n58_β:
 jmp main_ω
 xchain688_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1360]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1376]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n60_α
 xchain688_n59_β:
 jmp main_ω
 xchain688_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1504]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1520]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n61_α
 xchain688_n60_β:
 jmp main_ω
 xchain688_n61_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1648]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1656], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1664]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n62_α
 xchain688_n61_β:
 jmp main_ω
 xchain688_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1792]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1800], rax
# marshal arg2 = producer-box slot [zr+1616] -> [zr+1808]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n63_α
 xchain688_n62_β:
 jmp main_ω
 xchain688_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1936]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1944], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1952]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n64_α
 xchain688_n63_β:
 jmp main_ω
 xchain688_n64_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+2080]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 2088], rax
# marshal arg2 = producer-box slot [zr+1904] -> [zr+2096]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n65_α
 xchain688_n64_β:
 jmp main_ω
 xchain688_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2224]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2232], rax
# marshal arg2 = producer-box slot [zr+2048] -> [zr+2240]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2248], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n66_α
 xchain688_n65_β:
 jmp main_ω
 xchain688_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2352]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2360], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2368]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2376], rax
# marshal arg2 = producer-box slot [zr+2192] -> [zr+2384]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je main_ω
 jmp xchain688_n67_α
 xchain688_n66_β:
 jmp main_ω
 xchain688_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2496]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2512]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2520], rax
# marshal arg2 = producer-box slot [zr+2336] -> [zr+2528]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2496]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain688_n19_α
 jmp xchain688_n68_α
 xchain688_n67_β:
 jmp xchain688_n19_α
 xchain688_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+224]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn791: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn791]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain688_n17_β
 jmp xchain688_n69_α
 xchain688_n68_β:
 jmp xchain688_n17_β
# IR_LIT_STRING
 xchain688_n69_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx792_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain688_n70_α
.Lx792_0:
 .quad .Lx792_0_s
.Lx792_0_s:
 .string ""
 xchain688_n70_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn794: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn794]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain688_n17_β
 jmp xchain688_n71_α
 xchain688_n70_β:
 jmp xchain688_n17_β
# IR_MOVE_LABEL
 xchain688_n71_α:
 lea rax, [rip + xchain688_n17_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain688_n72_α:
 jmp qword ptr [rbp + 32]
 xchain688_n72_β:
 jmp main_ω
main_β:
jmp xchain688_n72_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 3416]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 3416]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
