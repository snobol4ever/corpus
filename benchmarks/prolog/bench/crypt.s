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
  sub rsp, 3488
  mov [rsp + 3464], rcx
  mov [rsp + 3472], rdx
  mov [rsp + 3480], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3320], rsp
  mov rdi, rsp
  mov esi, 3296
  mov edx, 3456
  call rt_jmp_frame_lexprep2@PLT
proc_mult$4_α_body:
lea rax, [rip + xchain29_n66_β]
mov qword ptr [rbp + 3296], rax
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
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain29_n2_α
# IR_LIT_STRING
 xchain29_n2_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain29_n3_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "."
# IR_VAR_REF
 xchain29_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain29_n4_α
# IR_VAR_REF
 xchain29_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain29_n5_α
 xchain29_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3200]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3208], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3216]
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3224], rax
# marshal arg2 = producer-box slot [zr+3120] -> [zr+3232]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3200]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n6_α
 xchain29_n5_β:
 jmp xchain29_n7_α
 xchain29_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3184] -> [zr+3056]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n8_α
 xchain29_n6_β:
 jmp xchain29_n7_α
 xchain29_n7_α:
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
 jmp xchain29_n9_α
 xchain29_n7_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain29_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain29_n10_α
# IR_VAR_REF
 xchain29_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain29_n11_α
# IR_VAR_REF
 xchain29_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain29_n12_α
# IR_LIT_STRING
 xchain29_n11_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain29_n13_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "[]"
 xchain29_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2928]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n14_α
 xchain29_n12_β:
 jmp xchain29_n7_α
 xchain29_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n15_α
 xchain29_n13_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain29_n17_α
# IR_VAR_REF
 xchain29_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain29_n18_α
 xchain29_n16_α:
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
 xchain29_n16_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain29_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain29_n19_α
# IR_VAR_REF
 xchain29_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain29_n20_α
 xchain29_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2784]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2800]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n21_α
 xchain29_n19_β:
 jmp xchain29_n7_α
 xchain29_n20_α:
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
 je xchain29_n16_α
 jmp xchain29_n22_α
 xchain29_n20_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain29_n23_α
# IR_VAR_REF
 xchain29_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain29_n24_α
# IR_LIT_STRING
 xchain29_n23_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain29_n25_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "."
# IR_VAR_REF
 xchain29_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain29_n26_α
# IR_VAR_REF
 xchain29_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain29_n27_α
 xchain29_n26_α:
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
 je xchain29_n16_α
 jmp xchain29_n28_α
 xchain29_n26_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain29_n29_α
# IR_VAR_REF
 xchain29_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain29_n30_α
 xchain29_n29_α:
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
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2704]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n31_α
 xchain29_n29_β:
 jmp xchain29_n7_α
# IR_LIT_STRING
 xchain29_n30_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain29_n32_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "."
 xchain29_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2528]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n33_α
 xchain29_n31_β:
 jmp xchain29_n7_α
# IR_VAR_REF
 xchain29_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain29_n34_α
# IR_VAR_REF
 xchain29_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain29_n35_α
# IR_LIT_STRING
 xchain29_n34_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain29_n36_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "."
# IR_VAR
 xchain29_n35_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 2408], rax
 jmp xchain29_n37_α
# IR_VAR_REF
 xchain29_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain29_n38_α
# IR_VAR
 xchain29_n37_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 2440], rax
 jmp xchain29_n39_α
# IR_LIT_STRING
 xchain29_n38_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain29_n40_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "[]"
 xchain29_n39_α:
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
 je xchain29_n7_α
 jmp xchain29_n41_α
 xchain29_n39_β:
 jmp xchain29_n7_α
 xchain29_n40_α:
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
 jmp xchain29_n42_α
 xchain29_n40_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain29_n41_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 2472], rax
 jmp xchain29_n43_α
 xchain29_n42_α:
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
 je xchain29_n16_α
 jmp xchain29_n44_α
 xchain29_n42_β:
 jmp xchain29_n16_α
 xchain29_n43_α:
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
 je xchain29_n7_α
 jmp xchain29_n45_α
 xchain29_n43_β:
 jmp xchain29_n7_α
 xchain29_n44_α:
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
 je xchain29_n16_α
 jmp xchain29_n46_α
 xchain29_n44_β:
 jmp xchain29_n16_α
 xchain29_n45_α:
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
 je xchain29_n7_α
 jmp xchain29_n47_α
 xchain29_n45_β:
 jmp xchain29_n7_α
# IR_VAR_REF
 xchain29_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain29_n48_α
# IR_VAR_REF
 xchain29_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain29_n49_α
# IR_VAR
 xchain29_n48_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 584], rax
 jmp xchain29_n50_α
# IR_VAR
 xchain29_n49_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 2120], rax
 jmp xchain29_n51_α
# IR_LIT_INTEGER
 xchain29_n50_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain29_n52_α
.Lx106_0:
 .quad 10
# IR_LIT_INTEGER
 xchain29_n51_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain29_n53_α
.Lx107_0:
 .quad 10
 xchain29_n52_α:
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
 je xchain29_n16_α
 jmp xchain29_n54_α
 xchain29_n52_β:
 jmp xchain29_n16_α
 xchain29_n53_α:
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
 je xchain29_n7_α
 jmp xchain29_n55_α
 xchain29_n53_β:
 jmp xchain29_n7_α
 xchain29_n54_α:
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
 je xchain29_n16_α
 jmp xchain29_n56_α
 xchain29_n54_β:
 jmp xchain29_n16_α
 xchain29_n55_α:
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
 je xchain29_n7_α
 jmp xchain29_n57_α
 xchain29_n55_β:
 jmp xchain29_n7_α
# IR_VAR_REF
 xchain29_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain29_n58_α
# IR_VAR_REF
 xchain29_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain29_n59_α
# IR_VAR
 xchain29_n58_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 360], rax
 jmp xchain29_n60_α
# IR_VAR
 xchain29_n59_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 1896], rax
 jmp xchain29_n61_α
# IR_LIT_INTEGER
 xchain29_n60_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain29_n62_α
.Lx120_0:
 .quad 10
# IR_LIT_INTEGER
 xchain29_n61_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain29_n63_α
.Lx121_0:
 .quad 10
 xchain29_n62_α:
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
 je xchain29_n16_α
 jmp xchain29_n64_α
 xchain29_n62_β:
 jmp xchain29_n16_α
 xchain29_n63_α:
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
 je xchain29_n7_α
 jmp xchain29_n65_α
 xchain29_n63_β:
 jmp xchain29_n7_α
 xchain29_n64_α:
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
 je xchain29_n16_α
 jmp xchain29_n66_α
 xchain29_n64_β:
 jmp xchain29_n16_α
 xchain29_n65_α:
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
 je xchain29_n7_α
 jmp xchain29_n67_α
 xchain29_n65_β:
 jmp xchain29_n7_α
# IR_SUSPEND yield+resume
 xchain29_n66_α:
 lea rax, [rip + xchain29_n66_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$4_γ
 xchain29_n66_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain29_n68_α
# IR_VAR_REF
 xchain29_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain29_n69_α
# IR_VAR_REF
 xchain29_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain29_n70_α
# IR_VAR_REF
 xchain29_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain29_n71_α
 xchain29_n71_α:
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
 mov rdi, qword ptr [rip + .Lx137_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx137_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx137_3]
 lea rdx, [rip + .Lx137_4]
 jmp rax
.Lx137_3:
 mov qword ptr [rbp + 1576], rsp
 mov rax, qword ptr [rbp + 1568]
 test rax, rax
 jne .Lx137_5
 mov qword ptr [rbp + 1568], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx137_2
.Lx137_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx137_2
.Lx137_4:
 mov rax, qword ptr [rbp + 1568]
 test rax, rax
 jne .Lx137_6
 mov qword ptr [rbp + 1568], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx137_2
.Lx137_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx137_2
.Lx137_1:
 call rt_faildescr@PLT
.Lx137_2:
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain29_n7_α
 jmp xchain29_n72_α
 xchain29_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1576]
 jmp qword ptr [rsp]
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain29_n72_α:
 lea rax, [rip + xchain29_n72_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$4_γ
 xchain29_n72_β:
 jmp xchain29_n71_β
proc_mult$4_res:
add rsp, 8
pop rbp
proc_mult$4_β:
jmp qword ptr [rbp + 3296]
proc_mult$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$4_res]
push rax
mov rax, [rbp + 3464]
mov rbp, [rbp + 3480]
jmp rax
proc_mult$4_ω:
mov rax, [rbp + 3472]
lea rsp, [rbp + 3488]
mov rbp, [rbp + 3480]
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
lea rax, [rip + xchain140_n4_β]
mov qword ptr [rbp + 976], rax
 xchain140_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain140_n1_α
 xchain140_n0_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain140_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain140_n2_α
# IR_LIT_INTEGER
 xchain140_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain140_n3_α
.Lx144_0:
 .quad 1
 xchain140_n3_α:
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
 je xchain140_n5_α
 jmp xchain140_n4_α
 xchain140_n3_β:
 jmp xchain140_n5_α
# IR_SUSPEND yield+resume
 xchain140_n4_α:
 lea rax, [rip + xchain140_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain140_n4_β:
 jmp xchain140_n5_α
 xchain140_n5_α:
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
 jmp xchain140_n6_α
 xchain140_n5_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain140_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain140_n7_α
# IR_LIT_INTEGER
 xchain140_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain140_n8_α
.Lx151_0:
 .quad 3
 xchain140_n8_α:
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
 je xchain140_n10_α
 jmp xchain140_n9_α
 xchain140_n8_β:
 jmp xchain140_n10_α
# IR_SUSPEND yield+resume
 xchain140_n9_α:
 lea rax, [rip + xchain140_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain140_n9_β:
 jmp xchain140_n10_α
 xchain140_n10_α:
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
 jmp xchain140_n11_α
 xchain140_n10_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain140_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain140_n12_α
# IR_LIT_INTEGER
 xchain140_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain140_n13_α
.Lx158_0:
 .quad 5
 xchain140_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain140_n15_α
 jmp xchain140_n14_α
 xchain140_n13_β:
 jmp xchain140_n15_α
# IR_SUSPEND yield+resume
 xchain140_n14_α:
 lea rax, [rip + xchain140_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain140_n14_β:
 jmp xchain140_n15_α
 xchain140_n15_α:
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
 jmp xchain140_n16_α
 xchain140_n15_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain140_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain140_n17_α
# IR_LIT_INTEGER
 xchain140_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain140_n18_α
.Lx165_0:
 .quad 7
 xchain140_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain140_n20_α
 jmp xchain140_n19_α
 xchain140_n18_β:
 jmp xchain140_n20_α
# IR_SUSPEND yield+resume
 xchain140_n19_α:
 lea rax, [rip + xchain140_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain140_n19_β:
 jmp xchain140_n20_α
 xchain140_n20_α:
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
 jmp xchain140_n21_α
 xchain140_n20_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain140_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain140_n22_α
# IR_LIT_INTEGER
 xchain140_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain140_n23_α
.Lx172_0:
 .quad 9
 xchain140_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain140_n25_α
 jmp xchain140_n24_α
 xchain140_n23_β:
 jmp xchain140_n25_α
# IR_SUSPEND yield+resume
 xchain140_n24_α:
 lea rax, [rip + xchain140_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain140_n24_β:
 jmp xchain140_n25_α
 xchain140_n25_α:
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
 xchain140_n25_β:
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
 xchain177_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sum$3_ω
 jmp xchain177_n1_α
 xchain177_n0_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain177_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain177_n2_α
# IR_VAR_REF
 xchain177_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain177_n3_α
 xchain177_n3_α:
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
 je xchain177_n5_α
 jmp xchain177_n4_α
 xchain177_n3_β:
 jmp xchain177_n5_α
# IR_VAR_REF
 xchain177_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain177_n6_α
 xchain177_n5_α:
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
 xchain177_n5_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain177_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain177_n7_α
 xchain177_n7_α:
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
 je xchain177_n5_α
 jmp xchain177_n8_α
 xchain177_n7_β:
 jmp xchain177_n5_α
# IR_VAR_REF
 xchain177_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain177_n9_α
# IR_VAR_REF
 xchain177_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain177_n10_α
 xchain177_n10_α:
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
 je xchain177_n5_α
 jmp xchain177_n11_α
 xchain177_n10_β:
 jmp xchain177_n5_α
# IR_VAR_REF
 xchain177_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain177_n12_α
# IR_VAR_REF
 xchain177_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain177_n13_α
# IR_LIT_INTEGER
 xchain177_n13_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain177_n14_α
.Lx199_0:
 .quad 0
# IR_VAR_REF
 xchain177_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain177_n15_α
 xchain177_n15_α:
 mov edi, 4
 lea rsi, [rbp + 272]
 lea rdx, [rbp + 304]
 lea rcx, [rbp + 336]
 lea r8, [rbp + 368]
 call rt_proc_call_open_det4@PLT
 test rax, rax
 je .Lx203_1
 lea rcx, [rip + .Lx203_3]
 lea rdx, [rip + .Lx203_4]
 jmp rax
.Lx203_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx203_2
.Lx203_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx203_2
.Lx203_1:
 call rt_faildescr@PLT
.Lx203_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain177_n5_α
 jmp xchain177_n16_α
 xchain177_n15_β:
 jmp xchain177_n5_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain177_n16_α:
 lea rax, [rip + xchain177_n15_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_sum$3_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain177_n17_α:
 jmp qword ptr [rbp + 80]
 xchain177_n17_β:
 jmp proc_sum$3_ω
proc_sum$3_res:
add rsp, 8
pop rbp
proc_sum$3_β:
jmp xchain177_n17_α
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
  sub rsp, 3600
  mov [rsp + 3576], rcx
  mov [rsp + 3584], rdx
  mov [rsp + 3592], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3400], rsp
  mov rdi, rsp
  mov esi, 3392
  mov edx, 3568
  call rt_jmp_frame_lexprep2@PLT
proc_sum$4_α_body:
 xchain208_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain208_n1_α
 xchain208_n0_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain208_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain208_n2_α
# IR_LIT_STRING
 xchain208_n2_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain208_n3_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
# IR_VAR_REF
 xchain208_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain208_n4_α
# IR_VAR_REF
 xchain208_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain208_n5_α
 xchain208_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3296]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3304], rax
# marshal arg1 = producer-box slot [zr+3248] -> [zr+3312]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3320], rax
# marshal arg2 = producer-box slot [zr+3216] -> [zr+3328]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n6_α
 xchain208_n5_β:
 jmp xchain208_n7_α
 xchain208_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3184] -> [zr+3136]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3144], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3152]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n8_α
 xchain208_n6_β:
 jmp xchain208_n7_α
 xchain208_n7_α:
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
 jmp xchain208_n9_α
 xchain208_n7_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain208_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain208_n10_α
# IR_VAR_REF
 xchain208_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain208_n11_α
# IR_LIT_STRING
 xchain208_n10_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain208_n12_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "."
# IR_LIT_STRING
 xchain208_n11_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain208_n13_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "[]"
# IR_VAR_REF
 xchain208_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain208_n14_α
 xchain208_n13_α:
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
 je xchain208_n16_α
 jmp xchain208_n15_α
 xchain208_n13_β:
 jmp xchain208_n16_α
# IR_VAR_REF
 xchain208_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain208_n17_α
# IR_VAR_REF
 xchain208_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain208_n18_α
 xchain208_n16_α:
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
 jmp xchain208_n19_α
 xchain208_n16_β:
 jmp proc_sum$4_ω
 xchain208_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3024]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3032], rax
# marshal arg1 = producer-box slot [zr+2976] -> [zr+3040]
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 3048], rax
# marshal arg2 = producer-box slot [zr+2944] -> [zr+3056]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n20_α
 xchain208_n17_β:
 jmp xchain208_n7_α
# IR_VAR_REF
 xchain208_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain208_n21_α
# IR_VAR_REF
 xchain208_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain208_n22_α
 xchain208_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2912] -> [zr+2864]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2872], rax
# marshal arg1 = producer-box slot [zr+3008] -> [zr+2880]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2864]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n23_α
 xchain208_n20_β:
 jmp xchain208_n7_α
 xchain208_n21_α:
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
 je xchain208_n16_α
 jmp xchain208_n24_α
 xchain208_n21_β:
 jmp xchain208_n16_α
# IR_LIT_STRING
 xchain208_n22_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain208_n25_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "[]"
# IR_VAR_REF
 xchain208_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain208_n26_α
# IR_VAR_REF
 xchain208_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain208_n27_α
 xchain208_n25_α:
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
 je xchain208_n29_α
 jmp xchain208_n28_α
 xchain208_n25_β:
 jmp xchain208_n29_α
# IR_VAR_REF
 xchain208_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain208_n30_α
# IR_LIT_INTEGER
 xchain208_n27_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain208_n31_α
.Lx249_0:
 .quad 0
# IR_VAR_REF
 xchain208_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain208_n32_α
 xchain208_n29_α:
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
 xchain208_n29_β:
 jmp proc_sum$4_ω
 xchain208_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2736]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n33_α
 xchain208_n30_β:
 jmp xchain208_n7_α
 xchain208_n31_α:
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
 je xchain208_n16_α
 jmp xchain208_n34_α
 xchain208_n31_β:
 jmp xchain208_n16_α
# IR_LIT_STRING
 xchain208_n32_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain208_n35_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "[]"
# IR_VAR_REF
 xchain208_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain208_n36_α
# IR_VAR_REF
 xchain208_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain208_n37_α
 xchain208_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain208_n29_α
 jmp xchain208_n38_α
 xchain208_n35_β:
 jmp xchain208_n29_α
# IR_LIT_STRING
 xchain208_n36_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain208_n39_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "."
# IR_VAR_REF
 xchain208_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain208_n40_α
# IR_VAR_REF
 xchain208_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain208_n41_α
# IR_VAR_REF
 xchain208_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain208_n42_α
 xchain208_n40_α:
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
 je xchain208_n16_α
 jmp xchain208_n43_α
 xchain208_n40_β:
 jmp xchain208_n16_α
# IR_VAR_REF
 xchain208_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain208_n44_α
# IR_VAR_REF
 xchain208_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain208_n45_α
 xchain208_n43_α:
# IR_CUT
 jmp xchain208_n46_α
 xchain208_n44_α:
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
 je xchain208_n29_α
 jmp xchain208_n47_α
 xchain208_n44_β:
 jmp xchain208_n29_α
 xchain208_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2624]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2632], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2640]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2648], rax
# marshal arg2 = producer-box slot [zr+2544] -> [zr+2656]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n48_α
 xchain208_n45_β:
 jmp xchain208_n7_α
# IR_MOVE_LABEL
 xchain208_n46_α:
 lea rax, [rip + xchain208_n16_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
# IR_VAR_REF
 xchain208_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain208_n50_α
 xchain208_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2464]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2480]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain208_n7_α
 jmp xchain208_n51_α
 xchain208_n48_β:
 jmp xchain208_n7_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain208_n49_α:
 jmp qword ptr [rbp + 96]
 xchain208_n49_β:
 jmp proc_sum$4_ω
# IR_LIT_STRING
 xchain208_n50_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain208_n52_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "."
 xchain208_n51_α:
# IR_CUT
 jmp xchain208_n53_α
# IR_VAR_REF
 xchain208_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain208_n54_α
# IR_VAR_REF
 xchain208_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain208_n55_α
# IR_LIT_STRING
 xchain208_n54_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain208_n56_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "[]"
# IR_VAR
 xchain208_n55_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 2360], rax
 jmp xchain208_n57_α
 xchain208_n56_α:
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
 je xchain208_n29_α
 jmp xchain208_n58_α
 xchain208_n56_β:
 jmp xchain208_n29_α
# IR_VAR
 xchain208_n57_α:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 2392], rax
 jmp xchain208_n59_α
 xchain208_n58_α:
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
 je xchain208_n29_α
 jmp xchain208_n60_α
 xchain208_n58_β:
 jmp xchain208_n29_α
 xchain208_n59_α:
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
 je xchain208_n29_α
 jmp xchain208_n61_α
 xchain208_n59_β:
 jmp xchain208_n29_α
# IR_MOVE_LABEL
 xchain208_n60_α:
 lea rax, [rip + xchain208_n29_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
# IR_VAR
 xchain208_n61_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 2424], rax
 jmp xchain208_n62_α
 xchain208_n62_α:
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
 je xchain208_n29_α
 jmp xchain208_n63_α
 xchain208_n62_β:
 jmp xchain208_n29_α
 xchain208_n63_α:
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
 je xchain208_n29_α
 jmp xchain208_n64_α
 xchain208_n63_β:
 jmp xchain208_n29_α
# IR_VAR_REF
 xchain208_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain208_n65_α
# IR_VAR
 xchain208_n65_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 2072], rax
 jmp xchain208_n66_α
# IR_LIT_INTEGER
 xchain208_n66_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain208_n67_α
.Lx307_0:
 .quad 10
 xchain208_n67_α:
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
 je xchain208_n29_α
 jmp xchain208_n68_α
 xchain208_n67_β:
 jmp xchain208_n29_α
 xchain208_n68_α:
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
 je xchain208_n29_α
 jmp xchain208_n69_α
 xchain208_n68_β:
 jmp xchain208_n29_α
# IR_VAR_REF
 xchain208_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain208_n70_α
# IR_VAR
 xchain208_n70_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1848], rax
 jmp xchain208_n71_α
# IR_LIT_INTEGER
 xchain208_n71_α:
 mov qword ptr [rbp + 1872], 6
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain208_n72_α
.Lx314_0:
 .quad 10
 xchain208_n72_α:
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
 je xchain208_n29_α
 jmp xchain208_n73_α
 xchain208_n72_β:
 jmp xchain208_n29_α
 xchain208_n73_α:
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
 je xchain208_n29_α
 jmp xchain208_n74_α
 xchain208_n73_β:
 jmp xchain208_n29_α
# IR_VAR_REF
 xchain208_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain208_n75_α
# IR_VAR_REF
 xchain208_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain208_n76_α
# IR_VAR_REF
 xchain208_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain208_n77_α
# IR_VAR_REF
 xchain208_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain208_n78_α
 xchain208_n78_α:
 mov edi, 4
 lea rsi, [rbp + 1552]
 lea rdx, [rbp + 1584]
 lea rcx, [rbp + 1616]
 lea r8, [rbp + 1648]
 call rt_proc_call_open_det4@PLT
 test rax, rax
 je .Lx326_1
 lea rcx, [rip + .Lx326_3]
 lea rdx, [rip + .Lx326_4]
 jmp rax
.Lx326_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx326_2
.Lx326_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx326_2
.Lx326_1:
 call rt_faildescr@PLT
.Lx326_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain208_n29_α
 jmp xchain208_n79_α
 xchain208_n78_β:
 jmp xchain208_n29_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain208_n79_α:
 lea rax, [rip + xchain208_n78_β]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
proc_sum$4_res:
add rsp, 8
pop rbp
proc_sum$4_β:
jmp xchain208_n49_α
proc_sum$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3576]
lea rsp, [rbp + 3600]
mov rbp, [rbp + 3592]
jmp rax
proc_sum$4_ω:
mov rax, [rbp + 3584]
lea rsp, [rbp + 3600]
mov rbp, [rbp + 3592]
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
lea rax, [rip + xchain329_n4_β]
mov qword ptr [rbp + 976], rax
 xchain329_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain329_n1_α
 xchain329_n0_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain329_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain329_n2_α
# IR_LIT_INTEGER
 xchain329_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain329_n3_α
.Lx333_0:
 .quad 0
 xchain329_n3_α:
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
 je xchain329_n5_α
 jmp xchain329_n4_α
 xchain329_n3_β:
 jmp xchain329_n5_α
# IR_SUSPEND yield+resume
 xchain329_n4_α:
 lea rax, [rip + xchain329_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain329_n4_β:
 jmp xchain329_n5_α
 xchain329_n5_α:
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
 jmp xchain329_n6_α
 xchain329_n5_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain329_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain329_n7_α
# IR_LIT_INTEGER
 xchain329_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain329_n8_α
.Lx340_0:
 .quad 2
 xchain329_n8_α:
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
 je xchain329_n10_α
 jmp xchain329_n9_α
 xchain329_n8_β:
 jmp xchain329_n10_α
# IR_SUSPEND yield+resume
 xchain329_n9_α:
 lea rax, [rip + xchain329_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain329_n9_β:
 jmp xchain329_n10_α
 xchain329_n10_α:
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
 jmp xchain329_n11_α
 xchain329_n10_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain329_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain329_n12_α
# IR_LIT_INTEGER
 xchain329_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain329_n13_α
.Lx347_0:
 .quad 4
 xchain329_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain329_n15_α
 jmp xchain329_n14_α
 xchain329_n13_β:
 jmp xchain329_n15_α
# IR_SUSPEND yield+resume
 xchain329_n14_α:
 lea rax, [rip + xchain329_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain329_n14_β:
 jmp xchain329_n15_α
 xchain329_n15_α:
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
 jmp xchain329_n16_α
 xchain329_n15_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain329_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain329_n17_α
# IR_LIT_INTEGER
 xchain329_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain329_n18_α
.Lx354_0:
 .quad 6
 xchain329_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain329_n20_α
 jmp xchain329_n19_α
 xchain329_n18_β:
 jmp xchain329_n20_α
# IR_SUSPEND yield+resume
 xchain329_n19_α:
 lea rax, [rip + xchain329_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain329_n19_β:
 jmp xchain329_n20_α
 xchain329_n20_α:
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
 jmp xchain329_n21_α
 xchain329_n20_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain329_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain329_n22_α
# IR_LIT_INTEGER
 xchain329_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain329_n23_α
.Lx361_0:
 .quad 8
 xchain329_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain329_n25_α
 jmp xchain329_n24_α
 xchain329_n23_β:
 jmp xchain329_n25_α
# IR_SUSPEND yield+resume
 xchain329_n24_α:
 lea rax, [rip + xchain329_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain329_n24_β:
 jmp xchain329_n25_α
 xchain329_n25_α:
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
 xchain329_n25_β:
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
lea rax, [rip + xchain366_n175_β]
mov qword ptr [rbp + 8416], rax
 xchain366_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain366_n1_α
 xchain366_n0_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain366_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 jmp xchain366_n2_α
# IR_VAR_REF
 xchain366_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain366_n3_α
 xchain366_n3_α:
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
 je xchain366_n5_α
 jmp xchain366_n4_α
 xchain366_n3_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 jmp xchain366_n6_α
 xchain366_n5_α:
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
 xchain366_n5_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain366_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 jmp xchain366_n7_α
 xchain366_n7_α:
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
 je xchain366_n5_α
 jmp xchain366_n8_α
 xchain366_n7_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 jmp xchain366_n9_α
# IR_VAR_REF
 xchain366_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain366_n10_α
 xchain366_n10_α:
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
 je xchain366_n5_α
 jmp xchain366_n11_α
 xchain366_n10_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 jmp xchain366_n12_α
# IR_VAR_REF
 xchain366_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain366_n13_α
 xchain366_n13_α:
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
 je xchain366_n5_α
 jmp xchain366_n14_α
 xchain366_n13_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain366_n15_α
# IR_VAR_REF
 xchain366_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain366_n16_α
 xchain366_n16_α:
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
 je xchain366_n5_α
 jmp xchain366_n17_α
 xchain366_n16_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain366_n18_α
# IR_VAR_REF
 xchain366_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain366_n19_α
 xchain366_n19_α:
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
 je xchain366_n5_α
 jmp xchain366_n20_α
 xchain366_n19_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain366_n21_α
# IR_VAR_REF
 xchain366_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 jmp xchain366_n22_α
 xchain366_n22_α:
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
 je xchain366_n5_α
 jmp xchain366_n23_α
 xchain366_n22_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 jmp xchain366_n24_α
# IR_VAR_REF
 xchain366_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain366_n25_α
 xchain366_n25_α:
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
 je xchain366_n5_α
 jmp xchain366_n26_α
 xchain366_n25_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 144]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain366_n27_α
# IR_VAR_REF
 xchain366_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain366_n28_α
 xchain366_n28_α:
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
 je xchain366_n5_α
 jmp xchain366_n29_α
 xchain366_n28_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 160]
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain366_n30_α
# IR_VAR_REF
 xchain366_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 jmp xchain366_n31_α
 xchain366_n31_α:
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
 je xchain366_n5_α
 jmp xchain366_n32_α
 xchain366_n31_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 176]
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 jmp xchain366_n33_α
# IR_VAR_REF
 xchain366_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain366_n34_α
 xchain366_n34_α:
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
 je xchain366_n5_α
 jmp xchain366_n35_α
 xchain366_n34_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 192]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain366_n36_α
# IR_VAR_REF
 xchain366_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain366_n37_α
 xchain366_n37_α:
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
 je xchain366_n5_α
 jmp xchain366_n38_α
 xchain366_n37_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 208]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain366_n39_α
# IR_VAR_REF
 xchain366_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain366_n40_α
 xchain366_n40_α:
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
 je xchain366_n5_α
 jmp xchain366_n41_α
 xchain366_n40_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 224]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 jmp xchain366_n42_α
# IR_VAR_REF
 xchain366_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain366_n43_α
 xchain366_n43_α:
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
 je xchain366_n5_α
 jmp xchain366_n44_α
 xchain366_n43_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 240]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain366_n45_α
# IR_VAR_REF
 xchain366_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain366_n46_α
 xchain366_n46_α:
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
 je xchain366_n5_α
 jmp xchain366_n47_α
 xchain366_n46_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 256]
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain366_n48_α
# IR_VAR_REF
 xchain366_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain366_n49_α
 xchain366_n49_α:
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
 je xchain366_n5_α
 jmp xchain366_n50_α
 xchain366_n49_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain366_n51_α
 xchain366_n51_α:
 mov qword ptr [rbp + 6304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6336]
 mov rdx, qword ptr [rbp + 6344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx452_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx452_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx452_3]
 lea rdx, [rip + .Lx452_4]
 jmp rax
.Lx452_3:
 mov qword ptr [rbp + 6312], rsp
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx452_5
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx452_2
.Lx452_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx452_2
.Lx452_4:
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx452_6
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx452_2
.Lx452_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx452_2
.Lx452_1:
 call rt_faildescr@PLT
.Lx452_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain366_n5_α
 jmp xchain366_n52_α
 xchain366_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6312]
 jmp qword ptr [rsp]
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain366_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain366_n53_α
 xchain366_n53_α:
 mov qword ptr [rbp + 6208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx456_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx456_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx456_3]
 lea rdx, [rip + .Lx456_4]
 jmp rax
.Lx456_3:
 mov qword ptr [rbp + 6216], rsp
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx456_5
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx456_2
.Lx456_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx456_2
.Lx456_4:
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx456_6
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx456_2
.Lx456_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx456_2
.Lx456_1:
 call rt_faildescr@PLT
.Lx456_2:
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain366_n51_β
 jmp xchain366_n54_α
 xchain366_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6216]
 jmp qword ptr [rsp]
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain366_n55_α
 xchain366_n55_α:
 mov qword ptr [rbp + 6112], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6144]
 mov rdx, qword ptr [rbp + 6152]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx460_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx460_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx460_3]
 lea rdx, [rip + .Lx460_4]
 jmp rax
.Lx460_3:
 mov qword ptr [rbp + 6120], rsp
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx460_5
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx460_2
.Lx460_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx460_2
.Lx460_4:
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx460_6
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx460_2
.Lx460_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx460_2
.Lx460_1:
 call rt_faildescr@PLT
.Lx460_2:
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 cmp eax, 99
 je xchain366_n53_β
 jmp xchain366_n56_α
 xchain366_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6120]
 jmp qword ptr [rsp]
.Lx460_0:
 .quad .Lx460_0_s
.Lx460_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain366_n57_α
 xchain366_n57_α:
 mov qword ptr [rbp + 6016], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6048]
 mov rdx, qword ptr [rbp + 6056]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx464_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx464_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx464_3]
 lea rdx, [rip + .Lx464_4]
 jmp rax
.Lx464_3:
 mov qword ptr [rbp + 6024], rsp
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx464_5
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx464_2
.Lx464_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx464_2
.Lx464_4:
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx464_6
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx464_2
.Lx464_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx464_2
.Lx464_1:
 call rt_faildescr@PLT
.Lx464_2:
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain366_n55_β
 jmp xchain366_n58_α
 xchain366_n57_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6024]
 jmp qword ptr [rsp]
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "even/1"
# IR_LIT_STRING
 xchain366_n58_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx465_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain366_n59_α
.Lx465_0:
 .quad .Lx465_0_s
.Lx465_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain366_n60_α
# IR_LIT_STRING
 xchain366_n60_α:
 mov qword ptr [rbp + 5168], 1
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain366_n61_α
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain366_n62_α
# IR_LIT_STRING
 xchain366_n62_α:
 mov qword ptr [rbp + 5024], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain366_n63_α
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain366_n64_α
# IR_LIT_STRING
 xchain366_n64_α:
 mov qword ptr [rbp + 4880], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain366_n65_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "[]"
 xchain366_n65_α:
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
 jmp xchain366_n66_α
 xchain366_n65_β:
 jmp proc_top$16_ω
 xchain366_n66_α:
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
 jmp xchain366_n67_α
 xchain366_n66_β:
 jmp proc_top$16_ω
 xchain366_n67_α:
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
 je xchain366_n5_α
 jmp xchain366_n68_α
 xchain366_n67_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain366_n69_α
# IR_LIT_STRING
 xchain366_n69_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain366_n70_α
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain366_n71_α
# IR_LIT_STRING
 xchain366_n71_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain366_n72_α
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain366_n73_α
# IR_LIT_STRING
 xchain366_n73_α:
 mov qword ptr [rbp + 5664], 1
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [rbp + 5672], rax
 jmp xchain366_n74_α
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain366_n75_α
# IR_LIT_STRING
 xchain366_n75_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain366_n76_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain366_n77_α
# IR_VAR_REF
 xchain366_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain366_n78_α
 xchain366_n78_α:
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
 jmp xchain366_n79_α
 xchain366_n78_β:
 jmp proc_top$16_ω
 xchain366_n79_α:
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
 jmp xchain366_n80_α
 xchain366_n79_β:
 jmp proc_top$16_ω
 xchain366_n80_α:
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
 jmp xchain366_n81_α
 xchain366_n80_β:
 jmp proc_top$16_ω
 xchain366_n81_α:
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
 je xchain366_n5_α
 jmp xchain366_n82_α
 xchain366_n81_β:
 jmp xchain366_n5_α
 xchain366_n82_α:
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
 mov rdi, qword ptr [rip + .Lx499_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx499_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx499_3]
 lea rdx, [rip + .Lx499_4]
 jmp rax
.Lx499_3:
 mov qword ptr [rbp + 4856], rsp
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx499_5
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx499_2
.Lx499_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx499_2
.Lx499_4:
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx499_6
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx499_2
.Lx499_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx499_2
.Lx499_1:
 call rt_faildescr@PLT
.Lx499_2:
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain366_n57_β
 jmp xchain366_n83_α
 xchain366_n82_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4856]
 jmp qword ptr [rsp]
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain366_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain366_n84_α
 xchain366_n84_α:
 mov qword ptr [rbp + 4720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx503_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx503_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx503_3]
 lea rdx, [rip + .Lx503_4]
 jmp rax
.Lx503_3:
 mov qword ptr [rbp + 4728], rsp
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx503_5
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx503_2
.Lx503_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx503_2
.Lx503_4:
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx503_6
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx503_2
.Lx503_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx503_2
.Lx503_1:
 call rt_faildescr@PLT
.Lx503_2:
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain366_n82_β
 jmp xchain366_n85_α
 xchain366_n84_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4728]
 jmp qword ptr [rsp]
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain366_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain366_n86_α
 xchain366_n86_α:
 mov qword ptr [rbp + 4624], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx507_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx507_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx507_3]
 lea rdx, [rip + .Lx507_4]
 jmp rax
.Lx507_3:
 mov qword ptr [rbp + 4632], rsp
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx507_5
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx507_2
.Lx507_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx507_2
.Lx507_4:
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx507_6
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx507_2
.Lx507_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx507_2
.Lx507_1:
 call rt_faildescr@PLT
.Lx507_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain366_n84_β
 jmp xchain366_n87_α
 xchain366_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4632]
 jmp qword ptr [rsp]
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain366_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain366_n88_α
 xchain366_n88_α:
 mov qword ptr [rbp + 4528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx511_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx511_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx511_3]
 lea rdx, [rip + .Lx511_4]
 jmp rax
.Lx511_3:
 mov qword ptr [rbp + 4536], rsp
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx511_5
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx511_2
.Lx511_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx511_2
.Lx511_4:
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx511_6
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx511_2
.Lx511_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx511_2
.Lx511_1:
 call rt_faildescr@PLT
.Lx511_2:
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je xchain366_n86_β
 jmp xchain366_n89_α
 xchain366_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4536]
 jmp qword ptr [rsp]
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain366_n90_α
 xchain366_n90_α:
 mov qword ptr [rbp + 4432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4464]
 mov rdx, qword ptr [rbp + 4472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx515_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx515_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx515_3]
 lea rdx, [rip + .Lx515_4]
 jmp rax
.Lx515_3:
 mov qword ptr [rbp + 4440], rsp
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx515_5
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx515_2
.Lx515_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx515_2
.Lx515_4:
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx515_6
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx515_2
.Lx515_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx515_2
.Lx515_1:
 call rt_faildescr@PLT
.Lx515_2:
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain366_n88_β
 jmp xchain366_n91_α
 xchain366_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4440]
 jmp qword ptr [rsp]
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain366_n92_α
 xchain366_n92_α:
 mov qword ptr [rbp + 4336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx519_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx519_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx519_3]
 lea rdx, [rip + .Lx519_4]
 jmp rax
.Lx519_3:
 mov qword ptr [rbp + 4344], rsp
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx519_5
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx519_2
.Lx519_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx519_2
.Lx519_4:
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx519_6
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx519_2
.Lx519_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx519_2
.Lx519_1:
 call rt_faildescr@PLT
.Lx519_2:
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain366_n90_β
 jmp xchain366_n93_α
 xchain366_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4344]
 jmp qword ptr [rsp]
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "zero/1"
# IR_VAR_REF
 xchain366_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain366_n94_α
 xchain366_n94_α:
 mov qword ptr [rbp + 4240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4272]
 mov rdx, qword ptr [rbp + 4280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx523_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx523_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx523_3]
 lea rdx, [rip + .Lx523_4]
 jmp rax
.Lx523_3:
 mov qword ptr [rbp + 4248], rsp
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx523_5
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx523_2
.Lx523_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx523_2
.Lx523_4:
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx523_6
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx523_2
.Lx523_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx523_2
.Lx523_1:
 call rt_faildescr@PLT
.Lx523_2:
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 cmp eax, 99
 je xchain366_n92_β
 jmp xchain366_n95_α
 xchain366_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4248]
 jmp qword ptr [rsp]
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "lefteven/1"
# IR_LIT_STRING
 xchain366_n95_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx524_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain366_n96_α
.Lx524_0:
 .quad .Lx524_0_s
.Lx524_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain366_n97_α
# IR_LIT_STRING
 xchain366_n97_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain366_n98_α
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain366_n99_α
# IR_LIT_STRING
 xchain366_n99_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx530_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain366_n100_α
.Lx530_0:
 .quad .Lx530_0_s
.Lx530_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain366_n101_α
# IR_LIT_STRING
 xchain366_n101_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain366_n102_α
.Lx533_0:
 .quad .Lx533_0_s
.Lx533_0_s:
 .string "[]"
 xchain366_n102_α:
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
 jmp xchain366_n103_α
 xchain366_n102_β:
 jmp proc_top$16_ω
 xchain366_n103_α:
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
 jmp xchain366_n104_α
 xchain366_n103_β:
 jmp proc_top$16_ω
 xchain366_n104_α:
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
 je xchain366_n5_α
 jmp xchain366_n105_α
 xchain366_n104_β:
 jmp xchain366_n5_α
# IR_VAR_REF
 xchain366_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain366_n106_α
# IR_LIT_STRING
 xchain366_n106_α:
 mov qword ptr [rbp + 4176], 1
 mov rax, qword ptr [rip + .Lx539_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain366_n107_α
.Lx539_0:
 .quad .Lx539_0_s
.Lx539_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain366_n108_α
# IR_LIT_STRING
 xchain366_n108_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain366_n109_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain366_n110_α
# IR_LIT_STRING
 xchain366_n110_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain366_n111_α
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain366_n112_α
# IR_VAR_REF
 xchain366_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain366_n113_α
 xchain366_n113_α:
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
 jmp xchain366_n114_α
 xchain366_n113_β:
 jmp proc_top$16_ω
 xchain366_n114_α:
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
 jmp xchain366_n115_α
 xchain366_n114_β:
 jmp proc_top$16_ω
 xchain366_n115_α:
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
 je xchain366_n5_α
 jmp xchain366_n116_α
 xchain366_n115_β:
 jmp xchain366_n5_α
 xchain366_n116_α:
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
 mov rdi, qword ptr [rip + .Lx554_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx554_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx554_3]
 lea rdx, [rip + .Lx554_4]
 jmp rax
.Lx554_3:
 mov qword ptr [rbp + 3224], rsp
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx554_5
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx554_2
.Lx554_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx554_2
.Lx554_4:
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx554_6
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx554_2
.Lx554_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx554_2
.Lx554_1:
 call rt_faildescr@PLT
.Lx554_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain366_n94_β
 jmp xchain366_n117_α
 xchain366_n116_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3224]
 jmp qword ptr [rsp]
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain366_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain366_n118_α
 xchain366_n118_α:
 mov qword ptr [rbp + 3088], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx558_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx558_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx558_3]
 lea rdx, [rip + .Lx558_4]
 jmp rax
.Lx558_3:
 mov qword ptr [rbp + 3096], rsp
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx558_5
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx558_2
.Lx558_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx558_2
.Lx558_4:
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx558_6
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx558_2
.Lx558_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx558_2
.Lx558_1:
 call rt_faildescr@PLT
.Lx558_2:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain366_n116_β
 jmp xchain366_n119_α
 xchain366_n118_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3096]
 jmp qword ptr [rsp]
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain366_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain366_n120_α
 xchain366_n120_α:
 mov qword ptr [rbp + 2992], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx562_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx562_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx562_3]
 lea rdx, [rip + .Lx562_4]
 jmp rax
.Lx562_3:
 mov qword ptr [rbp + 3000], rsp
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx562_5
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx562_2
.Lx562_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx562_2
.Lx562_4:
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx562_6
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx562_2
.Lx562_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx562_2
.Lx562_1:
 call rt_faildescr@PLT
.Lx562_2:
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain366_n118_β
 jmp xchain366_n121_α
 xchain366_n120_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3000]
 jmp qword ptr [rsp]
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain366_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain366_n122_α
 xchain366_n122_α:
 mov qword ptr [rbp + 2896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx566_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx566_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx566_3]
 lea rdx, [rip + .Lx566_4]
 jmp rax
.Lx566_3:
 mov qword ptr [rbp + 2904], rsp
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx566_5
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx566_2
.Lx566_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx566_2
.Lx566_4:
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx566_6
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx566_2
.Lx566_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx566_2
.Lx566_1:
 call rt_faildescr@PLT
.Lx566_2:
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain366_n120_β
 jmp xchain366_n123_α
 xchain366_n122_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2904]
 jmp qword ptr [rsp]
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain366_n124_α
 xchain366_n124_α:
 mov qword ptr [rbp + 2800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2832]
 mov rdx, qword ptr [rbp + 2840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx570_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx570_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx570_3]
 lea rdx, [rip + .Lx570_4]
 jmp rax
.Lx570_3:
 mov qword ptr [rbp + 2808], rsp
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx570_5
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx570_2
.Lx570_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx570_2
.Lx570_4:
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx570_6
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx570_2
.Lx570_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx570_2
.Lx570_1:
 call rt_faildescr@PLT
.Lx570_2:
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain366_n122_β
 jmp xchain366_n125_α
 xchain366_n124_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2808]
 jmp qword ptr [rsp]
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "zero/1"
# IR_LIT_STRING
 xchain366_n125_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain366_n126_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain366_n127_α
# IR_LIT_STRING
 xchain366_n127_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain366_n128_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain366_n129_α
# IR_LIT_STRING
 xchain366_n129_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain366_n130_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain366_n131_α
# IR_LIT_STRING
 xchain366_n131_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain366_n132_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain366_n133_α
# IR_LIT_STRING
 xchain366_n133_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain366_n134_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "[]"
 xchain366_n134_α:
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
 jmp xchain366_n135_α
 xchain366_n134_β:
 jmp proc_top$16_ω
 xchain366_n135_α:
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
 jmp xchain366_n136_α
 xchain366_n135_β:
 jmp proc_top$16_ω
 xchain366_n136_α:
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
 jmp xchain366_n137_α
 xchain366_n136_β:
 jmp proc_top$16_ω
 xchain366_n137_α:
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
 je xchain366_n5_α
 jmp xchain366_n138_α
 xchain366_n137_β:
 jmp xchain366_n5_α
# IR_LIT_STRING
 xchain366_n138_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain366_n139_α
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain366_n139_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain366_n140_α
.Lx589_0:
 .quad 0
# IR_LIT_STRING
 xchain366_n140_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain366_n141_α
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain366_n142_α
# IR_LIT_STRING
 xchain366_n142_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain366_n143_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain366_n144_α
# IR_LIT_STRING
 xchain366_n144_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain366_n145_α
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain366_n146_α
# IR_LIT_STRING
 xchain366_n146_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain366_n147_α
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "[]"
 xchain366_n147_α:
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
 jmp xchain366_n148_α
 xchain366_n147_β:
 jmp proc_top$16_ω
 xchain366_n148_α:
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
 jmp xchain366_n149_α
 xchain366_n148_β:
 jmp proc_top$16_ω
 xchain366_n149_α:
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
 jmp xchain366_n150_α
 xchain366_n149_β:
 jmp proc_top$16_ω
 xchain366_n150_α:
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
 je xchain366_n5_α
 jmp xchain366_n151_α
 xchain366_n150_β:
 jmp xchain366_n5_α
# IR_LIT_STRING
 xchain366_n151_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx604_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain366_n152_α
.Lx604_0:
 .quad .Lx604_0_s
.Lx604_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain366_n153_α
# IR_LIT_STRING
 xchain366_n153_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain366_n154_α
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain366_n155_α
# IR_LIT_STRING
 xchain366_n155_α:
 mov qword ptr [rbp + 2448], 1
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain366_n156_α
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain366_n157_α
# IR_LIT_STRING
 xchain366_n157_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain366_n158_α
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "."
# IR_VAR_REF
 xchain366_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain366_n159_α
# IR_VAR_REF
 xchain366_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain366_n160_α
 xchain366_n160_α:
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
 jmp xchain366_n161_α
 xchain366_n160_β:
 jmp proc_top$16_ω
 xchain366_n161_α:
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
 jmp xchain366_n162_α
 xchain366_n161_β:
 jmp proc_top$16_ω
 xchain366_n162_α:
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
 jmp xchain366_n163_α
 xchain366_n162_β:
 jmp proc_top$16_ω
 xchain366_n163_α:
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
 je xchain366_n5_α
 jmp xchain366_n164_α
 xchain366_n163_β:
 jmp xchain366_n5_α
 xchain366_n164_α:
 mov edi, 3
 lea rsi, [rbp + 1440]
 lea rdx, [rbp + 2048]
 lea rcx, [rbp + 2656]
 call rt_proc_call_open_det3@PLT
 test rax, rax
 je .Lx623_1
 lea rcx, [rip + .Lx623_3]
 lea rdx, [rip + .Lx623_4]
 jmp rax
.Lx623_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx623_2
.Lx623_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx623_2
.Lx623_1:
 call rt_faildescr@PLT
.Lx623_2:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain366_n124_β
 jmp xchain366_n165_α
 xchain366_n164_β:
 jmp xchain366_n124_β
.Lx623_0:
 .quad .Lx623_0_s
.Lx623_0_s:
 .string "sum/3"
# IR_VAR_REF
 xchain366_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain366_n166_α
 xchain366_n166_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx627_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx627_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx627_3]
 lea rdx, [rip + .Lx627_4]
 jmp rax
.Lx627_3:
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx627_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx627_2
.Lx627_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx627_2
.Lx627_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx627_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx627_2
.Lx627_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx627_2
.Lx627_1:
 call rt_faildescr@PLT
.Lx627_2:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain366_n164_β
 jmp xchain366_n167_α
 xchain366_n166_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx627_0:
 .quad .Lx627_0_s
.Lx627_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain366_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain366_n168_α
 xchain366_n168_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx631_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx631_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx631_3]
 lea rdx, [rip + .Lx631_4]
 jmp rax
.Lx631_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx631_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx631_2
.Lx631_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx631_2
.Lx631_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx631_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx631_2
.Lx631_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx631_2
.Lx631_1:
 call rt_faildescr@PLT
.Lx631_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain366_n166_β
 jmp xchain366_n169_α
 xchain366_n168_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx631_0:
 .quad .Lx631_0_s
.Lx631_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain366_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain366_n170_α
 xchain366_n170_α:
 mov qword ptr [rbp + 608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx635_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx635_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx635_3]
 lea rdx, [rip + .Lx635_4]
 jmp rax
.Lx635_3:
 mov qword ptr [rbp + 616], rsp
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx635_5
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx635_2
.Lx635_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx635_2
.Lx635_4:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx635_6
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx635_2
.Lx635_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx635_2
.Lx635_1:
 call rt_faildescr@PLT
.Lx635_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain366_n168_β
 jmp xchain366_n171_α
 xchain366_n170_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 616]
 jmp qword ptr [rsp]
.Lx635_0:
 .quad .Lx635_0_s
.Lx635_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain366_n172_α
 xchain366_n172_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx639_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx639_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx639_3]
 lea rdx, [rip + .Lx639_4]
 jmp rax
.Lx639_3:
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx639_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx639_2
.Lx639_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx639_2
.Lx639_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx639_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx639_2
.Lx639_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx639_2
.Lx639_1:
 call rt_faildescr@PLT
.Lx639_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain366_n170_β
 jmp xchain366_n173_α
 xchain366_n172_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 520]
 jmp qword ptr [rsp]
.Lx639_0:
 .quad .Lx639_0_s
.Lx639_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain366_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain366_n174_α
 xchain366_n174_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx643_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx643_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx643_3]
 lea rdx, [rip + .Lx643_4]
 jmp rax
.Lx643_3:
 mov qword ptr [rbp + 424], rsp
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx643_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx643_2
.Lx643_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx643_2
.Lx643_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx643_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx643_2
.Lx643_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx643_2
.Lx643_1:
 call rt_faildescr@PLT
.Lx643_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain366_n172_β
 jmp xchain366_n175_α
 xchain366_n174_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 424]
 jmp qword ptr [rsp]
.Lx643_0:
 .quad .Lx643_0_s
.Lx643_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain366_n175_α:
 lea rax, [rip + xchain366_n175_β]
 mov qword ptr [rbp + 8416], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$16_γ
 xchain366_n175_β:
 jmp xchain366_n174_β
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
lea rax, [rip + xchain646_n4_β]
mov qword ptr [rbp + 800], rax
 xchain646_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain646_n1_α
 xchain646_n0_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain646_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain646_n2_α
# IR_LIT_INTEGER
 xchain646_n2_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx650_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain646_n3_α
.Lx650_0:
 .quad 2
 xchain646_n3_α:
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
 je xchain646_n5_α
 jmp xchain646_n4_α
 xchain646_n3_β:
 jmp xchain646_n5_α
# IR_SUSPEND yield+resume
 xchain646_n4_α:
 lea rax, [rip + xchain646_n4_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain646_n4_β:
 jmp xchain646_n5_α
 xchain646_n5_α:
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
 jmp xchain646_n6_α
 xchain646_n5_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain646_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain646_n7_α
# IR_LIT_INTEGER
 xchain646_n7_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx657_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain646_n8_α
.Lx657_0:
 .quad 4
 xchain646_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain646_n10_α
 jmp xchain646_n9_α
 xchain646_n8_β:
 jmp xchain646_n10_α
# IR_SUSPEND yield+resume
 xchain646_n9_α:
 lea rax, [rip + xchain646_n9_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain646_n9_β:
 jmp xchain646_n10_α
 xchain646_n10_α:
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
 jmp xchain646_n11_α
 xchain646_n10_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain646_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain646_n12_α
# IR_LIT_INTEGER
 xchain646_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx664_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain646_n13_α
.Lx664_0:
 .quad 6
 xchain646_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain646_n15_α
 jmp xchain646_n14_α
 xchain646_n13_β:
 jmp xchain646_n15_α
# IR_SUSPEND yield+resume
 xchain646_n14_α:
 lea rax, [rip + xchain646_n14_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain646_n14_β:
 jmp xchain646_n15_α
 xchain646_n15_α:
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
 jmp xchain646_n16_α
 xchain646_n15_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain646_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain646_n17_α
# IR_LIT_INTEGER
 xchain646_n17_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx671_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain646_n18_α
.Lx671_0:
 .quad 8
 xchain646_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain646_n20_α
 jmp xchain646_n19_α
 xchain646_n18_β:
 jmp xchain646_n20_α
# IR_SUSPEND yield+resume
 xchain646_n19_α:
 lea rax, [rip + xchain646_n19_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain646_n19_β:
 jmp xchain646_n20_α
 xchain646_n20_α:
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
 xchain646_n20_β:
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
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 712], rsp
  mov rdi, rsp
  mov esi, 688
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_zero$1_α_body:
lea rax, [rip + xchain676_n4_β]
mov qword ptr [rbp + 688], rax
 xchain676_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain676_n1_α
 xchain676_n0_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain676_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain676_n2_α
# IR_LIT_STRING
 xchain676_n2_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain676_n3_α
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "[]"
 xchain676_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain676_n5_α
 jmp xchain676_n4_α
 xchain676_n3_β:
 jmp xchain676_n5_α
# IR_SUSPEND yield+resume
 xchain676_n4_α:
 lea rax, [rip + xchain676_n4_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain676_n4_β:
 jmp xchain676_n5_α
 xchain676_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+528]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain676_n6_α
 xchain676_n5_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain676_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain676_n7_α
# IR_LIT_STRING
 xchain676_n7_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx687_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain676_n8_α
.Lx687_0:
 .quad .Lx687_0_s
.Lx687_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain676_n8_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx688_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain676_n9_α
.Lx688_0:
 .quad 0
# IR_VAR_REF
 xchain676_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain676_n10_α
 xchain676_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+432]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+448]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain676_n12_α
 jmp xchain676_n11_α
 xchain676_n10_β:
 jmp xchain676_n12_α
 xchain676_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+256]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 264], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+272]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 256]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain676_n12_α
 jmp xchain676_n13_α
 xchain676_n11_β:
 jmp xchain676_n12_α
 xchain676_n12_α:
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
 xchain676_n12_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain676_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain676_n14_α
 xchain676_n14_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx697_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx697_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx697_3]
 lea rdx, [rip + .Lx697_4]
 jmp rax
.Lx697_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx697_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx697_2
.Lx697_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx697_2
.Lx697_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx697_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx697_2
.Lx697_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx697_2
.Lx697_1:
 call rt_faildescr@PLT
.Lx697_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain676_n12_α
 jmp xchain676_n15_α
 xchain676_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx697_0:
 .quad .Lx697_0_s
.Lx697_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain676_n15_α:
 lea rax, [rip + xchain676_n15_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain676_n15_β:
 jmp xchain676_n14_β
proc_zero$1_res:
add rsp, 8
pop rbp
proc_zero$1_β:
jmp qword ptr [rbp + 688]
proc_zero$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_zero$1_res]
push rax
mov rax, [rbp + 744]
mov rbp, [rbp + 760]
jmp rax
proc_zero$1_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
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
  mov esi, 3456
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
  mov esi, 3568
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
  mov esi, 736
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
 xchain700_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain700_n1_α
 xchain700_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain700_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain700_n2_α
# IR_VAR_REF
 xchain700_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain700_n3_α
# IR_VAR_REF
 xchain700_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain700_n4_α
# IR_VAR_REF
 xchain700_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain700_n5_α
# IR_VAR_REF
 xchain700_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain700_n6_α
# IR_VAR_REF
 xchain700_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain700_n7_α
# IR_VAR_REF
 xchain700_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain700_n8_α
# IR_VAR_REF
 xchain700_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain700_n9_α
# IR_VAR_REF
 xchain700_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain700_n10_α
# IR_VAR_REF
 xchain700_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain700_n11_α
# IR_VAR_REF
 xchain700_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain700_n12_α
# IR_VAR_REF
 xchain700_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain700_n13_α
# IR_VAR_REF
 xchain700_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain700_n14_α
# IR_VAR_REF
 xchain700_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain700_n15_α
# IR_VAR_REF
 xchain700_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain700_n16_α
# IR_VAR_REF
 xchain700_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain700_n17_α
 xchain700_n17_α:
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
 mov rdi, qword ptr [rip + .Lx735_0]
 mov esi, 16
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx735_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx735_3]
 lea rdx, [rip + .Lx735_4]
 jmp rax
.Lx735_3:
 mov qword ptr [rbp + 2872], rsp
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx735_5
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx735_2
.Lx735_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx735_2
.Lx735_4:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx735_6
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx735_2
.Lx735_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx735_2
.Lx735_1:
 call rt_faildescr@PLT
.Lx735_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain700_n19_α
 jmp xchain700_n18_α
 xchain700_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2872]
 jmp qword ptr [rsp]
.Lx735_0:
 .quad .Lx735_0_s
.Lx735_0_s:
 .string "top/16"
# IR_LIT_STRING
 xchain700_n18_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain700_n20_α
.Lx736_0:
 .quad .Lx736_0_s
.Lx736_0_s:
 .string "."
 xchain700_n19_α:
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
 xchain700_n19_β:
 jmp main_ω
# IR_VAR_REF
 xchain700_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain700_n21_α
# IR_LIT_STRING
 xchain700_n21_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx740_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain700_n22_α
.Lx740_0:
 .quad .Lx740_0_s
.Lx740_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain700_n23_α
# IR_LIT_STRING
 xchain700_n23_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx743_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain700_n24_α
.Lx743_0:
 .quad .Lx743_0_s
.Lx743_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain700_n25_α
# IR_LIT_STRING
 xchain700_n25_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain700_n26_α
.Lx746_0:
 .quad .Lx746_0_s
.Lx746_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain700_n27_α
# IR_LIT_STRING
 xchain700_n27_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain700_n28_α
.Lx749_0:
 .quad .Lx749_0_s
.Lx749_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain700_n29_α
# IR_LIT_STRING
 xchain700_n29_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain700_n30_α
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain700_n31_α
# IR_LIT_STRING
 xchain700_n31_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx755_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain700_n32_α
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain700_n33_α
# IR_LIT_STRING
 xchain700_n33_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx758_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain700_n34_α
.Lx758_0:
 .quad .Lx758_0_s
.Lx758_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain700_n35_α
# IR_LIT_STRING
 xchain700_n35_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx761_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain700_n36_α
.Lx761_0:
 .quad .Lx761_0_s
.Lx761_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain700_n37_α
# IR_LIT_STRING
 xchain700_n37_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx764_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain700_n38_α
.Lx764_0:
 .quad .Lx764_0_s
.Lx764_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain700_n39_α
# IR_LIT_STRING
 xchain700_n39_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx767_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain700_n40_α
.Lx767_0:
 .quad .Lx767_0_s
.Lx767_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain700_n41_α
# IR_LIT_STRING
 xchain700_n41_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx770_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain700_n42_α
.Lx770_0:
 .quad .Lx770_0_s
.Lx770_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain700_n43_α
# IR_LIT_STRING
 xchain700_n43_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx773_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain700_n44_α
.Lx773_0:
 .quad .Lx773_0_s
.Lx773_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain700_n45_α
# IR_LIT_STRING
 xchain700_n45_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx776_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain700_n46_α
.Lx776_0:
 .quad .Lx776_0_s
.Lx776_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain700_n47_α
# IR_LIT_STRING
 xchain700_n47_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx779_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain700_n48_α
.Lx779_0:
 .quad .Lx779_0_s
.Lx779_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain700_n49_α
# IR_LIT_STRING
 xchain700_n49_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx782_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain700_n50_α
.Lx782_0:
 .quad .Lx782_0_s
.Lx782_0_s:
 .string "."
# IR_VAR_REF
 xchain700_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain700_n51_α
# IR_LIT_STRING
 xchain700_n51_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx785_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain700_n52_α
.Lx785_0:
 .quad .Lx785_0_s
.Lx785_0_s:
 .string "[]"
 xchain700_n52_α:
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
 jmp xchain700_n53_α
 xchain700_n52_β:
 jmp main_ω
 xchain700_n53_α:
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
 jmp xchain700_n54_α
 xchain700_n53_β:
 jmp main_ω
 xchain700_n54_α:
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
 jmp xchain700_n55_α
 xchain700_n54_β:
 jmp main_ω
 xchain700_n55_α:
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
 jmp xchain700_n56_α
 xchain700_n55_β:
 jmp main_ω
 xchain700_n56_α:
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
 jmp xchain700_n57_α
 xchain700_n56_β:
 jmp main_ω
 xchain700_n57_α:
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
 jmp xchain700_n58_α
 xchain700_n57_β:
 jmp main_ω
 xchain700_n58_α:
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
 jmp xchain700_n59_α
 xchain700_n58_β:
 jmp main_ω
 xchain700_n59_α:
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
 jmp xchain700_n60_α
 xchain700_n59_β:
 jmp main_ω
 xchain700_n60_α:
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
 jmp xchain700_n61_α
 xchain700_n60_β:
 jmp main_ω
 xchain700_n61_α:
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
 jmp xchain700_n62_α
 xchain700_n61_β:
 jmp main_ω
 xchain700_n62_α:
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
 jmp xchain700_n63_α
 xchain700_n62_β:
 jmp main_ω
 xchain700_n63_α:
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
 jmp xchain700_n64_α
 xchain700_n63_β:
 jmp main_ω
 xchain700_n64_α:
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
 jmp xchain700_n65_α
 xchain700_n64_β:
 jmp main_ω
 xchain700_n65_α:
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
 jmp xchain700_n66_α
 xchain700_n65_β:
 jmp main_ω
 xchain700_n66_α:
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
 jmp xchain700_n67_α
 xchain700_n66_β:
 jmp main_ω
 xchain700_n67_α:
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
 je xchain700_n19_α
 jmp xchain700_n68_α
 xchain700_n67_β:
 jmp xchain700_n19_α
 xchain700_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+224]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn803: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn803]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain700_n17_β
 jmp xchain700_n69_α
 xchain700_n68_β:
 jmp xchain700_n17_β
# IR_LIT_STRING
 xchain700_n69_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx804_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain700_n70_α
.Lx804_0:
 .quad .Lx804_0_s
.Lx804_0_s:
 .string ""
 xchain700_n70_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn806: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn806]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain700_n17_β
 jmp xchain700_n71_α
 xchain700_n70_β:
 jmp xchain700_n17_β
# IR_MOVE_LABEL
 xchain700_n71_α:
 lea rax, [rip + xchain700_n17_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain700_n72_α:
 jmp qword ptr [rbp + 32]
 xchain700_n72_β:
 jmp main_ω
main_β:
jmp xchain700_n72_α
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
