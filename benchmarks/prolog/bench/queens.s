  .intel_syntax noprefix
  .text
  .globl proc_sel$2F3_α
proc_sel$2F3_α:
#=======================================================================================================================
    .global proc_sel$2F3_α
    .global proc_sel$2F3_β
    .global proc_sel$2F3_γ
    .global proc_sel$2F3_ω
  sub rsp, 1680
  mov [rsp + 1656], rcx
  mov [rsp + 1664], rdx
  mov [rsp + 1672], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1560], rsp
  mov rdi, rsp
  mov esi, 1536
  mov edx, 1648
  call rt_jmp_frame_lexprep2@PLT
proc_sel$2F3_α_body:
lea rax, [rip + xchain0_n27_β]
mov qword ptr [rbp + 1536], rax
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
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1424]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n10_α
.Lx13_0:
 .quad 3
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n12_α
.Lx16_0:
 .quad 0
 xchain0_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1264]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+832]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n17_α
 xchain0_n14_α:
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
 je proc_sel$2F3_ω
 jmp xchain0_n6_α
 xchain0_n14_β:
 jmp proc_sel$2F3_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n18_α
 xchain0_n16_α:
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
 xchain0_n16_β:
 jmp proc_sel$2F3_ω
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n19_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n20_α
 xchain0_n19_α:
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
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n23_α
 xchain0_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+672]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n25_α
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n26_α
 xchain0_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n28_α
# IR_SUSPEND yield+resume
 xchain0_n27_α:
 lea rax, [rip + xchain0_n27_β]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n27_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n29_α
 xchain0_n29_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+512]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n31_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n32_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n35_α
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n36_α
 xchain0_n36_α:
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
 mov rdi, qword ptr [rip + .Lx59_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx59_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx59_3]
 lea rdx, [rip + .Lx59_4]
 jmp rax
.Lx59_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx59_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx59_2
.Lx59_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx59_2
.Lx59_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx59_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx59_2
.Lx59_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx59_2
.Lx59_1:
 call rt_faildescr@PLT
.Lx59_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n37_α
 xchain0_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "sel/3"
# IR_SUSPEND yield+resume
 xchain0_n37_α:
 lea rax, [rip + xchain0_n37_β]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n37_β:
 jmp xchain0_n36_β
proc_sel$2F3_res:
add rsp, 8
pop rbp
proc_sel$2F3_β:
jmp qword ptr [rbp + 1536]
proc_sel$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sel$2F3_res]
push rax
mov rax, [rbp + 1656]
mov rbp, [rbp + 1672]
jmp rax
proc_sel$2F3_ω:
mov rax, [rbp + 1664]
lea rsp, [rbp + 1680]
mov rbp, [rbp + 1672]
jmp rax
  .globl proc_queens$2F3_α
proc_queens$2F3_α:
#=======================================================================================================================
    .global proc_queens$2F3_α
    .global proc_queens$2F3_β
    .global proc_queens$2F3_γ
    .global proc_queens$2F3_ω
  sub rsp, 1856
  mov [rsp + 1832], rcx
  mov [rsp + 1840], rdx
  mov [rsp + 1848], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1736], rsp
  mov rdi, rsp
  mov esi, 1712
  mov edx, 1824
  call rt_jmp_frame_lexprep2@PLT
proc_queens$2F3_α_body:
lea rax, [rip + xchain62_n25_β]
mov qword ptr [rbp + 1712], rax
 xchain62_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens$2F3_ω
 jmp xchain62_n1_α
 xchain62_n0_β:
 jmp proc_queens$2F3_ω
# IR_VAR_REF
 xchain62_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain62_n2_α
# IR_LIT_INTEGER
 xchain62_n2_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain62_n3_α
.Lx66_0:
 .quad 2
# IR_LIT_STRING
 xchain62_n3_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain62_n4_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "[]"
 xchain62_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
# marshal arg2 = producer-box slot [zr+1680] -> [zr+1600]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain62_n6_α
 jmp xchain62_n5_α
 xchain62_n4_β:
 jmp xchain62_n6_α
# IR_VAR_REF
 xchain62_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain62_n7_α
# IR_VAR_REF
 xchain62_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain62_n8_α
# IR_LIT_STRING
 xchain62_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain62_n9_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "[]"
# IR_VAR_REF
 xchain62_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain62_n10_α
 xchain62_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1456]
 mov rsi, qword ptr [rip + .Lx76_2]
 jmp .Lx76_3
.Lx76_2:
 .quad .Lx76_2_s
.Lx76_2_s:
 .string "[]"
.Lx76_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain62_n12_α
 jmp xchain62_n11_α
 xchain62_n9_β:
 jmp xchain62_n12_α
 xchain62_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n13_α
 xchain62_n10_β:
 jmp xchain62_n14_α
# IR_VAR_REF
 xchain62_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain62_n15_α
 xchain62_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1184]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je proc_queens$2F3_ω
 jmp xchain62_n6_α
 xchain62_n12_β:
 jmp proc_queens$2F3_ω
# IR_VAR_REF
 xchain62_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain62_n16_α
 xchain62_n14_α:
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
 je proc_queens$2F3_ω
 jmp proc_queens$2F3_ω
 xchain62_n14_β:
 jmp proc_queens$2F3_ω
# IR_VAR_REF
 xchain62_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain62_n17_α
# IR_VAR_REF
 xchain62_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain62_n18_α
 xchain62_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain62_n12_α
 jmp xchain62_n19_α
 xchain62_n17_β:
 jmp xchain62_n12_α
 xchain62_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n20_α
 xchain62_n18_β:
 jmp xchain62_n14_α
# IR_VAR_REF
 xchain62_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain62_n21_α
# IR_VAR_REF
 xchain62_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain62_n22_α
# IR_VAR_REF
 xchain62_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain62_n23_α
# IR_VAR_REF
 xchain62_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain62_n24_α
 xchain62_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain62_n12_α
 jmp xchain62_n25_α
 xchain62_n23_β:
 jmp xchain62_n12_α
 xchain62_n24_α:
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
 je xchain62_n14_α
 jmp xchain62_n26_α
 xchain62_n24_β:
 jmp xchain62_n14_α
# IR_SUSPEND yield+resume
 xchain62_n25_α:
 lea rax, [rip + xchain62_n25_β]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F3_γ
 xchain62_n25_β:
 jmp xchain62_n12_α
# IR_VAR_REF
 xchain62_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain62_n27_α
# IR_VAR_REF
 xchain62_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain62_n28_α
# IR_VAR_REF
 xchain62_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain62_n29_α
 xchain62_n29_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx109_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx109_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx109_3]
 lea rdx, [rip + .Lx109_4]
 jmp rax
.Lx109_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx109_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx109_2
.Lx109_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx109_2
.Lx109_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx109_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx109_2
.Lx109_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx109_2
.Lx109_1:
 call rt_faildescr@PLT
.Lx109_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n30_α
 xchain62_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain62_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain62_n31_α
# IR_VAR_REF
 xchain62_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain62_n32_α
 xchain62_n32_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx115_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx115_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx115_3]
 lea rdx, [rip + .Lx115_4]
 jmp rax
.Lx115_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx115_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx115_2
.Lx115_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx115_2
.Lx115_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx115_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx115_2
.Lx115_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx115_2
.Lx115_1:
 call rt_faildescr@PLT
.Lx115_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain62_n29_β
 jmp xchain62_n33_α
 xchain62_n32_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain62_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain62_n34_α
# IR_LIT_STRING
 xchain62_n34_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain62_n35_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "."
# IR_VAR_REF
 xchain62_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain62_n36_α
# IR_VAR_REF
 xchain62_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain62_n37_α
 xchain62_n37_α:
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
 je xchain62_n14_α
 jmp xchain62_n38_α
 xchain62_n37_β:
 jmp xchain62_n14_α
# IR_VAR_REF
 xchain62_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain62_n39_α
 xchain62_n39_α:
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
 mov rdi, qword ptr [rip + .Lx127_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx127_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx127_3]
 lea rdx, [rip + .Lx127_4]
 jmp rax
.Lx127_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx127_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx127_2
.Lx127_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx127_2
.Lx127_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx127_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx127_2
.Lx127_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx127_2
.Lx127_1:
 call rt_faildescr@PLT
.Lx127_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain62_n32_β
 jmp xchain62_n40_α
 xchain62_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain62_n40_α:
 lea rax, [rip + xchain62_n40_β]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F3_γ
 xchain62_n40_β:
 jmp xchain62_n39_β
proc_queens$2F3_res:
add rsp, 8
pop rbp
proc_queens$2F3_β:
jmp qword ptr [rbp + 1712]
proc_queens$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2F3_res]
push rax
mov rax, [rbp + 1832]
mov rbp, [rbp + 1848]
jmp rax
proc_queens$2F3_ω:
mov rax, [rbp + 1840]
lea rsp, [rbp + 1856]
mov rbp, [rbp + 1848]
jmp rax
  .globl proc_queens$2F2_α
proc_queens$2F2_α:
#=======================================================================================================================
    .global proc_queens$2F2_α
    .global proc_queens$2F2_β
    .global proc_queens$2F2_γ
    .global proc_queens$2F2_ω
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
proc_queens$2F2_α_body:
lea rax, [rip + xchain130_n16_β]
mov qword ptr [rbp + 736], rax
 xchain130_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2F2_ω
 jmp xchain130_n1_α
 xchain130_n0_β:
 jmp proc_queens$2F2_ω
# IR_VAR_REF
 xchain130_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain130_n2_α
# IR_VAR_REF
 xchain130_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain130_n3_α
 xchain130_n3_α:
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
 je xchain130_n5_α
 jmp xchain130_n4_α
 xchain130_n3_β:
 jmp xchain130_n5_α
# IR_VAR_REF
 xchain130_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain130_n6_α
 xchain130_n5_α:
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
 je proc_queens$2F2_ω
 jmp proc_queens$2F2_ω
 xchain130_n5_β:
 jmp proc_queens$2F2_ω
# IR_VAR_REF
 xchain130_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 784]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain130_n7_α
 xchain130_n7_α:
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
 je xchain130_n5_α
 jmp xchain130_n8_α
 xchain130_n7_β:
 jmp xchain130_n5_α
# IR_LIT_INTEGER
 xchain130_n8_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain130_n9_α
.Lx143_0:
 .quad 1
# IR_VAR_REF
 xchain130_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain130_n10_α
# IR_VAR_REF
 xchain130_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain130_n11_α
 xchain130_n11_α:
 lea rsi, [rbp + 416]
 lea rdx, [rbp + 448]
 lea rcx, [rbp + 480]
 call proc_range$2F3_dcα
 jmp .Lx149_2
.Lx149_2:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain130_n5_α
 jmp xchain130_n12_α
 xchain130_n11_β:
 jmp xchain130_n5_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "range/3"
# IR_VAR_REF
 xchain130_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain130_n13_α
# IR_LIT_STRING
 xchain130_n13_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain130_n14_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "[]"
# IR_VAR_REF
 xchain130_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 784]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain130_n15_α
 xchain130_n15_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx156_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx156_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx156_3]
 lea rdx, [rip + .Lx156_4]
 jmp rax
.Lx156_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx156_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx156_2
.Lx156_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx156_2
.Lx156_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx156_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx156_2
.Lx156_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx156_2
.Lx156_1:
 call rt_faildescr@PLT
.Lx156_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain130_n11_β
 jmp xchain130_n16_α
 xchain130_n15_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain130_n16_α:
 lea rax, [rip + xchain130_n16_β]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F2_γ
 xchain130_n16_β:
 jmp xchain130_n15_β
proc_queens$2F2_res:
add rsp, 8
pop rbp
proc_queens$2F2_β:
jmp qword ptr [rbp + 736]
proc_queens$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2F2_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_queens$2F2_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_range$2F3_α
proc_range$2F3_α:
#=======================================================================================================================
    .global proc_range$2F3_α
    .global proc_range$2F3_β
    .global proc_range$2F3_γ
    .global proc_range$2F3_ω
  sub rsp, 1664
  mov [rsp + 1640], rcx
  mov [rsp + 1648], rdx
  mov [rsp + 1656], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1560], rsp
  mov rdi, rsp
  mov esi, 1552
  mov edx, 1632
  call rt_jmp_frame_lexprep2@PLT
proc_range$2F3_α_body:
 xchain159_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_range$2F3_ω
 jmp xchain159_n1_α
 xchain159_n0_β:
 jmp proc_range$2F3_ω
# IR_VAR_REF
 xchain159_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain159_n2_α
# IR_VAR_REF
 xchain159_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain159_n3_α
 xchain159_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n4_α
 xchain159_n3_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain159_n6_α
 xchain159_n5_α:
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
 je proc_range$2F3_ω
 jmp xchain159_n7_α
 xchain159_n5_β:
 jmp proc_range$2F3_ω
# IR_VAR_REF
 xchain159_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain159_n8_α
# IR_VAR_REF
 xchain159_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain159_n9_α
 xchain159_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n10_α
 xchain159_n8_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain159_n11_α
# IR_VAR_REF
 xchain159_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain159_n12_α
 xchain159_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n13_α
 xchain159_n11_β:
 jmp xchain159_n14_α
# IR_LIT_STRING
 xchain159_n12_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain159_n15_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "."
# IR_VAR_REF
 xchain159_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain159_n16_α
 xchain159_n14_α:
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
 je proc_range$2F3_ω
 jmp proc_range$2F3_ω
 xchain159_n14_β:
 jmp proc_range$2F3_ω
# IR_VAR_REF
 xchain159_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain159_n17_α
# IR_VAR_REF
 xchain159_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain159_n18_α
# IR_LIT_STRING
 xchain159_n17_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain159_n19_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "[]"
 xchain159_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n20_α
 xchain159_n18_β:
 jmp xchain159_n14_α
 xchain159_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1248]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1264]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n21_α
 xchain159_n19_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain159_n22_α
 xchain159_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1104]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n23_α
 xchain159_n21_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain159_n24_α
 xchain159_n23_α:
# IR_CUT
 jmp xchain159_n25_α
# IR_VAR_REF
 xchain159_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain159_n26_α
# IR_MOVE_LABEL
 xchain159_n25_α:
 lea rax, [rip + xchain159_n5_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_range$2F3_γ
 xchain159_n26_α:
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
 je xchain159_n14_α
 jmp xchain159_n28_α
 xchain159_n26_β:
 jmp xchain159_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain159_n27_α:
 jmp qword ptr [rbp + 80]
 xchain159_n27_β:
 jmp proc_range$2F3_ω
# IR_VAR
 xchain159_n28_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 600], rax
 jmp xchain159_n29_α
# IR_VAR
 xchain159_n29_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 632], rax
 jmp xchain159_n30_α
 xchain159_n30_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_lt (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_cmp_lt@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n31_α
 xchain159_n30_β:
 jmp xchain159_n14_α
# IR_VAR_REF
 xchain159_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain159_n32_α
# IR_VAR
 xchain159_n32_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 488], rax
 jmp xchain159_n33_α
# IR_LIT_INTEGER
 xchain159_n33_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain159_n34_α
.Lx212_0:
 .quad 1
 xchain159_n34_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n35_α
 xchain159_n34_β:
 jmp xchain159_n14_α
 xchain159_n35_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n36_α
 xchain159_n35_β:
 jmp xchain159_n14_α
# IR_VAR_REF
 xchain159_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain159_n37_α
# IR_VAR_REF
 xchain159_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain159_n38_α
# IR_VAR_REF
 xchain159_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain159_n39_α
 xchain159_n39_α:
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 272]
 lea rcx, [rbp + 304]
 call proc_range$2F3_dcα
 jmp .Lx222_2
.Lx222_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n40_α
 xchain159_n39_β:
 jmp xchain159_n14_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "range/3"
# IR_MOVE_LABEL
 xchain159_n40_α:
 lea rax, [rip + xchain159_n39_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_range$2F3_γ
proc_range$2F3_res:
add rsp, 8
pop rbp
proc_range$2F3_β:
jmp xchain159_n27_α
proc_range$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1640]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_range$2F3_ω:
mov rax, [rbp + 1648]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_range$2F3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1680
 mov qword ptr [rsp + 1672], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1632], r11
 lea rax, [rip + .Lx225_2]
 mov qword ptr [rbp + 1640], rax
 lea rax, [rip + .Lx225_3]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1560], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 1552
 mov edx, 1632
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_range$2F3_α_body
.Lx225_2:
 mov rdx, qword ptr [rsp + -1680]
 mov rcx, rsp
 add rcx, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx225_3:
 mov rdi, qword ptr [rsp + -1680]
 mov rsi, rsp
 add rsi, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_not_attack$2F2_α
proc_not_attack$2F2_α:
#=======================================================================================================================
    .global proc_not_attack$2F2_α
    .global proc_not_attack$2F2_β
    .global proc_not_attack$2F2_γ
    .global proc_not_attack$2F2_ω
  sub rsp, 656
  mov [rsp + 632], rcx
  mov [rsp + 640], rdx
  mov [rsp + 648], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 584], rsp
  mov rdi, rsp
  mov esi, 560
  mov edx, 624
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F2_α_body:
lea rax, [rip + xchain226_n12_β]
mov qword ptr [rbp + 560], rax
 xchain226_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2F2_ω
 jmp xchain226_n1_α
 xchain226_n0_β:
 jmp proc_not_attack$2F2_ω
# IR_VAR_REF
 xchain226_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain226_n2_α
# IR_VAR_REF
 xchain226_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain226_n3_α
 xchain226_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain226_n5_α
 jmp xchain226_n4_α
 xchain226_n3_β:
 jmp xchain226_n5_α
# IR_VAR_REF
 xchain226_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain226_n6_α
 xchain226_n5_α:
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
 je proc_not_attack$2F2_ω
 jmp proc_not_attack$2F2_ω
 xchain226_n5_β:
 jmp proc_not_attack$2F2_ω
# IR_VAR_REF
 xchain226_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain226_n7_α
 xchain226_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain226_n5_α
 jmp xchain226_n8_α
 xchain226_n7_β:
 jmp xchain226_n5_α
# IR_VAR_REF
 xchain226_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain226_n9_α
# IR_VAR_REF
 xchain226_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain226_n10_α
# IR_LIT_INTEGER
 xchain226_n10_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain226_n11_α
.Lx243_0:
 .quad 1
 xchain226_n11_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx245_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx245_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx245_3]
 lea rdx, [rip + .Lx245_4]
 jmp rax
.Lx245_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx245_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx245_2
.Lx245_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx245_2
.Lx245_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx245_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx245_2
.Lx245_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx245_2
.Lx245_1:
 call rt_faildescr@PLT
.Lx245_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain226_n5_α
 jmp xchain226_n12_α
 xchain226_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain226_n12_α:
 lea rax, [rip + xchain226_n12_β]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2F2_γ
 xchain226_n12_β:
 jmp xchain226_n11_β
proc_not_attack$2F2_res:
add rsp, 8
pop rbp
proc_not_attack$2F2_β:
jmp qword ptr [rbp + 560]
proc_not_attack$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$2F2_res]
push rax
mov rax, [rbp + 632]
mov rbp, [rbp + 648]
jmp rax
proc_not_attack$2F2_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_not_attack$2F3_α
proc_not_attack$2F3_α:
#=======================================================================================================================
    .global proc_not_attack$2F3_α
    .global proc_not_attack$2F3_β
    .global proc_not_attack$2F3_γ
    .global proc_not_attack$2F3_ω
  sub rsp, 2208
  mov [rsp + 2184], rcx
  mov [rsp + 2192], rdx
  mov [rsp + 2200], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2088], rsp
  mov rdi, rsp
  mov esi, 2064
  mov edx, 2176
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F3_α_body:
lea rax, [rip + xchain248_n25_β]
mov qword ptr [rbp + 2064], rax
 xchain248_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$2F3_ω
 jmp xchain248_n1_α
 xchain248_n0_β:
 jmp proc_not_attack$2F3_ω
# IR_VAR_REF
 xchain248_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain248_n2_α
# IR_LIT_INTEGER
 xchain248_n2_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain248_n3_α
.Lx252_0:
 .quad 2
# IR_LIT_STRING
 xchain248_n3_α:
 mov qword ptr [rbp + 2032], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 2040], rax
 jmp xchain248_n4_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "[]"
 xchain248_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+2032] -> [zr+1952]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain248_n6_α
 jmp xchain248_n5_α
 xchain248_n4_β:
 jmp xchain248_n6_α
# IR_VAR_REF
 xchain248_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain248_n7_α
# IR_VAR_REF
 xchain248_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain248_n8_α
# IR_LIT_STRING
 xchain248_n7_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain248_n9_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain248_n8_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain248_n10_α
.Lx260_0:
 .quad 3
 xchain248_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1808]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1808]
 mov rsi, qword ptr [rip + .Lx261_2]
 jmp .Lx261_3
.Lx261_2:
 .quad .Lx261_2_s
.Lx261_2_s:
 .string "[]"
.Lx261_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain248_n12_α
 jmp xchain248_n11_α
 xchain248_n9_β:
 jmp xchain248_n12_α
# IR_LIT_INTEGER
 xchain248_n10_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain248_n13_α
.Lx262_0:
 .quad 0
# IR_VAR_REF
 xchain248_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain248_n14_α
 xchain248_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_not_attack$2F3_ω
 jmp xchain248_n6_α
 xchain248_n12_β:
 jmp proc_not_attack$2F3_ω
 xchain248_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1488] -> [zr+1408]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n15_α
 xchain248_n13_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain248_n17_α
# IR_VAR_REF
 xchain248_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain248_n18_α
 xchain248_n16_α:
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
 je proc_not_attack$2F3_ω
 jmp proc_not_attack$2F3_ω
 xchain248_n16_β:
 jmp proc_not_attack$2F3_ω
 xchain248_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1696]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1712]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain248_n12_α
 jmp xchain248_n19_α
 xchain248_n17_β:
 jmp xchain248_n12_α
# IR_VAR_REF
 xchain248_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain248_n20_α
# IR_VAR_REF
 xchain248_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain248_n21_α
# IR_VAR_REF
 xchain248_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain248_n22_α
# IR_VAR_REF
 xchain248_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain248_n23_α
 xchain248_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1248]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n24_α
 xchain248_n22_β:
 jmp xchain248_n16_α
 xchain248_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain248_n12_α
 jmp xchain248_n25_α
 xchain248_n23_β:
 jmp xchain248_n12_α
# IR_VAR_REF
 xchain248_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain248_n26_α
# IR_SUSPEND yield+resume
 xchain248_n25_α:
 lea rax, [rip + xchain248_n25_β]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2F3_γ
 xchain248_n25_β:
 jmp xchain248_n12_α
# IR_VAR_REF
 xchain248_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain248_n27_α
 xchain248_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n28_α
 xchain248_n27_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain248_n29_α
# IR_VAR_REF
 xchain248_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain248_n30_α
 xchain248_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n31_α
 xchain248_n30_β:
 jmp xchain248_n16_α
# IR_VAR
 xchain248_n31_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 824], rax
 jmp xchain248_n32_α
# IR_VAR
 xchain248_n32_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 920], rax
 jmp xchain248_n33_α
# IR_VAR
 xchain248_n33_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 952], rax
 jmp xchain248_n34_α
 xchain248_n34_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n35_α
 xchain248_n34_β:
 jmp xchain248_n16_α
 xchain248_n35_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n36_α
 xchain248_n35_β:
 jmp xchain248_n16_α
# IR_VAR
 xchain248_n36_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 616], rax
 jmp xchain248_n37_α
# IR_VAR
 xchain248_n37_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 712], rax
 jmp xchain248_n38_α
# IR_VAR
 xchain248_n38_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 744], rax
 jmp xchain248_n39_α
 xchain248_n39_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n40_α
 xchain248_n39_β:
 jmp xchain248_n16_α
 xchain248_n40_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n41_α
 xchain248_n40_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain248_n42_α
# IR_VAR
 xchain248_n42_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 504], rax
 jmp xchain248_n43_α
# IR_LIT_INTEGER
 xchain248_n43_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain248_n44_α
.Lx315_0:
 .quad 1
 xchain248_n44_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n45_α
 xchain248_n44_β:
 jmp xchain248_n16_α
 xchain248_n45_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n46_α
 xchain248_n45_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain248_n47_α
# IR_VAR_REF
 xchain248_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain248_n48_α
# IR_VAR_REF
 xchain248_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain248_n49_α
 xchain248_n49_α:
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
 mov rdi, qword ptr [rip + .Lx325_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx325_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx325_3]
 lea rdx, [rip + .Lx325_4]
 jmp rax
.Lx325_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx325_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx325_2
.Lx325_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx325_2
.Lx325_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx325_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx325_2
.Lx325_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx325_2
.Lx325_1:
 call rt_faildescr@PLT
.Lx325_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n50_α
 xchain248_n49_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain248_n50_α:
 lea rax, [rip + xchain248_n50_β]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2F3_γ
 xchain248_n50_β:
 jmp xchain248_n49_β
proc_not_attack$2F3_res:
add rsp, 8
pop rbp
proc_not_attack$2F3_β:
jmp qword ptr [rbp + 2064]
proc_not_attack$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$2F3_res]
push rax
mov rax, [rbp + 2184]
mov rbp, [rbp + 2200]
jmp rax
proc_not_attack$2F3_ω:
mov rax, [rbp + 2192]
lea rsp, [rbp + 2208]
mov rbp, [rbp + 2200]
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
  mov esi, 1648
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "queens/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$2F3_α]
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
  .Lstartup_pname2: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_queens$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "range/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_range$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1632
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_range$2F3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_not_attack$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_not_attack$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2176
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
  mov qword ptr [rsp + 392], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain328_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain328_n1_α
 xchain328_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain328_n1_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain328_n2_α
.Lx330_0:
 .quad 16
# IR_VAR_REF
 xchain328_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain328_n3_α
 xchain328_n3_α:
 mov qword ptr [rbp + 288], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx334_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx334_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx334_3]
 lea rdx, [rip + .Lx334_4]
 jmp rax
.Lx334_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx334_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx334_2
.Lx334_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx334_2
.Lx334_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx334_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx334_2
.Lx334_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx334_2
.Lx334_1:
 call rt_faildescr@PLT
.Lx334_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain328_n5_α
 jmp xchain328_n4_α
 xchain328_n3_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "queens/2"
# IR_VAR
 xchain328_n4_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 216], rax
 jmp xchain328_n6_α
 xchain328_n5_α:
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
 xchain328_n5_β:
 jmp main_ω
 xchain328_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn339: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain328_n3_β
 jmp xchain328_n7_α
 xchain328_n6_β:
 jmp xchain328_n3_β
# IR_LIT_STRING
 xchain328_n7_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain328_n8_α
.Lx340_0:
 .quad .Lx340_0_s
.Lx340_0_s:
 .string ""
 xchain328_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn342: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn342]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain328_n3_β
 jmp xchain328_n9_α
 xchain328_n8_β:
 jmp xchain328_n3_β
# IR_MOVE_LABEL
 xchain328_n9_α:
 lea rax, [rip + xchain328_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain328_n10_α:
 jmp qword ptr [rbp + 32]
 xchain328_n10_β:
 jmp main_ω
main_β:
jmp xchain328_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 392]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 392]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
