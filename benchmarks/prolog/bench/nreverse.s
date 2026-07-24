  .intel_syntax noprefix
  .text
  .globl proc_nreverse$2F2_α
proc_nreverse$2F2_α:
#=======================================================================================================================
    .global proc_nreverse$2F2_α
    .global proc_nreverse$2F2_β
    .global proc_nreverse$2F2_γ
    .global proc_nreverse$2F2_ω
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
proc_nreverse$2F2_α_body:
lea rax, [rip + xchain0_n28_β]
mov qword ptr [rbp + 1600], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nreverse$2F2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_nreverse$2F2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 1536], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
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
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n10_α
.Lx13_0:
 .quad 2
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n12_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "[]"
 xchain0_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1296]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# marshal arg2 = producer-box slot [zr+1392] -> [zr+1328]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
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
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n17_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+608]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_nreverse$2F2_ω
 jmp xchain0_n6_α
 xchain0_n14_β:
 jmp proc_nreverse$2F2_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
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
 je proc_nreverse$2F2_ω
 jmp proc_nreverse$2F2_ω
 xchain0_n16_β:
 jmp proc_nreverse$2F2_ω
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n20_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "[]"
 xchain0_n19_α:
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
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n14_α
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 304]
 mov rsi, qword ptr [rip + .Lx29_2]
 jmp .Lx29_3
.Lx29_2:
 .quad .Lx29_2_s
.Lx29_2_s:
 .string "[]"
.Lx29_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain0_n25_α
# IR_LIT_STRING
 xchain0_n24_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n26_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "[]"
 xchain0_n25_α:
 mov qword ptr [rbp + 1024], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx38_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx38_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
 jmp rax
.Lx38_3:
 mov qword ptr [rbp + 1032], rsp
 mov rax, qword ptr [rbp + 1024]
 test rax, rax
 jne .Lx38_5
 mov qword ptr [rbp + 1024], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx38_2
.Lx38_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx38_2
.Lx38_4:
 mov rax, qword ptr [rbp + 1024]
 test rax, rax
 jne .Lx38_6
 mov qword ptr [rbp + 1024], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx38_2
.Lx38_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx38_2
.Lx38_1:
 call rt_faildescr@PLT
.Lx38_2:
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1032]
 jmp qword ptr [rsp]
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "nreverse/2"
 xchain0_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx39_2]
 jmp .Lx39_3
.Lx39_2:
 .quad .Lx39_2_s
.Lx39_2_s:
 .string "[]"
.Lx39_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n29_α
# IR_SUSPEND yield+resume
 xchain0_n28_α:
 lea rax, [rip + xchain0_n28_β]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2F2_γ
 xchain0_n28_β:
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n30_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain0_n31_α
# IR_LIT_STRING
 xchain0_n31_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n32_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "[]"
 xchain0_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+864]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+880]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n34_α
 xchain0_n34_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx52_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx52_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx52_3]
 lea rdx, [rip + .Lx52_4]
 jmp rax
.Lx52_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx52_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx52_2
.Lx52_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx52_2
.Lx52_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx52_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx52_2
.Lx52_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx52_2
.Lx52_1:
 call rt_faildescr@PLT
.Lx52_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n25_β
 jmp xchain0_n35_α
 xchain0_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2F2_γ
 xchain0_n35_β:
 jmp xchain0_n34_β
proc_nreverse$2F2_res:
add rsp, 8
pop rbp
proc_nreverse$2F2_β:
jmp qword ptr [rbp + 1600]
proc_nreverse$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nreverse$2F2_res]
push rax
mov rax, [rbp + 1704]
mov rbp, [rbp + 1720]
jmp rax
proc_nreverse$2F2_ω:
mov rax, [rbp + 1712]
lea rsp, [rbp + 1728]
mov rbp, [rbp + 1720]
jmp rax
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
lea rax, [rip + xchain55_n12_β]
mov qword ptr [rbp + 608], rax
 xchain55_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2F2_ω
 jmp xchain55_n1_α
 xchain55_n0_β:
 jmp proc_reverse$2F2_ω
# IR_VAR_REF
 xchain55_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain55_n2_α
# IR_VAR_REF
 xchain55_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain55_n3_α
 xchain55_n3_α:
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
 je xchain55_n5_α
 jmp xchain55_n4_α
 xchain55_n3_β:
 jmp xchain55_n5_α
# IR_VAR_REF
 xchain55_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain55_n6_α
 xchain55_n5_α:
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
 xchain55_n5_β:
 jmp proc_reverse$2F2_ω
# IR_VAR_REF
 xchain55_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain55_n7_α
 xchain55_n7_α:
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
 je xchain55_n5_α
 jmp xchain55_n8_α
 xchain55_n7_β:
 jmp xchain55_n5_α
# IR_VAR_REF
 xchain55_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain55_n9_α
# IR_LIT_STRING
 xchain55_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain55_n10_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "[]"
# IR_VAR_REF
 xchain55_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain55_n11_α
 xchain55_n11_α:
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
 mov rdi, qword ptr [rip + .Lx74_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx74_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx74_3]
 lea rdx, [rip + .Lx74_4]
 jmp rax
.Lx74_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx74_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx74_2
.Lx74_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx74_2
.Lx74_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx74_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx74_2
.Lx74_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx74_2
.Lx74_1:
 call rt_faildescr@PLT
.Lx74_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain55_n5_α
 jmp xchain55_n12_α
 xchain55_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain55_n12_α:
 lea rax, [rip + xchain55_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2F2_γ
 xchain55_n12_β:
 jmp xchain55_n11_β
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
lea rax, [rip + xchain77_n25_β]
mov qword ptr [rbp + 1728], rax
 xchain77_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$2F3_ω
 jmp xchain77_n1_α
 xchain77_n0_β:
 jmp proc_$reverse_$2F3_ω
# IR_VAR_REF
 xchain77_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain77_n2_α
# IR_LIT_INTEGER
 xchain77_n2_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain77_n3_α
.Lx81_0:
 .quad 2
# IR_LIT_STRING
 xchain77_n3_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain77_n4_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "[]"
 xchain77_n4_α:
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
 je xchain77_n6_α
 jmp xchain77_n5_α
 xchain77_n4_β:
 jmp xchain77_n6_α
# IR_VAR_REF
 xchain77_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain77_n7_α
# IR_VAR_REF
 xchain77_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain77_n8_α
# IR_LIT_STRING
 xchain77_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain77_n9_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain77_n8_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain77_n10_α
.Lx89_0:
 .quad 3
 xchain77_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1440]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1440]
 mov rsi, qword ptr [rip + .Lx90_2]
 jmp .Lx90_3
.Lx90_2:
 .quad .Lx90_2_s
.Lx90_2_s:
 .string "[]"
.Lx90_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain77_n12_α
 jmp xchain77_n11_α
 xchain77_n9_β:
 jmp xchain77_n12_α
# IR_LIT_INTEGER
 xchain77_n10_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain77_n13_α
.Lx91_0:
 .quad 0
# IR_VAR_REF
 xchain77_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain77_n14_α
 xchain77_n12_α:
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
 jmp xchain77_n6_α
 xchain77_n12_β:
 jmp proc_$reverse_$2F3_ω
 xchain77_n13_α:
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
 je xchain77_n16_α
 jmp xchain77_n15_α
 xchain77_n13_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain77_n17_α
# IR_VAR_REF
 xchain77_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain77_n18_α
 xchain77_n16_α:
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
 xchain77_n16_β:
 jmp proc_$reverse_$2F3_ω
 xchain77_n17_α:
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
 je xchain77_n12_α
 jmp xchain77_n19_α
 xchain77_n17_β:
 jmp xchain77_n12_α
# IR_VAR_REF
 xchain77_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain77_n20_α
# IR_VAR_REF
 xchain77_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain77_n21_α
# IR_VAR_REF
 xchain77_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain77_n22_α
# IR_VAR_REF
 xchain77_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain77_n23_α
 xchain77_n22_α:
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
 je xchain77_n16_α
 jmp xchain77_n24_α
 xchain77_n22_β:
 jmp xchain77_n16_α
 xchain77_n23_α:
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
 je xchain77_n12_α
 jmp xchain77_n25_α
 xchain77_n23_β:
 jmp xchain77_n12_α
# IR_VAR_REF
 xchain77_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain77_n26_α
# IR_SUSPEND yield+resume
 xchain77_n25_α:
 lea rax, [rip + xchain77_n25_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$2F3_γ
 xchain77_n25_β:
 jmp xchain77_n12_α
# IR_VAR_REF
 xchain77_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain77_n27_α
 xchain77_n27_α:
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
 je xchain77_n16_α
 jmp xchain77_n28_α
 xchain77_n27_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain77_n29_α
# IR_VAR_REF
 xchain77_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain77_n30_α
 xchain77_n30_α:
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
 je xchain77_n16_α
 jmp xchain77_n31_α
 xchain77_n30_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain77_n32_α
# IR_LIT_STRING
 xchain77_n32_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain77_n33_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
# IR_VAR_REF
 xchain77_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain77_n34_α
# IR_VAR_REF
 xchain77_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain77_n35_α
 xchain77_n35_α:
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
 je xchain77_n16_α
 jmp xchain77_n36_α
 xchain77_n35_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain77_n37_α
 xchain77_n37_α:
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
 mov rdi, qword ptr [rip + .Lx135_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx135_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx135_3]
 lea rdx, [rip + .Lx135_4]
 jmp rax
.Lx135_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx135_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx135_2
.Lx135_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx135_2
.Lx135_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx135_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx135_2
.Lx135_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx135_2
.Lx135_1:
 call rt_faildescr@PLT
.Lx135_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain77_n16_α
 jmp xchain77_n38_α
 xchain77_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain77_n38_α:
 lea rax, [rip + xchain77_n38_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$2F3_γ
 xchain77_n38_β:
 jmp xchain77_n37_β
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
  .globl proc_concatenate$2F3_α
proc_concatenate$2F3_α:
#=======================================================================================================================
    .global proc_concatenate$2F3_α
    .global proc_concatenate$2F3_β
    .global proc_concatenate$2F3_γ
    .global proc_concatenate$2F3_ω
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
proc_concatenate$2F3_α_body:
lea rax, [rip + xchain138_n34_β]
mov qword ptr [rbp + 1632], rax
 xchain138_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_concatenate$2F3_ω
 jmp xchain138_n1_α
 xchain138_n0_β:
 jmp proc_concatenate$2F3_ω
# IR_VAR_REF
 xchain138_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain138_n2_α
# IR_LIT_INTEGER
 xchain138_n2_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain138_n3_α
.Lx142_0:
 .quad 3
# IR_LIT_INTEGER
 xchain138_n3_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain138_n4_α
.Lx143_0:
 .quad 0
 xchain138_n4_α:
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
 je xchain138_n6_α
 jmp xchain138_n5_α
 xchain138_n4_β:
 jmp xchain138_n6_α
# IR_VAR_REF
 xchain138_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain138_n7_α
# IR_VAR_REF
 xchain138_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain138_n8_α
# IR_VAR_REF
 xchain138_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain138_n9_α
# IR_LIT_INTEGER
 xchain138_n8_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain138_n10_α
.Lx151_0:
 .quad 2
# IR_VAR_REF
 xchain138_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain138_n11_α
# IR_LIT_STRING
 xchain138_n10_α:
 mov qword ptr [rbp + 704], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain138_n12_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "[]"
 xchain138_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1328]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n13_α
 xchain138_n11_β:
 jmp xchain138_n14_α
 xchain138_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+592]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+608]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain138_n16_α
 jmp xchain138_n15_α
 xchain138_n12_β:
 jmp xchain138_n16_α
# IR_VAR_REF
 xchain138_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain138_n17_α
 xchain138_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+752]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_concatenate$2F3_ω
 jmp xchain138_n6_α
 xchain138_n14_β:
 jmp proc_concatenate$2F3_ω
# IR_VAR_REF
 xchain138_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain138_n18_α
 xchain138_n16_α:
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
 je proc_concatenate$2F3_ω
 jmp proc_concatenate$2F3_ω
 xchain138_n16_β:
 jmp proc_concatenate$2F3_ω
# IR_VAR_REF
 xchain138_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain138_n19_α
# IR_LIT_STRING
 xchain138_n18_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain138_n20_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "[]"
 xchain138_n19_α:
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
 je xchain138_n14_α
 jmp xchain138_n21_α
 xchain138_n19_β:
 jmp xchain138_n14_α
 xchain138_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 mov rsi, qword ptr [rip + .Lx167_2]
 jmp .Lx167_3
.Lx167_2:
 .quad .Lx167_2_s
.Lx167_2_s:
 .string "[]"
.Lx167_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain138_n16_α
 jmp xchain138_n22_α
 xchain138_n20_β:
 jmp xchain138_n16_α
# IR_VAR_REF
 xchain138_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain138_n23_α
# IR_VAR_REF
 xchain138_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain138_n24_α
# IR_VAR_REF
 xchain138_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain138_n25_α
# IR_VAR_REF
 xchain138_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain138_n26_α
# IR_VAR_REF
 xchain138_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain138_n27_α
 xchain138_n26_α:
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
 je xchain138_n16_α
 jmp xchain138_n28_α
 xchain138_n26_β:
 jmp xchain138_n16_α
 xchain138_n27_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+1024]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n29_α
 xchain138_n27_β:
 jmp xchain138_n14_α
# IR_VAR_REF
 xchain138_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain138_n30_α
# IR_VAR_REF
 xchain138_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain138_n31_α
# IR_VAR_REF
 xchain138_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain138_n32_α
# IR_VAR_REF
 xchain138_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain138_n33_α
 xchain138_n32_α:
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
 je xchain138_n16_α
 jmp xchain138_n34_α
 xchain138_n32_β:
 jmp xchain138_n16_α
# IR_VAR_REF
 xchain138_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain138_n35_α
# IR_SUSPEND yield+resume
 xchain138_n34_α:
 lea rax, [rip + xchain138_n34_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$2F3_γ
 xchain138_n34_β:
 jmp xchain138_n16_α
 xchain138_n35_α:
 mov qword ptr [rbp + 848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
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
 mov qword ptr [rbp + 856], rsp
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx194_5
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx194_2
.Lx194_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx194_2
.Lx194_4:
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx194_6
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx194_2
.Lx194_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx194_2
.Lx194_1:
 call rt_faildescr@PLT
.Lx194_2:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n36_α
 xchain138_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 856]
 jmp qword ptr [rsp]
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain138_n36_α:
 lea rax, [rip + xchain138_n36_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$2F3_γ
 xchain138_n36_β:
 jmp xchain138_n35_β
proc_concatenate$2F3_res:
add rsp, 8
pop rbp
proc_concatenate$2F3_β:
jmp qword ptr [rbp + 1632]
proc_concatenate$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_concatenate$2F3_res]
push rax
mov rax, [rbp + 1736]
mov rbp, [rbp + 1752]
jmp rax
proc_concatenate$2F3_ω:
mov rax, [rbp + 1744]
lea rsp, [rbp + 1760]
mov rbp, [rbp + 1752]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "nreverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_nreverse$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1696
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
  lea rsi, [rip + proc_reverse$2F2_α]
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
  lea rsi, [rip + proc_$reverse_$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1824
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
  lea rsi, [rip + proc_concatenate$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1728
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
 xchain197_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n1_α
 xchain197_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain197_n1_α:
 mov qword ptr [rbp + 4688], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain197_n2_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n2_α:
 mov qword ptr [rbp + 4576], 6
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain197_n3_α
.Lx200_0:
 .quad 1
# IR_LIT_STRING
 xchain197_n3_α:
 mov qword ptr [rbp + 4544], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain197_n4_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n4_α:
 mov qword ptr [rbp + 4432], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain197_n5_α
.Lx202_0:
 .quad 2
# IR_LIT_STRING
 xchain197_n5_α:
 mov qword ptr [rbp + 4400], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain197_n6_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n6_α:
 mov qword ptr [rbp + 4288], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain197_n7_α
.Lx204_0:
 .quad 3
# IR_LIT_STRING
 xchain197_n7_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain197_n8_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n8_α:
 mov qword ptr [rbp + 4144], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain197_n9_α
.Lx206_0:
 .quad 4
# IR_LIT_STRING
 xchain197_n9_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain197_n10_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n10_α:
 mov qword ptr [rbp + 4000], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 4008], rax
 jmp xchain197_n11_α
.Lx208_0:
 .quad 5
# IR_LIT_STRING
 xchain197_n11_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain197_n12_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n12_α:
 mov qword ptr [rbp + 3856], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain197_n13_α
.Lx210_0:
 .quad 6
# IR_LIT_STRING
 xchain197_n13_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain197_n14_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n14_α:
 mov qword ptr [rbp + 3712], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain197_n15_α
.Lx212_0:
 .quad 7
# IR_LIT_STRING
 xchain197_n15_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain197_n16_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n16_α:
 mov qword ptr [rbp + 3568], 6
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 3576], rax
 jmp xchain197_n17_α
.Lx214_0:
 .quad 8
# IR_LIT_STRING
 xchain197_n17_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain197_n18_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n18_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain197_n19_α
.Lx216_0:
 .quad 9
# IR_LIT_STRING
 xchain197_n19_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain197_n20_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n20_α:
 mov qword ptr [rbp + 3280], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain197_n21_α
.Lx218_0:
 .quad 10
# IR_LIT_STRING
 xchain197_n21_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain197_n22_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n22_α:
 mov qword ptr [rbp + 3136], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain197_n23_α
.Lx220_0:
 .quad 11
# IR_LIT_STRING
 xchain197_n23_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain197_n24_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n24_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain197_n25_α
.Lx222_0:
 .quad 12
# IR_LIT_STRING
 xchain197_n25_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain197_n26_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n26_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain197_n27_α
.Lx224_0:
 .quad 13
# IR_LIT_STRING
 xchain197_n27_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain197_n28_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n28_α:
 mov qword ptr [rbp + 2704], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain197_n29_α
.Lx226_0:
 .quad 14
# IR_LIT_STRING
 xchain197_n29_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain197_n30_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n30_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain197_n31_α
.Lx228_0:
 .quad 15
# IR_LIT_STRING
 xchain197_n31_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain197_n32_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n32_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain197_n33_α
.Lx230_0:
 .quad 16
# IR_LIT_STRING
 xchain197_n33_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain197_n34_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n34_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain197_n35_α
.Lx232_0:
 .quad 17
# IR_LIT_STRING
 xchain197_n35_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain197_n36_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n36_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain197_n37_α
.Lx234_0:
 .quad 18
# IR_LIT_STRING
 xchain197_n37_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain197_n38_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n38_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain197_n39_α
.Lx236_0:
 .quad 19
# IR_LIT_STRING
 xchain197_n39_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain197_n40_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n40_α:
 mov qword ptr [rbp + 1840], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain197_n41_α
.Lx238_0:
 .quad 20
# IR_LIT_STRING
 xchain197_n41_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain197_n42_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n42_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain197_n43_α
.Lx240_0:
 .quad 21
# IR_LIT_STRING
 xchain197_n43_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain197_n44_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n44_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain197_n45_α
.Lx242_0:
 .quad 22
# IR_LIT_STRING
 xchain197_n45_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain197_n46_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n46_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain197_n47_α
.Lx244_0:
 .quad 23
# IR_LIT_STRING
 xchain197_n47_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain197_n48_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n48_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain197_n49_α
.Lx246_0:
 .quad 24
# IR_LIT_STRING
 xchain197_n49_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain197_n50_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n50_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain197_n51_α
.Lx248_0:
 .quad 25
# IR_LIT_STRING
 xchain197_n51_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain197_n52_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n52_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain197_n53_α
.Lx250_0:
 .quad 26
# IR_LIT_STRING
 xchain197_n53_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain197_n54_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n54_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain197_n55_α
.Lx252_0:
 .quad 27
# IR_LIT_STRING
 xchain197_n55_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain197_n56_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n56_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain197_n57_α
.Lx254_0:
 .quad 28
# IR_LIT_STRING
 xchain197_n57_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain197_n58_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n58_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain197_n59_α
.Lx256_0:
 .quad 29
# IR_LIT_STRING
 xchain197_n59_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain197_n60_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n60_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain197_n61_α
.Lx258_0:
 .quad 30
# IR_LIT_STRING
 xchain197_n61_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain197_n62_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "[]"
 xchain197_n62_α:
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
 jmp xchain197_n63_α
 xchain197_n62_β:
 jmp main_ω
 xchain197_n63_α:
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
 jmp xchain197_n64_α
 xchain197_n63_β:
 jmp main_ω
 xchain197_n64_α:
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
 jmp xchain197_n65_α
 xchain197_n64_β:
 jmp main_ω
 xchain197_n65_α:
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
 jmp xchain197_n66_α
 xchain197_n65_β:
 jmp main_ω
 xchain197_n66_α:
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
 jmp xchain197_n67_α
 xchain197_n66_β:
 jmp main_ω
 xchain197_n67_α:
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
 jmp xchain197_n68_α
 xchain197_n67_β:
 jmp main_ω
 xchain197_n68_α:
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
 jmp xchain197_n69_α
 xchain197_n68_β:
 jmp main_ω
 xchain197_n69_α:
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
 jmp xchain197_n70_α
 xchain197_n69_β:
 jmp main_ω
 xchain197_n70_α:
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
 jmp xchain197_n71_α
 xchain197_n70_β:
 jmp main_ω
 xchain197_n71_α:
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
 jmp xchain197_n72_α
 xchain197_n71_β:
 jmp main_ω
 xchain197_n72_α:
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
 jmp xchain197_n73_α
 xchain197_n72_β:
 jmp main_ω
 xchain197_n73_α:
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
 jmp xchain197_n74_α
 xchain197_n73_β:
 jmp main_ω
 xchain197_n74_α:
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
 jmp xchain197_n75_α
 xchain197_n74_β:
 jmp main_ω
 xchain197_n75_α:
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
 jmp xchain197_n76_α
 xchain197_n75_β:
 jmp main_ω
 xchain197_n76_α:
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
 jmp xchain197_n77_α
 xchain197_n76_β:
 jmp main_ω
 xchain197_n77_α:
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
 jmp xchain197_n78_α
 xchain197_n77_β:
 jmp main_ω
 xchain197_n78_α:
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
 jmp xchain197_n79_α
 xchain197_n78_β:
 jmp main_ω
 xchain197_n79_α:
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
 jmp xchain197_n80_α
 xchain197_n79_β:
 jmp main_ω
 xchain197_n80_α:
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
 jmp xchain197_n81_α
 xchain197_n80_β:
 jmp main_ω
 xchain197_n81_α:
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
 jmp xchain197_n82_α
 xchain197_n81_β:
 jmp main_ω
 xchain197_n82_α:
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
 jmp xchain197_n83_α
 xchain197_n82_β:
 jmp main_ω
 xchain197_n83_α:
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
 jmp xchain197_n84_α
 xchain197_n83_β:
 jmp main_ω
 xchain197_n84_α:
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
 jmp xchain197_n85_α
 xchain197_n84_β:
 jmp main_ω
 xchain197_n85_α:
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
 jmp xchain197_n86_α
 xchain197_n85_β:
 jmp main_ω
 xchain197_n86_α:
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
 jmp xchain197_n87_α
 xchain197_n86_β:
 jmp main_ω
 xchain197_n87_α:
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
 jmp xchain197_n88_α
 xchain197_n87_β:
 jmp main_ω
 xchain197_n88_α:
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
 jmp xchain197_n89_α
 xchain197_n88_β:
 jmp main_ω
 xchain197_n89_α:
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
 jmp xchain197_n90_α
 xchain197_n89_β:
 jmp main_ω
 xchain197_n90_α:
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
 jmp xchain197_n91_α
 xchain197_n90_β:
 jmp main_ω
 xchain197_n91_α:
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
 je xchain197_n93_α
 jmp xchain197_n92_α
 xchain197_n91_β:
 jmp xchain197_n93_α
# IR_VAR_REF
 xchain197_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4768]
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain197_n94_α
 xchain197_n93_α:
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
 xchain197_n93_β:
 jmp main_ω
 xchain197_n94_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx294_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx294_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx294_3]
 lea rdx, [rip + .Lx294_4]
 jmp rax
.Lx294_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx294_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx294_2
.Lx294_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx294_2
.Lx294_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx294_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx294_2
.Lx294_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx294_2
.Lx294_1:
 call rt_faildescr@PLT
.Lx294_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain197_n93_α
 jmp xchain197_n95_α
 xchain197_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "nreverse/2"
# IR_VAR
 xchain197_n95_α:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 264], rax
 jmp xchain197_n96_α
 xchain197_n96_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn298: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn298]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain197_n94_β
 jmp xchain197_n97_α
 xchain197_n96_β:
 jmp xchain197_n94_β
# IR_LIT_STRING
 xchain197_n97_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain197_n98_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string ""
 xchain197_n98_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn301: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain197_n94_β
 jmp xchain197_n99_α
 xchain197_n98_β:
 jmp xchain197_n94_β
# IR_MOVE_LABEL
 xchain197_n99_α:
 lea rax, [rip + xchain197_n94_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain197_n100_α:
 jmp qword ptr [rbp + 32]
 xchain197_n100_β:
 jmp main_ω
main_β:
jmp xchain197_n100_α
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
