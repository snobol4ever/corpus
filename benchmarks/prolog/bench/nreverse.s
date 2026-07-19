  .intel_syntax noprefix
  .text
  .globl proc_nreverse$2_α
proc_nreverse$2_α:
#=======================================================================================================================
    .global proc_nreverse$2_α
    .global proc_nreverse$2_β
    .global proc_nreverse$2_γ
    .global proc_nreverse$2_ω
  sub rsp, 1472
  mov [rsp + 1448], rcx
  mov [rsp + 1456], rdx
  mov [rsp + 1464], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1440
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1368], rsp
  mov rdi, rsp
  mov esi, 1440
  call rt_jmp_frame_lexprep@PLT
proc_nreverse$2_α_body:
lea rax, [rip + xchain0_n22_β]
mov qword ptr [rbp + 1344], rax
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
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n4_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1264]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1272], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1280]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1104]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
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
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n12_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n13_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "[]"
 xchain0_n12_α:
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
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
 xchain0_n13_α:
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
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n18_α
 xchain0_n16_α:
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
 xchain0_n16_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n20_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "[]"
 xchain0_n19_α:
 mov qword ptr [rbp + 848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx30_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx30_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx30_3]
 lea rdx, [rip + .Lx30_4]
 jmp rax
.Lx30_3:
 mov qword ptr [rbp + 856], rsp
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx30_5
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx30_2
.Lx30_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx30_2
.Lx30_4:
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx30_6
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx30_2
.Lx30_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx30_2
.Lx30_1:
 call rt_faildescr@PLT
.Lx30_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 856]
 jmp qword ptr [rsp]
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "nreverse/2"
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n23_α
# IR_SUSPEND yield+resume
 xchain0_n22_α:
 lea rax, [rip + xchain0_n22_β]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2_γ
 xchain0_n22_β:
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n24_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n25_α
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n26_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "[]"
 xchain0_n26_α:
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
 je xchain0_n7_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n28_α
 xchain0_n28_α:
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
 mov rdi, qword ptr [rip + .Lx44_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx44_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx44_3]
 lea rdx, [rip + .Lx44_4]
 jmp rax
.Lx44_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx44_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx44_2
.Lx44_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx44_2
.Lx44_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx44_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx44_2
.Lx44_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx44_2
.Lx44_1:
 call rt_faildescr@PLT
.Lx44_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n19_β
 jmp xchain0_n29_α
 xchain0_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain0_n29_α:
 lea rax, [rip + xchain0_n29_β]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2_γ
 xchain0_n29_β:
 jmp xchain0_n28_β
proc_nreverse$2_res:
add rsp, 8
pop rbp
proc_nreverse$2_β:
jmp qword ptr [rbp + 1344]
proc_nreverse$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nreverse$2_res]
push rax
mov rax, [rbp + 1448]
mov rbp, [rbp + 1464]
jmp rax
proc_nreverse$2_ω:
mov rax, [rbp + 1456]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
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
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_reverse$2_α_body:
lea rax, [rip + xchain47_n12_β]
mov qword ptr [rbp + 608], rax
 xchain47_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2_ω
 jmp xchain47_n1_α
 xchain47_n0_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain47_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain47_n2_α
# IR_VAR_REF
 xchain47_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain47_n3_α
 xchain47_n3_α:
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
 je xchain47_n5_α
 jmp xchain47_n4_α
 xchain47_n3_β:
 jmp xchain47_n5_α
# IR_VAR_REF
 xchain47_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain47_n6_α
 xchain47_n5_α:
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
 xchain47_n5_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain47_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain47_n7_α
 xchain47_n7_α:
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
 je xchain47_n5_α
 jmp xchain47_n8_α
 xchain47_n7_β:
 jmp xchain47_n5_α
# IR_VAR_REF
 xchain47_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain47_n9_α
# IR_LIT_STRING
 xchain47_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain47_n10_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "[]"
# IR_VAR_REF
 xchain47_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain47_n11_α
 xchain47_n11_α:
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
 mov rdi, qword ptr [rip + .Lx66_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx66_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx66_3]
 lea rdx, [rip + .Lx66_4]
 jmp rax
.Lx66_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx66_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx66_2
.Lx66_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx66_2
.Lx66_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx66_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx66_2
.Lx66_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx66_2
.Lx66_1:
 call rt_faildescr@PLT
.Lx66_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain47_n5_α
 jmp xchain47_n12_α
 xchain47_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain47_n12_α:
 lea rax, [rip + xchain47_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2_γ
 xchain47_n12_β:
 jmp xchain47_n11_β
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
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_$reverse_$3_α_body:
lea rax, [rip + xchain69_n16_β]
mov qword ptr [rbp + 1472], rax
 xchain69_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain69_n1_α
 xchain69_n0_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain69_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain69_n2_α
# IR_LIT_STRING
 xchain69_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain69_n3_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "[]"
 xchain69_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain69_n5_α
 jmp xchain69_n4_α
 xchain69_n3_β:
 jmp xchain69_n5_α
# IR_VAR_REF
 xchain69_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain69_n6_α
 xchain69_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain69_n7_α
 xchain69_n5_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain69_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain69_n8_α
# IR_VAR_REF
 xchain69_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain69_n9_α
 xchain69_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain69_n5_α
 jmp xchain69_n10_α
 xchain69_n8_β:
 jmp xchain69_n5_α
# IR_LIT_STRING
 xchain69_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain69_n11_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "."
# IR_VAR_REF
 xchain69_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain69_n12_α
# IR_VAR_REF
 xchain69_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain69_n13_α
# IR_VAR_REF
 xchain69_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain69_n14_α
# IR_VAR_REF
 xchain69_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain69_n15_α
 xchain69_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain69_n5_α
 jmp xchain69_n16_α
 xchain69_n14_β:
 jmp xchain69_n5_α
 xchain69_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain69_n18_α
 jmp xchain69_n17_α
 xchain69_n15_β:
 jmp xchain69_n18_α
# IR_SUSPEND yield+resume
 xchain69_n16_α:
 lea rax, [rip + xchain69_n16_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain69_n16_β:
 jmp xchain69_n5_α
 xchain69_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain69_n18_α
 jmp xchain69_n19_α
 xchain69_n17_β:
 jmp xchain69_n18_α
 xchain69_n18_α:
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
 xchain69_n18_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain69_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain69_n20_α
# IR_VAR_REF
 xchain69_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain69_n21_α
 xchain69_n21_α:
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
 je xchain69_n18_α
 jmp xchain69_n22_α
 xchain69_n21_β:
 jmp xchain69_n18_α
# IR_VAR_REF
 xchain69_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain69_n23_α
# IR_VAR_REF
 xchain69_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain69_n24_α
 xchain69_n24_α:
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
 je xchain69_n18_α
 jmp xchain69_n25_α
 xchain69_n24_β:
 jmp xchain69_n18_α
# IR_VAR_REF
 xchain69_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain69_n26_α
# IR_LIT_STRING
 xchain69_n26_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain69_n27_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "."
# IR_VAR_REF
 xchain69_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain69_n28_α
# IR_VAR_REF
 xchain69_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain69_n29_α
 xchain69_n29_α:
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
 je xchain69_n18_α
 jmp xchain69_n30_α
 xchain69_n29_β:
 jmp xchain69_n18_α
# IR_VAR_REF
 xchain69_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain69_n31_α
 xchain69_n31_α:
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
 je xchain69_n18_α
 jmp xchain69_n32_α
 xchain69_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain69_n32_α:
 lea rax, [rip + xchain69_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain69_n32_β:
 jmp xchain69_n31_β
proc_$reverse_$3_res:
add rsp, 8
pop rbp
proc_$reverse_$3_β:
jmp qword ptr [rbp + 1472]
proc_$reverse_$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_$reverse_$3_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_$reverse_$3_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
jmp rax
  .globl proc_concatenate$3_α
proc_concatenate$3_α:
#=======================================================================================================================
    .global proc_concatenate$3_α
    .global proc_concatenate$3_β
    .global proc_concatenate$3_γ
    .global proc_concatenate$3_ω
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_concatenate$3_α_body:
lea rax, [rip + xchain122_n28_β]
mov qword ptr [rbp + 1472], rax
 xchain122_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_concatenate$3_ω
 jmp xchain122_n1_α
 xchain122_n0_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain122_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain122_n2_α
# IR_LIT_STRING
 xchain122_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain122_n3_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
# IR_VAR_REF
 xchain122_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain122_n4_α
# IR_VAR_REF
 xchain122_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain122_n5_α
 xchain122_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1392]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1408]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain122_n7_α
 jmp xchain122_n6_α
 xchain122_n5_β:
 jmp xchain122_n7_α
 xchain122_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1232]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain122_n7_α
 jmp xchain122_n8_α
 xchain122_n6_β:
 jmp xchain122_n7_α
 xchain122_n7_α:
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
 jmp xchain122_n9_α
 xchain122_n7_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain122_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain122_n10_α
# IR_VAR_REF
 xchain122_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain122_n11_α
# IR_VAR_REF
 xchain122_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain122_n12_α
# IR_LIT_STRING
 xchain122_n11_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain122_n13_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "[]"
 xchain122_n12_α:
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
 je xchain122_n7_α
 jmp xchain122_n14_α
 xchain122_n12_β:
 jmp xchain122_n7_α
 xchain122_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain122_n16_α
 jmp xchain122_n15_α
 xchain122_n13_β:
 jmp xchain122_n16_α
# IR_VAR_REF
 xchain122_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain122_n17_α
# IR_VAR_REF
 xchain122_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain122_n18_α
 xchain122_n16_α:
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
 xchain122_n16_β:
 jmp proc_concatenate$3_ω
# IR_LIT_STRING
 xchain122_n17_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain122_n19_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "."
# IR_VAR_REF
 xchain122_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain122_n20_α
# IR_VAR_REF
 xchain122_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain122_n21_α
 xchain122_n20_α:
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
 je xchain122_n16_α
 jmp xchain122_n22_α
 xchain122_n20_β:
 jmp xchain122_n16_α
# IR_VAR_REF
 xchain122_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain122_n23_α
# IR_VAR_REF
 xchain122_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain122_n24_α
 xchain122_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+992]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+1008]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain122_n7_α
 jmp xchain122_n25_α
 xchain122_n23_β:
 jmp xchain122_n7_α
# IR_VAR_REF
 xchain122_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain122_n26_α
 xchain122_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+832]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain122_n7_α
 jmp xchain122_n27_α
 xchain122_n25_β:
 jmp xchain122_n7_α
 xchain122_n26_α:
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
 je xchain122_n16_α
 jmp xchain122_n28_α
 xchain122_n26_β:
 jmp xchain122_n16_α
# IR_VAR_REF
 xchain122_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain122_n29_α
# IR_SUSPEND yield+resume
 xchain122_n28_α:
 lea rax, [rip + xchain122_n28_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$3_γ
 xchain122_n28_β:
 jmp xchain122_n16_α
# IR_VAR_REF
 xchain122_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain122_n30_α
# IR_VAR_REF
 xchain122_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain122_n31_α
 xchain122_n31_α:
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
 mov rdi, qword ptr [rip + .Lx172_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx172_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx172_3]
 lea rdx, [rip + .Lx172_4]
 jmp rax
.Lx172_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx172_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx172_2
.Lx172_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx172_2
.Lx172_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx172_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx172_2
.Lx172_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx172_2
.Lx172_1:
 call rt_faildescr@PLT
.Lx172_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain122_n7_α
 jmp xchain122_n32_α
 xchain122_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain122_n32_α:
 lea rax, [rip + xchain122_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$3_γ
 xchain122_n32_β:
 jmp xchain122_n31_β
proc_concatenate$3_res:
add rsp, 8
pop rbp
proc_concatenate$3_β:
jmp qword ptr [rbp + 1472]
proc_concatenate$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_concatenate$3_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_concatenate$3_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
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
  mov esi, 1440
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
  mov esi, 1568
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
  mov esi, 1568
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
 xchain175_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain175_n1_α
 xchain175_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain175_n1_α:
 mov qword ptr [rbp + 4688], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain175_n2_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n2_α:
 mov qword ptr [rbp + 4576], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain175_n3_α
.Lx178_0:
 .quad 1
# IR_LIT_STRING
 xchain175_n3_α:
 mov qword ptr [rbp + 4544], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain175_n4_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n4_α:
 mov qword ptr [rbp + 4432], 6
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain175_n5_α
.Lx180_0:
 .quad 2
# IR_LIT_STRING
 xchain175_n5_α:
 mov qword ptr [rbp + 4400], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain175_n6_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n6_α:
 mov qword ptr [rbp + 4288], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain175_n7_α
.Lx182_0:
 .quad 3
# IR_LIT_STRING
 xchain175_n7_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain175_n8_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n8_α:
 mov qword ptr [rbp + 4144], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain175_n9_α
.Lx184_0:
 .quad 4
# IR_LIT_STRING
 xchain175_n9_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain175_n10_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n10_α:
 mov qword ptr [rbp + 4000], 6
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 4008], rax
 jmp xchain175_n11_α
.Lx186_0:
 .quad 5
# IR_LIT_STRING
 xchain175_n11_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain175_n12_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n12_α:
 mov qword ptr [rbp + 3856], 6
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain175_n13_α
.Lx188_0:
 .quad 6
# IR_LIT_STRING
 xchain175_n13_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain175_n14_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n14_α:
 mov qword ptr [rbp + 3712], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain175_n15_α
.Lx190_0:
 .quad 7
# IR_LIT_STRING
 xchain175_n15_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain175_n16_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n16_α:
 mov qword ptr [rbp + 3568], 6
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [rbp + 3576], rax
 jmp xchain175_n17_α
.Lx192_0:
 .quad 8
# IR_LIT_STRING
 xchain175_n17_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain175_n18_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n18_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain175_n19_α
.Lx194_0:
 .quad 9
# IR_LIT_STRING
 xchain175_n19_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain175_n20_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n20_α:
 mov qword ptr [rbp + 3280], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain175_n21_α
.Lx196_0:
 .quad 10
# IR_LIT_STRING
 xchain175_n21_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain175_n22_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n22_α:
 mov qword ptr [rbp + 3136], 6
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain175_n23_α
.Lx198_0:
 .quad 11
# IR_LIT_STRING
 xchain175_n23_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain175_n24_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n24_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain175_n25_α
.Lx200_0:
 .quad 12
# IR_LIT_STRING
 xchain175_n25_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain175_n26_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n26_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain175_n27_α
.Lx202_0:
 .quad 13
# IR_LIT_STRING
 xchain175_n27_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain175_n28_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n28_α:
 mov qword ptr [rbp + 2704], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain175_n29_α
.Lx204_0:
 .quad 14
# IR_LIT_STRING
 xchain175_n29_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain175_n30_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n30_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain175_n31_α
.Lx206_0:
 .quad 15
# IR_LIT_STRING
 xchain175_n31_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain175_n32_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n32_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain175_n33_α
.Lx208_0:
 .quad 16
# IR_LIT_STRING
 xchain175_n33_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain175_n34_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n34_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain175_n35_α
.Lx210_0:
 .quad 17
# IR_LIT_STRING
 xchain175_n35_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain175_n36_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n36_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain175_n37_α
.Lx212_0:
 .quad 18
# IR_LIT_STRING
 xchain175_n37_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain175_n38_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n38_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain175_n39_α
.Lx214_0:
 .quad 19
# IR_LIT_STRING
 xchain175_n39_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain175_n40_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n40_α:
 mov qword ptr [rbp + 1840], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain175_n41_α
.Lx216_0:
 .quad 20
# IR_LIT_STRING
 xchain175_n41_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain175_n42_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n42_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain175_n43_α
.Lx218_0:
 .quad 21
# IR_LIT_STRING
 xchain175_n43_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain175_n44_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n44_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain175_n45_α
.Lx220_0:
 .quad 22
# IR_LIT_STRING
 xchain175_n45_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain175_n46_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n46_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain175_n47_α
.Lx222_0:
 .quad 23
# IR_LIT_STRING
 xchain175_n47_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain175_n48_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n48_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain175_n49_α
.Lx224_0:
 .quad 24
# IR_LIT_STRING
 xchain175_n49_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain175_n50_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n50_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain175_n51_α
.Lx226_0:
 .quad 25
# IR_LIT_STRING
 xchain175_n51_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain175_n52_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n52_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain175_n53_α
.Lx228_0:
 .quad 26
# IR_LIT_STRING
 xchain175_n53_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain175_n54_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n54_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain175_n55_α
.Lx230_0:
 .quad 27
# IR_LIT_STRING
 xchain175_n55_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain175_n56_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n56_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain175_n57_α
.Lx232_0:
 .quad 28
# IR_LIT_STRING
 xchain175_n57_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain175_n58_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n58_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain175_n59_α
.Lx234_0:
 .quad 29
# IR_LIT_STRING
 xchain175_n59_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain175_n60_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain175_n60_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain175_n61_α
.Lx236_0:
 .quad 30
# IR_LIT_STRING
 xchain175_n61_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain175_n62_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "[]"
 xchain175_n62_α:
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
 jmp xchain175_n63_α
 xchain175_n62_β:
 jmp main_ω
 xchain175_n63_α:
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
 jmp xchain175_n64_α
 xchain175_n63_β:
 jmp main_ω
 xchain175_n64_α:
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
 jmp xchain175_n65_α
 xchain175_n64_β:
 jmp main_ω
 xchain175_n65_α:
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
 jmp xchain175_n66_α
 xchain175_n65_β:
 jmp main_ω
 xchain175_n66_α:
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
 jmp xchain175_n67_α
 xchain175_n66_β:
 jmp main_ω
 xchain175_n67_α:
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
 jmp xchain175_n68_α
 xchain175_n67_β:
 jmp main_ω
 xchain175_n68_α:
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
 jmp xchain175_n69_α
 xchain175_n68_β:
 jmp main_ω
 xchain175_n69_α:
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
 jmp xchain175_n70_α
 xchain175_n69_β:
 jmp main_ω
 xchain175_n70_α:
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
 jmp xchain175_n71_α
 xchain175_n70_β:
 jmp main_ω
 xchain175_n71_α:
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
 jmp xchain175_n72_α
 xchain175_n71_β:
 jmp main_ω
 xchain175_n72_α:
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
 jmp xchain175_n73_α
 xchain175_n72_β:
 jmp main_ω
 xchain175_n73_α:
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
 jmp xchain175_n74_α
 xchain175_n73_β:
 jmp main_ω
 xchain175_n74_α:
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
 jmp xchain175_n75_α
 xchain175_n74_β:
 jmp main_ω
 xchain175_n75_α:
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
 jmp xchain175_n76_α
 xchain175_n75_β:
 jmp main_ω
 xchain175_n76_α:
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
 jmp xchain175_n77_α
 xchain175_n76_β:
 jmp main_ω
 xchain175_n77_α:
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
 jmp xchain175_n78_α
 xchain175_n77_β:
 jmp main_ω
 xchain175_n78_α:
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
 jmp xchain175_n79_α
 xchain175_n78_β:
 jmp main_ω
 xchain175_n79_α:
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
 jmp xchain175_n80_α
 xchain175_n79_β:
 jmp main_ω
 xchain175_n80_α:
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
 jmp xchain175_n81_α
 xchain175_n80_β:
 jmp main_ω
 xchain175_n81_α:
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
 jmp xchain175_n82_α
 xchain175_n81_β:
 jmp main_ω
 xchain175_n82_α:
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
 jmp xchain175_n83_α
 xchain175_n82_β:
 jmp main_ω
 xchain175_n83_α:
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
 jmp xchain175_n84_α
 xchain175_n83_β:
 jmp main_ω
 xchain175_n84_α:
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
 jmp xchain175_n85_α
 xchain175_n84_β:
 jmp main_ω
 xchain175_n85_α:
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
 jmp xchain175_n86_α
 xchain175_n85_β:
 jmp main_ω
 xchain175_n86_α:
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
 jmp xchain175_n87_α
 xchain175_n86_β:
 jmp main_ω
 xchain175_n87_α:
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
 jmp xchain175_n88_α
 xchain175_n87_β:
 jmp main_ω
 xchain175_n88_α:
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
 jmp xchain175_n89_α
 xchain175_n88_β:
 jmp main_ω
 xchain175_n89_α:
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
 jmp xchain175_n90_α
 xchain175_n89_β:
 jmp main_ω
 xchain175_n90_α:
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
 jmp xchain175_n91_α
 xchain175_n90_β:
 jmp main_ω
 xchain175_n91_α:
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
 je xchain175_n93_α
 jmp xchain175_n92_α
 xchain175_n91_β:
 jmp xchain175_n93_α
# IR_VAR_REF
 xchain175_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4768]
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain175_n94_α
 xchain175_n93_α:
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
 xchain175_n93_β:
 jmp main_ω
 xchain175_n94_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx272_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx272_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx272_3]
 lea rdx, [rip + .Lx272_4]
 jmp rax
.Lx272_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx272_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx272_2
.Lx272_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx272_2
.Lx272_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx272_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx272_2
.Lx272_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx272_2
.Lx272_1:
 call rt_faildescr@PLT
.Lx272_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain175_n93_α
 jmp xchain175_n95_α
 xchain175_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "nreverse/2"
# IR_VAR
 xchain175_n95_α:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 264], rax
 jmp xchain175_n96_α
 xchain175_n96_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn276: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn276]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain175_n94_β
 jmp xchain175_n97_α
 xchain175_n96_β:
 jmp xchain175_n94_β
# IR_LIT_STRING
 xchain175_n97_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain175_n98_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string ""
 xchain175_n98_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn279: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn279]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain175_n94_β
 jmp xchain175_n99_α
 xchain175_n98_β:
 jmp xchain175_n94_β
# IR_MOVE_LABEL
 xchain175_n99_α:
 lea rax, [rip + xchain175_n94_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain175_n100_α:
 jmp qword ptr [rbp + 32]
 xchain175_n100_β:
 jmp main_ω
main_β:
jmp xchain175_n100_α
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
