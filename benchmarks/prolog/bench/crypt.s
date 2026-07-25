  .intel_syntax noprefix
  .text
  .globl proc_mult$2F3_α
proc_mult$2F3_α:
#=======================================================================================================================
    .global proc_mult$2F3_α
    .global proc_mult$2F3_β
    .global proc_mult$2F3_γ
    .global proc_mult$2F3_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 760], rsp
  mov rdi, rsp
  mov esi, 736
  mov edx, 816
  call rt_jmp_frame_lexprep2@PLT
proc_mult$2F3_α_body:
lea rax, [rip + xchain0_n16_β]
mov qword ptr [rbp + 736], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_mult$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_mult$2F3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
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
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
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
 je proc_mult$2F3_ω
 jmp proc_mult$2F3_ω
 xchain0_n5_β:
 jmp proc_mult$2F3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 784]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n10_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 784]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n13_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain0_n14_α
.Lx22_0:
 .quad 0
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n15_α
 xchain0_n15_α:
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
 mov edi, 3
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
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
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx26_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx26_2
.Lx26_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx26_2
.Lx26_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx26_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx26_2
.Lx26_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx26_2
.Lx26_1:
 call rt_faildescr@PLT
.Lx26_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n16_α
 xchain0_n15_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain0_n16_α:
 lea rax, [rip + xchain0_n16_β]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$2F3_γ
 xchain0_n16_β:
 jmp xchain0_n15_β
proc_mult$2F3_res:
add rsp, 8
pop rbp
proc_mult$2F3_β:
jmp qword ptr [rbp + 736]
proc_mult$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$2F3_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_mult$2F3_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_mult$2F4_α
proc_mult$2F4_α:
#=======================================================================================================================
    .global proc_mult$2F4_α
    .global proc_mult$2F4_β
    .global proc_mult$2F4_γ
    .global proc_mult$2F4_ω
  sub rsp, 3392
  mov [rsp + 3368], rcx
  mov [rsp + 3376], rdx
  mov [rsp + 3384], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3224], rsp
  mov rdi, rsp
  mov esi, 3200
  mov edx, 3360
  call rt_jmp_frame_lexprep2@PLT
proc_mult$2F4_α_body:
lea rax, [rip + xchain29_n72_β]
mov qword ptr [rbp + 3200], rax
 xchain29_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_mult$2F4_ω
 jmp xchain29_n1_α
 xchain29_n0_β:
 jmp proc_mult$2F4_ω
# IR_VAR_REF
 xchain29_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain29_n2_α
# IR_LIT_INTEGER
 xchain29_n2_α:
 mov qword ptr [rbp + 3136], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain29_n3_α
.Lx33_0:
 .quad 3
# IR_LIT_INTEGER
 xchain29_n3_α:
 mov qword ptr [rbp + 3168], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 3176], rax
 jmp xchain29_n4_α
.Lx34_0:
 .quad 0
 xchain29_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3056]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3064], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3072]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3080], rax
# marshal arg2 = producer-box slot [zr+3168] -> [zr+3088]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3056]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n5_α
 xchain29_n4_β:
 jmp xchain29_n6_α
# IR_VAR_REF
 xchain29_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain29_n7_α
# IR_VAR_REF
 xchain29_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain29_n8_α
# IR_VAR_REF
 xchain29_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain29_n9_α
# IR_LIT_INTEGER
 xchain29_n8_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain29_n10_α
.Lx42_0:
 .quad 2
# IR_VAR_REF
 xchain29_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain29_n11_α
# IR_LIT_STRING
 xchain29_n10_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain29_n12_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "[]"
 xchain29_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2928]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2936], rax
# marshal arg1 = producer-box slot [zr+2976] -> [zr+2944]
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 2952], rax
# marshal arg2 = producer-box slot [zr+3008] -> [zr+2960]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2928]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n13_α
 xchain29_n11_β:
 jmp xchain29_n14_α
 xchain29_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1392]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n15_α
 xchain29_n12_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain29_n17_α
 xchain29_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1520]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_mult$2F4_ω
 jmp xchain29_n6_α
 xchain29_n14_β:
 jmp proc_mult$2F4_ω
# IR_VAR_REF
 xchain29_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
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
 je proc_mult$2F4_ω
 jmp proc_mult$2F4_ω
 xchain29_n16_β:
 jmp proc_mult$2F4_ω
# IR_VAR_REF
 xchain29_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain29_n19_α
# IR_LIT_STRING
 xchain29_n18_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain29_n20_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "[]"
 xchain29_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2816] -> [zr+2784]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2848] -> [zr+2800]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n21_α
 xchain29_n19_β:
 jmp xchain29_n14_α
 xchain29_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1248]
 mov rsi, qword ptr [rip + .Lx58_2]
 jmp .Lx58_3
.Lx58_2:
 .quad .Lx58_2_s
.Lx58_2_s:
 .string "[]"
.Lx58_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n22_α
 xchain29_n20_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain29_n23_α
# IR_VAR_REF
 xchain29_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain29_n24_α
# IR_VAR_REF
 xchain29_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain29_n25_α
# IR_VAR_REF
 xchain29_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain29_n26_α
 xchain29_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2672]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2680], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2688]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n27_α
 xchain29_n25_β:
 jmp xchain29_n14_α
 xchain29_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n28_α
 xchain29_n26_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain29_n29_α
# IR_VAR_REF
 xchain29_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain29_n30_α
# IR_VAR_REF
 xchain29_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain29_n31_α
# IR_VAR_REF
 xchain29_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain29_n32_α
# IR_VAR_REF
 xchain29_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain29_n33_α
 xchain29_n32_α:
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
 je xchain29_n16_α
 jmp xchain29_n34_α
 xchain29_n32_β:
 jmp xchain29_n16_α
 xchain29_n33_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2544]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2560]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2576]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n35_α
 xchain29_n33_β:
 jmp xchain29_n14_α
# IR_VAR_REF
 xchain29_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain29_n36_α
# IR_VAR_REF
 xchain29_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain29_n37_α
# IR_LIT_STRING
 xchain29_n36_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain29_n38_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "."
# IR_VAR
 xchain29_n37_α:
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 2408], rax
 jmp xchain29_n39_α
# IR_VAR_REF
 xchain29_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain29_n40_α
# IR_VAR
 xchain29_n39_α:
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 2440], rax
 jmp xchain29_n41_α
# IR_LIT_STRING
 xchain29_n40_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain29_n42_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "."
 xchain29_n41_α:
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
 je xchain29_n14_α
 jmp xchain29_n43_α
 xchain29_n41_β:
 jmp xchain29_n14_α
# IR_VAR_REF
 xchain29_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain29_n44_α
# IR_VAR
 xchain29_n43_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 2472], rax
 jmp xchain29_n45_α
# IR_LIT_STRING
 xchain29_n44_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain29_n46_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "[]"
 xchain29_n45_α:
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
 je xchain29_n14_α
 jmp xchain29_n47_α
 xchain29_n45_β:
 jmp xchain29_n14_α
 xchain29_n46_α:
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
# marshal arg2 = producer-box slot [zr+688] -> [zr+800]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je proc_mult$2F4_ω
 jmp xchain29_n48_α
 xchain29_n46_β:
 jmp proc_mult$2F4_ω
 xchain29_n47_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2208]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2224]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n49_α
 xchain29_n47_β:
 jmp xchain29_n14_α
 xchain29_n48_α:
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
 je xchain29_n16_α
 jmp xchain29_n50_α
 xchain29_n48_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain29_n51_α
 xchain29_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+640]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n52_α
 xchain29_n50_β:
 jmp xchain29_n16_α
# IR_VAR
 xchain29_n51_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 2136], rax
 jmp xchain29_n53_α
# IR_VAR_REF
 xchain29_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain29_n54_α
# IR_LIT_INTEGER
 xchain29_n53_α:
 mov qword ptr [rbp + 2160], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain29_n55_α
.Lx110_0:
 .quad 10
# IR_VAR
 xchain29_n54_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 552], rax
 jmp xchain29_n56_α
 xchain29_n55_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2080]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2096]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2080]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n57_α
 xchain29_n55_β:
 jmp xchain29_n14_α
# IR_LIT_INTEGER
 xchain29_n56_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain29_n58_α
.Lx114_0:
 .quad 10
 xchain29_n57_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2016]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n59_α
 xchain29_n57_β:
 jmp xchain29_n14_α
 xchain29_n58_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n60_α
 xchain29_n58_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain29_n61_α
 xchain29_n60_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n62_α
 xchain29_n60_β:
 jmp xchain29_n16_α
# IR_VAR
 xchain29_n61_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 1928], rax
 jmp xchain29_n63_α
# IR_VAR_REF
 xchain29_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain29_n64_α
# IR_LIT_INTEGER
 xchain29_n63_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain29_n65_α
.Lx124_0:
 .quad 10
# IR_VAR
 xchain29_n64_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 344], rax
 jmp xchain29_n66_α
 xchain29_n65_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n67_α
 xchain29_n65_β:
 jmp xchain29_n14_α
# IR_LIT_INTEGER
 xchain29_n66_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain29_n68_α
.Lx128_0:
 .quad 10
 xchain29_n67_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1808]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n69_α
 xchain29_n67_β:
 jmp xchain29_n14_α
 xchain29_n68_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n70_α
 xchain29_n68_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain29_n71_α
 xchain29_n70_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 208]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n72_α
 xchain29_n70_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain29_n73_α
# IR_SUSPEND yield+resume
 xchain29_n72_α:
 lea rax, [rip + xchain29_n72_β]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$2F4_γ
 xchain29_n72_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain29_n74_α
# IR_VAR_REF
 xchain29_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain29_n75_α
 xchain29_n75_α:
 mov qword ptr [rbp + 1616], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1712]
 mov rdx, qword ptr [rbp + 1720]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx143_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx143_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx143_3]
 lea rdx, [rip + .Lx143_4]
 jmp rax
.Lx143_3:
 mov qword ptr [rbp + 1624], rsp
 mov rax, qword ptr [rbp + 1616]
 test rax, rax
 jne .Lx143_5
 mov qword ptr [rbp + 1616], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx143_2
.Lx143_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx143_2
.Lx143_4:
 mov rax, qword ptr [rbp + 1616]
 test rax, rax
 jne .Lx143_6
 mov qword ptr [rbp + 1616], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx143_2
.Lx143_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx143_2
.Lx143_1:
 call rt_faildescr@PLT
.Lx143_2:
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n76_α
 xchain29_n75_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1624]
 jmp qword ptr [rsp]
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain29_n76_α:
 lea rax, [rip + xchain29_n76_β]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$2F4_γ
 xchain29_n76_β:
 jmp xchain29_n75_β
proc_mult$2F4_res:
add rsp, 8
pop rbp
proc_mult$2F4_β:
jmp qword ptr [rbp + 3200]
proc_mult$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$2F4_res]
push rax
mov rax, [rbp + 3368]
mov rbp, [rbp + 3384]
jmp rax
proc_mult$2F4_ω:
mov rax, [rbp + 3376]
lea rsp, [rbp + 3392]
mov rbp, [rbp + 3384]
jmp rax
  .globl proc_odd$2F1_α
proc_odd$2F1_α:
#=======================================================================================================================
    .global proc_odd$2F1_α
    .global proc_odd$2F1_β
    .global proc_odd$2F1_γ
    .global proc_odd$2F1_ω
  sub rsp, 1760
  mov [rsp + 1736], rcx
  mov [rsp + 1744], rdx
  mov [rsp + 1752], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1720], rsp
  mov rdi, rsp
  mov esi, 1696
  mov edx, 1728
  call rt_jmp_frame_lexprep2@PLT
proc_odd$2F1_α_body:
lea rax, [rip + xchain146_n11_β]
mov qword ptr [rbp + 1696], rax
 xchain146_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_odd$2F1_ω
 jmp xchain146_n1_α
 xchain146_n0_β:
 jmp proc_odd$2F1_ω
# IR_VAR_REF
 xchain146_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain146_n2_α
# IR_LIT_INTEGER
 xchain146_n2_α:
 mov qword ptr [rbp + 1632], 6
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain146_n3_α
.Lx150_0:
 .quad 1
# IR_LIT_INTEGER
 xchain146_n3_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain146_n4_α
.Lx151_0:
 .quad 1
 xchain146_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1584]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain146_n6_α
 jmp xchain146_n5_α
 xchain146_n4_β:
 jmp xchain146_n6_α
# IR_VAR_REF
 xchain146_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain146_n8_α
# IR_LIT_INTEGER
 xchain146_n7_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain146_n9_α
.Lx157_0:
 .quad 1
# IR_LIT_INTEGER
 xchain146_n8_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain146_n10_α
.Lx158_0:
 .quad 1
 xchain146_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1440]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain146_n12_α
 jmp xchain146_n11_α
 xchain146_n9_β:
 jmp xchain146_n12_α
# IR_LIT_INTEGER
 xchain146_n10_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain146_n13_α
.Lx160_0:
 .quad 3
# IR_SUSPEND yield+resume
 xchain146_n11_α:
 lea rax, [rip + xchain146_n11_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n11_β:
 jmp xchain146_n12_α
 xchain146_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1392]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je proc_odd$2F1_ω
 jmp xchain146_n6_α
 xchain146_n12_β:
 jmp proc_odd$2F1_ω
 xchain146_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1264]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain146_n15_α
 jmp xchain146_n14_α
 xchain146_n13_β:
 jmp xchain146_n15_α
# IR_VAR_REF
 xchain146_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain146_n17_α
# IR_LIT_INTEGER
 xchain146_n16_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain146_n18_α
.Lx169_0:
 .quad 3
# IR_LIT_INTEGER
 xchain146_n17_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain146_n19_α
.Lx170_0:
 .quad 1
 xchain146_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1120]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain146_n21_α
 jmp xchain146_n20_α
 xchain146_n18_β:
 jmp xchain146_n21_α
# IR_LIT_INTEGER
 xchain146_n19_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain146_n22_α
.Lx172_0:
 .quad 5
# IR_SUSPEND yield+resume
 xchain146_n20_α:
 lea rax, [rip + xchain146_n20_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n20_β:
 jmp xchain146_n21_α
 xchain146_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1072]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_odd$2F1_ω
 jmp xchain146_n15_α
 xchain146_n21_β:
 jmp proc_odd$2F1_ω
 xchain146_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1024] -> [zr+944]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain146_n24_α
 jmp xchain146_n23_α
 xchain146_n22_β:
 jmp xchain146_n24_α
# IR_VAR_REF
 xchain146_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain146_n25_α
# IR_VAR_REF
 xchain146_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain146_n26_α
# IR_LIT_INTEGER
 xchain146_n25_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain146_n27_α
.Lx181_0:
 .quad 5
# IR_LIT_INTEGER
 xchain146_n26_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain146_n28_α
.Lx182_0:
 .quad 1
 xchain146_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 800]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain146_n30_α
 jmp xchain146_n29_α
 xchain146_n27_β:
 jmp xchain146_n30_α
# IR_LIT_INTEGER
 xchain146_n28_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain146_n31_α
.Lx184_0:
 .quad 7
# IR_SUSPEND yield+resume
 xchain146_n29_α:
 lea rax, [rip + xchain146_n29_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n29_β:
 jmp xchain146_n30_α
 xchain146_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+752]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_odd$2F1_ω
 jmp xchain146_n24_α
 xchain146_n30_β:
 jmp proc_odd$2F1_ω
 xchain146_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain146_n33_α
 jmp xchain146_n32_α
 xchain146_n31_β:
 jmp xchain146_n33_α
# IR_VAR_REF
 xchain146_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain146_n34_α
# IR_VAR_REF
 xchain146_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain146_n35_α
# IR_LIT_INTEGER
 xchain146_n34_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain146_n36_α
.Lx193_0:
 .quad 7
# IR_LIT_INTEGER
 xchain146_n35_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain146_n37_α
.Lx194_0:
 .quad 1
 xchain146_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain146_n39_α
 jmp xchain146_n38_α
 xchain146_n36_β:
 jmp xchain146_n39_α
# IR_LIT_INTEGER
 xchain146_n37_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain146_n40_α
.Lx196_0:
 .quad 9
# IR_SUSPEND yield+resume
 xchain146_n38_α:
 lea rax, [rip + xchain146_n38_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n38_β:
 jmp xchain146_n39_α
 xchain146_n39_α:
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
 je proc_odd$2F1_ω
 jmp xchain146_n33_α
 xchain146_n39_β:
 jmp proc_odd$2F1_ω
 xchain146_n40_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain146_n42_α
 jmp xchain146_n41_α
 xchain146_n40_β:
 jmp xchain146_n42_α
# IR_VAR_REF
 xchain146_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain146_n43_α
 xchain146_n42_α:
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
 je proc_odd$2F1_ω
 jmp proc_odd$2F1_ω
 xchain146_n42_β:
 jmp proc_odd$2F1_ω
# IR_LIT_INTEGER
 xchain146_n43_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain146_n44_α
.Lx204_0:
 .quad 9
 xchain146_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain146_n42_α
 jmp xchain146_n45_α
 xchain146_n44_β:
 jmp xchain146_n42_α
# IR_SUSPEND yield+resume
 xchain146_n45_α:
 lea rax, [rip + xchain146_n45_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n45_β:
 jmp xchain146_n42_α
proc_odd$2F1_res:
add rsp, 8
pop rbp
proc_odd$2F1_β:
jmp qword ptr [rbp + 1696]
proc_odd$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_odd$2F1_res]
push rax
mov rax, [rbp + 1736]
mov rbp, [rbp + 1752]
jmp rax
proc_odd$2F1_ω:
mov rax, [rbp + 1744]
lea rsp, [rbp + 1760]
mov rbp, [rbp + 1752]
jmp rax
  .globl proc_sum$2F3_α
proc_sum$2F3_α:
#=======================================================================================================================
    .global proc_sum$2F3_α
    .global proc_sum$2F3_β
    .global proc_sum$2F3_γ
    .global proc_sum$2F3_ω
  sub rsp, 816
  mov [rsp + 792], rcx
  mov [rsp + 800], rdx
  mov [rsp + 808], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 784
  call rt_jmp_frame_lexprep2@PLT
proc_sum$2F3_α_body:
 xchain208_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sum$2F3_ω
 jmp xchain208_n1_α
 xchain208_n0_β:
 jmp proc_sum$2F3_ω
# IR_VAR_REF
 xchain208_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain208_n2_α
# IR_VAR_REF
 xchain208_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain208_n3_α
 xchain208_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n4_α
 xchain208_n3_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain208_n6_α
 xchain208_n5_α:
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
 je proc_sum$2F3_ω
 jmp proc_sum$2F3_ω
 xchain208_n5_β:
 jmp proc_sum$2F3_ω
# IR_VAR_REF
 xchain208_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain208_n7_α
 xchain208_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n8_α
 xchain208_n7_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain208_n9_α
# IR_VAR_REF
 xchain208_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain208_n10_α
 xchain208_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n11_α
 xchain208_n10_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain208_n12_α
# IR_VAR_REF
 xchain208_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain208_n13_α
# IR_LIT_INTEGER
 xchain208_n13_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain208_n14_α
.Lx230_0:
 .quad 0
# IR_VAR_REF
 xchain208_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain208_n15_α
 xchain208_n15_α:
 lea rsi, [rbp + 256]
 lea rdx, [rbp + 288]
 lea rcx, [rbp + 320]
 lea r8, [rbp + 352]
 call proc_sum$2F4_dcα
 jmp .Lx234_2
.Lx234_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n16_α
 xchain208_n15_β:
 jmp xchain208_n5_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain208_n16_α:
 lea rax, [rip + xchain208_n15_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_sum$2F3_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain208_n17_α:
 jmp qword ptr [rbp + 80]
 xchain208_n17_β:
 jmp proc_sum$2F3_ω
proc_sum$2F3_res:
add rsp, 8
pop rbp
proc_sum$2F3_β:
jmp xchain208_n17_α
proc_sum$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 792]
lea rsp, [rbp + 816]
mov rbp, [rbp + 808]
jmp rax
proc_sum$2F3_ω:
mov rax, [rbp + 800]
lea rsp, [rbp + 816]
mov rbp, [rbp + 808]
jmp rax
proc_sum$2F3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 832
 mov qword ptr [rsp + 824], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 784], r11
 lea rax, [rip + .Lx239_2]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + .Lx239_3]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 720
 mov edx, 784
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_sum$2F3_α_body
.Lx239_2:
 mov rdx, qword ptr [rsp + -832]
 mov rcx, rsp
 add rcx, -816
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx239_3:
 mov rdi, qword ptr [rsp + -832]
 mov rsi, rsp
 add rsi, -816
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_sum$2F4_α
proc_sum$2F4_α:
#=======================================================================================================================
    .global proc_sum$2F4_α
    .global proc_sum$2F4_β
    .global proc_sum$2F4_γ
    .global proc_sum$2F4_ω
  sub rsp, 3504
  mov [rsp + 3480], rcx
  mov [rsp + 3488], rdx
  mov [rsp + 3496], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3304], rsp
  mov rdi, rsp
  mov esi, 3296
  mov edx, 3472
  call rt_jmp_frame_lexprep2@PLT
proc_sum$2F4_α_body:
 xchain240_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_sum$2F4_ω
 jmp xchain240_n1_α
 xchain240_n0_β:
 jmp proc_sum$2F4_ω
# IR_VAR_REF
 xchain240_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain240_n2_α
# IR_LIT_INTEGER
 xchain240_n2_α:
 mov qword ptr [rbp + 3232], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain240_n3_α
.Lx244_0:
 .quad 3
# IR_LIT_INTEGER
 xchain240_n3_α:
 mov qword ptr [rbp + 3264], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain240_n4_α
.Lx245_0:
 .quad 0
 xchain240_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3152]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3168]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3176], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3184]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain240_n6_α
 jmp xchain240_n5_α
 xchain240_n4_β:
 jmp xchain240_n6_α
# IR_VAR_REF
 xchain240_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain240_n7_α
# IR_VAR_REF
 xchain240_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain240_n8_α
# IR_VAR_REF
 xchain240_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain240_n9_α
# IR_LIT_INTEGER
 xchain240_n8_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain240_n10_α
.Lx253_0:
 .quad 2
# IR_VAR_REF
 xchain240_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain240_n11_α
# IR_LIT_STRING
 xchain240_n10_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain240_n12_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "[]"
 xchain240_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2976] -> [zr+3024]
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 3032], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3040]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3048], rax
# marshal arg2 = producer-box slot [zr+3104] -> [zr+3056]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 3024]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n13_α
 xchain240_n11_β:
 jmp xchain240_n14_α
 xchain240_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1536] -> [zr+1456]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain240_n16_α
 jmp xchain240_n15_α
 xchain240_n12_β:
 jmp xchain240_n16_α
# IR_VAR_REF
 xchain240_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain240_n17_α
 xchain240_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1584]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je proc_sum$2F4_ω
 jmp xchain240_n6_α
 xchain240_n14_β:
 jmp proc_sum$2F4_ω
# IR_VAR_REF
 xchain240_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain240_n18_α
# IR_VAR_REF
 xchain240_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain240_n19_α
# IR_VAR_REF
 xchain240_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain240_n20_α
# IR_LIT_STRING
 xchain240_n18_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain240_n21_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain240_n19_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain240_n22_α
.Lx269_0:
 .quad 2
# IR_VAR_REF
 xchain240_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain240_n23_α
 xchain240_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1312]
 mov rsi, qword ptr [rip + .Lx272_2]
 jmp .Lx272_3
.Lx272_2:
 .quad .Lx272_2_s
.Lx272_2_s:
 .string "[]"
.Lx272_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n24_α
 xchain240_n21_β:
 jmp xchain240_n25_α
# IR_LIT_STRING
 xchain240_n22_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain240_n26_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "[]"
 xchain240_n23_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2816] -> [zr+2864]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2872], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2880]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2888], rax
# marshal arg2 = producer-box slot [zr+2944] -> [zr+2896]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2864]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n27_α
 xchain240_n23_β:
 jmp xchain240_n14_α
# IR_VAR_REF
 xchain240_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain240_n28_α
 xchain240_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+944]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_sum$2F4_ω
 jmp xchain240_n16_α
 xchain240_n25_β:
 jmp proc_sum$2F4_ω
 xchain240_n26_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+896] -> [zr+816]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n29_α
 xchain240_n26_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain240_n31_α
# IR_VAR_REF
 xchain240_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain240_n32_α
# IR_VAR_REF
 xchain240_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain240_n33_α
 xchain240_n30_α:
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
 je proc_sum$2F4_ω
 jmp proc_sum$2F4_ω
 xchain240_n30_β:
 jmp proc_sum$2F4_ω
# IR_VAR_REF
 xchain240_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain240_n34_α
 xchain240_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n35_α
 xchain240_n32_β:
 jmp xchain240_n25_α
# IR_LIT_STRING
 xchain240_n33_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain240_n36_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "[]"
 xchain240_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2720]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n37_α
 xchain240_n34_β:
 jmp xchain240_n14_α
# IR_VAR_REF
 xchain240_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain240_n38_α
 xchain240_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 672]
 mov rsi, qword ptr [rip + .Lx293_2]
 jmp .Lx293_3
.Lx293_2:
 .quad .Lx293_2_s
.Lx293_2_s:
 .string "[]"
.Lx293_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n39_α
 xchain240_n36_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain240_n40_α
# IR_LIT_INTEGER
 xchain240_n38_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain240_n41_α
.Lx296_0:
 .quad 0
# IR_VAR_REF
 xchain240_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain240_n42_α
# IR_VAR_REF
 xchain240_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain240_n43_α
 xchain240_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1088]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n44_α
 xchain240_n41_β:
 jmp xchain240_n25_α
# IR_LIT_STRING
 xchain240_n42_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain240_n45_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "[]"
# IR_VAR_REF
 xchain240_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain240_n46_α
# IR_VAR_REF
 xchain240_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain240_n47_α
 xchain240_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 560]
 mov rsi, qword ptr [rip + .Lx307_2]
 jmp .Lx307_3
.Lx307_2:
 .quad .Lx307_2_s
.Lx307_2_s:
 .string "[]"
.Lx307_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n48_α
 xchain240_n45_β:
 jmp xchain240_n30_α
 xchain240_n46_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2592]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2608]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2616], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n49_α
 xchain240_n46_β:
 jmp xchain240_n14_α
# IR_VAR_REF
 xchain240_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain240_n50_α
# IR_VAR_REF
 xchain240_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain240_n51_α
 xchain240_n49_α:
# IR_CUT
 jmp xchain240_n52_α
 xchain240_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n53_α
 xchain240_n50_β:
 jmp xchain240_n25_α
# IR_VAR_REF
 xchain240_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain240_n54_α
# IR_VAR_REF
 xchain240_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain240_n55_α
 xchain240_n53_α:
# IR_CUT
 jmp xchain240_n56_α
 xchain240_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n57_α
 xchain240_n54_β:
 jmp xchain240_n30_α
# IR_VAR
 xchain240_n55_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 2456], rax
 jmp xchain240_n58_α
# IR_MOVE_LABEL
 xchain240_n56_α:
 lea rax, [rip + xchain240_n25_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$2F4_γ
# IR_VAR_REF
 xchain240_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain240_n60_α
# IR_VAR
 xchain240_n58_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 2488], rax
 jmp xchain240_n61_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain240_n59_α:
 jmp qword ptr [rbp + 96]
 xchain240_n59_β:
 jmp proc_sum$2F4_ω
# IR_LIT_STRING
 xchain240_n60_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain240_n62_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "."
 xchain240_n61_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2400]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2408], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2416]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2400]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n63_α
 xchain240_n61_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain240_n64_α
# IR_VAR
 xchain240_n63_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 2520], rax
 jmp xchain240_n65_α
# IR_LIT_STRING
 xchain240_n64_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain240_n66_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "[]"
 xchain240_n65_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2336]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2352]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n67_α
 xchain240_n65_β:
 jmp xchain240_n30_α
 xchain240_n66_α:
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
 je xchain240_n30_α
 jmp xchain240_n68_α
 xchain240_n66_β:
 jmp xchain240_n30_α
 xchain240_n67_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2256]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2272]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2256]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n69_α
 xchain240_n67_β:
 jmp xchain240_n30_α
 xchain240_n68_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+208]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n70_α
 xchain240_n68_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain240_n71_α
# IR_MOVE_LABEL
 xchain240_n70_α:
 lea rax, [rip + xchain240_n30_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$2F4_γ
# IR_VAR
 xchain240_n71_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 2184], rax
 jmp xchain240_n72_α
# IR_LIT_INTEGER
 xchain240_n72_α:
 mov qword ptr [rbp + 2208], 6
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain240_n73_α
.Lx348_0:
 .quad 10
 xchain240_n73_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2128]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n74_α
 xchain240_n73_β:
 jmp xchain240_n30_α
 xchain240_n74_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2048]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2048]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n75_α
 xchain240_n74_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain240_n76_α
# IR_VAR
 xchain240_n76_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1976], rax
 jmp xchain240_n77_α
# IR_LIT_INTEGER
 xchain240_n77_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain240_n78_α
.Lx355_0:
 .quad 10
 xchain240_n78_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n79_α
 xchain240_n78_β:
 jmp xchain240_n30_α
 xchain240_n79_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1840]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1856]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1840]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n80_α
 xchain240_n79_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain240_n81_α
# IR_VAR_REF
 xchain240_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain240_n82_α
# IR_VAR_REF
 xchain240_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain240_n83_α
# IR_VAR_REF
 xchain240_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain240_n84_α
 xchain240_n84_α:
 lea rsi, [rbp + 1696]
 lea rdx, [rbp + 1728]
 lea rcx, [rbp + 1760]
 lea r8, [rbp + 1792]
 call proc_sum$2F4_dcα
 jmp .Lx367_2
.Lx367_2:
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n85_α
 xchain240_n84_β:
 jmp xchain240_n30_α
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain240_n85_α:
 lea rax, [rip + xchain240_n84_β]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$2F4_γ
proc_sum$2F4_res:
add rsp, 8
pop rbp
proc_sum$2F4_β:
jmp xchain240_n59_α
proc_sum$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3480]
lea rsp, [rbp + 3504]
mov rbp, [rbp + 3496]
jmp rax
proc_sum$2F4_ω:
mov rax, [rbp + 3488]
lea rsp, [rbp + 3504]
mov rbp, [rbp + 3496]
jmp rax
proc_sum$2F4_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 3520
 mov qword ptr [rsp + 3512], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 3472], r11
 lea rax, [rip + .Lx370_2]
 mov qword ptr [rbp + 3480], rax
 lea rax, [rip + .Lx370_3]
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3304], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov qword ptr [rbp + 40], r8
 mov rdi, rbp
 mov esi, 3296
 mov edx, 3472
 mov ecx, 4
 mov r8d, 4
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_sum$2F4_α_body
.Lx370_2:
 mov rdx, qword ptr [rsp + -3520]
 mov rcx, rsp
 add rcx, -3504
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx370_3:
 mov rdi, qword ptr [rsp + -3520]
 mov rsi, rsp
 add rsi, -3504
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_even$2F1_α
proc_even$2F1_α:
#=======================================================================================================================
    .global proc_even$2F1_α
    .global proc_even$2F1_β
    .global proc_even$2F1_γ
    .global proc_even$2F1_ω
  sub rsp, 1760
  mov [rsp + 1736], rcx
  mov [rsp + 1744], rdx
  mov [rsp + 1752], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1720], rsp
  mov rdi, rsp
  mov esi, 1696
  mov edx, 1728
  call rt_jmp_frame_lexprep2@PLT
proc_even$2F1_α_body:
lea rax, [rip + xchain371_n11_β]
mov qword ptr [rbp + 1696], rax
 xchain371_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_even$2F1_ω
 jmp xchain371_n1_α
 xchain371_n0_β:
 jmp proc_even$2F1_ω
# IR_VAR_REF
 xchain371_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain371_n2_α
# IR_LIT_INTEGER
 xchain371_n2_α:
 mov qword ptr [rbp + 1632], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain371_n3_α
.Lx375_0:
 .quad 1
# IR_LIT_INTEGER
 xchain371_n3_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain371_n4_α
.Lx376_0:
 .quad 0
 xchain371_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1584]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain371_n6_α
 jmp xchain371_n5_α
 xchain371_n4_β:
 jmp xchain371_n6_α
# IR_VAR_REF
 xchain371_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain371_n7_α
# IR_VAR_REF
 xchain371_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain371_n8_α
# IR_LIT_INTEGER
 xchain371_n7_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain371_n9_α
.Lx382_0:
 .quad 0
# IR_LIT_INTEGER
 xchain371_n8_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain371_n10_α
.Lx383_0:
 .quad 1
 xchain371_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1440]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain371_n12_α
 jmp xchain371_n11_α
 xchain371_n9_β:
 jmp xchain371_n12_α
# IR_LIT_INTEGER
 xchain371_n10_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain371_n13_α
.Lx385_0:
 .quad 2
# IR_SUSPEND yield+resume
 xchain371_n11_α:
 lea rax, [rip + xchain371_n11_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n11_β:
 jmp xchain371_n12_α
 xchain371_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1392]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je proc_even$2F1_ω
 jmp xchain371_n6_α
 xchain371_n12_β:
 jmp proc_even$2F1_ω
 xchain371_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1264]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain371_n15_α
 jmp xchain371_n14_α
 xchain371_n13_β:
 jmp xchain371_n15_α
# IR_VAR_REF
 xchain371_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain371_n16_α
# IR_VAR_REF
 xchain371_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain371_n17_α
# IR_LIT_INTEGER
 xchain371_n16_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain371_n18_α
.Lx394_0:
 .quad 2
# IR_LIT_INTEGER
 xchain371_n17_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain371_n19_α
.Lx395_0:
 .quad 1
 xchain371_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1120]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain371_n21_α
 jmp xchain371_n20_α
 xchain371_n18_β:
 jmp xchain371_n21_α
# IR_LIT_INTEGER
 xchain371_n19_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain371_n22_α
.Lx397_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain371_n20_α:
 lea rax, [rip + xchain371_n20_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n20_β:
 jmp xchain371_n21_α
 xchain371_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1072]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_even$2F1_ω
 jmp xchain371_n15_α
 xchain371_n21_β:
 jmp proc_even$2F1_ω
 xchain371_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1024] -> [zr+944]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain371_n24_α
 jmp xchain371_n23_α
 xchain371_n22_β:
 jmp xchain371_n24_α
# IR_VAR_REF
 xchain371_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain371_n25_α
# IR_VAR_REF
 xchain371_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain371_n26_α
# IR_LIT_INTEGER
 xchain371_n25_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain371_n27_α
.Lx406_0:
 .quad 4
# IR_LIT_INTEGER
 xchain371_n26_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain371_n28_α
.Lx407_0:
 .quad 1
 xchain371_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 800]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain371_n30_α
 jmp xchain371_n29_α
 xchain371_n27_β:
 jmp xchain371_n30_α
# IR_LIT_INTEGER
 xchain371_n28_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain371_n31_α
.Lx409_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain371_n29_α:
 lea rax, [rip + xchain371_n29_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n29_β:
 jmp xchain371_n30_α
 xchain371_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+752]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_even$2F1_ω
 jmp xchain371_n24_α
 xchain371_n30_β:
 jmp proc_even$2F1_ω
 xchain371_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain371_n33_α
 jmp xchain371_n32_α
 xchain371_n31_β:
 jmp xchain371_n33_α
# IR_VAR_REF
 xchain371_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain371_n34_α
# IR_VAR_REF
 xchain371_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain371_n35_α
# IR_LIT_INTEGER
 xchain371_n34_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain371_n36_α
.Lx418_0:
 .quad 6
# IR_LIT_INTEGER
 xchain371_n35_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain371_n37_α
.Lx419_0:
 .quad 1
 xchain371_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain371_n39_α
 jmp xchain371_n38_α
 xchain371_n36_β:
 jmp xchain371_n39_α
# IR_LIT_INTEGER
 xchain371_n37_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain371_n40_α
.Lx421_0:
 .quad 8
# IR_SUSPEND yield+resume
 xchain371_n38_α:
 lea rax, [rip + xchain371_n38_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n38_β:
 jmp xchain371_n39_α
 xchain371_n39_α:
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
 je proc_even$2F1_ω
 jmp xchain371_n33_α
 xchain371_n39_β:
 jmp proc_even$2F1_ω
 xchain371_n40_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain371_n42_α
 jmp xchain371_n41_α
 xchain371_n40_β:
 jmp xchain371_n42_α
# IR_VAR_REF
 xchain371_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain371_n43_α
 xchain371_n42_α:
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
 je proc_even$2F1_ω
 jmp proc_even$2F1_ω
 xchain371_n42_β:
 jmp proc_even$2F1_ω
# IR_LIT_INTEGER
 xchain371_n43_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain371_n44_α
.Lx429_0:
 .quad 8
 xchain371_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain371_n42_α
 jmp xchain371_n45_α
 xchain371_n44_β:
 jmp xchain371_n42_α
# IR_SUSPEND yield+resume
 xchain371_n45_α:
 lea rax, [rip + xchain371_n45_β]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n45_β:
 jmp xchain371_n42_α
proc_even$2F1_res:
add rsp, 8
pop rbp
proc_even$2F1_β:
jmp qword ptr [rbp + 1696]
proc_even$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_even$2F1_res]
push rax
mov rax, [rbp + 1736]
mov rbp, [rbp + 1752]
jmp rax
proc_even$2F1_ω:
mov rax, [rbp + 1744]
lea rsp, [rbp + 1760]
mov rbp, [rbp + 1752]
jmp rax
  .globl proc_top$2F16_α
proc_top$2F16_α:
#=======================================================================================================================
    .global proc_top$2F16_α
    .global proc_top$2F16_β
    .global proc_top$2F16_γ
    .global proc_top$2F16_ω
  sub rsp, 8512
  mov [rsp + 8488], rcx
  mov [rsp + 8496], rdx
  mov [rsp + 8504], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 8168], rsp
  mov rdi, rsp
  mov esi, 8144
  mov edx, 8480
  call rt_jmp_frame_lexprep2@PLT
proc_top$2F16_α_body:
lea rax, [rip + xchain433_n175_β]
mov qword ptr [rbp + 8144], rax
 xchain433_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n1_α
 xchain433_n0_β:
 jmp proc_top$2F16_ω
# IR_VAR_REF
 xchain433_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain433_n2_α
# IR_VAR_REF
 xchain433_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8384]
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 jmp xchain433_n3_α
 xchain433_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8080] -> [zr+8048]
 mov rax, qword ptr [rbp + 8080]
 mov qword ptr [rbp + 8048], rax
 mov rax, qword ptr [rbp + 8088]
 mov qword ptr [rbp + 8056], rax
# marshal arg1 = producer-box slot [zr+8112] -> [zr+8064]
 mov rax, qword ptr [rbp + 8112]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 8120]
 mov qword ptr [rbp + 8072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8048]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n4_α
 xchain433_n3_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 jmp xchain433_n6_α
 xchain433_n5_α:
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
 je proc_top$2F16_ω
 jmp proc_top$2F16_ω
 xchain433_n5_β:
 jmp proc_top$2F16_ω
# IR_VAR_REF
 xchain433_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8400]
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain433_n7_α
 xchain433_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7968] -> [zr+7936]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 7936], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 7944], rax
# marshal arg1 = producer-box slot [zr+8000] -> [zr+7952]
 mov rax, qword ptr [rbp + 8000]
 mov qword ptr [rbp + 7952], rax
 mov rax, qword ptr [rbp + 8008]
 mov qword ptr [rbp + 7960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7936]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n8_α
 xchain433_n7_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 jmp xchain433_n9_α
# IR_VAR_REF
 xchain433_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8416]
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain433_n10_α
 xchain433_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7856] -> [zr+7824]
 mov rax, qword ptr [rbp + 7856]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7864]
 mov qword ptr [rbp + 7832], rax
# marshal arg1 = producer-box slot [zr+7888] -> [zr+7840]
 mov rax, qword ptr [rbp + 7888]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7896]
 mov qword ptr [rbp + 7848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7824]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n11_α
 xchain433_n10_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain433_n12_α
# IR_VAR_REF
 xchain433_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8432]
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 jmp xchain433_n13_α
 xchain433_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7712]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7720], rax
# marshal arg1 = producer-box slot [zr+7776] -> [zr+7728]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7728], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7712]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n14_α
 xchain433_n13_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 jmp xchain433_n15_α
# IR_VAR_REF
 xchain433_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 7664], rax
 mov qword ptr [rbp + 7672], rdx
 jmp xchain433_n16_α
 xchain433_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7632] -> [zr+7600]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7608], rax
# marshal arg1 = producer-box slot [zr+7664] -> [zr+7616]
 mov rax, qword ptr [rbp + 7664]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7672]
 mov qword ptr [rbp + 7624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7600]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n17_α
 xchain433_n16_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain433_n18_α
# IR_VAR_REF
 xchain433_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8256]
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 jmp xchain433_n19_α
 xchain433_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7520] -> [zr+7488]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7496], rax
# marshal arg1 = producer-box slot [zr+7552] -> [zr+7504]
 mov rax, qword ptr [rbp + 7552]
 mov qword ptr [rbp + 7504], rax
 mov rax, qword ptr [rbp + 7560]
 mov qword ptr [rbp + 7512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7488]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n20_α
 xchain433_n19_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain433_n21_α
# IR_VAR_REF
 xchain433_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8272]
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain433_n22_α
 xchain433_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7408] -> [zr+7376]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7384], rax
# marshal arg1 = producer-box slot [zr+7440] -> [zr+7392]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7392], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7376]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n23_α
 xchain433_n22_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 7296], rax
 mov qword ptr [rbp + 7304], rdx
 jmp xchain433_n24_α
# IR_VAR_REF
 xchain433_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8288]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain433_n25_α
 xchain433_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7296] -> [zr+7264]
 mov rax, qword ptr [rbp + 7296]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7304]
 mov qword ptr [rbp + 7272], rax
# marshal arg1 = producer-box slot [zr+7328] -> [zr+7280]
 mov rax, qword ptr [rbp + 7328]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7336]
 mov qword ptr [rbp + 7288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7264]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n26_α
 xchain433_n25_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 144]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain433_n27_α
# IR_VAR_REF
 xchain433_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8304]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain433_n28_α
 xchain433_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7184] -> [zr+7152]
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7152], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7160], rax
# marshal arg1 = producer-box slot [zr+7216] -> [zr+7168]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7152]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n29_α
 xchain433_n28_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 160]
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 jmp xchain433_n30_α
# IR_VAR_REF
 xchain433_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8320]
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain433_n31_α
 xchain433_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7072] -> [zr+7040]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7048], rax
# marshal arg1 = producer-box slot [zr+7104] -> [zr+7056]
 mov rax, qword ptr [rbp + 7104]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 7112]
 mov qword ptr [rbp + 7064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n32_α
 xchain433_n31_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 176]
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain433_n33_α
# IR_VAR_REF
 xchain433_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8336]
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 jmp xchain433_n34_α
 xchain433_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6960] -> [zr+6928]
 mov rax, qword ptr [rbp + 6960]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 6968]
 mov qword ptr [rbp + 6936], rax
# marshal arg1 = producer-box slot [zr+6992] -> [zr+6944]
 mov rax, qword ptr [rbp + 6992]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 7000]
 mov qword ptr [rbp + 6952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6928]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n35_α
 xchain433_n34_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 192]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain433_n36_α
# IR_VAR_REF
 xchain433_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8352]
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain433_n37_α
 xchain433_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6816]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6824], rax
# marshal arg1 = producer-box slot [zr+6880] -> [zr+6832]
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 6840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n38_α
 xchain433_n37_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 208]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain433_n39_α
# IR_VAR_REF
 xchain433_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8240]
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 jmp xchain433_n40_α
 xchain433_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6704]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6712], rax
# marshal arg1 = producer-box slot [zr+6768] -> [zr+6720]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6720], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6704]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n41_α
 xchain433_n40_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 224]
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 jmp xchain433_n42_α
# IR_VAR_REF
 xchain433_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8224]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 jmp xchain433_n43_α
 xchain433_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6624] -> [zr+6592]
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 6592], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 6600], rax
# marshal arg1 = producer-box slot [zr+6656] -> [zr+6608]
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 6608], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 6616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n44_α
 xchain433_n43_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 240]
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 jmp xchain433_n45_α
# IR_VAR_REF
 xchain433_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8208]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 jmp xchain433_n46_α
 xchain433_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6512] -> [zr+6480]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6480], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6488], rax
# marshal arg1 = producer-box slot [zr+6544] -> [zr+6496]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6496], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n47_α
 xchain433_n46_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 256]
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain433_n48_α
# IR_VAR_REF
 xchain433_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8192]
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain433_n49_α
 xchain433_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6400] -> [zr+6368]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 6376], rax
# marshal arg1 = producer-box slot [zr+6432] -> [zr+6384]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n50_α
 xchain433_n49_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8384]
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain433_n51_α
 xchain433_n51_α:
 mov qword ptr [rbp + 6288], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6320]
 mov rdx, qword ptr [rbp + 6328]
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
 mov qword ptr [rbp + 6296], rsp
 mov rax, qword ptr [rbp + 6288]
 test rax, rax
 jne .Lx519_5
 mov qword ptr [rbp + 6288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx519_2
.Lx519_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx519_2
.Lx519_4:
 mov rax, qword ptr [rbp + 6288]
 test rax, rax
 jne .Lx519_6
 mov qword ptr [rbp + 6288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx519_2
.Lx519_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx519_2
.Lx519_1:
 call rt_faildescr@PLT
.Lx519_2:
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n52_α
 xchain433_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6296]
 jmp qword ptr [rsp]
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8400]
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain433_n53_α
 xchain433_n53_α:
 mov qword ptr [rbp + 6192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6224]
 mov rdx, qword ptr [rbp + 6232]
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
 mov qword ptr [rbp + 6200], rsp
 mov rax, qword ptr [rbp + 6192]
 test rax, rax
 jne .Lx523_5
 mov qword ptr [rbp + 6192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx523_2
.Lx523_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx523_2
.Lx523_4:
 mov rax, qword ptr [rbp + 6192]
 test rax, rax
 jne .Lx523_6
 mov qword ptr [rbp + 6192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx523_2
.Lx523_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx523_2
.Lx523_1:
 call rt_faildescr@PLT
.Lx523_2:
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 cmp eax, 99
 je xchain433_n51_β
 jmp xchain433_n54_α
 xchain433_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6200]
 jmp qword ptr [rsp]
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8416]
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 jmp xchain433_n55_α
 xchain433_n55_α:
 mov qword ptr [rbp + 6096], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6128]
 mov rdx, qword ptr [rbp + 6136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx527_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx527_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx527_3]
 lea rdx, [rip + .Lx527_4]
 jmp rax
.Lx527_3:
 mov qword ptr [rbp + 6104], rsp
 mov rax, qword ptr [rbp + 6096]
 test rax, rax
 jne .Lx527_5
 mov qword ptr [rbp + 6096], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx527_2
.Lx527_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx527_2
.Lx527_4:
 mov rax, qword ptr [rbp + 6096]
 test rax, rax
 jne .Lx527_6
 mov qword ptr [rbp + 6096], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx527_2
.Lx527_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx527_2
.Lx527_1:
 call rt_faildescr@PLT
.Lx527_2:
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je xchain433_n53_β
 jmp xchain433_n56_α
 xchain433_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6104]
 jmp qword ptr [rsp]
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 jmp xchain433_n57_α
 xchain433_n57_α:
 mov qword ptr [rbp + 6000], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6032]
 mov rdx, qword ptr [rbp + 6040]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx531_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx531_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx531_3]
 lea rdx, [rip + .Lx531_4]
 jmp rax
.Lx531_3:
 mov qword ptr [rbp + 6008], rsp
 mov rax, qword ptr [rbp + 6000]
 test rax, rax
 jne .Lx531_5
 mov qword ptr [rbp + 6000], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx531_2
.Lx531_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx531_2
.Lx531_4:
 mov rax, qword ptr [rbp + 6000]
 test rax, rax
 jne .Lx531_6
 mov qword ptr [rbp + 6000], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx531_2
.Lx531_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx531_2
.Lx531_1:
 call rt_faildescr@PLT
.Lx531_2:
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 cmp eax, 99
 je xchain433_n55_β
 jmp xchain433_n58_α
 xchain433_n57_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6008]
 jmp qword ptr [rsp]
.Lx531_0:
 .quad .Lx531_0_s
.Lx531_0_s:
 .string "even/1"
# IR_LIT_STRING
 xchain433_n58_α:
 mov qword ptr [rbp + 5296], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 5304], rax
 jmp xchain433_n59_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8416]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 jmp xchain433_n60_α
# IR_LIT_STRING
 xchain433_n60_α:
 mov qword ptr [rbp + 5152], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [rbp + 5160], rax
 jmp xchain433_n61_α
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8400]
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain433_n62_α
# IR_LIT_STRING
 xchain433_n62_α:
 mov qword ptr [rbp + 5008], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [rbp + 5016], rax
 jmp xchain433_n63_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8384]
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain433_n64_α
# IR_LIT_STRING
 xchain433_n64_α:
 mov qword ptr [rbp + 4864], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 4872], rax
 jmp xchain433_n65_α
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "[]"
 xchain433_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5008] -> [zr+4944]
 mov rax, qword ptr [rbp + 5008]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 5016]
 mov qword ptr [rbp + 4952], rax
# marshal arg1 = producer-box slot [zr+4896] -> [zr+4960]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 4968], rax
# marshal arg2 = producer-box slot [zr+4864] -> [zr+4976]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n66_α
 xchain433_n65_β:
 jmp proc_top$2F16_ω
 xchain433_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5152] -> [zr+5088]
 mov rax, qword ptr [rbp + 5152]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 5160]
 mov qword ptr [rbp + 5096], rax
# marshal arg1 = producer-box slot [zr+5040] -> [zr+5104]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 5112], rax
# marshal arg2 = producer-box slot [zr+4928] -> [zr+5120]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 5128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n67_α
 xchain433_n66_β:
 jmp proc_top$2F16_ω
 xchain433_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5296] -> [zr+5232]
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 5240], rax
# marshal arg1 = producer-box slot [zr+5184] -> [zr+5248]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5256], rax
# marshal arg2 = producer-box slot [zr+5072] -> [zr+5264]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5264], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n68_α
 xchain433_n67_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 jmp xchain433_n69_α
# IR_LIT_STRING
 xchain433_n69_α:
 mov qword ptr [rbp + 5936], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 5944], rax
 jmp xchain433_n70_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8304]
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 jmp xchain433_n71_α
# IR_LIT_STRING
 xchain433_n71_α:
 mov qword ptr [rbp + 5792], 1
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 5800], rax
 jmp xchain433_n72_α
.Lx550_0:
 .quad .Lx550_0_s
.Lx550_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8288]
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain433_n73_α
# IR_LIT_STRING
 xchain433_n73_α:
 mov qword ptr [rbp + 5648], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 5656], rax
 jmp xchain433_n74_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8272]
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain433_n75_α
# IR_LIT_STRING
 xchain433_n75_α:
 mov qword ptr [rbp + 5504], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 5512], rax
 jmp xchain433_n76_α
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8256]
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 jmp xchain433_n77_α
# IR_VAR_REF
 xchain433_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain433_n78_α
 xchain433_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5440]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5448], rax
# marshal arg1 = producer-box slot [zr+5392] -> [zr+5456]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5464], rax
# marshal arg2 = producer-box slot [zr+5360] -> [zr+5472]
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 5480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n79_α
 xchain433_n78_β:
 jmp proc_top$2F16_ω
 xchain433_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5648] -> [zr+5584]
 mov rax, qword ptr [rbp + 5648]
 mov qword ptr [rbp + 5584], rax
 mov rax, qword ptr [rbp + 5656]
 mov qword ptr [rbp + 5592], rax
# marshal arg1 = producer-box slot [zr+5536] -> [zr+5600]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5608], rax
# marshal arg2 = producer-box slot [zr+5424] -> [zr+5616]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n80_α
 xchain433_n79_β:
 jmp proc_top$2F16_ω
 xchain433_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5792] -> [zr+5728]
 mov rax, qword ptr [rbp + 5792]
 mov qword ptr [rbp + 5728], rax
 mov rax, qword ptr [rbp + 5800]
 mov qword ptr [rbp + 5736], rax
# marshal arg1 = producer-box slot [zr+5680] -> [zr+5744]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5744], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5752], rax
# marshal arg2 = producer-box slot [zr+5568] -> [zr+5760]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n81_α
 xchain433_n80_β:
 jmp proc_top$2F16_ω
 xchain433_n81_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5936] -> [zr+5872]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 5880], rax
# marshal arg1 = producer-box slot [zr+5824] -> [zr+5888]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5896], rax
# marshal arg2 = producer-box slot [zr+5712] -> [zr+5904]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n82_α
 xchain433_n81_β:
 jmp xchain433_n5_α
 xchain433_n82_α:
 mov qword ptr [rbp + 4832], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5216]
 mov rdx, qword ptr [rbp + 5224]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5328]
 mov rdx, qword ptr [rbp + 5336]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5856]
 mov rdx, qword ptr [rbp + 5864]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx566_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx566_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx566_3]
 lea rdx, [rip + .Lx566_4]
 jmp rax
.Lx566_3:
 mov qword ptr [rbp + 4840], rsp
 mov rax, qword ptr [rbp + 4832]
 test rax, rax
 jne .Lx566_5
 mov qword ptr [rbp + 4832], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx566_2
.Lx566_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx566_2
.Lx566_4:
 mov rax, qword ptr [rbp + 4832]
 test rax, rax
 jne .Lx566_6
 mov qword ptr [rbp + 4832], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx566_2
.Lx566_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx566_2
.Lx566_1:
 call rt_faildescr@PLT
.Lx566_2:
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain433_n57_β
 jmp xchain433_n83_α
 xchain433_n82_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4840]
 jmp qword ptr [rsp]
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain433_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8256]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 jmp xchain433_n84_α
 xchain433_n84_α:
 mov qword ptr [rbp + 4704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4736]
 mov rdx, qword ptr [rbp + 4744]
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
 mov qword ptr [rbp + 4712], rsp
 mov rax, qword ptr [rbp + 4704]
 test rax, rax
 jne .Lx570_5
 mov qword ptr [rbp + 4704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx570_2
.Lx570_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx570_2
.Lx570_4:
 mov rax, qword ptr [rbp + 4704]
 test rax, rax
 jne .Lx570_6
 mov qword ptr [rbp + 4704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx570_2
.Lx570_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx570_2
.Lx570_1:
 call rt_faildescr@PLT
.Lx570_2:
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain433_n82_β
 jmp xchain433_n85_α
 xchain433_n84_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4712]
 jmp qword ptr [rsp]
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain433_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8272]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain433_n86_α
 xchain433_n86_α:
 mov qword ptr [rbp + 4608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx574_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx574_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx574_3]
 lea rdx, [rip + .Lx574_4]
 jmp rax
.Lx574_3:
 mov qword ptr [rbp + 4616], rsp
 mov rax, qword ptr [rbp + 4608]
 test rax, rax
 jne .Lx574_5
 mov qword ptr [rbp + 4608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx574_2
.Lx574_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx574_2
.Lx574_4:
 mov rax, qword ptr [rbp + 4608]
 test rax, rax
 jne .Lx574_6
 mov qword ptr [rbp + 4608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx574_2
.Lx574_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx574_2
.Lx574_1:
 call rt_faildescr@PLT
.Lx574_2:
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain433_n84_β
 jmp xchain433_n87_α
 xchain433_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4616]
 jmp qword ptr [rsp]
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8288]
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain433_n88_α
 xchain433_n88_α:
 mov qword ptr [rbp + 4512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4544]
 mov rdx, qword ptr [rbp + 4552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx578_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx578_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx578_3]
 lea rdx, [rip + .Lx578_4]
 jmp rax
.Lx578_3:
 mov qword ptr [rbp + 4520], rsp
 mov rax, qword ptr [rbp + 4512]
 test rax, rax
 jne .Lx578_5
 mov qword ptr [rbp + 4512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx578_2
.Lx578_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx578_2
.Lx578_4:
 mov rax, qword ptr [rbp + 4512]
 test rax, rax
 jne .Lx578_6
 mov qword ptr [rbp + 4512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx578_2
.Lx578_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx578_2
.Lx578_1:
 call rt_faildescr@PLT
.Lx578_2:
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 cmp eax, 99
 je xchain433_n86_β
 jmp xchain433_n89_α
 xchain433_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4520]
 jmp qword ptr [rsp]
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8304]
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 jmp xchain433_n90_α
 xchain433_n90_α:
 mov qword ptr [rbp + 4416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4448]
 mov rdx, qword ptr [rbp + 4456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx582_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx582_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx582_3]
 lea rdx, [rip + .Lx582_4]
 jmp rax
.Lx582_3:
 mov qword ptr [rbp + 4424], rsp
 mov rax, qword ptr [rbp + 4416]
 test rax, rax
 jne .Lx582_5
 mov qword ptr [rbp + 4416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx582_2
.Lx582_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx582_2
.Lx582_4:
 mov rax, qword ptr [rbp + 4416]
 test rax, rax
 jne .Lx582_6
 mov qword ptr [rbp + 4416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx582_2
.Lx582_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx582_2
.Lx582_1:
 call rt_faildescr@PLT
.Lx582_2:
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 cmp eax, 99
 je xchain433_n88_β
 jmp xchain433_n91_α
 xchain433_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4424]
 jmp qword ptr [rsp]
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 jmp xchain433_n92_α
 xchain433_n92_α:
 mov qword ptr [rbp + 4320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4352]
 mov rdx, qword ptr [rbp + 4360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx586_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx586_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx586_3]
 lea rdx, [rip + .Lx586_4]
 jmp rax
.Lx586_3:
 mov qword ptr [rbp + 4328], rsp
 mov rax, qword ptr [rbp + 4320]
 test rax, rax
 jne .Lx586_5
 mov qword ptr [rbp + 4320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx586_2
.Lx586_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx586_2
.Lx586_4:
 mov rax, qword ptr [rbp + 4320]
 test rax, rax
 jne .Lx586_6
 mov qword ptr [rbp + 4320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx586_2
.Lx586_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx586_2
.Lx586_1:
 call rt_faildescr@PLT
.Lx586_2:
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain433_n90_β
 jmp xchain433_n93_α
 xchain433_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4328]
 jmp qword ptr [rsp]
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "zero/1"
# IR_VAR_REF
 xchain433_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8432]
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain433_n94_α
 xchain433_n94_α:
 mov qword ptr [rbp + 4224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4256]
 mov rdx, qword ptr [rbp + 4264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx590_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx590_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx590_3]
 lea rdx, [rip + .Lx590_4]
 jmp rax
.Lx590_3:
 mov qword ptr [rbp + 4232], rsp
 mov rax, qword ptr [rbp + 4224]
 test rax, rax
 jne .Lx590_5
 mov qword ptr [rbp + 4224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx590_2
.Lx590_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx590_2
.Lx590_4:
 mov rax, qword ptr [rbp + 4224]
 test rax, rax
 jne .Lx590_6
 mov qword ptr [rbp + 4224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx590_2
.Lx590_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx590_2
.Lx590_1:
 call rt_faildescr@PLT
.Lx590_2:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain433_n92_β
 jmp xchain433_n95_α
 xchain433_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4232]
 jmp qword ptr [rsp]
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "lefteven/1"
# IR_LIT_STRING
 xchain433_n95_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain433_n96_α
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8416]
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain433_n97_α
# IR_LIT_STRING
 xchain433_n97_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain433_n98_α
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8400]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain433_n99_α
# IR_LIT_STRING
 xchain433_n99_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain433_n100_α
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8384]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain433_n101_α
# IR_LIT_STRING
 xchain433_n101_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain433_n102_α
.Lx600_0:
 .quad .Lx600_0_s
.Lx600_0_s:
 .string "[]"
 xchain433_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3376] -> [zr+3312]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3320], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3328]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3336], rax
# marshal arg2 = producer-box slot [zr+3232] -> [zr+3344]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n103_α
 xchain433_n102_β:
 jmp proc_top$2F16_ω
 xchain433_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3456]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3464], rax
# marshal arg1 = producer-box slot [zr+3408] -> [zr+3472]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3480], rax
# marshal arg2 = producer-box slot [zr+3296] -> [zr+3488]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n104_α
 xchain433_n103_β:
 jmp proc_top$2F16_ω
 xchain433_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3664] -> [zr+3600]
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3608], rax
# marshal arg1 = producer-box slot [zr+3552] -> [zr+3616]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3624], rax
# marshal arg2 = producer-box slot [zr+3440] -> [zr+3632]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n105_α
 xchain433_n104_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8432]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain433_n106_α
# IR_LIT_STRING
 xchain433_n106_α:
 mov qword ptr [rbp + 4160], 1
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain433_n107_α
.Lx606_0:
 .quad .Lx606_0_s
.Lx606_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8352]
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain433_n108_α
# IR_LIT_STRING
 xchain433_n108_α:
 mov qword ptr [rbp + 4016], 1
 mov rax, qword ptr [rip + .Lx609_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain433_n109_α
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8336]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain433_n110_α
# IR_LIT_STRING
 xchain433_n110_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain433_n111_α
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8320]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain433_n112_α
# IR_VAR_REF
 xchain433_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8368]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain433_n113_α
 xchain433_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3808]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3816], rax
# marshal arg1 = producer-box slot [zr+3760] -> [zr+3824]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3832], rax
# marshal arg2 = producer-box slot [zr+3728] -> [zr+3840]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3808]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n114_α
 xchain433_n113_β:
 jmp proc_top$2F16_ω
 xchain433_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3952]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3952], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3960], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3968]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3976], rax
# marshal arg2 = producer-box slot [zr+3792] -> [zr+3984]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n115_α
 xchain433_n114_β:
 jmp proc_top$2F16_ω
 xchain433_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4160] -> [zr+4096]
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 4104], rax
# marshal arg1 = producer-box slot [zr+4048] -> [zr+4112]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 4120], rax
# marshal arg2 = producer-box slot [zr+3936] -> [zr+4128]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4096]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n116_α
 xchain433_n115_β:
 jmp xchain433_n5_α
 xchain433_n116_α:
 mov qword ptr [rbp + 3200], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3584]
 mov rdx, qword ptr [rbp + 3592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3696]
 mov rdx, qword ptr [rbp + 3704]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4080]
 mov rdx, qword ptr [rbp + 4088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx621_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx621_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx621_3]
 lea rdx, [rip + .Lx621_4]
 jmp rax
.Lx621_3:
 mov qword ptr [rbp + 3208], rsp
 mov rax, qword ptr [rbp + 3200]
 test rax, rax
 jne .Lx621_5
 mov qword ptr [rbp + 3200], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx621_2
.Lx621_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx621_2
.Lx621_4:
 mov rax, qword ptr [rbp + 3200]
 test rax, rax
 jne .Lx621_6
 mov qword ptr [rbp + 3200], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx621_2
.Lx621_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx621_2
.Lx621_1:
 call rt_faildescr@PLT
.Lx621_2:
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain433_n94_β
 jmp xchain433_n117_α
 xchain433_n116_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3208]
 jmp qword ptr [rsp]
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain433_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8320]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain433_n118_α
 xchain433_n118_α:
 mov qword ptr [rbp + 3072], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3104]
 mov rdx, qword ptr [rbp + 3112]
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
 mov qword ptr [rbp + 3080], rsp
 mov rax, qword ptr [rbp + 3072]
 test rax, rax
 jne .Lx625_5
 mov qword ptr [rbp + 3072], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx625_2
.Lx625_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx625_2
.Lx625_4:
 mov rax, qword ptr [rbp + 3072]
 test rax, rax
 jne .Lx625_6
 mov qword ptr [rbp + 3072], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx625_2
.Lx625_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx625_2
.Lx625_1:
 call rt_faildescr@PLT
.Lx625_2:
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 cmp eax, 99
 je xchain433_n116_β
 jmp xchain433_n119_α
 xchain433_n118_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3080]
 jmp qword ptr [rsp]
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain433_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8336]
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain433_n120_α
 xchain433_n120_α:
 mov qword ptr [rbp + 2976], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3008]
 mov rdx, qword ptr [rbp + 3016]
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
 mov qword ptr [rbp + 2984], rsp
 mov rax, qword ptr [rbp + 2976]
 test rax, rax
 jne .Lx629_5
 mov qword ptr [rbp + 2976], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx629_2
.Lx629_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx629_2
.Lx629_4:
 mov rax, qword ptr [rbp + 2976]
 test rax, rax
 jne .Lx629_6
 mov qword ptr [rbp + 2976], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx629_2
.Lx629_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx629_2
.Lx629_1:
 call rt_faildescr@PLT
.Lx629_2:
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je xchain433_n118_β
 jmp xchain433_n121_α
 xchain433_n120_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2984]
 jmp qword ptr [rsp]
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8352]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain433_n122_α
 xchain433_n122_α:
 mov qword ptr [rbp + 2880], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2912]
 mov rdx, qword ptr [rbp + 2920]
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
 mov qword ptr [rbp + 2888], rsp
 mov rax, qword ptr [rbp + 2880]
 test rax, rax
 jne .Lx633_5
 mov qword ptr [rbp + 2880], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx633_2
.Lx633_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx633_2
.Lx633_4:
 mov rax, qword ptr [rbp + 2880]
 test rax, rax
 jne .Lx633_6
 mov qword ptr [rbp + 2880], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx633_2
.Lx633_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx633_2
.Lx633_1:
 call rt_faildescr@PLT
.Lx633_2:
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain433_n120_β
 jmp xchain433_n123_α
 xchain433_n122_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2888]
 jmp qword ptr [rsp]
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8368]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain433_n124_α
 xchain433_n124_α:
 mov qword ptr [rbp + 2784], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2816]
 mov rdx, qword ptr [rbp + 2824]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx637_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx637_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx637_3]
 lea rdx, [rip + .Lx637_4]
 jmp rax
.Lx637_3:
 mov qword ptr [rbp + 2792], rsp
 mov rax, qword ptr [rbp + 2784]
 test rax, rax
 jne .Lx637_5
 mov qword ptr [rbp + 2784], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx637_2
.Lx637_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx637_2
.Lx637_4:
 mov rax, qword ptr [rbp + 2784]
 test rax, rax
 jne .Lx637_6
 mov qword ptr [rbp + 2784], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx637_2
.Lx637_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx637_2
.Lx637_1:
 call rt_faildescr@PLT
.Lx637_2:
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain433_n122_β
 jmp xchain433_n125_α
 xchain433_n124_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2792]
 jmp qword ptr [rsp]
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "zero/1"
# IR_LIT_STRING
 xchain433_n125_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx638_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain433_n126_α
.Lx638_0:
 .quad .Lx638_0_s
.Lx638_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8304]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain433_n127_α
# IR_LIT_STRING
 xchain433_n127_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain433_n128_α
.Lx641_0:
 .quad .Lx641_0_s
.Lx641_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8288]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain433_n129_α
# IR_LIT_STRING
 xchain433_n129_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx644_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain433_n130_α
.Lx644_0:
 .quad .Lx644_0_s
.Lx644_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8272]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain433_n131_α
# IR_LIT_STRING
 xchain433_n131_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx647_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain433_n132_α
.Lx647_0:
 .quad .Lx647_0_s
.Lx647_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8256]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain433_n133_α
# IR_LIT_STRING
 xchain433_n133_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx650_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain433_n134_α
.Lx650_0:
 .quad .Lx650_0_s
.Lx650_0_s:
 .string "[]"
 xchain433_n134_α:
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
# marshal arg2 = producer-box slot [zr+928] -> [zr+1040]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n135_α
 xchain433_n134_β:
 jmp proc_top$2F16_ω
 xchain433_n135_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n136_α
 xchain433_n135_β:
 jmp proc_top$2F16_ω
 xchain433_n136_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n137_α
 xchain433_n136_β:
 jmp proc_top$2F16_ω
 xchain433_n137_α:
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
 je xchain433_n5_α
 jmp xchain433_n138_α
 xchain433_n137_β:
 jmp xchain433_n5_α
# IR_LIT_STRING
 xchain433_n138_α:
 mov qword ptr [rbp + 2112], 1
 mov rax, qword ptr [rip + .Lx655_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain433_n139_α
.Lx655_0:
 .quad .Lx655_0_s
.Lx655_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain433_n139_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain433_n140_α
.Lx656_0:
 .quad 0
# IR_LIT_STRING
 xchain433_n140_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx657_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain433_n141_α
.Lx657_0:
 .quad .Lx657_0_s
.Lx657_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8352]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain433_n142_α
# IR_LIT_STRING
 xchain433_n142_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx660_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain433_n143_α
.Lx660_0:
 .quad .Lx660_0_s
.Lx660_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8336]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain433_n144_α
# IR_LIT_STRING
 xchain433_n144_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx663_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain433_n145_α
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8320]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain433_n146_α
# IR_LIT_STRING
 xchain433_n146_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx666_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain433_n147_α
.Lx666_0:
 .quad .Lx666_0_s
.Lx666_0_s:
 .string "[]"
 xchain433_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1632]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1640], rax
# marshal arg2 = producer-box slot [zr+1536] -> [zr+1648]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n148_α
 xchain433_n147_β:
 jmp proc_top$2F16_ω
 xchain433_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1776]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1784], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1792]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n149_α
 xchain433_n148_β:
 jmp proc_top$2F16_ω
 xchain433_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1920]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1928], rax
# marshal arg2 = producer-box slot [zr+1744] -> [zr+1936]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n150_α
 xchain433_n149_β:
 jmp proc_top$2F16_ω
 xchain433_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+2064]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 2072], rax
# marshal arg2 = producer-box slot [zr+1888] -> [zr+2080]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2048]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n151_α
 xchain433_n150_β:
 jmp xchain433_n5_α
# IR_LIT_STRING
 xchain433_n151_α:
 mov qword ptr [rbp + 2720], 1
 mov rax, qword ptr [rip + .Lx671_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain433_n152_α
.Lx671_0:
 .quad .Lx671_0_s
.Lx671_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8192]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain433_n153_α
# IR_LIT_STRING
 xchain433_n153_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx674_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain433_n154_α
.Lx674_0:
 .quad .Lx674_0_s
.Lx674_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8208]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain433_n155_α
# IR_LIT_STRING
 xchain433_n155_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx677_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain433_n156_α
.Lx677_0:
 .quad .Lx677_0_s
.Lx677_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8224]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain433_n157_α
# IR_LIT_STRING
 xchain433_n157_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain433_n158_α
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8240]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain433_n159_α
# IR_VAR_REF
 xchain433_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8176]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain433_n160_α
 xchain433_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2224]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2232], rax
# marshal arg1 = producer-box slot [zr+2176] -> [zr+2240]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2248], rax
# marshal arg2 = producer-box slot [zr+2144] -> [zr+2256]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n161_α
 xchain433_n160_β:
 jmp proc_top$2F16_ω
 xchain433_n161_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2384]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2392], rax
# marshal arg2 = producer-box slot [zr+2208] -> [zr+2400]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n162_α
 xchain433_n161_β:
 jmp proc_top$2F16_ω
 xchain433_n162_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2512]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+2528]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2536], rax
# marshal arg2 = producer-box slot [zr+2352] -> [zr+2544]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je proc_top$2F16_ω
 jmp xchain433_n163_α
 xchain433_n162_β:
 jmp proc_top$2F16_ω
 xchain433_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2720] -> [zr+2656]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2672]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2680], rax
# marshal arg2 = producer-box slot [zr+2496] -> [zr+2688]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2656]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n164_α
 xchain433_n163_β:
 jmp xchain433_n5_α
 xchain433_n164_α:
 lea rsi, [rbp + 1424]
 lea rdx, [rbp + 2032]
 lea rcx, [rbp + 2640]
 call proc_sum$2F3_dcα
 jmp .Lx690_2
.Lx690_2:
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain433_n124_β
 jmp xchain433_n165_α
 xchain433_n164_β:
 jmp xchain433_n124_β
.Lx690_0:
 .quad .Lx690_0_s
.Lx690_0_s:
 .string "sum/3"
# IR_VAR_REF
 xchain433_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8240]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain433_n166_α
 xchain433_n166_α:
 mov qword ptr [rbp + 784], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx694_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx694_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx694_3]
 lea rdx, [rip + .Lx694_4]
 jmp rax
.Lx694_3:
 mov qword ptr [rbp + 792], rsp
 mov rax, qword ptr [rbp + 784]
 test rax, rax
 jne .Lx694_5
 mov qword ptr [rbp + 784], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx694_2
.Lx694_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx694_2
.Lx694_4:
 mov rax, qword ptr [rbp + 784]
 test rax, rax
 jne .Lx694_6
 mov qword ptr [rbp + 784], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx694_2
.Lx694_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx694_2
.Lx694_1:
 call rt_faildescr@PLT
.Lx694_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain433_n164_β
 jmp xchain433_n167_α
 xchain433_n166_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 792]
 jmp qword ptr [rsp]
.Lx694_0:
 .quad .Lx694_0_s
.Lx694_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8224]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain433_n168_α
 xchain433_n168_α:
 mov qword ptr [rbp + 688], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx698_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx698_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx698_3]
 lea rdx, [rip + .Lx698_4]
 jmp rax
.Lx698_3:
 mov qword ptr [rbp + 696], rsp
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx698_5
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx698_2
.Lx698_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx698_2
.Lx698_4:
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx698_6
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx698_2
.Lx698_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx698_2
.Lx698_1:
 call rt_faildescr@PLT
.Lx698_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain433_n166_β
 jmp xchain433_n169_α
 xchain433_n168_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 696]
 jmp qword ptr [rsp]
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8208]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain433_n170_α
 xchain433_n170_α:
 mov qword ptr [rbp + 592], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx702_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx702_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx702_3]
 lea rdx, [rip + .Lx702_4]
 jmp rax
.Lx702_3:
 mov qword ptr [rbp + 600], rsp
 mov rax, qword ptr [rbp + 592]
 test rax, rax
 jne .Lx702_5
 mov qword ptr [rbp + 592], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx702_2
.Lx702_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx702_2
.Lx702_4:
 mov rax, qword ptr [rbp + 592]
 test rax, rax
 jne .Lx702_6
 mov qword ptr [rbp + 592], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx702_2
.Lx702_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx702_2
.Lx702_1:
 call rt_faildescr@PLT
.Lx702_2:
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain433_n168_β
 jmp xchain433_n171_α
 xchain433_n170_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 600]
 jmp qword ptr [rsp]
.Lx702_0:
 .quad .Lx702_0_s
.Lx702_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8192]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain433_n172_α
 xchain433_n172_α:
 mov qword ptr [rbp + 496], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx706_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx706_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx706_3]
 lea rdx, [rip + .Lx706_4]
 jmp rax
.Lx706_3:
 mov qword ptr [rbp + 504], rsp
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx706_5
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx706_2
.Lx706_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx706_2
.Lx706_4:
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx706_6
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx706_2
.Lx706_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx706_2
.Lx706_1:
 call rt_faildescr@PLT
.Lx706_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain433_n170_β
 jmp xchain433_n173_α
 xchain433_n172_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 504]
 jmp qword ptr [rsp]
.Lx706_0:
 .quad .Lx706_0_s
.Lx706_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8176]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain433_n174_α
 xchain433_n174_α:
 mov qword ptr [rbp + 400], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx710_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx710_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx710_3]
 lea rdx, [rip + .Lx710_4]
 jmp rax
.Lx710_3:
 mov qword ptr [rbp + 408], rsp
 mov rax, qword ptr [rbp + 400]
 test rax, rax
 jne .Lx710_5
 mov qword ptr [rbp + 400], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx710_2
.Lx710_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx710_2
.Lx710_4:
 mov rax, qword ptr [rbp + 400]
 test rax, rax
 jne .Lx710_6
 mov qword ptr [rbp + 400], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx710_2
.Lx710_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx710_2
.Lx710_1:
 call rt_faildescr@PLT
.Lx710_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain433_n172_β
 jmp xchain433_n175_α
 xchain433_n174_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 408]
 jmp qword ptr [rsp]
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain433_n175_α:
 lea rax, [rip + xchain433_n175_β]
 mov qword ptr [rbp + 8144], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$2F16_γ
 xchain433_n175_β:
 jmp xchain433_n174_β
proc_top$2F16_res:
add rsp, 8
pop rbp
proc_top$2F16_β:
jmp qword ptr [rbp + 8144]
proc_top$2F16_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$2F16_res]
push rax
mov rax, [rbp + 8488]
mov rbp, [rbp + 8504]
jmp rax
proc_top$2F16_ω:
mov rax, [rbp + 8496]
lea rsp, [rbp + 8512]
mov rbp, [rbp + 8504]
jmp rax
  .globl proc_lefteven$2F1_α
proc_lefteven$2F1_α:
#=======================================================================================================================
    .global proc_lefteven$2F1_α
    .global proc_lefteven$2F1_β
    .global proc_lefteven$2F1_γ
    .global proc_lefteven$2F1_ω
  sub rsp, 1440
  mov [rsp + 1416], rcx
  mov [rsp + 1424], rdx
  mov [rsp + 1432], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1400], rsp
  mov rdi, rsp
  mov esi, 1376
  mov edx, 1408
  call rt_jmp_frame_lexprep2@PLT
proc_lefteven$2F1_α_body:
lea rax, [rip + xchain713_n11_β]
mov qword ptr [rbp + 1376], rax
 xchain713_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_lefteven$2F1_ω
 jmp xchain713_n1_α
 xchain713_n0_β:
 jmp proc_lefteven$2F1_ω
# IR_VAR_REF
 xchain713_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain713_n2_α
# IR_LIT_INTEGER
 xchain713_n2_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain713_n3_α
.Lx717_0:
 .quad 1
# IR_LIT_INTEGER
 xchain713_n3_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx718_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain713_n4_α
.Lx718_0:
 .quad 2
 xchain713_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1264]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain713_n6_α
 jmp xchain713_n5_α
 xchain713_n4_β:
 jmp xchain713_n6_α
# IR_VAR_REF
 xchain713_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain713_n7_α
# IR_VAR_REF
 xchain713_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain713_n8_α
# IR_LIT_INTEGER
 xchain713_n7_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain713_n9_α
.Lx724_0:
 .quad 2
# IR_LIT_INTEGER
 xchain713_n8_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx725_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain713_n10_α
.Lx725_0:
 .quad 1
 xchain713_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1120]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain713_n12_α
 jmp xchain713_n11_α
 xchain713_n9_β:
 jmp xchain713_n12_α
# IR_LIT_INTEGER
 xchain713_n10_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain713_n13_α
.Lx727_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain713_n11_α:
 lea rax, [rip + xchain713_n11_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n11_β:
 jmp xchain713_n12_α
 xchain713_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1072]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_lefteven$2F1_ω
 jmp xchain713_n6_α
 xchain713_n12_β:
 jmp proc_lefteven$2F1_ω
 xchain713_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1024] -> [zr+944]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain713_n15_α
 jmp xchain713_n14_α
 xchain713_n13_β:
 jmp xchain713_n15_α
# IR_VAR_REF
 xchain713_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain713_n16_α
# IR_VAR_REF
 xchain713_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain713_n17_α
# IR_LIT_INTEGER
 xchain713_n16_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain713_n18_α
.Lx736_0:
 .quad 4
# IR_LIT_INTEGER
 xchain713_n17_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain713_n19_α
.Lx737_0:
 .quad 1
 xchain713_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 800]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain713_n21_α
 jmp xchain713_n20_α
 xchain713_n18_β:
 jmp xchain713_n21_α
# IR_LIT_INTEGER
 xchain713_n19_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx739_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain713_n22_α
.Lx739_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain713_n20_α:
 lea rax, [rip + xchain713_n20_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n20_β:
 jmp xchain713_n21_α
 xchain713_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+752]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_lefteven$2F1_ω
 jmp xchain713_n15_α
 xchain713_n21_β:
 jmp proc_lefteven$2F1_ω
 xchain713_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain713_n24_α
 jmp xchain713_n23_α
 xchain713_n22_β:
 jmp xchain713_n24_α
# IR_VAR_REF
 xchain713_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain713_n25_α
# IR_VAR_REF
 xchain713_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain713_n26_α
# IR_LIT_INTEGER
 xchain713_n25_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx748_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain713_n27_α
.Lx748_0:
 .quad 6
# IR_LIT_INTEGER
 xchain713_n26_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain713_n28_α
.Lx749_0:
 .quad 1
 xchain713_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain713_n30_α
 jmp xchain713_n29_α
 xchain713_n27_β:
 jmp xchain713_n30_α
# IR_LIT_INTEGER
 xchain713_n28_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain713_n31_α
.Lx751_0:
 .quad 8
# IR_SUSPEND yield+resume
 xchain713_n29_α:
 lea rax, [rip + xchain713_n29_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n29_β:
 jmp xchain713_n30_α
 xchain713_n30_α:
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
 je proc_lefteven$2F1_ω
 jmp xchain713_n24_α
 xchain713_n30_β:
 jmp proc_lefteven$2F1_ω
 xchain713_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain713_n33_α
 jmp xchain713_n32_α
 xchain713_n31_β:
 jmp xchain713_n33_α
# IR_VAR_REF
 xchain713_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain713_n34_α
 xchain713_n33_α:
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
 je proc_lefteven$2F1_ω
 jmp proc_lefteven$2F1_ω
 xchain713_n33_β:
 jmp proc_lefteven$2F1_ω
# IR_LIT_INTEGER
 xchain713_n34_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx759_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain713_n35_α
.Lx759_0:
 .quad 8
 xchain713_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain713_n33_α
 jmp xchain713_n36_α
 xchain713_n35_β:
 jmp xchain713_n33_α
# IR_SUSPEND yield+resume
 xchain713_n36_α:
 lea rax, [rip + xchain713_n36_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n36_β:
 jmp xchain713_n33_α
proc_lefteven$2F1_res:
add rsp, 8
pop rbp
proc_lefteven$2F1_β:
jmp qword ptr [rbp + 1376]
proc_lefteven$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_lefteven$2F1_res]
push rax
mov rax, [rbp + 1416]
mov rbp, [rbp + 1432]
jmp rax
proc_lefteven$2F1_ω:
mov rax, [rbp + 1424]
lea rsp, [rbp + 1440]
mov rbp, [rbp + 1432]
jmp rax
  .globl proc_zero$2F1_α
proc_zero$2F1_α:
#=======================================================================================================================
    .global proc_zero$2F1_α
    .global proc_zero$2F1_β
    .global proc_zero$2F1_γ
    .global proc_zero$2F1_ω
  sub rsp, 944
  mov [rsp + 920], rcx
  mov [rsp + 928], rdx
  mov [rsp + 936], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 888], rsp
  mov rdi, rsp
  mov esi, 864
  mov edx, 912
  call rt_jmp_frame_lexprep2@PLT
proc_zero$2F1_α_body:
lea rax, [rip + xchain763_n11_β]
mov qword ptr [rbp + 864], rax
 xchain763_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_zero$2F1_ω
 jmp xchain763_n1_α
 xchain763_n0_β:
 jmp proc_zero$2F1_ω
# IR_VAR_REF
 xchain763_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain763_n2_α
# IR_LIT_INTEGER
 xchain763_n2_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx767_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain763_n3_α
.Lx767_0:
 .quad 2
# IR_LIT_STRING
 xchain763_n3_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx768_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain763_n4_α
.Lx768_0:
 .quad .Lx768_0_s
.Lx768_0_s:
 .string "[]"
 xchain763_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+832] -> [zr+752]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain763_n6_α
 jmp xchain763_n5_α
 xchain763_n4_β:
 jmp xchain763_n6_α
# IR_VAR_REF
 xchain763_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain763_n7_α
# IR_VAR_REF
 xchain763_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain763_n8_α
# IR_LIT_STRING
 xchain763_n7_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx774_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain763_n9_α
.Lx774_0:
 .quad .Lx774_0_s
.Lx774_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain763_n8_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx775_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain763_n10_α
.Lx775_0:
 .quad 3
 xchain763_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 608]
 mov rsi, qword ptr [rip + .Lx776_2]
 jmp .Lx776_3
.Lx776_2:
 .quad .Lx776_2_s
.Lx776_2_s:
 .string "[]"
.Lx776_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain763_n12_α
 jmp xchain763_n11_α
 xchain763_n9_β:
 jmp xchain763_n12_α
# IR_LIT_INTEGER
 xchain763_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx777_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain763_n13_α
.Lx777_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain763_n11_α:
 lea rax, [rip + xchain763_n11_β]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$2F1_γ
 xchain763_n11_β:
 jmp xchain763_n12_α
 xchain763_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+560]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_zero$2F1_ω
 jmp xchain763_n6_α
 xchain763_n12_β:
 jmp proc_zero$2F1_ω
 xchain763_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+512] -> [zr+432]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain763_n15_α
 jmp xchain763_n14_α
 xchain763_n13_β:
 jmp xchain763_n15_α
# IR_VAR_REF
 xchain763_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain763_n16_α
 xchain763_n15_α:
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
 je proc_zero$2F1_ω
 jmp proc_zero$2F1_ω
 xchain763_n15_β:
 jmp proc_zero$2F1_ω
# IR_LIT_INTEGER
 xchain763_n16_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx785_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain763_n17_α
.Lx785_0:
 .quad 0
# IR_VAR_REF
 xchain763_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain763_n18_α
 xchain763_n18_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+272]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain763_n15_α
 jmp xchain763_n19_α
 xchain763_n18_β:
 jmp xchain763_n15_α
# IR_VAR_REF
 xchain763_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain763_n20_α
 xchain763_n20_α:
 mov qword ptr [rbp + 160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx792_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx792_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx792_3]
 lea rdx, [rip + .Lx792_4]
 jmp rax
.Lx792_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx792_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx792_2
.Lx792_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx792_2
.Lx792_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx792_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx792_2
.Lx792_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx792_2
.Lx792_1:
 call rt_faildescr@PLT
.Lx792_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain763_n15_α
 jmp xchain763_n21_α
 xchain763_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx792_0:
 .quad .Lx792_0_s
.Lx792_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain763_n21_α:
 lea rax, [rip + xchain763_n21_β]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$2F1_γ
 xchain763_n21_β:
 jmp xchain763_n20_β
proc_zero$2F1_res:
add rsp, 8
pop rbp
proc_zero$2F1_β:
jmp qword ptr [rbp + 864]
proc_zero$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_zero$2F1_res]
push rax
mov rax, [rbp + 920]
mov rbp, [rbp + 936]
jmp rax
proc_zero$2F1_ω:
mov rax, [rbp + 928]
lea rsp, [rbp + 944]
mov rbp, [rbp + 936]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "mult/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_mult$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 816
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
  lea rsi, [rip + proc_mult$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3360
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
  lea rsi, [rip + proc_odd$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
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
  .Lstartup_pname3: .string "sum/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_sum$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 784
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_sum$2F3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "sum/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_sum$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3472
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_sum$2F4_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname5: .string "even/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_even$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1728
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
  lea rsi, [rip + proc_top$2F16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 16
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 8480
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
  lea rsi, [rip + proc_lefteven$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1408
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
  lea rsi, [rip + proc_zero$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 912
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
  mov qword ptr [rsp + 3368], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain795_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain795_n1_α
 xchain795_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain795_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain795_n2_α
# IR_VAR_REF
 xchain795_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain795_n3_α
# IR_VAR_REF
 xchain795_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain795_n4_α
# IR_VAR_REF
 xchain795_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain795_n5_α
# IR_VAR_REF
 xchain795_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain795_n6_α
# IR_VAR_REF
 xchain795_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain795_n7_α
# IR_VAR_REF
 xchain795_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain795_n8_α
# IR_VAR_REF
 xchain795_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain795_n9_α
# IR_VAR_REF
 xchain795_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain795_n10_α
# IR_VAR_REF
 xchain795_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain795_n11_α
# IR_VAR_REF
 xchain795_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain795_n12_α
# IR_VAR_REF
 xchain795_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain795_n13_α
# IR_VAR_REF
 xchain795_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain795_n14_α
# IR_VAR_REF
 xchain795_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain795_n15_α
# IR_VAR_REF
 xchain795_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain795_n16_α
# IR_VAR_REF
 xchain795_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain795_n17_α
 xchain795_n17_α:
 mov qword ptr [rbp + 2816], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2848]
 mov rdx, qword ptr [rbp + 2856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2912]
 mov rdx, qword ptr [rbp + 2920]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 2944]
 mov rdx, qword ptr [rbp + 2952]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 2976]
 mov rdx, qword ptr [rbp + 2984]
 call rt_arg_stage@PLT
 mov edi, 5
 mov rsi, qword ptr [rbp + 3008]
 mov rdx, qword ptr [rbp + 3016]
 call rt_arg_stage@PLT
 mov edi, 6
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 call rt_arg_stage@PLT
 mov edi, 7
 mov rsi, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 call rt_arg_stage@PLT
 mov edi, 8
 mov rsi, qword ptr [rbp + 3104]
 mov rdx, qword ptr [rbp + 3112]
 call rt_arg_stage@PLT
 mov edi, 9
 mov rsi, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 call rt_arg_stage@PLT
 mov edi, 10
 mov rsi, qword ptr [rbp + 3168]
 mov rdx, qword ptr [rbp + 3176]
 call rt_arg_stage@PLT
 mov edi, 11
 mov rsi, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 call rt_arg_stage@PLT
 mov edi, 12
 mov rsi, qword ptr [rbp + 3232]
 mov rdx, qword ptr [rbp + 3240]
 call rt_arg_stage@PLT
 mov edi, 13
 mov rsi, qword ptr [rbp + 3264]
 mov rdx, qword ptr [rbp + 3272]
 call rt_arg_stage@PLT
 mov edi, 14
 mov rsi, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 call rt_arg_stage@PLT
 mov edi, 15
 mov rsi, qword ptr [rbp + 3328]
 mov rdx, qword ptr [rbp + 3336]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx830_0]
 mov esi, 16
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx830_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx830_3]
 lea rdx, [rip + .Lx830_4]
 jmp rax
.Lx830_3:
 mov qword ptr [rbp + 2824], rsp
 mov rax, qword ptr [rbp + 2816]
 test rax, rax
 jne .Lx830_5
 mov qword ptr [rbp + 2816], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx830_2
.Lx830_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx830_2
.Lx830_4:
 mov rax, qword ptr [rbp + 2816]
 test rax, rax
 jne .Lx830_6
 mov qword ptr [rbp + 2816], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx830_2
.Lx830_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx830_2
.Lx830_1:
 call rt_faildescr@PLT
.Lx830_2:
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain795_n19_α
 jmp xchain795_n18_α
 xchain795_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2824]
 jmp qword ptr [rsp]
.Lx830_0:
 .quad .Lx830_0_s
.Lx830_0_s:
 .string "top/16"
# IR_LIT_STRING
 xchain795_n18_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain795_n20_α
.Lx831_0:
 .quad .Lx831_0_s
.Lx831_0_s:
 .string "."
 xchain795_n19_α:
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
 xchain795_n19_β:
 jmp main_ω
# IR_VAR_REF
 xchain795_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain795_n21_α
# IR_LIT_STRING
 xchain795_n21_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx835_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain795_n22_α
.Lx835_0:
 .quad .Lx835_0_s
.Lx835_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain795_n23_α
# IR_LIT_STRING
 xchain795_n23_α:
 mov qword ptr [rbp + 2224], 1
 mov rax, qword ptr [rip + .Lx838_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain795_n24_α
.Lx838_0:
 .quad .Lx838_0_s
.Lx838_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain795_n25_α
# IR_LIT_STRING
 xchain795_n25_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx841_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain795_n26_α
.Lx841_0:
 .quad .Lx841_0_s
.Lx841_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain795_n27_α
# IR_LIT_STRING
 xchain795_n27_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx844_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain795_n28_α
.Lx844_0:
 .quad .Lx844_0_s
.Lx844_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain795_n29_α
# IR_LIT_STRING
 xchain795_n29_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx847_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain795_n30_α
.Lx847_0:
 .quad .Lx847_0_s
.Lx847_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain795_n31_α
# IR_LIT_STRING
 xchain795_n31_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx850_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain795_n32_α
.Lx850_0:
 .quad .Lx850_0_s
.Lx850_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain795_n33_α
# IR_LIT_STRING
 xchain795_n33_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx853_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain795_n34_α
.Lx853_0:
 .quad .Lx853_0_s
.Lx853_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain795_n35_α
# IR_LIT_STRING
 xchain795_n35_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx856_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain795_n36_α
.Lx856_0:
 .quad .Lx856_0_s
.Lx856_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain795_n37_α
# IR_LIT_STRING
 xchain795_n37_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx859_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain795_n38_α
.Lx859_0:
 .quad .Lx859_0_s
.Lx859_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain795_n39_α
# IR_LIT_STRING
 xchain795_n39_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx862_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain795_n40_α
.Lx862_0:
 .quad .Lx862_0_s
.Lx862_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain795_n41_α
# IR_LIT_STRING
 xchain795_n41_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx865_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain795_n42_α
.Lx865_0:
 .quad .Lx865_0_s
.Lx865_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain795_n43_α
# IR_LIT_STRING
 xchain795_n43_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx868_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain795_n44_α
.Lx868_0:
 .quad .Lx868_0_s
.Lx868_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain795_n45_α
# IR_LIT_STRING
 xchain795_n45_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx871_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain795_n46_α
.Lx871_0:
 .quad .Lx871_0_s
.Lx871_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain795_n47_α
# IR_LIT_STRING
 xchain795_n47_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx874_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain795_n48_α
.Lx874_0:
 .quad .Lx874_0_s
.Lx874_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain795_n49_α
# IR_LIT_STRING
 xchain795_n49_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx877_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain795_n50_α
.Lx877_0:
 .quad .Lx877_0_s
.Lx877_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain795_n51_α
# IR_LIT_STRING
 xchain795_n51_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx880_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain795_n52_α
.Lx880_0:
 .quad .Lx880_0_s
.Lx880_0_s:
 .string "[]"
 xchain795_n52_α:
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
 je main_ω
 jmp xchain795_n53_α
 xchain795_n52_β:
 jmp main_ω
 xchain795_n53_α:
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
 je main_ω
 jmp xchain795_n54_α
 xchain795_n53_β:
 jmp main_ω
 xchain795_n54_α:
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
 je main_ω
 jmp xchain795_n55_α
 xchain795_n54_β:
 jmp main_ω
 xchain795_n55_α:
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
 je main_ω
 jmp xchain795_n56_α
 xchain795_n55_β:
 jmp main_ω
 xchain795_n56_α:
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
 je main_ω
 jmp xchain795_n57_α
 xchain795_n56_β:
 jmp main_ω
 xchain795_n57_α:
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
 je main_ω
 jmp xchain795_n58_α
 xchain795_n57_β:
 jmp main_ω
 xchain795_n58_α:
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
 je main_ω
 jmp xchain795_n59_α
 xchain795_n58_β:
 jmp main_ω
 xchain795_n59_α:
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
 je main_ω
 jmp xchain795_n60_α
 xchain795_n59_β:
 jmp main_ω
 xchain795_n60_α:
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
 je main_ω
 jmp xchain795_n61_α
 xchain795_n60_β:
 jmp main_ω
 xchain795_n61_α:
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
 je main_ω
 jmp xchain795_n62_α
 xchain795_n61_β:
 jmp main_ω
 xchain795_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1728]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1744]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1752], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1760]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je main_ω
 jmp xchain795_n63_α
 xchain795_n62_β:
 jmp main_ω
 xchain795_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1888]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1712] -> [zr+1904]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je main_ω
 jmp xchain795_n64_α
 xchain795_n63_β:
 jmp main_ω
 xchain795_n64_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+2032]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2040], rax
# marshal arg2 = producer-box slot [zr+1856] -> [zr+2048]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je main_ω
 jmp xchain795_n65_α
 xchain795_n64_β:
 jmp main_ω
 xchain795_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2160]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2176]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2184], rax
# marshal arg2 = producer-box slot [zr+2000] -> [zr+2192]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 2200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2160]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je main_ω
 jmp xchain795_n66_α
 xchain795_n65_β:
 jmp main_ω
 xchain795_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2256] -> [zr+2320]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2328], rax
# marshal arg2 = producer-box slot [zr+2144] -> [zr+2336]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je main_ω
 jmp xchain795_n67_α
 xchain795_n66_β:
 jmp main_ω
 xchain795_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2448]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2464]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2472], rax
# marshal arg2 = producer-box slot [zr+2288] -> [zr+2480]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain795_n19_α
 jmp xchain795_n68_α
 xchain795_n67_β:
 jmp xchain795_n19_α
 xchain795_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+192]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn898: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn898]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain795_n17_β
 jmp xchain795_n69_α
 xchain795_n68_β:
 jmp xchain795_n17_β
# IR_LIT_STRING
 xchain795_n69_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx899_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain795_n70_α
.Lx899_0:
 .quad .Lx899_0_s
.Lx899_0_s:
 .string ""
 xchain795_n70_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn901: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn901]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain795_n17_β
 jmp xchain795_n71_α
 xchain795_n70_β:
 jmp xchain795_n17_β
# IR_MOVE_LABEL
 xchain795_n71_α:
 lea rax, [rip + xchain795_n17_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain795_n72_α:
 jmp qword ptr [rbp + 32]
 xchain795_n72_β:
 jmp main_ω
main_β:
jmp xchain795_n72_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 3368]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 3368]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
