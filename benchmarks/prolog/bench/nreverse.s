  .intel_syntax noprefix
  .text
  .globl proc_nreverse$2_α
proc_nreverse$2_α:
#=======================================================================================================================
    .global proc_nreverse$2_α
    .global proc_nreverse$2_β
    .global proc_nreverse$2_γ
    .global proc_nreverse$2_ω
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
proc_nreverse$2_α_body:
lea rax, [rip + xchain0_n21_β]
mov qword ptr [rbp + 1248], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nreverse$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n3_α
# IR_VAR_REF
 xchain0_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n4_α
 xchain0_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1120]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_nreverse$2_ω
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n10_α
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n6_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n12_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n13_α
 xchain0_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 304]
 mov rsi, qword ptr [rip + .Lx20_2]
 jmp .Lx20_3
.Lx20_2:
 .quad .Lx20_2_s
.Lx20_2_s:
 .string "[]"
.Lx20_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n17_α
 xchain0_n15_α:
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
 je proc_nreverse$2_ω
 jmp proc_nreverse$2_ω
 xchain0_n15_β:
 jmp proc_nreverse$2_ω
 xchain0_n16_α:
 mov qword ptr [rbp + 848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx27_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx27_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx27_3]
 lea rdx, [rip + .Lx27_4]
 jmp rax
.Lx27_3:
 mov qword ptr [rbp + 856], rsp
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx27_5
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx27_2
.Lx27_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx27_2
.Lx27_4:
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx27_6
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx27_2
.Lx27_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx27_2
.Lx27_1:
 call rt_faildescr@PLT
.Lx27_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n18_α
 xchain0_n16_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 856]
 jmp qword ptr [rsp]
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "nreverse/2"
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n19_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n20_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx31_2]
 jmp .Lx31_3
.Lx31_2:
 .quad .Lx31_2_s
.Lx31_2_s:
 .string "[]"
.Lx31_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n15_α
# IR_LIT_STRING
 xchain0_n20_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n22_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain0_n21_α:
 lea rax, [rip + xchain0_n21_β]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2_γ
 xchain0_n21_β:
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n24_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "[]"
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+688]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+704]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n26_α
 xchain0_n26_α:
 mov qword ptr [rbp + 528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx42_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx42_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx42_3]
 lea rdx, [rip + .Lx42_4]
 jmp rax
.Lx42_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx42_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx42_2
.Lx42_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx42_2
.Lx42_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx42_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx42_2
.Lx42_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx42_2
.Lx42_1:
 call rt_faildescr@PLT
.Lx42_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n16_β
 jmp xchain0_n27_α
 xchain0_n26_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain0_n27_α:
 lea rax, [rip + xchain0_n27_β]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2_γ
 xchain0_n27_β:
 jmp xchain0_n26_β
proc_nreverse$2_res:
add rsp, 8
pop rbp
proc_nreverse$2_β:
jmp qword ptr [rbp + 1248]
proc_nreverse$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nreverse$2_res]
push rax
mov rax, [rbp + 1352]
mov rbp, [rbp + 1368]
jmp rax
proc_nreverse$2_ω:
mov rax, [rbp + 1360]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
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
lea rax, [rip + xchain45_n12_β]
mov qword ptr [rbp + 608], rax
 xchain45_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2_ω
 jmp xchain45_n1_α
 xchain45_n0_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain45_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain45_n2_α
# IR_VAR_REF
 xchain45_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain45_n3_α
 xchain45_n3_α:
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
 je xchain45_n5_α
 jmp xchain45_n4_α
 xchain45_n3_β:
 jmp xchain45_n5_α
# IR_VAR_REF
 xchain45_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain45_n6_α
 xchain45_n5_α:
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
 xchain45_n5_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain45_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain45_n7_α
 xchain45_n7_α:
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
 je xchain45_n5_α
 jmp xchain45_n8_α
 xchain45_n7_β:
 jmp xchain45_n5_α
# IR_VAR_REF
 xchain45_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain45_n9_α
# IR_LIT_STRING
 xchain45_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain45_n10_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "[]"
# IR_VAR_REF
 xchain45_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain45_n11_α
 xchain45_n11_α:
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
 mov rdi, qword ptr [rip + .Lx64_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx64_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx64_3]
 lea rdx, [rip + .Lx64_4]
 jmp rax
.Lx64_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx64_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx64_2
.Lx64_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx64_2
.Lx64_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx64_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx64_2
.Lx64_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx64_2
.Lx64_1:
 call rt_faildescr@PLT
.Lx64_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain45_n5_α
 jmp xchain45_n12_α
 xchain45_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain45_n12_α:
 lea rax, [rip + xchain45_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2_γ
 xchain45_n12_β:
 jmp xchain45_n11_β
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
lea rax, [rip + xchain67_n17_β]
mov qword ptr [rbp + 1376], rax
 xchain67_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain67_n1_α
 xchain67_n0_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain67_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain67_n2_α
# IR_LIT_STRING
 xchain67_n2_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain67_n3_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "[]"
 xchain67_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1264]
 mov rsi, qword ptr [rip + .Lx72_2]
 jmp .Lx72_3
.Lx72_2:
 .quad .Lx72_2_s
.Lx72_2_s:
 .string "[]"
.Lx72_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain67_n5_α
 jmp xchain67_n4_α
 xchain67_n3_β:
 jmp xchain67_n5_α
# IR_VAR_REF
 xchain67_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain67_n6_α
 xchain67_n5_α:
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
 jmp xchain67_n7_α
 xchain67_n5_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain67_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain67_n8_α
# IR_VAR_REF
 xchain67_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain67_n9_α
 xchain67_n8_α:
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
 je xchain67_n5_α
 jmp xchain67_n10_α
 xchain67_n8_β:
 jmp xchain67_n5_α
# IR_VAR_REF
 xchain67_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain67_n11_α
# IR_VAR_REF
 xchain67_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain67_n12_α
# IR_VAR_REF
 xchain67_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain67_n13_α
# IR_VAR_REF
 xchain67_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain67_n14_α
 xchain67_n13_α:
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
 je xchain67_n16_α
 jmp xchain67_n15_α
 xchain67_n13_β:
 jmp xchain67_n16_α
 xchain67_n14_α:
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
 je xchain67_n5_α
 jmp xchain67_n17_α
 xchain67_n14_β:
 jmp xchain67_n5_α
# IR_VAR_REF
 xchain67_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain67_n18_α
 xchain67_n16_α:
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
 xchain67_n16_β:
 jmp proc_$reverse_$3_ω
# IR_SUSPEND yield+resume
 xchain67_n17_α:
 lea rax, [rip + xchain67_n17_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain67_n17_β:
 jmp xchain67_n5_α
# IR_VAR_REF
 xchain67_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain67_n19_α
 xchain67_n19_α:
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
 je xchain67_n16_α
 jmp xchain67_n20_α
 xchain67_n19_β:
 jmp xchain67_n16_α
# IR_VAR_REF
 xchain67_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain67_n21_α
# IR_VAR_REF
 xchain67_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain67_n22_α
 xchain67_n22_α:
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
 je xchain67_n16_α
 jmp xchain67_n23_α
 xchain67_n22_β:
 jmp xchain67_n16_α
# IR_VAR_REF
 xchain67_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain67_n24_α
# IR_LIT_STRING
 xchain67_n24_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain67_n25_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "."
# IR_VAR_REF
 xchain67_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain67_n26_α
# IR_VAR_REF
 xchain67_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain67_n27_α
 xchain67_n27_α:
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
 je xchain67_n16_α
 jmp xchain67_n28_α
 xchain67_n27_β:
 jmp xchain67_n16_α
# IR_VAR_REF
 xchain67_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain67_n29_α
 xchain67_n29_α:
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
 mov rdi, qword ptr [rip + .Lx115_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx115_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx115_3]
 lea rdx, [rip + .Lx115_4]
 jmp rax
.Lx115_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx115_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx115_2
.Lx115_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx115_2
.Lx115_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx115_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx115_2
.Lx115_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx115_2
.Lx115_1:
 call rt_faildescr@PLT
.Lx115_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain67_n16_α
 jmp xchain67_n30_α
 xchain67_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain67_n30_α:
 lea rax, [rip + xchain67_n30_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain67_n30_β:
 jmp xchain67_n29_β
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
  .globl proc_concatenate$3_α
proc_concatenate$3_α:
#=======================================================================================================================
    .global proc_concatenate$3_α
    .global proc_concatenate$3_β
    .global proc_concatenate$3_γ
    .global proc_concatenate$3_ω
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
proc_concatenate$3_α_body:
lea rax, [rip + xchain118_n27_β]
mov qword ptr [rbp + 1280], rax
 xchain118_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_concatenate$3_ω
 jmp xchain118_n1_α
 xchain118_n0_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain118_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain118_n2_α
# IR_VAR_REF
 xchain118_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain118_n3_α
# IR_VAR_REF
 xchain118_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain118_n4_α
 xchain118_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1152]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain118_n6_α
 jmp xchain118_n5_α
 xchain118_n4_β:
 jmp xchain118_n6_α
# IR_VAR_REF
 xchain118_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain118_n7_α
 xchain118_n6_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_concatenate$3_ω
 jmp xchain118_n8_α
 xchain118_n6_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain118_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain118_n9_α
# IR_VAR_REF
 xchain118_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain118_n10_α
 xchain118_n9_α:
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
 je xchain118_n6_α
 jmp xchain118_n11_α
 xchain118_n9_β:
 jmp xchain118_n6_α
# IR_LIT_STRING
 xchain118_n10_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain118_n12_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "[]"
# IR_VAR_REF
 xchain118_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain118_n13_α
 xchain118_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 mov rsi, qword ptr [rip + .Lx138_2]
 jmp .Lx138_3
.Lx138_2:
 .quad .Lx138_2_s
.Lx138_2_s:
 .string "[]"
.Lx138_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain118_n15_α
 jmp xchain118_n14_α
 xchain118_n12_β:
 jmp xchain118_n15_α
# IR_VAR_REF
 xchain118_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain118_n16_α
# IR_VAR_REF
 xchain118_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain118_n17_α
 xchain118_n15_α:
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
 je proc_concatenate$3_ω
 jmp proc_concatenate$3_ω
 xchain118_n15_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain118_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain118_n18_α
# IR_VAR_REF
 xchain118_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain118_n19_α
 xchain118_n18_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+848]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain118_n6_α
 jmp xchain118_n20_α
 xchain118_n18_β:
 jmp xchain118_n6_α
 xchain118_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain118_n15_α
 jmp xchain118_n21_α
 xchain118_n19_β:
 jmp xchain118_n15_α
# IR_VAR_REF
 xchain118_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain118_n22_α
# IR_VAR_REF
 xchain118_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain118_n23_α
# IR_VAR_REF
 xchain118_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain118_n24_α
# IR_VAR_REF
 xchain118_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain118_n25_α
# IR_VAR_REF
 xchain118_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain118_n26_α
 xchain118_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain118_n15_α
 jmp xchain118_n27_α
 xchain118_n25_β:
 jmp xchain118_n15_α
 xchain118_n26_α:
 mov qword ptr [rbp + 672], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx162_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx162_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx162_3]
 lea rdx, [rip + .Lx162_4]
 jmp rax
.Lx162_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx162_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx162_2
.Lx162_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx162_2
.Lx162_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx162_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx162_2
.Lx162_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx162_2
.Lx162_1:
 call rt_faildescr@PLT
.Lx162_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain118_n6_α
 jmp xchain118_n28_α
 xchain118_n26_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain118_n27_α:
 lea rax, [rip + xchain118_n27_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$3_γ
 xchain118_n27_β:
 jmp xchain118_n15_α
# IR_SUSPEND yield+resume
 xchain118_n28_α:
 lea rax, [rip + xchain118_n28_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$3_γ
 xchain118_n28_β:
 jmp xchain118_n26_β
proc_concatenate$3_res:
add rsp, 8
pop rbp
proc_concatenate$3_β:
jmp qword ptr [rbp + 1280]
proc_concatenate$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_concatenate$3_res]
push rax
mov rax, [rbp + 1384]
mov rbp, [rbp + 1400]
jmp rax
proc_concatenate$3_ω:
mov rax, [rbp + 1392]
lea rsp, [rbp + 1408]
mov rbp, [rbp + 1400]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "nreverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_nreverse$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1344
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "reverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_reverse$2_α]
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
  .Lstartup_pname2: .string "$reverse_/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_$reverse_$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1472
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "concatenate/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_concatenate$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1376
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
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
  mov qword ptr [rsp + 4760], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain167_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n1_α
 xchain167_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain167_n1_α:
 mov qword ptr [rbp + 4688], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain167_n2_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n2_α:
 mov qword ptr [rbp + 4576], 6
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain167_n3_α
.Lx170_0:
 .quad 1
# IR_LIT_STRING
 xchain167_n3_α:
 mov qword ptr [rbp + 4544], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain167_n4_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n4_α:
 mov qword ptr [rbp + 4432], 6
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain167_n5_α
.Lx172_0:
 .quad 2
# IR_LIT_STRING
 xchain167_n5_α:
 mov qword ptr [rbp + 4400], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain167_n6_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n6_α:
 mov qword ptr [rbp + 4288], 6
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain167_n7_α
.Lx174_0:
 .quad 3
# IR_LIT_STRING
 xchain167_n7_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain167_n8_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n8_α:
 mov qword ptr [rbp + 4144], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain167_n9_α
.Lx176_0:
 .quad 4
# IR_LIT_STRING
 xchain167_n9_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain167_n10_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n10_α:
 mov qword ptr [rbp + 4000], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 4008], rax
 jmp xchain167_n11_α
.Lx178_0:
 .quad 5
# IR_LIT_STRING
 xchain167_n11_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain167_n12_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n12_α:
 mov qword ptr [rbp + 3856], 6
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain167_n13_α
.Lx180_0:
 .quad 6
# IR_LIT_STRING
 xchain167_n13_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain167_n14_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n14_α:
 mov qword ptr [rbp + 3712], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain167_n15_α
.Lx182_0:
 .quad 7
# IR_LIT_STRING
 xchain167_n15_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain167_n16_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n16_α:
 mov qword ptr [rbp + 3568], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 3576], rax
 jmp xchain167_n17_α
.Lx184_0:
 .quad 8
# IR_LIT_STRING
 xchain167_n17_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain167_n18_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n18_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain167_n19_α
.Lx186_0:
 .quad 9
# IR_LIT_STRING
 xchain167_n19_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain167_n20_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n20_α:
 mov qword ptr [rbp + 3280], 6
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain167_n21_α
.Lx188_0:
 .quad 10
# IR_LIT_STRING
 xchain167_n21_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain167_n22_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n22_α:
 mov qword ptr [rbp + 3136], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain167_n23_α
.Lx190_0:
 .quad 11
# IR_LIT_STRING
 xchain167_n23_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain167_n24_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n24_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain167_n25_α
.Lx192_0:
 .quad 12
# IR_LIT_STRING
 xchain167_n25_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain167_n26_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n26_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain167_n27_α
.Lx194_0:
 .quad 13
# IR_LIT_STRING
 xchain167_n27_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain167_n28_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n28_α:
 mov qword ptr [rbp + 2704], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain167_n29_α
.Lx196_0:
 .quad 14
# IR_LIT_STRING
 xchain167_n29_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain167_n30_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n30_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain167_n31_α
.Lx198_0:
 .quad 15
# IR_LIT_STRING
 xchain167_n31_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain167_n32_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n32_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain167_n33_α
.Lx200_0:
 .quad 16
# IR_LIT_STRING
 xchain167_n33_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain167_n34_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n34_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain167_n35_α
.Lx202_0:
 .quad 17
# IR_LIT_STRING
 xchain167_n35_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain167_n36_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n36_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain167_n37_α
.Lx204_0:
 .quad 18
# IR_LIT_STRING
 xchain167_n37_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain167_n38_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n38_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain167_n39_α
.Lx206_0:
 .quad 19
# IR_LIT_STRING
 xchain167_n39_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain167_n40_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n40_α:
 mov qword ptr [rbp + 1840], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain167_n41_α
.Lx208_0:
 .quad 20
# IR_LIT_STRING
 xchain167_n41_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain167_n42_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n42_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain167_n43_α
.Lx210_0:
 .quad 21
# IR_LIT_STRING
 xchain167_n43_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain167_n44_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n44_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain167_n45_α
.Lx212_0:
 .quad 22
# IR_LIT_STRING
 xchain167_n45_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain167_n46_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n46_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain167_n47_α
.Lx214_0:
 .quad 23
# IR_LIT_STRING
 xchain167_n47_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain167_n48_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n48_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain167_n49_α
.Lx216_0:
 .quad 24
# IR_LIT_STRING
 xchain167_n49_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain167_n50_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n50_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain167_n51_α
.Lx218_0:
 .quad 25
# IR_LIT_STRING
 xchain167_n51_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain167_n52_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n52_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain167_n53_α
.Lx220_0:
 .quad 26
# IR_LIT_STRING
 xchain167_n53_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain167_n54_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n54_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain167_n55_α
.Lx222_0:
 .quad 27
# IR_LIT_STRING
 xchain167_n55_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain167_n56_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n56_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain167_n57_α
.Lx224_0:
 .quad 28
# IR_LIT_STRING
 xchain167_n57_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain167_n58_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n58_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain167_n59_α
.Lx226_0:
 .quad 29
# IR_LIT_STRING
 xchain167_n59_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain167_n60_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain167_n60_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain167_n61_α
.Lx228_0:
 .quad 30
# IR_LIT_STRING
 xchain167_n61_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain167_n62_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "[]"
 xchain167_n62_α:
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
 jmp xchain167_n63_α
 xchain167_n62_β:
 jmp main_ω
 xchain167_n63_α:
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
 jmp xchain167_n64_α
 xchain167_n63_β:
 jmp main_ω
 xchain167_n64_α:
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
 jmp xchain167_n65_α
 xchain167_n64_β:
 jmp main_ω
 xchain167_n65_α:
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
 jmp xchain167_n66_α
 xchain167_n65_β:
 jmp main_ω
 xchain167_n66_α:
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
 jmp xchain167_n67_α
 xchain167_n66_β:
 jmp main_ω
 xchain167_n67_α:
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
 jmp xchain167_n68_α
 xchain167_n67_β:
 jmp main_ω
 xchain167_n68_α:
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
 jmp xchain167_n69_α
 xchain167_n68_β:
 jmp main_ω
 xchain167_n69_α:
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
 je main_ω
 jmp xchain167_n70_α
 xchain167_n69_β:
 jmp main_ω
 xchain167_n70_α:
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
 je main_ω
 jmp xchain167_n71_α
 xchain167_n70_β:
 jmp main_ω
 xchain167_n71_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1744]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1760]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1776]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n72_α
 xchain167_n71_β:
 jmp main_ω
 xchain167_n72_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1904]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1912], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1920]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1888]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n73_α
 xchain167_n72_β:
 jmp main_ω
 xchain167_n73_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+2048]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+1872] -> [zr+2064]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n74_α
 xchain167_n73_β:
 jmp main_ω
 xchain167_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2176]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2192]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2200], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+2208]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 2216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n75_α
 xchain167_n74_β:
 jmp main_ω
 xchain167_n75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2336]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2344], rax
# marshal arg2 = producer-box slot [zr+2160] -> [zr+2352]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n76_α
 xchain167_n75_β:
 jmp main_ω
 xchain167_n76_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2464]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2416] -> [zr+2480]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2488], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2496]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n77_α
 xchain167_n76_β:
 jmp main_ω
 xchain167_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2608]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2624]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2632], rax
# marshal arg2 = producer-box slot [zr+2448] -> [zr+2640]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n78_α
 xchain167_n77_β:
 jmp main_ω
 xchain167_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2768]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2776], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2784]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n79_α
 xchain167_n78_β:
 jmp main_ω
 xchain167_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2896]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2904], rax
# marshal arg1 = producer-box slot [zr+2848] -> [zr+2912]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2920], rax
# marshal arg2 = producer-box slot [zr+2736] -> [zr+2928]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n80_α
 xchain167_n79_β:
 jmp main_ω
 xchain167_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3040]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+3056]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 3064], rax
# marshal arg2 = producer-box slot [zr+2880] -> [zr+3072]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 3080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n81_α
 xchain167_n80_β:
 jmp main_ω
 xchain167_n81_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3184]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3192], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3200]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3208], rax
# marshal arg2 = producer-box slot [zr+3024] -> [zr+3216]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 3224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3184]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n82_α
 xchain167_n81_β:
 jmp main_ω
 xchain167_n82_α:
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
# marshal arg2 = producer-box slot [zr+3168] -> [zr+3360]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3328]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n83_α
 xchain167_n82_β:
 jmp main_ω
 xchain167_n83_α:
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
 je main_ω
 jmp xchain167_n84_α
 xchain167_n83_β:
 jmp main_ω
 xchain167_n84_α:
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
 je main_ω
 jmp xchain167_n85_α
 xchain167_n84_β:
 jmp main_ω
 xchain167_n85_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3760]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3768], rax
# marshal arg1 = producer-box slot [zr+3712] -> [zr+3776]
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3784], rax
# marshal arg2 = producer-box slot [zr+3600] -> [zr+3792]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3760]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n86_α
 xchain167_n85_β:
 jmp main_ω
 xchain167_n86_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3904]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3912], rax
# marshal arg1 = producer-box slot [zr+3856] -> [zr+3920]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3928], rax
# marshal arg2 = producer-box slot [zr+3744] -> [zr+3936]
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n87_α
 xchain167_n86_β:
 jmp main_ω
 xchain167_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4048]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4056], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+4064]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 4072], rax
# marshal arg2 = producer-box slot [zr+3888] -> [zr+4080]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 4088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4048]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n88_α
 xchain167_n87_β:
 jmp main_ω
 xchain167_n88_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4256] -> [zr+4192]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4200], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4208]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4216], rax
# marshal arg2 = producer-box slot [zr+4032] -> [zr+4224]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 4232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4192]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n89_α
 xchain167_n88_β:
 jmp main_ω
 xchain167_n89_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4336]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4344], rax
# marshal arg1 = producer-box slot [zr+4288] -> [zr+4352]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4360], rax
# marshal arg2 = producer-box slot [zr+4176] -> [zr+4368]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n90_α
 xchain167_n89_β:
 jmp main_ω
 xchain167_n90_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4544] -> [zr+4480]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4488], rax
# marshal arg1 = producer-box slot [zr+4432] -> [zr+4496]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4504], rax
# marshal arg2 = producer-box slot [zr+4320] -> [zr+4512]
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 4520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain167_n91_α
 xchain167_n90_β:
 jmp main_ω
 xchain167_n91_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4688] -> [zr+4624]
 mov rax, qword ptr [rbp + 4688]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4696]
 mov qword ptr [rbp + 4632], rax
# marshal arg1 = producer-box slot [zr+4576] -> [zr+4640]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4648], rax
# marshal arg2 = producer-box slot [zr+4464] -> [zr+4656]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je xchain167_n93_α
 jmp xchain167_n92_α
 xchain167_n91_β:
 jmp xchain167_n93_α
# IR_VAR_REF
 xchain167_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4768]
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain167_n94_α
 xchain167_n93_α:
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
 xchain167_n93_β:
 jmp main_ω
 xchain167_n94_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx264_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx264_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx264_3]
 lea rdx, [rip + .Lx264_4]
 jmp rax
.Lx264_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx264_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx264_2
.Lx264_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx264_2
.Lx264_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx264_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx264_2
.Lx264_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx264_2
.Lx264_1:
 call rt_faildescr@PLT
.Lx264_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain167_n93_α
 jmp xchain167_n95_α
 xchain167_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "nreverse/2"
# IR_VAR
 xchain167_n95_α:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 264], rax
 jmp xchain167_n96_α
 xchain167_n96_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn268: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain167_n94_β
 jmp xchain167_n97_α
 xchain167_n96_β:
 jmp xchain167_n94_β
# IR_LIT_STRING
 xchain167_n97_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain167_n98_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string ""
 xchain167_n98_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn271: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn271]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain167_n94_β
 jmp xchain167_n99_α
 xchain167_n98_β:
 jmp xchain167_n94_β
# IR_MOVE_LABEL
 xchain167_n99_α:
 lea rax, [rip + xchain167_n94_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain167_n100_α:
 jmp qword ptr [rbp + 32]
 xchain167_n100_β:
 jmp main_ω
main_β:
jmp xchain167_n100_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 4760]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 4760]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
