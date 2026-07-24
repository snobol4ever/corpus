  .intel_syntax noprefix
  .text
  .globl proc_mult$2F3_α
proc_mult$2F3_α:
#=======================================================================================================================
    .global proc_mult$2F3_α
    .global proc_mult$2F3_β
    .global proc_mult$2F3_γ
    .global proc_mult$2F3_ω
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
proc_mult$2F3_α_body:
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
 je proc_mult$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_mult$2F3_ω
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
 je proc_mult$2F3_ω
 jmp proc_mult$2F3_ω
 xchain0_n5_β:
 jmp proc_mult$2F3_ω
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
 jmp proc_mult$2F3_γ
 xchain0_n16_β:
 jmp xchain0_n15_β
proc_mult$2F3_res:
add rsp, 8
pop rbp
proc_mult$2F3_β:
jmp qword ptr [rbp + 800]
proc_mult$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$2F3_res]
push rax
mov rax, [rbp + 888]
mov rbp, [rbp + 904]
jmp rax
proc_mult$2F3_ω:
mov rax, [rbp + 896]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
jmp rax
  .globl proc_mult$2F4_α
proc_mult$2F4_α:
#=======================================================================================================================
    .global proc_mult$2F4_α
    .global proc_mult$2F4_β
    .global proc_mult$2F4_γ
    .global proc_mult$2F4_ω
  sub rsp, 3648
  mov [rsp + 3624], rcx
  mov [rsp + 3632], rdx
  mov [rsp + 3640], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3480], rsp
  mov rdi, rsp
  mov esi, 3456
  mov edx, 3616
  call rt_jmp_frame_lexprep2@PLT
proc_mult$2F4_α_body:
lea rax, [rip + xchain29_n72_β]
mov qword ptr [rbp + 3456], rax
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
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain29_n2_α
# IR_LIT_INTEGER
 xchain29_n2_α:
 mov qword ptr [rbp + 3392], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain29_n3_α
.Lx33_0:
 .quad 3
# IR_LIT_INTEGER
 xchain29_n3_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain29_n4_α
.Lx34_0:
 .quad 0
 xchain29_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3296]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3304], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3312]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3320], rax
# marshal arg2 = producer-box slot [zr+3424] -> [zr+3328]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3296]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n5_α
 xchain29_n4_β:
 jmp xchain29_n6_α
# IR_VAR_REF
 xchain29_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain29_n7_α
# IR_VAR_REF
 xchain29_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain29_n8_α
# IR_VAR_REF
 xchain29_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain29_n9_α
# IR_LIT_INTEGER
 xchain29_n8_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain29_n10_α
.Lx42_0:
 .quad 2
# IR_VAR_REF
 xchain29_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain29_n11_α
# IR_LIT_STRING
 xchain29_n10_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain29_n12_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "[]"
 xchain29_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3152]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3216] -> [zr+3168]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3176], rax
# marshal arg2 = producer-box slot [zr+3248] -> [zr+3184]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n13_α
 xchain29_n11_β:
 jmp xchain29_n14_α
 xchain29_n12_α:
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
 je xchain29_n16_α
 jmp xchain29_n15_α
 xchain29_n12_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain29_n17_α
 xchain29_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1632]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je proc_mult$2F4_ω
 jmp xchain29_n6_α
 xchain29_n14_β:
 jmp proc_mult$2F4_ω
# IR_VAR_REF
 xchain29_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
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
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain29_n19_α
# IR_LIT_STRING
 xchain29_n18_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain29_n20_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "[]"
 xchain29_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n21_α
 xchain29_n19_β:
 jmp xchain29_n14_α
 xchain29_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1328]
 mov rsi, qword ptr [rip + .Lx58_2]
 jmp .Lx58_3
.Lx58_2:
 .quad .Lx58_2_s
.Lx58_2_s:
 .string "[]"
.Lx58_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n22_α
 xchain29_n20_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain29_n23_α
# IR_VAR_REF
 xchain29_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain29_n24_α
# IR_VAR_REF
 xchain29_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain29_n25_α
# IR_VAR_REF
 xchain29_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain29_n26_α
 xchain29_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2912] -> [zr+2864]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2872], rax
# marshal arg1 = producer-box slot [zr+2944] -> [zr+2880]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2864]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n27_α
 xchain29_n25_β:
 jmp xchain29_n14_α
 xchain29_n26_α:
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
 jmp xchain29_n28_α
 xchain29_n26_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain29_n29_α
# IR_VAR_REF
 xchain29_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain29_n30_α
# IR_VAR_REF
 xchain29_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain29_n31_α
# IR_VAR_REF
 xchain29_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain29_n32_α
# IR_VAR_REF
 xchain29_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain29_n33_α
 xchain29_n32_α:
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
 jmp xchain29_n34_α
 xchain29_n32_β:
 jmp xchain29_n16_α
 xchain29_n33_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2720]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# marshal arg2 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n35_α
 xchain29_n33_β:
 jmp xchain29_n14_α
# IR_VAR_REF
 xchain29_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain29_n36_α
# IR_VAR_REF
 xchain29_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain29_n37_α
# IR_LIT_STRING
 xchain29_n36_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain29_n38_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "."
# IR_VAR
 xchain29_n37_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 2584], rax
 jmp xchain29_n39_α
# IR_VAR_REF
 xchain29_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain29_n40_α
# IR_VAR
 xchain29_n39_α:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 2616], rax
 jmp xchain29_n41_α
# IR_LIT_STRING
 xchain29_n40_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain29_n42_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "."
 xchain29_n41_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2528]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 2528]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n43_α
 xchain29_n41_β:
 jmp xchain29_n14_α
# IR_VAR_REF
 xchain29_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain29_n44_α
# IR_VAR
 xchain29_n43_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 2648], rax
 jmp xchain29_n45_α
# IR_LIT_STRING
 xchain29_n44_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain29_n46_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "[]"
 xchain29_n45_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2464]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2480]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2464]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n47_α
 xchain29_n45_β:
 jmp xchain29_n14_α
 xchain29_n46_α:
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
 je proc_mult$2F4_ω
 jmp xchain29_n48_α
 xchain29_n46_β:
 jmp proc_mult$2F4_ω
 xchain29_n47_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2368]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2384]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2368]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n49_α
 xchain29_n47_β:
 jmp xchain29_n14_α
 xchain29_n48_α:
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
 jmp xchain29_n50_α
 xchain29_n48_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain29_n51_α
 xchain29_n50_α:
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
 jmp xchain29_n52_α
 xchain29_n50_β:
 jmp xchain29_n16_α
# IR_VAR
 xchain29_n51_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 2296], rax
 jmp xchain29_n53_α
# IR_VAR_REF
 xchain29_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain29_n54_α
# IR_LIT_INTEGER
 xchain29_n53_α:
 mov qword ptr [rbp + 2320], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain29_n55_α
.Lx110_0:
 .quad 10
# IR_VAR
 xchain29_n54_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 584], rax
 jmp xchain29_n56_α
 xchain29_n55_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2240]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2256]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n57_α
 xchain29_n55_β:
 jmp xchain29_n14_α
# IR_LIT_INTEGER
 xchain29_n56_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain29_n58_α
.Lx114_0:
 .quad 10
 xchain29_n57_α:
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
 je xchain29_n14_α
 jmp xchain29_n59_α
 xchain29_n57_β:
 jmp xchain29_n14_α
 xchain29_n58_α:
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
 jmp xchain29_n60_α
 xchain29_n58_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain29_n61_α
 xchain29_n60_α:
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
 jmp xchain29_n62_α
 xchain29_n60_β:
 jmp xchain29_n16_α
# IR_VAR
 xchain29_n61_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 2072], rax
 jmp xchain29_n63_α
# IR_VAR_REF
 xchain29_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain29_n64_α
# IR_LIT_INTEGER
 xchain29_n63_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain29_n65_α
.Lx124_0:
 .quad 10
# IR_VAR
 xchain29_n64_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 360], rax
 jmp xchain29_n66_α
 xchain29_n65_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n67_α
 xchain29_n65_β:
 jmp xchain29_n14_α
# IR_LIT_INTEGER
 xchain29_n66_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain29_n68_α
.Lx128_0:
 .quad 10
 xchain29_n67_α:
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
 je xchain29_n14_α
 jmp xchain29_n69_α
 xchain29_n67_β:
 jmp xchain29_n14_α
 xchain29_n68_α:
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
 jmp xchain29_n70_α
 xchain29_n68_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain29_n71_α
 xchain29_n70_α:
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
 jmp xchain29_n72_α
 xchain29_n70_β:
 jmp xchain29_n16_α
# IR_VAR_REF
 xchain29_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain29_n73_α
# IR_SUSPEND yield+resume
 xchain29_n72_α:
 lea rax, [rip + xchain29_n72_β]
 mov qword ptr [rbp + 3456], rax
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
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain29_n74_α
# IR_VAR_REF
 xchain29_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain29_n75_α
 xchain29_n75_α:
 mov qword ptr [rbp + 1744], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1808]
 mov rdx, qword ptr [rbp + 1816]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1872]
 mov rdx, qword ptr [rbp + 1880]
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
 mov qword ptr [rbp + 1752], rsp
 mov rax, qword ptr [rbp + 1744]
 test rax, rax
 jne .Lx143_5
 mov qword ptr [rbp + 1744], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx143_2
.Lx143_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx143_2
.Lx143_4:
 mov rax, qword ptr [rbp + 1744]
 test rax, rax
 jne .Lx143_6
 mov qword ptr [rbp + 1744], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx143_2
.Lx143_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx143_2
.Lx143_1:
 call rt_faildescr@PLT
.Lx143_2:
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain29_n14_α
 jmp xchain29_n76_α
 xchain29_n75_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1752]
 jmp qword ptr [rsp]
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain29_n76_α:
 lea rax, [rip + xchain29_n76_β]
 mov qword ptr [rbp + 3456], rax
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
jmp qword ptr [rbp + 3456]
proc_mult$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mult$2F4_res]
push rax
mov rax, [rbp + 3624]
mov rbp, [rbp + 3640]
jmp rax
proc_mult$2F4_ω:
mov rax, [rbp + 3632]
lea rsp, [rbp + 3648]
mov rbp, [rbp + 3640]
jmp rax
  .globl proc_odd$2F1_α
proc_odd$2F1_α:
#=======================================================================================================================
    .global proc_odd$2F1_α
    .global proc_odd$2F1_β
    .global proc_odd$2F1_γ
    .global proc_odd$2F1_ω
  sub rsp, 1920
  mov [rsp + 1896], rcx
  mov [rsp + 1904], rdx
  mov [rsp + 1912], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1856
  mov edx, 1888
  call rt_jmp_frame_lexprep2@PLT
proc_odd$2F1_α_body:
lea rax, [rip + xchain146_n11_β]
mov qword ptr [rbp + 1856], rax
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
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain146_n2_α
# IR_LIT_INTEGER
 xchain146_n2_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain146_n3_α
.Lx150_0:
 .quad 1
# IR_LIT_INTEGER
 xchain146_n3_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain146_n4_α
.Lx151_0:
 .quad 1
 xchain146_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1696]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1712]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1720], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+1728]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain146_n6_α
 jmp xchain146_n5_α
 xchain146_n4_β:
 jmp xchain146_n6_α
# IR_VAR_REF
 xchain146_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain146_n8_α
# IR_LIT_INTEGER
 xchain146_n7_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain146_n9_α
.Lx157_0:
 .quad 1
# IR_LIT_INTEGER
 xchain146_n8_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain146_n10_α
.Lx158_0:
 .quad 1
 xchain146_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1568]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain146_n12_α
 jmp xchain146_n11_α
 xchain146_n9_β:
 jmp xchain146_n12_α
# IR_LIT_INTEGER
 xchain146_n10_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain146_n13_α
.Lx160_0:
 .quad 3
# IR_SUSPEND yield+resume
 xchain146_n11_α:
 lea rax, [rip + xchain146_n11_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n11_β:
 jmp xchain146_n12_α
 xchain146_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1520]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_odd$2F1_ω
 jmp xchain146_n6_α
 xchain146_n12_β:
 jmp proc_odd$2F1_ω
 xchain146_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1360]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1376]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain146_n15_α
 jmp xchain146_n14_α
 xchain146_n13_β:
 jmp xchain146_n15_α
# IR_VAR_REF
 xchain146_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain146_n17_α
# IR_LIT_INTEGER
 xchain146_n16_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain146_n18_α
.Lx169_0:
 .quad 3
# IR_LIT_INTEGER
 xchain146_n17_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain146_n19_α
.Lx170_0:
 .quad 1
 xchain146_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain146_n21_α
 jmp xchain146_n20_α
 xchain146_n18_β:
 jmp xchain146_n21_α
# IR_LIT_INTEGER
 xchain146_n19_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain146_n22_α
.Lx172_0:
 .quad 5
# IR_SUSPEND yield+resume
 xchain146_n20_α:
 lea rax, [rip + xchain146_n20_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n20_β:
 jmp xchain146_n21_α
 xchain146_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_odd$2F1_ω
 jmp xchain146_n15_α
 xchain146_n21_β:
 jmp proc_odd$2F1_ω
 xchain146_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1008]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1024]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain146_n24_α
 jmp xchain146_n23_α
 xchain146_n22_β:
 jmp xchain146_n24_α
# IR_VAR_REF
 xchain146_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain146_n25_α
# IR_VAR_REF
 xchain146_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain146_n26_α
# IR_LIT_INTEGER
 xchain146_n25_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain146_n27_α
.Lx181_0:
 .quad 5
# IR_LIT_INTEGER
 xchain146_n26_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain146_n28_α
.Lx182_0:
 .quad 1
 xchain146_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 864]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain146_n30_α
 jmp xchain146_n29_α
 xchain146_n27_β:
 jmp xchain146_n30_α
# IR_LIT_INTEGER
 xchain146_n28_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain146_n31_α
.Lx184_0:
 .quad 7
# IR_SUSPEND yield+resume
 xchain146_n29_α:
 lea rax, [rip + xchain146_n29_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n29_β:
 jmp xchain146_n30_α
 xchain146_n30_α:
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
 je proc_odd$2F1_ω
 jmp xchain146_n24_α
 xchain146_n30_β:
 jmp proc_odd$2F1_ω
 xchain146_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+672]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain146_n33_α
 jmp xchain146_n32_α
 xchain146_n31_β:
 jmp xchain146_n33_α
# IR_VAR_REF
 xchain146_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain146_n34_α
# IR_VAR_REF
 xchain146_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain146_n35_α
# IR_LIT_INTEGER
 xchain146_n34_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain146_n36_α
.Lx193_0:
 .quad 7
# IR_LIT_INTEGER
 xchain146_n35_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain146_n37_α
.Lx194_0:
 .quad 1
 xchain146_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 512]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain146_n39_α
 jmp xchain146_n38_α
 xchain146_n36_β:
 jmp xchain146_n39_α
# IR_LIT_INTEGER
 xchain146_n37_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain146_n40_α
.Lx196_0:
 .quad 9
# IR_SUSPEND yield+resume
 xchain146_n38_α:
 lea rax, [rip + xchain146_n38_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$2F1_γ
 xchain146_n38_β:
 jmp xchain146_n39_α
 xchain146_n39_α:
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
 je proc_odd$2F1_ω
 jmp xchain146_n33_α
 xchain146_n39_β:
 jmp proc_odd$2F1_ω
 xchain146_n40_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+320]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain146_n42_α
 jmp xchain146_n41_α
 xchain146_n40_β:
 jmp xchain146_n42_α
# IR_VAR_REF
 xchain146_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
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
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain146_n44_α
.Lx204_0:
 .quad 9
 xchain146_n44_α:
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
 je xchain146_n42_α
 jmp xchain146_n45_α
 xchain146_n44_β:
 jmp xchain146_n42_α
# IR_SUSPEND yield+resume
 xchain146_n45_α:
 lea rax, [rip + xchain146_n45_β]
 mov qword ptr [rbp + 1856], rax
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
jmp qword ptr [rbp + 1856]
proc_odd$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_odd$2F1_res]
push rax
mov rax, [rbp + 1896]
mov rbp, [rbp + 1912]
jmp rax
proc_odd$2F1_ω:
mov rax, [rbp + 1904]
lea rsp, [rbp + 1920]
mov rbp, [rbp + 1912]
jmp rax
  .globl proc_sum$2F3_α
proc_sum$2F3_α:
#=======================================================================================================================
    .global proc_sum$2F3_α
    .global proc_sum$2F3_β
    .global proc_sum$2F3_γ
    .global proc_sum$2F3_ω
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
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain208_n2_α
# IR_VAR_REF
 xchain208_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain208_n3_α
 xchain208_n3_α:
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
 je xchain208_n5_α
 jmp xchain208_n4_α
 xchain208_n3_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
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
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain208_n7_α
 xchain208_n7_α:
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
 je xchain208_n5_α
 jmp xchain208_n8_α
 xchain208_n7_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain208_n9_α
# IR_VAR_REF
 xchain208_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain208_n10_α
 xchain208_n10_α:
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
 je xchain208_n5_α
 jmp xchain208_n11_α
 xchain208_n10_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain208_n12_α
# IR_VAR_REF
 xchain208_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain208_n13_α
# IR_LIT_INTEGER
 xchain208_n13_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain208_n14_α
.Lx230_0:
 .quad 0
# IR_VAR_REF
 xchain208_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain208_n15_α
 xchain208_n15_α:
 lea rsi, [rbp + 272]
 lea rdx, [rbp + 304]
 lea rcx, [rbp + 336]
 lea r8, [rbp + 368]
 call proc_sum$4_dcα
 jmp .Lx234_2
.Lx234_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
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
mov rax, [rbp + 856]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
proc_sum$2F3_ω:
mov rax, [rbp + 864]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
proc_sum$2F3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 896
 mov qword ptr [rsp + 888], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 848], r11
 lea rax, [rip + .Lx239_2]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + .Lx239_3]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 792], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 784
 mov edx, 848
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_sum$2F3_α_body
.Lx239_2:
 mov rdx, qword ptr [rsp + -896]
 mov rcx, rsp
 add rcx, -880
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx239_3:
 mov rdi, qword ptr [rsp + -896]
 mov rsi, rsp
 add rsi, -880
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
  sub rsp, 3840
  mov [rsp + 3816], rcx
  mov [rsp + 3824], rdx
  mov [rsp + 3832], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3640], rsp
  mov rdi, rsp
  mov esi, 3632
  mov edx, 3808
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
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain240_n2_α
# IR_LIT_INTEGER
 xchain240_n2_α:
 mov qword ptr [rbp + 3568], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 3576], rax
 jmp xchain240_n3_α
.Lx244_0:
 .quad 3
# IR_LIT_INTEGER
 xchain240_n3_α:
 mov qword ptr [rbp + 3600], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 3608], rax
 jmp xchain240_n4_α
.Lx245_0:
 .quad 0
 xchain240_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3536] -> [zr+3472]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3480], rax
# marshal arg1 = producer-box slot [zr+3568] -> [zr+3488]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3496], rax
# marshal arg2 = producer-box slot [zr+3600] -> [zr+3504]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3472]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je xchain240_n6_α
 jmp xchain240_n5_α
 xchain240_n4_β:
 jmp xchain240_n6_α
# IR_VAR_REF
 xchain240_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain240_n7_α
# IR_VAR_REF
 xchain240_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain240_n8_α
# IR_VAR_REF
 xchain240_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain240_n9_α
# IR_LIT_INTEGER
 xchain240_n8_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain240_n10_α
.Lx253_0:
 .quad 2
# IR_VAR_REF
 xchain240_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3680]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain240_n11_α
# IR_LIT_STRING
 xchain240_n10_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain240_n12_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "[]"
 xchain240_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3280] -> [zr+3328]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3336], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3344]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3352], rax
# marshal arg2 = producer-box slot [zr+3424] -> [zr+3360]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 3328]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n13_α
 xchain240_n11_β:
 jmp xchain240_n14_α
 xchain240_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1616]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1624], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1632]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain240_n16_α
 jmp xchain240_n15_α
 xchain240_n12_β:
 jmp xchain240_n16_α
# IR_VAR_REF
 xchain240_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain240_n17_α
 xchain240_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1776]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je proc_sum$2F4_ω
 jmp xchain240_n6_α
 xchain240_n14_β:
 jmp proc_sum$2F4_ω
# IR_VAR_REF
 xchain240_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain240_n18_α
# IR_VAR_REF
 xchain240_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain240_n19_α
# IR_VAR_REF
 xchain240_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3792]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain240_n20_α
# IR_LIT_STRING
 xchain240_n18_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain240_n21_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain240_n19_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain240_n22_α
.Lx269_0:
 .quad 2
# IR_VAR_REF
 xchain240_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3696]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain240_n23_α
 xchain240_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1472]
 mov rsi, qword ptr [rip + .Lx272_2]
 jmp .Lx272_3
.Lx272_2:
 .quad .Lx272_2_s
.Lx272_2_s:
 .string "[]"
.Lx272_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n24_α
 xchain240_n21_β:
 jmp xchain240_n25_α
# IR_LIT_STRING
 xchain240_n22_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain240_n26_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "[]"
 xchain240_n23_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3152]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3216] -> [zr+3168]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3176], rax
# marshal arg2 = producer-box slot [zr+3248] -> [zr+3184]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n27_α
 xchain240_n23_β:
 jmp xchain240_n14_α
# IR_VAR_REF
 xchain240_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain240_n28_α
 xchain240_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1040]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_sum$2F4_ω
 jmp xchain240_n16_α
 xchain240_n25_β:
 jmp proc_sum$2F4_ω
 xchain240_n26_α:
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
 je xchain240_n30_α
 jmp xchain240_n29_α
 xchain240_n26_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain240_n31_α
# IR_VAR_REF
 xchain240_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain240_n32_α
# IR_VAR_REF
 xchain240_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
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
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain240_n34_α
 xchain240_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n35_α
 xchain240_n32_β:
 jmp xchain240_n25_α
# IR_LIT_STRING
 xchain240_n33_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain240_n36_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "[]"
 xchain240_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n37_α
 xchain240_n34_β:
 jmp xchain240_n14_α
# IR_VAR_REF
 xchain240_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain240_n38_α
 xchain240_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 736]
 mov rsi, qword ptr [rip + .Lx293_2]
 jmp .Lx293_3
.Lx293_2:
 .quad .Lx293_2_s
.Lx293_2_s:
 .string "[]"
.Lx293_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n39_α
 xchain240_n36_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain240_n40_α
# IR_LIT_INTEGER
 xchain240_n38_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain240_n41_α
.Lx296_0:
 .quad 0
# IR_VAR_REF
 xchain240_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain240_n42_α
# IR_VAR_REF
 xchain240_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3760]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain240_n43_α
 xchain240_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain240_n25_α
 jmp xchain240_n44_α
 xchain240_n41_β:
 jmp xchain240_n25_α
# IR_LIT_STRING
 xchain240_n42_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain240_n45_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "[]"
# IR_VAR_REF
 xchain240_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain240_n46_α
# IR_VAR_REF
 xchain240_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain240_n47_α
 xchain240_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 608]
 mov rsi, qword ptr [rip + .Lx307_2]
 jmp .Lx307_3
.Lx307_2:
 .quad .Lx307_2_s
.Lx307_2_s:
 .string "[]"
.Lx307_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n48_α
 xchain240_n45_β:
 jmp xchain240_n30_α
 xchain240_n46_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2848]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2856], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2864]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2872], rax
# marshal arg2 = producer-box slot [zr+2944] -> [zr+2880]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2848]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain240_n14_α
 jmp xchain240_n49_α
 xchain240_n46_β:
 jmp xchain240_n14_α
# IR_VAR_REF
 xchain240_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain240_n50_α
# IR_VAR_REF
 xchain240_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain240_n51_α
 xchain240_n49_α:
# IR_CUT
 jmp xchain240_n52_α
 xchain240_n50_α:
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
 je xchain240_n25_α
 jmp xchain240_n53_α
 xchain240_n50_β:
 jmp xchain240_n25_α
# IR_VAR_REF
 xchain240_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain240_n54_α
# IR_VAR_REF
 xchain240_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain240_n55_α
 xchain240_n53_α:
# IR_CUT
 jmp xchain240_n56_α
 xchain240_n54_α:
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
 je xchain240_n30_α
 jmp xchain240_n57_α
 xchain240_n54_β:
 jmp xchain240_n30_α
# IR_VAR
 xchain240_n55_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 2712], rax
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
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain240_n60_α
# IR_VAR
 xchain240_n58_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2744], rax
 jmp xchain240_n61_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain240_n59_α:
 jmp qword ptr [rbp + 96]
 xchain240_n59_β:
 jmp proc_sum$2F4_ω
# IR_LIT_STRING
 xchain240_n60_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain240_n62_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "."
 xchain240_n61_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2656]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n63_α
 xchain240_n61_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain240_n64_α
# IR_VAR
 xchain240_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2776], rax
 jmp xchain240_n65_α
# IR_LIT_STRING
 xchain240_n64_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain240_n66_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "[]"
 xchain240_n65_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2592]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2608]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n67_α
 xchain240_n65_β:
 jmp xchain240_n30_α
 xchain240_n66_α:
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
 je xchain240_n30_α
 jmp xchain240_n68_α
 xchain240_n66_β:
 jmp xchain240_n30_α
 xchain240_n67_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2496]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2512]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2496]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n69_α
 xchain240_n67_β:
 jmp xchain240_n30_α
 xchain240_n68_α:
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
 je xchain240_n30_α
 jmp xchain240_n70_α
 xchain240_n68_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3760]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain240_n71_α
# IR_MOVE_LABEL
 xchain240_n70_α:
 lea rax, [rip + xchain240_n30_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$2F4_γ
# IR_VAR
 xchain240_n71_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 2424], rax
 jmp xchain240_n72_α
# IR_LIT_INTEGER
 xchain240_n72_α:
 mov qword ptr [rbp + 2448], 6
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain240_n73_α
.Lx348_0:
 .quad 10
 xchain240_n73_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2368]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2384]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2368]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n74_α
 xchain240_n73_β:
 jmp xchain240_n30_α
 xchain240_n74_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2272]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2280], rax
# marshal arg1 = producer-box slot [zr+2352] -> [zr+2288]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2272]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n75_α
 xchain240_n74_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3712]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain240_n76_α
# IR_VAR
 xchain240_n76_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 2200], rax
 jmp xchain240_n77_α
# IR_LIT_INTEGER
 xchain240_n77_α:
 mov qword ptr [rbp + 2224], 6
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain240_n78_α
.Lx355_0:
 .quad 10
 xchain240_n78_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n79_α
 xchain240_n78_β:
 jmp xchain240_n30_α
 xchain240_n79_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2048]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain240_n30_α
 jmp xchain240_n80_α
 xchain240_n79_β:
 jmp xchain240_n30_α
# IR_VAR_REF
 xchain240_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3680]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain240_n81_α
# IR_VAR_REF
 xchain240_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3696]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain240_n82_α
# IR_VAR_REF
 xchain240_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3712]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain240_n83_α
# IR_VAR_REF
 xchain240_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain240_n84_α
 xchain240_n84_α:
 lea rsi, [rbp + 1904]
 lea rdx, [rbp + 1936]
 lea rcx, [rbp + 1968]
 lea r8, [rbp + 2000]
 call proc_sum$4_dcα
 jmp .Lx367_2
.Lx367_2:
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
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
mov rax, [rbp + 3816]
lea rsp, [rbp + 3840]
mov rbp, [rbp + 3832]
jmp rax
proc_sum$2F4_ω:
mov rax, [rbp + 3824]
lea rsp, [rbp + 3840]
mov rbp, [rbp + 3832]
jmp rax
proc_sum$2F4_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 3856
 mov qword ptr [rsp + 3848], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 3808], r11
 lea rax, [rip + .Lx370_2]
 mov qword ptr [rbp + 3816], rax
 lea rax, [rip + .Lx370_3]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3640], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov qword ptr [rbp + 40], r8
 mov rdi, rbp
 mov esi, 3632
 mov edx, 3808
 mov ecx, 4
 mov r8d, 4
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_sum$2F4_α_body
.Lx370_2:
 mov rdx, qword ptr [rsp + -3856]
 mov rcx, rsp
 add rcx, -3840
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx370_3:
 mov rdi, qword ptr [rsp + -3856]
 mov rsi, rsp
 add rsi, -3840
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
  sub rsp, 1920
  mov [rsp + 1896], rcx
  mov [rsp + 1904], rdx
  mov [rsp + 1912], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1856
  mov edx, 1888
  call rt_jmp_frame_lexprep2@PLT
proc_even$2F1_α_body:
lea rax, [rip + xchain371_n11_β]
mov qword ptr [rbp + 1856], rax
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
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain371_n2_α
# IR_LIT_INTEGER
 xchain371_n2_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain371_n3_α
.Lx375_0:
 .quad 1
# IR_LIT_INTEGER
 xchain371_n3_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain371_n4_α
.Lx376_0:
 .quad 0
 xchain371_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1696]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1712]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1720], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+1728]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain371_n6_α
 jmp xchain371_n5_α
 xchain371_n4_β:
 jmp xchain371_n6_α
# IR_VAR_REF
 xchain371_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain371_n7_α
# IR_VAR_REF
 xchain371_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain371_n8_α
# IR_LIT_INTEGER
 xchain371_n7_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain371_n9_α
.Lx382_0:
 .quad 0
# IR_LIT_INTEGER
 xchain371_n8_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain371_n10_α
.Lx383_0:
 .quad 1
 xchain371_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1568]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain371_n12_α
 jmp xchain371_n11_α
 xchain371_n9_β:
 jmp xchain371_n12_α
# IR_LIT_INTEGER
 xchain371_n10_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain371_n13_α
.Lx385_0:
 .quad 2
# IR_SUSPEND yield+resume
 xchain371_n11_α:
 lea rax, [rip + xchain371_n11_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n11_β:
 jmp xchain371_n12_α
 xchain371_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1520]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_even$2F1_ω
 jmp xchain371_n6_α
 xchain371_n12_β:
 jmp proc_even$2F1_ω
 xchain371_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1360]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1376]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain371_n15_α
 jmp xchain371_n14_α
 xchain371_n13_β:
 jmp xchain371_n15_α
# IR_VAR_REF
 xchain371_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain371_n16_α
# IR_VAR_REF
 xchain371_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain371_n17_α
# IR_LIT_INTEGER
 xchain371_n16_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain371_n18_α
.Lx394_0:
 .quad 2
# IR_LIT_INTEGER
 xchain371_n17_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain371_n19_α
.Lx395_0:
 .quad 1
 xchain371_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain371_n21_α
 jmp xchain371_n20_α
 xchain371_n18_β:
 jmp xchain371_n21_α
# IR_LIT_INTEGER
 xchain371_n19_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain371_n22_α
.Lx397_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain371_n20_α:
 lea rax, [rip + xchain371_n20_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n20_β:
 jmp xchain371_n21_α
 xchain371_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_even$2F1_ω
 jmp xchain371_n15_α
 xchain371_n21_β:
 jmp proc_even$2F1_ω
 xchain371_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1008]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1024]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain371_n24_α
 jmp xchain371_n23_α
 xchain371_n22_β:
 jmp xchain371_n24_α
# IR_VAR_REF
 xchain371_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain371_n25_α
# IR_VAR_REF
 xchain371_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain371_n26_α
# IR_LIT_INTEGER
 xchain371_n25_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain371_n27_α
.Lx406_0:
 .quad 4
# IR_LIT_INTEGER
 xchain371_n26_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain371_n28_α
.Lx407_0:
 .quad 1
 xchain371_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 864]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain371_n30_α
 jmp xchain371_n29_α
 xchain371_n27_β:
 jmp xchain371_n30_α
# IR_LIT_INTEGER
 xchain371_n28_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain371_n31_α
.Lx409_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain371_n29_α:
 lea rax, [rip + xchain371_n29_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n29_β:
 jmp xchain371_n30_α
 xchain371_n30_α:
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
 je proc_even$2F1_ω
 jmp xchain371_n24_α
 xchain371_n30_β:
 jmp proc_even$2F1_ω
 xchain371_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+672]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain371_n33_α
 jmp xchain371_n32_α
 xchain371_n31_β:
 jmp xchain371_n33_α
# IR_VAR_REF
 xchain371_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain371_n34_α
# IR_VAR_REF
 xchain371_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain371_n35_α
# IR_LIT_INTEGER
 xchain371_n34_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain371_n36_α
.Lx418_0:
 .quad 6
# IR_LIT_INTEGER
 xchain371_n35_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain371_n37_α
.Lx419_0:
 .quad 1
 xchain371_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 512]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain371_n39_α
 jmp xchain371_n38_α
 xchain371_n36_β:
 jmp xchain371_n39_α
# IR_LIT_INTEGER
 xchain371_n37_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain371_n40_α
.Lx421_0:
 .quad 8
# IR_SUSPEND yield+resume
 xchain371_n38_α:
 lea rax, [rip + xchain371_n38_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$2F1_γ
 xchain371_n38_β:
 jmp xchain371_n39_α
 xchain371_n39_α:
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
 je proc_even$2F1_ω
 jmp xchain371_n33_α
 xchain371_n39_β:
 jmp proc_even$2F1_ω
 xchain371_n40_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+320]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain371_n42_α
 jmp xchain371_n41_α
 xchain371_n40_β:
 jmp xchain371_n42_α
# IR_VAR_REF
 xchain371_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
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
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain371_n44_α
.Lx429_0:
 .quad 8
 xchain371_n44_α:
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
 je xchain371_n42_α
 jmp xchain371_n45_α
 xchain371_n44_β:
 jmp xchain371_n42_α
# IR_SUSPEND yield+resume
 xchain371_n45_α:
 lea rax, [rip + xchain371_n45_β]
 mov qword ptr [rbp + 1856], rax
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
jmp qword ptr [rbp + 1856]
proc_even$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_even$2F1_res]
push rax
mov rax, [rbp + 1896]
mov rbp, [rbp + 1912]
jmp rax
proc_even$2F1_ω:
mov rax, [rbp + 1904]
lea rsp, [rbp + 1920]
mov rbp, [rbp + 1912]
jmp rax
  .globl proc_top$2F16_α
proc_top$2F16_α:
#=======================================================================================================================
    .global proc_top$2F16_α
    .global proc_top$2F16_β
    .global proc_top$2F16_γ
    .global proc_top$2F16_ω
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
proc_top$2F16_α_body:
lea rax, [rip + xchain433_n175_β]
mov qword ptr [rbp + 8416], rax
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
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 jmp xchain433_n2_α
# IR_VAR_REF
 xchain433_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain433_n3_α
 xchain433_n3_α:
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
 je xchain433_n5_α
 jmp xchain433_n4_α
 xchain433_n3_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
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
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 jmp xchain433_n7_α
 xchain433_n7_α:
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
 je xchain433_n5_α
 jmp xchain433_n8_α
 xchain433_n7_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 jmp xchain433_n9_α
# IR_VAR_REF
 xchain433_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain433_n10_α
 xchain433_n10_α:
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
 je xchain433_n5_α
 jmp xchain433_n11_α
 xchain433_n10_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 jmp xchain433_n12_α
# IR_VAR_REF
 xchain433_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain433_n13_α
 xchain433_n13_α:
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
 je xchain433_n5_α
 jmp xchain433_n14_α
 xchain433_n13_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain433_n15_α
# IR_VAR_REF
 xchain433_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain433_n16_α
 xchain433_n16_α:
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
 je xchain433_n5_α
 jmp xchain433_n17_α
 xchain433_n16_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain433_n18_α
# IR_VAR_REF
 xchain433_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain433_n19_α
 xchain433_n19_α:
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
 je xchain433_n5_α
 jmp xchain433_n20_α
 xchain433_n19_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain433_n21_α
# IR_VAR_REF
 xchain433_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 jmp xchain433_n22_α
 xchain433_n22_α:
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
 je xchain433_n5_α
 jmp xchain433_n23_α
 xchain433_n22_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 jmp xchain433_n24_α
# IR_VAR_REF
 xchain433_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain433_n25_α
 xchain433_n25_α:
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
 je xchain433_n5_α
 jmp xchain433_n26_α
 xchain433_n25_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 144]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain433_n27_α
# IR_VAR_REF
 xchain433_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain433_n28_α
 xchain433_n28_α:
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
 je xchain433_n5_α
 jmp xchain433_n29_α
 xchain433_n28_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 160]
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain433_n30_α
# IR_VAR_REF
 xchain433_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 jmp xchain433_n31_α
 xchain433_n31_α:
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
 je xchain433_n5_α
 jmp xchain433_n32_α
 xchain433_n31_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 176]
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 jmp xchain433_n33_α
# IR_VAR_REF
 xchain433_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain433_n34_α
 xchain433_n34_α:
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
 je xchain433_n5_α
 jmp xchain433_n35_α
 xchain433_n34_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 192]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain433_n36_α
# IR_VAR_REF
 xchain433_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain433_n37_α
 xchain433_n37_α:
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
 je xchain433_n5_α
 jmp xchain433_n38_α
 xchain433_n37_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 208]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain433_n39_α
# IR_VAR_REF
 xchain433_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain433_n40_α
 xchain433_n40_α:
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
 je xchain433_n5_α
 jmp xchain433_n41_α
 xchain433_n40_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 224]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 jmp xchain433_n42_α
# IR_VAR_REF
 xchain433_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain433_n43_α
 xchain433_n43_α:
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
 je xchain433_n5_α
 jmp xchain433_n44_α
 xchain433_n43_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 240]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain433_n45_α
# IR_VAR_REF
 xchain433_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain433_n46_α
 xchain433_n46_α:
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
 je xchain433_n5_α
 jmp xchain433_n47_α
 xchain433_n46_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 256]
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain433_n48_α
# IR_VAR_REF
 xchain433_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain433_n49_α
 xchain433_n49_α:
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
 je xchain433_n5_α
 jmp xchain433_n50_α
 xchain433_n49_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain433_n51_α
 xchain433_n51_α:
 mov qword ptr [rbp + 6304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6336]
 mov rdx, qword ptr [rbp + 6344]
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
 mov qword ptr [rbp + 6312], rsp
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx519_5
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx519_2
.Lx519_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx519_2
.Lx519_4:
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx519_6
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx519_2
.Lx519_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx519_2
.Lx519_1:
 call rt_faildescr@PLT
.Lx519_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain433_n5_α
 jmp xchain433_n52_α
 xchain433_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6312]
 jmp qword ptr [rsp]
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain433_n53_α
 xchain433_n53_α:
 mov qword ptr [rbp + 6208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
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
 mov qword ptr [rbp + 6216], rsp
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx523_5
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx523_2
.Lx523_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx523_2
.Lx523_4:
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx523_6
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx523_2
.Lx523_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx523_2
.Lx523_1:
 call rt_faildescr@PLT
.Lx523_2:
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain433_n51_β
 jmp xchain433_n54_α
 xchain433_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6216]
 jmp qword ptr [rsp]
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain433_n55_α
 xchain433_n55_α:
 mov qword ptr [rbp + 6112], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6144]
 mov rdx, qword ptr [rbp + 6152]
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
 mov qword ptr [rbp + 6120], rsp
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx527_5
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx527_2
.Lx527_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx527_2
.Lx527_4:
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx527_6
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx527_2
.Lx527_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx527_2
.Lx527_1:
 call rt_faildescr@PLT
.Lx527_2:
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 cmp eax, 99
 je xchain433_n53_β
 jmp xchain433_n56_α
 xchain433_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6120]
 jmp qword ptr [rsp]
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain433_n57_α
 xchain433_n57_α:
 mov qword ptr [rbp + 6016], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6048]
 mov rdx, qword ptr [rbp + 6056]
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
 mov qword ptr [rbp + 6024], rsp
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx531_5
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx531_2
.Lx531_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx531_2
.Lx531_4:
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx531_6
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx531_2
.Lx531_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx531_2
.Lx531_1:
 call rt_faildescr@PLT
.Lx531_2:
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain433_n55_β
 jmp xchain433_n58_α
 xchain433_n57_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6024]
 jmp qword ptr [rsp]
.Lx531_0:
 .quad .Lx531_0_s
.Lx531_0_s:
 .string "even/1"
# IR_LIT_STRING
 xchain433_n58_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain433_n59_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain433_n60_α
# IR_LIT_STRING
 xchain433_n60_α:
 mov qword ptr [rbp + 5168], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain433_n61_α
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain433_n62_α
# IR_LIT_STRING
 xchain433_n62_α:
 mov qword ptr [rbp + 5024], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain433_n63_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain433_n64_α
# IR_LIT_STRING
 xchain433_n64_α:
 mov qword ptr [rbp + 4880], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain433_n65_α
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "[]"
 xchain433_n65_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n66_α
 xchain433_n65_β:
 jmp proc_top$2F16_ω
 xchain433_n66_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n67_α
 xchain433_n66_β:
 jmp proc_top$2F16_ω
 xchain433_n67_α:
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
 je xchain433_n5_α
 jmp xchain433_n68_α
 xchain433_n67_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain433_n69_α
# IR_LIT_STRING
 xchain433_n69_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain433_n70_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain433_n71_α
# IR_LIT_STRING
 xchain433_n71_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain433_n72_α
.Lx550_0:
 .quad .Lx550_0_s
.Lx550_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain433_n73_α
# IR_LIT_STRING
 xchain433_n73_α:
 mov qword ptr [rbp + 5664], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 5672], rax
 jmp xchain433_n74_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain433_n75_α
# IR_LIT_STRING
 xchain433_n75_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain433_n76_α
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain433_n77_α
# IR_VAR_REF
 xchain433_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain433_n78_α
 xchain433_n78_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n79_α
 xchain433_n78_β:
 jmp proc_top$2F16_ω
 xchain433_n79_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n80_α
 xchain433_n79_β:
 jmp proc_top$2F16_ω
 xchain433_n80_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n81_α
 xchain433_n80_β:
 jmp proc_top$2F16_ω
 xchain433_n81_α:
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
 je xchain433_n5_α
 jmp xchain433_n82_α
 xchain433_n81_β:
 jmp xchain433_n5_α
 xchain433_n82_α:
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
 mov qword ptr [rbp + 4856], rsp
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx566_5
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx566_2
.Lx566_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx566_2
.Lx566_4:
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx566_6
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx566_2
.Lx566_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx566_2
.Lx566_1:
 call rt_faildescr@PLT
.Lx566_2:
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain433_n57_β
 jmp xchain433_n83_α
 xchain433_n82_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4856]
 jmp qword ptr [rsp]
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain433_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain433_n84_α
 xchain433_n84_α:
 mov qword ptr [rbp + 4720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
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
 mov qword ptr [rbp + 4728], rsp
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx570_5
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx570_2
.Lx570_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx570_2
.Lx570_4:
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx570_6
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx570_2
.Lx570_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx570_2
.Lx570_1:
 call rt_faildescr@PLT
.Lx570_2:
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain433_n82_β
 jmp xchain433_n85_α
 xchain433_n84_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4728]
 jmp qword ptr [rsp]
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain433_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain433_n86_α
 xchain433_n86_α:
 mov qword ptr [rbp + 4624], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
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
 mov qword ptr [rbp + 4632], rsp
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx574_5
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx574_2
.Lx574_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx574_2
.Lx574_4:
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx574_6
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx574_2
.Lx574_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx574_2
.Lx574_1:
 call rt_faildescr@PLT
.Lx574_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain433_n84_β
 jmp xchain433_n87_α
 xchain433_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4632]
 jmp qword ptr [rsp]
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain433_n88_α
 xchain433_n88_α:
 mov qword ptr [rbp + 4528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
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
 mov qword ptr [rbp + 4536], rsp
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx578_5
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx578_2
.Lx578_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx578_2
.Lx578_4:
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx578_6
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx578_2
.Lx578_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx578_2
.Lx578_1:
 call rt_faildescr@PLT
.Lx578_2:
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je xchain433_n86_β
 jmp xchain433_n89_α
 xchain433_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4536]
 jmp qword ptr [rsp]
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain433_n90_α
 xchain433_n90_α:
 mov qword ptr [rbp + 4432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4464]
 mov rdx, qword ptr [rbp + 4472]
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
 mov qword ptr [rbp + 4440], rsp
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx582_5
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx582_2
.Lx582_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx582_2
.Lx582_4:
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx582_6
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx582_2
.Lx582_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx582_2
.Lx582_1:
 call rt_faildescr@PLT
.Lx582_2:
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain433_n88_β
 jmp xchain433_n91_α
 xchain433_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4440]
 jmp qword ptr [rsp]
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain433_n92_α
 xchain433_n92_α:
 mov qword ptr [rbp + 4336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
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
 mov qword ptr [rbp + 4344], rsp
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx586_5
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx586_2
.Lx586_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx586_2
.Lx586_4:
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx586_6
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx586_2
.Lx586_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx586_2
.Lx586_1:
 call rt_faildescr@PLT
.Lx586_2:
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain433_n90_β
 jmp xchain433_n93_α
 xchain433_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4344]
 jmp qword ptr [rsp]
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "zero/1"
# IR_VAR_REF
 xchain433_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain433_n94_α
 xchain433_n94_α:
 mov qword ptr [rbp + 4240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4272]
 mov rdx, qword ptr [rbp + 4280]
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
 mov qword ptr [rbp + 4248], rsp
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx590_5
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx590_2
.Lx590_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx590_2
.Lx590_4:
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx590_6
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx590_2
.Lx590_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx590_2
.Lx590_1:
 call rt_faildescr@PLT
.Lx590_2:
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 cmp eax, 99
 je xchain433_n92_β
 jmp xchain433_n95_α
 xchain433_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4248]
 jmp qword ptr [rsp]
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "lefteven/1"
# IR_LIT_STRING
 xchain433_n95_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain433_n96_α
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain433_n97_α
# IR_LIT_STRING
 xchain433_n97_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain433_n98_α
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain433_n99_α
# IR_LIT_STRING
 xchain433_n99_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain433_n100_α
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain433_n101_α
# IR_LIT_STRING
 xchain433_n101_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain433_n102_α
.Lx600_0:
 .quad .Lx600_0_s
.Lx600_0_s:
 .string "[]"
 xchain433_n102_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n103_α
 xchain433_n102_β:
 jmp proc_top$2F16_ω
 xchain433_n103_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n104_α
 xchain433_n103_β:
 jmp proc_top$2F16_ω
 xchain433_n104_α:
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
 je xchain433_n5_α
 jmp xchain433_n105_α
 xchain433_n104_β:
 jmp xchain433_n5_α
# IR_VAR_REF
 xchain433_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain433_n106_α
# IR_LIT_STRING
 xchain433_n106_α:
 mov qword ptr [rbp + 4176], 1
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain433_n107_α
.Lx606_0:
 .quad .Lx606_0_s
.Lx606_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain433_n108_α
# IR_LIT_STRING
 xchain433_n108_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx609_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain433_n109_α
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain433_n110_α
# IR_LIT_STRING
 xchain433_n110_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain433_n111_α
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain433_n112_α
# IR_VAR_REF
 xchain433_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain433_n113_α
 xchain433_n113_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n114_α
 xchain433_n113_β:
 jmp proc_top$2F16_ω
 xchain433_n114_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n115_α
 xchain433_n114_β:
 jmp proc_top$2F16_ω
 xchain433_n115_α:
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
 je xchain433_n5_α
 jmp xchain433_n116_α
 xchain433_n115_β:
 jmp xchain433_n5_α
 xchain433_n116_α:
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
 mov qword ptr [rbp + 3224], rsp
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx621_5
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx621_2
.Lx621_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx621_2
.Lx621_4:
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx621_6
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx621_2
.Lx621_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx621_2
.Lx621_1:
 call rt_faildescr@PLT
.Lx621_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain433_n94_β
 jmp xchain433_n117_α
 xchain433_n116_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3224]
 jmp qword ptr [rsp]
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain433_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain433_n118_α
 xchain433_n118_α:
 mov qword ptr [rbp + 3088], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
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
 mov qword ptr [rbp + 3096], rsp
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx625_5
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx625_2
.Lx625_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx625_2
.Lx625_4:
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx625_6
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx625_2
.Lx625_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx625_2
.Lx625_1:
 call rt_faildescr@PLT
.Lx625_2:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain433_n116_β
 jmp xchain433_n119_α
 xchain433_n118_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3096]
 jmp qword ptr [rsp]
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain433_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain433_n120_α
 xchain433_n120_α:
 mov qword ptr [rbp + 2992], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
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
 mov qword ptr [rbp + 3000], rsp
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx629_5
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx629_2
.Lx629_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx629_2
.Lx629_4:
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx629_6
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx629_2
.Lx629_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx629_2
.Lx629_1:
 call rt_faildescr@PLT
.Lx629_2:
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain433_n118_β
 jmp xchain433_n121_α
 xchain433_n120_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3000]
 jmp qword ptr [rsp]
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain433_n122_α
 xchain433_n122_α:
 mov qword ptr [rbp + 2896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
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
 mov qword ptr [rbp + 2904], rsp
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx633_5
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx633_2
.Lx633_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx633_2
.Lx633_4:
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx633_6
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx633_2
.Lx633_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx633_2
.Lx633_1:
 call rt_faildescr@PLT
.Lx633_2:
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain433_n120_β
 jmp xchain433_n123_α
 xchain433_n122_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2904]
 jmp qword ptr [rsp]
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain433_n124_α
 xchain433_n124_α:
 mov qword ptr [rbp + 2800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2832]
 mov rdx, qword ptr [rbp + 2840]
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
 mov qword ptr [rbp + 2808], rsp
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx637_5
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx637_2
.Lx637_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx637_2
.Lx637_4:
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx637_6
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx637_2
.Lx637_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx637_2
.Lx637_1:
 call rt_faildescr@PLT
.Lx637_2:
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain433_n122_β
 jmp xchain433_n125_α
 xchain433_n124_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2808]
 jmp qword ptr [rsp]
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "zero/1"
# IR_LIT_STRING
 xchain433_n125_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx638_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain433_n126_α
.Lx638_0:
 .quad .Lx638_0_s
.Lx638_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain433_n127_α
# IR_LIT_STRING
 xchain433_n127_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain433_n128_α
.Lx641_0:
 .quad .Lx641_0_s
.Lx641_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain433_n129_α
# IR_LIT_STRING
 xchain433_n129_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx644_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain433_n130_α
.Lx644_0:
 .quad .Lx644_0_s
.Lx644_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain433_n131_α
# IR_LIT_STRING
 xchain433_n131_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx647_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain433_n132_α
.Lx647_0:
 .quad .Lx647_0_s
.Lx647_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain433_n133_α
# IR_LIT_STRING
 xchain433_n133_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx650_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain433_n134_α
.Lx650_0:
 .quad .Lx650_0_s
.Lx650_0_s:
 .string "[]"
 xchain433_n134_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n135_α
 xchain433_n134_β:
 jmp proc_top$2F16_ω
 xchain433_n135_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n136_α
 xchain433_n135_β:
 jmp proc_top$2F16_ω
 xchain433_n136_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n137_α
 xchain433_n136_β:
 jmp proc_top$2F16_ω
 xchain433_n137_α:
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
 je xchain433_n5_α
 jmp xchain433_n138_α
 xchain433_n137_β:
 jmp xchain433_n5_α
# IR_LIT_STRING
 xchain433_n138_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx655_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain433_n139_α
.Lx655_0:
 .quad .Lx655_0_s
.Lx655_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain433_n139_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain433_n140_α
.Lx656_0:
 .quad 0
# IR_LIT_STRING
 xchain433_n140_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx657_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain433_n141_α
.Lx657_0:
 .quad .Lx657_0_s
.Lx657_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain433_n142_α
# IR_LIT_STRING
 xchain433_n142_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx660_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain433_n143_α
.Lx660_0:
 .quad .Lx660_0_s
.Lx660_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain433_n144_α
# IR_LIT_STRING
 xchain433_n144_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx663_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain433_n145_α
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain433_n146_α
# IR_LIT_STRING
 xchain433_n146_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx666_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain433_n147_α
.Lx666_0:
 .quad .Lx666_0_s
.Lx666_0_s:
 .string "[]"
 xchain433_n147_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n148_α
 xchain433_n147_β:
 jmp proc_top$2F16_ω
 xchain433_n148_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n149_α
 xchain433_n148_β:
 jmp proc_top$2F16_ω
 xchain433_n149_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n150_α
 xchain433_n149_β:
 jmp proc_top$2F16_ω
 xchain433_n150_α:
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
 je xchain433_n5_α
 jmp xchain433_n151_α
 xchain433_n150_β:
 jmp xchain433_n5_α
# IR_LIT_STRING
 xchain433_n151_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx671_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain433_n152_α
.Lx671_0:
 .quad .Lx671_0_s
.Lx671_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain433_n153_α
# IR_LIT_STRING
 xchain433_n153_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx674_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain433_n154_α
.Lx674_0:
 .quad .Lx674_0_s
.Lx674_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain433_n155_α
# IR_LIT_STRING
 xchain433_n155_α:
 mov qword ptr [rbp + 2448], 1
 mov rax, qword ptr [rip + .Lx677_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain433_n156_α
.Lx677_0:
 .quad .Lx677_0_s
.Lx677_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain433_n157_α
# IR_LIT_STRING
 xchain433_n157_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain433_n158_α
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "."
# IR_VAR_REF
 xchain433_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain433_n159_α
# IR_VAR_REF
 xchain433_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain433_n160_α
 xchain433_n160_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n161_α
 xchain433_n160_β:
 jmp proc_top$2F16_ω
 xchain433_n161_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n162_α
 xchain433_n161_β:
 jmp proc_top$2F16_ω
 xchain433_n162_α:
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
 je proc_top$2F16_ω
 jmp xchain433_n163_α
 xchain433_n162_β:
 jmp proc_top$2F16_ω
 xchain433_n163_α:
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
 je xchain433_n5_α
 jmp xchain433_n164_α
 xchain433_n163_β:
 jmp xchain433_n5_α
 xchain433_n164_α:
 lea rsi, [rbp + 1440]
 lea rdx, [rbp + 2048]
 lea rcx, [rbp + 2656]
 call proc_sum$3_dcα
 jmp .Lx690_2
.Lx690_2:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
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
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain433_n166_α
 xchain433_n166_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
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
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx694_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx694_2
.Lx694_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx694_2
.Lx694_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx694_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx694_2
.Lx694_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx694_2
.Lx694_1:
 call rt_faildescr@PLT
.Lx694_2:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain433_n164_β
 jmp xchain433_n167_α
 xchain433_n166_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx694_0:
 .quad .Lx694_0_s
.Lx694_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain433_n168_α
 xchain433_n168_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
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
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx698_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx698_2
.Lx698_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx698_2
.Lx698_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx698_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx698_2
.Lx698_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx698_2
.Lx698_1:
 call rt_faildescr@PLT
.Lx698_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain433_n166_β
 jmp xchain433_n169_α
 xchain433_n168_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain433_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain433_n170_α
 xchain433_n170_α:
 mov qword ptr [rbp + 608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
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
 mov qword ptr [rbp + 616], rsp
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx702_5
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx702_2
.Lx702_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx702_2
.Lx702_4:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx702_6
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx702_2
.Lx702_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx702_2
.Lx702_1:
 call rt_faildescr@PLT
.Lx702_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain433_n168_β
 jmp xchain433_n171_α
 xchain433_n170_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 616]
 jmp qword ptr [rsp]
.Lx702_0:
 .quad .Lx702_0_s
.Lx702_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain433_n172_α
 xchain433_n172_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
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
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx706_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx706_2
.Lx706_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx706_2
.Lx706_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx706_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx706_2
.Lx706_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx706_2
.Lx706_1:
 call rt_faildescr@PLT
.Lx706_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain433_n170_β
 jmp xchain433_n173_α
 xchain433_n172_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 520]
 jmp qword ptr [rsp]
.Lx706_0:
 .quad .Lx706_0_s
.Lx706_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain433_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain433_n174_α
 xchain433_n174_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
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
 mov qword ptr [rbp + 424], rsp
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx710_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx710_2
.Lx710_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx710_2
.Lx710_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx710_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx710_2
.Lx710_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx710_2
.Lx710_1:
 call rt_faildescr@PLT
.Lx710_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain433_n172_β
 jmp xchain433_n175_α
 xchain433_n174_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 424]
 jmp qword ptr [rsp]
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain433_n175_α:
 lea rax, [rip + xchain433_n175_β]
 mov qword ptr [rbp + 8416], rax
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
jmp qword ptr [rbp + 8416]
proc_top$2F16_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$2F16_res]
push rax
mov rax, [rbp + 8760]
mov rbp, [rbp + 8776]
jmp rax
proc_top$2F16_ω:
mov rax, [rbp + 8768]
lea rsp, [rbp + 8784]
mov rbp, [rbp + 8776]
jmp rax
  .globl proc_lefteven$2F1_α
proc_lefteven$2F1_α:
#=======================================================================================================================
    .global proc_lefteven$2F1_α
    .global proc_lefteven$2F1_β
    .global proc_lefteven$2F1_γ
    .global proc_lefteven$2F1_ω
  sub rsp, 1568
  mov [rsp + 1544], rcx
  mov [rsp + 1552], rdx
  mov [rsp + 1560], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1528], rsp
  mov rdi, rsp
  mov esi, 1504
  mov edx, 1536
  call rt_jmp_frame_lexprep2@PLT
proc_lefteven$2F1_α_body:
lea rax, [rip + xchain713_n11_β]
mov qword ptr [rbp + 1504], rax
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
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain713_n2_α
# IR_LIT_INTEGER
 xchain713_n2_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain713_n3_α
.Lx717_0:
 .quad 1
# IR_LIT_INTEGER
 xchain713_n3_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx718_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain713_n4_α
.Lx718_0:
 .quad 2
 xchain713_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1360]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1376]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain713_n6_α
 jmp xchain713_n5_α
 xchain713_n4_β:
 jmp xchain713_n6_α
# IR_VAR_REF
 xchain713_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain713_n7_α
# IR_VAR_REF
 xchain713_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain713_n8_α
# IR_LIT_INTEGER
 xchain713_n7_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain713_n9_α
.Lx724_0:
 .quad 2
# IR_LIT_INTEGER
 xchain713_n8_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx725_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain713_n10_α
.Lx725_0:
 .quad 1
 xchain713_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain713_n12_α
 jmp xchain713_n11_α
 xchain713_n9_β:
 jmp xchain713_n12_α
# IR_LIT_INTEGER
 xchain713_n10_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain713_n13_α
.Lx727_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain713_n11_α:
 lea rax, [rip + xchain713_n11_β]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n11_β:
 jmp xchain713_n12_α
 xchain713_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_lefteven$2F1_ω
 jmp xchain713_n6_α
 xchain713_n12_β:
 jmp proc_lefteven$2F1_ω
 xchain713_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1008]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1024]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain713_n15_α
 jmp xchain713_n14_α
 xchain713_n13_β:
 jmp xchain713_n15_α
# IR_VAR_REF
 xchain713_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain713_n16_α
# IR_VAR_REF
 xchain713_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain713_n17_α
# IR_LIT_INTEGER
 xchain713_n16_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain713_n18_α
.Lx736_0:
 .quad 4
# IR_LIT_INTEGER
 xchain713_n17_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain713_n19_α
.Lx737_0:
 .quad 1
 xchain713_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 864]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain713_n21_α
 jmp xchain713_n20_α
 xchain713_n18_β:
 jmp xchain713_n21_α
# IR_LIT_INTEGER
 xchain713_n19_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx739_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain713_n22_α
.Lx739_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain713_n20_α:
 lea rax, [rip + xchain713_n20_β]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n20_β:
 jmp xchain713_n21_α
 xchain713_n21_α:
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
 je proc_lefteven$2F1_ω
 jmp xchain713_n15_α
 xchain713_n21_β:
 jmp proc_lefteven$2F1_ω
 xchain713_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+672]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain713_n24_α
 jmp xchain713_n23_α
 xchain713_n22_β:
 jmp xchain713_n24_α
# IR_VAR_REF
 xchain713_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain713_n25_α
# IR_VAR_REF
 xchain713_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain713_n26_α
# IR_LIT_INTEGER
 xchain713_n25_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx748_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain713_n27_α
.Lx748_0:
 .quad 6
# IR_LIT_INTEGER
 xchain713_n26_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain713_n28_α
.Lx749_0:
 .quad 1
 xchain713_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 512]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain713_n30_α
 jmp xchain713_n29_α
 xchain713_n27_β:
 jmp xchain713_n30_α
# IR_LIT_INTEGER
 xchain713_n28_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain713_n31_α
.Lx751_0:
 .quad 8
# IR_SUSPEND yield+resume
 xchain713_n29_α:
 lea rax, [rip + xchain713_n29_β]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$2F1_γ
 xchain713_n29_β:
 jmp xchain713_n30_α
 xchain713_n30_α:
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
 je proc_lefteven$2F1_ω
 jmp xchain713_n24_α
 xchain713_n30_β:
 jmp proc_lefteven$2F1_ω
 xchain713_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+320]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain713_n33_α
 jmp xchain713_n32_α
 xchain713_n31_β:
 jmp xchain713_n33_α
# IR_VAR_REF
 xchain713_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
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
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx759_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain713_n35_α
.Lx759_0:
 .quad 8
 xchain713_n35_α:
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
 je xchain713_n33_α
 jmp xchain713_n36_α
 xchain713_n35_β:
 jmp xchain713_n33_α
# IR_SUSPEND yield+resume
 xchain713_n36_α:
 lea rax, [rip + xchain713_n36_β]
 mov qword ptr [rbp + 1504], rax
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
jmp qword ptr [rbp + 1504]
proc_lefteven$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_lefteven$2F1_res]
push rax
mov rax, [rbp + 1544]
mov rbp, [rbp + 1560]
jmp rax
proc_lefteven$2F1_ω:
mov rax, [rbp + 1552]
lea rsp, [rbp + 1568]
mov rbp, [rbp + 1560]
jmp rax
  .globl proc_zero$2F1_α
proc_zero$2F1_α:
#=======================================================================================================================
    .global proc_zero$2F1_α
    .global proc_zero$2F1_β
    .global proc_zero$2F1_γ
    .global proc_zero$2F1_ω
  sub rsp, 1024
  mov [rsp + 1000], rcx
  mov [rsp + 1008], rdx
  mov [rsp + 1016], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 968], rsp
  mov rdi, rsp
  mov esi, 944
  mov edx, 992
  call rt_jmp_frame_lexprep2@PLT
proc_zero$2F1_α_body:
lea rax, [rip + xchain763_n11_β]
mov qword ptr [rbp + 944], rax
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
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain763_n2_α
# IR_LIT_INTEGER
 xchain763_n2_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx767_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain763_n3_α
.Lx767_0:
 .quad 2
# IR_LIT_STRING
 xchain763_n3_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx768_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain763_n4_α
.Lx768_0:
 .quad .Lx768_0_s
.Lx768_0_s:
 .string "[]"
 xchain763_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+800]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 808], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+816]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain763_n6_α
 jmp xchain763_n5_α
 xchain763_n4_β:
 jmp xchain763_n6_α
# IR_VAR_REF
 xchain763_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain763_n7_α
# IR_VAR_REF
 xchain763_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain763_n8_α
# IR_LIT_STRING
 xchain763_n7_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx774_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain763_n9_α
.Lx774_0:
 .quad .Lx774_0_s
.Lx774_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain763_n8_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx775_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain763_n10_α
.Lx775_0:
 .quad 3
 xchain763_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 656]
 mov rsi, qword ptr [rip + .Lx776_2]
 jmp .Lx776_3
.Lx776_2:
 .quad .Lx776_2_s
.Lx776_2_s:
 .string "[]"
.Lx776_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain763_n12_α
 jmp xchain763_n11_α
 xchain763_n9_β:
 jmp xchain763_n12_α
# IR_LIT_INTEGER
 xchain763_n10_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx777_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain763_n13_α
.Lx777_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain763_n11_α:
 lea rax, [rip + xchain763_n11_β]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$2F1_γ
 xchain763_n11_β:
 jmp xchain763_n12_α
 xchain763_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+608]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_zero$2F1_ω
 jmp xchain763_n6_α
 xchain763_n12_β:
 jmp proc_zero$2F1_ω
 xchain763_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+464]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain763_n15_α
 jmp xchain763_n14_α
 xchain763_n13_β:
 jmp xchain763_n15_α
# IR_VAR_REF
 xchain763_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
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
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx785_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain763_n17_α
.Lx785_0:
 .quad 0
# IR_VAR_REF
 xchain763_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 976]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain763_n18_α
 xchain763_n18_α:
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
 je xchain763_n15_α
 jmp xchain763_n19_α
 xchain763_n18_β:
 jmp xchain763_n15_α
# IR_VAR_REF
 xchain763_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 976]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain763_n20_α
 xchain763_n20_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
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
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx792_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx792_2
.Lx792_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx792_2
.Lx792_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx792_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx792_2
.Lx792_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx792_2
.Lx792_1:
 call rt_faildescr@PLT
.Lx792_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain763_n15_α
 jmp xchain763_n21_α
 xchain763_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx792_0:
 .quad .Lx792_0_s
.Lx792_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain763_n21_α:
 lea rax, [rip + xchain763_n21_β]
 mov qword ptr [rbp + 944], rax
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
jmp qword ptr [rbp + 944]
proc_zero$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_zero$2F1_res]
push rax
mov rax, [rbp + 1000]
mov rbp, [rbp + 1016]
jmp rax
proc_zero$2F1_ω:
mov rax, [rbp + 1008]
lea rsp, [rbp + 1024]
mov rbp, [rbp + 1016]
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
  lea rsi, [rip + proc_mult$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3616
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
  mov esi, 1888
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
  mov esi, 848
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
  mov esi, 3808
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
  mov esi, 1888
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
  lea rsi, [rip + proc_lefteven$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1536
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
  mov esi, 992
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
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain795_n2_α
# IR_VAR_REF
 xchain795_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain795_n3_α
# IR_VAR_REF
 xchain795_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain795_n4_α
# IR_VAR_REF
 xchain795_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain795_n5_α
# IR_VAR_REF
 xchain795_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain795_n6_α
# IR_VAR_REF
 xchain795_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain795_n7_α
# IR_VAR_REF
 xchain795_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain795_n8_α
# IR_VAR_REF
 xchain795_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain795_n9_α
# IR_VAR_REF
 xchain795_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain795_n10_α
# IR_VAR_REF
 xchain795_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain795_n11_α
# IR_VAR_REF
 xchain795_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain795_n12_α
# IR_VAR_REF
 xchain795_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain795_n13_α
# IR_VAR_REF
 xchain795_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain795_n14_α
# IR_VAR_REF
 xchain795_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain795_n15_α
# IR_VAR_REF
 xchain795_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain795_n16_α
# IR_VAR_REF
 xchain795_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain795_n17_α
 xchain795_n17_α:
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
 mov qword ptr [rbp + 2872], rsp
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx830_5
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx830_2
.Lx830_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx830_2
.Lx830_4:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx830_6
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx830_2
.Lx830_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx830_2
.Lx830_1:
 call rt_faildescr@PLT
.Lx830_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain795_n19_α
 jmp xchain795_n18_α
 xchain795_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2872]
 jmp qword ptr [rsp]
.Lx830_0:
 .quad .Lx830_0_s
.Lx830_0_s:
 .string "top/16"
# IR_LIT_STRING
 xchain795_n18_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [rbp + 2568], rax
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
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain795_n21_α
# IR_LIT_STRING
 xchain795_n21_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx835_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain795_n22_α
.Lx835_0:
 .quad .Lx835_0_s
.Lx835_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain795_n23_α
# IR_LIT_STRING
 xchain795_n23_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx838_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain795_n24_α
.Lx838_0:
 .quad .Lx838_0_s
.Lx838_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain795_n25_α
# IR_LIT_STRING
 xchain795_n25_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx841_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain795_n26_α
.Lx841_0:
 .quad .Lx841_0_s
.Lx841_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain795_n27_α
# IR_LIT_STRING
 xchain795_n27_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx844_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain795_n28_α
.Lx844_0:
 .quad .Lx844_0_s
.Lx844_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain795_n29_α
# IR_LIT_STRING
 xchain795_n29_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx847_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain795_n30_α
.Lx847_0:
 .quad .Lx847_0_s
.Lx847_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain795_n31_α
# IR_LIT_STRING
 xchain795_n31_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx850_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain795_n32_α
.Lx850_0:
 .quad .Lx850_0_s
.Lx850_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain795_n33_α
# IR_LIT_STRING
 xchain795_n33_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx853_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain795_n34_α
.Lx853_0:
 .quad .Lx853_0_s
.Lx853_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain795_n35_α
# IR_LIT_STRING
 xchain795_n35_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx856_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain795_n36_α
.Lx856_0:
 .quad .Lx856_0_s
.Lx856_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain795_n37_α
# IR_LIT_STRING
 xchain795_n37_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx859_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain795_n38_α
.Lx859_0:
 .quad .Lx859_0_s
.Lx859_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain795_n39_α
# IR_LIT_STRING
 xchain795_n39_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx862_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain795_n40_α
.Lx862_0:
 .quad .Lx862_0_s
.Lx862_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain795_n41_α
# IR_LIT_STRING
 xchain795_n41_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx865_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain795_n42_α
.Lx865_0:
 .quad .Lx865_0_s
.Lx865_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain795_n43_α
# IR_LIT_STRING
 xchain795_n43_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx868_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain795_n44_α
.Lx868_0:
 .quad .Lx868_0_s
.Lx868_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain795_n45_α
# IR_LIT_STRING
 xchain795_n45_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx871_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain795_n46_α
.Lx871_0:
 .quad .Lx871_0_s
.Lx871_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain795_n47_α
# IR_LIT_STRING
 xchain795_n47_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx874_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain795_n48_α
.Lx874_0:
 .quad .Lx874_0_s
.Lx874_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain795_n49_α
# IR_LIT_STRING
 xchain795_n49_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx877_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain795_n50_α
.Lx877_0:
 .quad .Lx877_0_s
.Lx877_0_s:
 .string "."
# IR_VAR_REF
 xchain795_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain795_n51_α
# IR_LIT_STRING
 xchain795_n51_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx880_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain795_n52_α
.Lx880_0:
 .quad .Lx880_0_s
.Lx880_0_s:
 .string "[]"
 xchain795_n52_α:
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
 jmp xchain795_n53_α
 xchain795_n52_β:
 jmp main_ω
 xchain795_n53_α:
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
 jmp xchain795_n54_α
 xchain795_n53_β:
 jmp main_ω
 xchain795_n54_α:
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
 jmp xchain795_n55_α
 xchain795_n54_β:
 jmp main_ω
 xchain795_n55_α:
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
 jmp xchain795_n56_α
 xchain795_n55_β:
 jmp main_ω
 xchain795_n56_α:
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
 jmp xchain795_n57_α
 xchain795_n56_β:
 jmp main_ω
 xchain795_n57_α:
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
 jmp xchain795_n58_α
 xchain795_n57_β:
 jmp main_ω
 xchain795_n58_α:
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
 jmp xchain795_n59_α
 xchain795_n58_β:
 jmp main_ω
 xchain795_n59_α:
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
 jmp xchain795_n60_α
 xchain795_n59_β:
 jmp main_ω
 xchain795_n60_α:
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
 jmp xchain795_n61_α
 xchain795_n60_β:
 jmp main_ω
 xchain795_n61_α:
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
 jmp xchain795_n62_α
 xchain795_n61_β:
 jmp main_ω
 xchain795_n62_α:
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
 jmp xchain795_n63_α
 xchain795_n62_β:
 jmp main_ω
 xchain795_n63_α:
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
 jmp xchain795_n64_α
 xchain795_n63_β:
 jmp main_ω
 xchain795_n64_α:
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
 jmp xchain795_n65_α
 xchain795_n64_β:
 jmp main_ω
 xchain795_n65_α:
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
 jmp xchain795_n66_α
 xchain795_n65_β:
 jmp main_ω
 xchain795_n66_α:
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
 jmp xchain795_n67_α
 xchain795_n66_β:
 jmp main_ω
 xchain795_n67_α:
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
 je xchain795_n19_α
 jmp xchain795_n68_α
 xchain795_n67_β:
 jmp xchain795_n19_α
 xchain795_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+224]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn898: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn898]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain795_n17_β
 jmp xchain795_n69_α
 xchain795_n68_β:
 jmp xchain795_n17_β
# IR_LIT_STRING
 xchain795_n69_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx899_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain795_n70_α
.Lx899_0:
 .quad .Lx899_0_s
.Lx899_0_s:
 .string ""
 xchain795_n70_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn901: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn901]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
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
