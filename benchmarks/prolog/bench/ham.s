  .intel_syntax noprefix
  .text
  .globl proc_del$3_α
proc_del$3_α:
#=======================================================================================================================
    .global proc_del$3_α
    .global proc_del$3_β
    .global proc_del$3_γ
    .global proc_del$3_ω
  sub rsp, 1472
  mov [rsp + 1448], rcx
  mov [rsp + 1456], rdx
  mov [rsp + 1464], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1352], rsp
  mov rdi, rsp
  mov esi, 1328
  mov edx, 1440
  call rt_jmp_frame_lexprep2@PLT
proc_del$3_α_body:
lea rax, [rip + xchain0_n19_β]
mov qword ptr [rbp + 1328], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_del$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
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
 je proc_del$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n11_α
 xchain0_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1072]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
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
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
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
 je proc_del$3_ω
 jmp proc_del$3_ω
 xchain0_n14_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n18_α
 xchain0_n17_α:
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
 je xchain0_n5_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain0_n20_α
# IR_SUSPEND yield+resume
 xchain0_n19_α:
 lea rax, [rip + xchain0_n19_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_del$3_γ
 xchain0_n19_β:
 jmp xchain0_n5_α
 xchain0_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+592]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n24_α
 xchain0_n24_α:
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
 je xchain0_n14_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n26_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n28_α
 xchain0_n28_α:
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
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx49_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx49_2
.Lx49_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx49_2
.Lx49_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx49_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx49_2
.Lx49_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx49_2
.Lx49_1:
 call rt_faildescr@PLT
.Lx49_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "del/3"
# IR_SUSPEND yield+resume
 xchain0_n29_α:
 lea rax, [rip + xchain0_n29_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_del$3_γ
 xchain0_n29_β:
 jmp xchain0_n28_β
proc_del$3_res:
add rsp, 8
pop rbp
proc_del$3_β:
jmp qword ptr [rbp + 1328]
proc_del$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_del$3_res]
push rax
mov rax, [rbp + 1448]
mov rbp, [rbp + 1464]
jmp rax
proc_del$3_ω:
mov rax, [rbp + 1456]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
jmp rax
  .globl proc_el$2_α
proc_el$2_α:
#=======================================================================================================================
    .global proc_el$2_α
    .global proc_el$2_β
    .global proc_el$2_γ
    .global proc_el$2_ω
  sub rsp, 1072
  mov [rsp + 1048], rcx
  mov [rsp + 1056], rdx
  mov [rsp + 1064], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 984], rsp
  mov rdi, rsp
  mov esi, 960
  mov edx, 1040
  call rt_jmp_frame_lexprep2@PLT
proc_el$2_α_body:
lea rax, [rip + xchain52_n12_β]
mov qword ptr [rbp + 960], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain52_n6_α
 xchain52_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+624]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp xchain52_n7_α
 xchain52_n5_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain52_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain52_n8_α
# IR_VAR_REF
 xchain52_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain52_n9_α
# IR_VAR_REF
 xchain52_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1024]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain52_n10_α
# IR_VAR_REF
 xchain52_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain52_n11_α
 xchain52_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+704]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n12_α
 xchain52_n10_β:
 jmp xchain52_n5_α
 xchain52_n11_α:
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
 je xchain52_n14_α
 jmp xchain52_n13_α
 xchain52_n11_β:
 jmp xchain52_n14_α
# IR_SUSPEND yield+resume
 xchain52_n12_α:
 lea rax, [rip + xchain52_n12_β]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2_γ
 xchain52_n12_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain52_n15_α
 xchain52_n14_α:
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
 je proc_el$2_ω
 jmp proc_el$2_ω
 xchain52_n14_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain52_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1024]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain52_n16_α
# IR_VAR_REF
 xchain52_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1008]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain52_n17_α
 xchain52_n17_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n18_α
 xchain52_n17_β:
 jmp xchain52_n14_α
# IR_VAR_REF
 xchain52_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain52_n19_α
# IR_VAR_REF
 xchain52_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1008]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain52_n20_α
 xchain52_n20_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx87_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx87_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx87_3]
 lea rdx, [rip + .Lx87_4]
 jmp rax
.Lx87_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx87_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx87_2
.Lx87_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx87_2
.Lx87_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx87_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx87_2
.Lx87_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx87_2
.Lx87_1:
 call rt_faildescr@PLT
.Lx87_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n21_α
 xchain52_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain52_n21_α:
 lea rax, [rip + xchain52_n21_β]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2_γ
 xchain52_n21_β:
 jmp xchain52_n20_β
proc_el$2_res:
add rsp, 8
pop rbp
proc_el$2_β:
jmp qword ptr [rbp + 960]
proc_el$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_el$2_res]
push rax
mov rax, [rbp + 1048]
mov rbp, [rbp + 1064]
jmp rax
proc_el$2_ω:
mov rax, [rbp + 1056]
lea rsp, [rbp + 1072]
mov rbp, [rbp + 1064]
jmp rax
  .globl proc_connect$2_α
proc_connect$2_α:
#=======================================================================================================================
    .global proc_connect$2_α
    .global proc_connect$2_β
    .global proc_connect$2_γ
    .global proc_connect$2_ω
  sub rsp, 14896
  mov [rsp + 14872], rcx
  mov [rsp + 14880], rdx
  mov [rsp + 14888], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 14856], rsp
  mov rdi, rsp
  mov esi, 14832
  mov edx, 14864
  call rt_jmp_frame_lexprep2@PLT
proc_connect$2_α_body:
lea rax, [rip + xchain90_n40_β]
mov qword ptr [rbp + 14832], rax
 xchain90_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n1_α
 xchain90_n0_β:
 jmp proc_connect$2_ω
# IR_VAR_REF
 xchain90_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14768], rax
 mov qword ptr [rbp + 14776], rdx
 jmp xchain90_n2_α
# IR_LIT_STRING
 xchain90_n2_α:
 mov qword ptr [rbp + 14800], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 14808], rax
 jmp xchain90_n3_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "a"
 xchain90_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14768] -> [zr+14720]
 mov rax, qword ptr [rbp + 14768]
 mov qword ptr [rbp + 14720], rax
 mov rax, qword ptr [rbp + 14776]
 mov qword ptr [rbp + 14728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 14720]
 mov rsi, qword ptr [rip + .Lx95_2]
 jmp .Lx95_3
.Lx95_2:
 .quad .Lx95_2_s
.Lx95_2_s:
 .string "a"
.Lx95_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 14704], rax
 mov qword ptr [rbp + 14712], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n4_α
 xchain90_n3_β:
 jmp xchain90_n5_α
# IR_VAR_REF
 xchain90_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14208], rax
 mov qword ptr [rbp + 14216], rdx
 jmp xchain90_n6_α
 xchain90_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+14112]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 14112], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 14120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14112]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14096], rax
 mov qword ptr [rbp + 14104], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n7_α
 xchain90_n5_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n6_α:
 mov qword ptr [rbp + 14672], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 14680], rax
 jmp xchain90_n8_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14032], rax
 mov qword ptr [rbp + 14040], rdx
 jmp xchain90_n9_α
# IR_LIT_STRING
 xchain90_n8_α:
 mov qword ptr [rbp + 14560], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 14568], rax
 jmp xchain90_n10_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n9_α:
 mov qword ptr [rbp + 14064], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 14072], rax
 jmp xchain90_n11_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n10_α:
 mov qword ptr [rbp + 14528], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 14536], rax
 jmp xchain90_n12_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "."
 xchain90_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14032] -> [zr+13984]
 mov rax, qword ptr [rbp + 14032]
 mov qword ptr [rbp + 13984], rax
 mov rax, qword ptr [rbp + 14040]
 mov qword ptr [rbp + 13992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 13984]
 mov rsi, qword ptr [rip + .Lx105_2]
 jmp .Lx105_3
.Lx105_2:
 .quad .Lx105_2_s
.Lx105_2_s:
 .string "b"
.Lx105_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 cmp eax, 99
 je xchain90_n14_α
 jmp xchain90_n13_α
 xchain90_n11_β:
 jmp xchain90_n14_α
# IR_LIT_STRING
 xchain90_n12_α:
 mov qword ptr [rbp + 14416], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 14424], rax
 jmp xchain90_n15_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "j"
# IR_VAR_REF
 xchain90_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13472], rax
 mov qword ptr [rbp + 13480], rdx
 jmp xchain90_n16_α
 xchain90_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+13376]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 13376], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 13384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13376]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13360], rax
 mov qword ptr [rbp + 13368], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n17_α
 xchain90_n14_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n15_α:
 mov qword ptr [rbp + 14384], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 14392], rax
 jmp xchain90_n18_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n16_α:
 mov qword ptr [rbp + 13936], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 13944], rax
 jmp xchain90_n19_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13296], rax
 mov qword ptr [rbp + 13304], rdx
 jmp xchain90_n20_α
# IR_LIT_STRING
 xchain90_n18_α:
 mov qword ptr [rbp + 14272], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 14280], rax
 jmp xchain90_n21_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "k"
# IR_LIT_STRING
 xchain90_n19_α:
 mov qword ptr [rbp + 13824], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [rbp + 13832], rax
 jmp xchain90_n22_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "a"
# IR_LIT_STRING
 xchain90_n20_α:
 mov qword ptr [rbp + 13328], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 13336], rax
 jmp xchain90_n23_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "c"
# IR_LIT_STRING
 xchain90_n21_α:
 mov qword ptr [rbp + 14240], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 14248], rax
 jmp xchain90_n24_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n22_α:
 mov qword ptr [rbp + 13792], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 13800], rax
 jmp xchain90_n25_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "."
 xchain90_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13296] -> [zr+13248]
 mov rax, qword ptr [rbp + 13296]
 mov qword ptr [rbp + 13248], rax
 mov rax, qword ptr [rbp + 13304]
 mov qword ptr [rbp + 13256], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 13248]
 mov rsi, qword ptr [rip + .Lx119_2]
 jmp .Lx119_3
.Lx119_2:
 .quad .Lx119_2_s
.Lx119_2_s:
 .string "c"
.Lx119_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 13232], rax
 mov qword ptr [rbp + 13240], rdx
 cmp eax, 99
 je xchain90_n27_α
 jmp xchain90_n26_α
 xchain90_n23_β:
 jmp xchain90_n27_α
 xchain90_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14384] -> [zr+14320]
 mov rax, qword ptr [rbp + 14384]
 mov qword ptr [rbp + 14320], rax
 mov rax, qword ptr [rbp + 14392]
 mov qword ptr [rbp + 14328], rax
# marshal arg1 = producer-box slot [zr+14272] -> [zr+14336]
 mov rax, qword ptr [rbp + 14272]
 mov qword ptr [rbp + 14336], rax
 mov rax, qword ptr [rbp + 14280]
 mov qword ptr [rbp + 14344], rax
# marshal arg2 = producer-box slot [zr+14240] -> [zr+14352]
 mov rax, qword ptr [rbp + 14240]
 mov qword ptr [rbp + 14352], rax
 mov rax, qword ptr [rbp + 14248]
 mov qword ptr [rbp + 14360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 14320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 14304], rax
 mov qword ptr [rbp + 14312], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n28_α
 xchain90_n24_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n25_α:
 mov qword ptr [rbp + 13680], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 13688], rax
 jmp xchain90_n29_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "c"
# IR_VAR_REF
 xchain90_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12736], rax
 mov qword ptr [rbp + 12744], rdx
 jmp xchain90_n30_α
 xchain90_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+12640]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 12640], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 12648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12624], rax
 mov qword ptr [rbp + 12632], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n31_α
 xchain90_n27_β:
 jmp proc_connect$2_ω
 xchain90_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14528] -> [zr+14464]
 mov rax, qword ptr [rbp + 14528]
 mov qword ptr [rbp + 14464], rax
 mov rax, qword ptr [rbp + 14536]
 mov qword ptr [rbp + 14472], rax
# marshal arg1 = producer-box slot [zr+14416] -> [zr+14480]
 mov rax, qword ptr [rbp + 14416]
 mov qword ptr [rbp + 14480], rax
 mov rax, qword ptr [rbp + 14424]
 mov qword ptr [rbp + 14488], rax
# marshal arg2 = producer-box slot [zr+14304] -> [zr+14496]
 mov rax, qword ptr [rbp + 14304]
 mov qword ptr [rbp + 14496], rax
 mov rax, qword ptr [rbp + 14312]
 mov qword ptr [rbp + 14504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 14464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 14448], rax
 mov qword ptr [rbp + 14456], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n32_α
 xchain90_n28_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n29_α:
 mov qword ptr [rbp + 13648], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 13656], rax
 jmp xchain90_n33_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n30_α:
 mov qword ptr [rbp + 13200], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 13208], rax
 jmp xchain90_n34_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12560], rax
 mov qword ptr [rbp + 12568], rdx
 jmp xchain90_n35_α
 xchain90_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14672] -> [zr+14608]
 mov rax, qword ptr [rbp + 14672]
 mov qword ptr [rbp + 14608], rax
 mov rax, qword ptr [rbp + 14680]
 mov qword ptr [rbp + 14616], rax
# marshal arg1 = producer-box slot [zr+14560] -> [zr+14624]
 mov rax, qword ptr [rbp + 14560]
 mov qword ptr [rbp + 14624], rax
 mov rax, qword ptr [rbp + 14568]
 mov qword ptr [rbp + 14632], rax
# marshal arg2 = producer-box slot [zr+14448] -> [zr+14640]
 mov rax, qword ptr [rbp + 14448]
 mov qword ptr [rbp + 14640], rax
 mov rax, qword ptr [rbp + 14456]
 mov qword ptr [rbp + 14648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 14608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 14592], rax
 mov qword ptr [rbp + 14600], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n36_α
 xchain90_n32_β:
 jmp xchain90_n5_α
# IR_LIT_STRING
 xchain90_n33_α:
 mov qword ptr [rbp + 13536], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 13544], rax
 jmp xchain90_n37_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "p"
# IR_LIT_STRING
 xchain90_n34_α:
 mov qword ptr [rbp + 13088], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain90_n38_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n35_α:
 mov qword ptr [rbp + 12592], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 12600], rax
 jmp xchain90_n39_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "d"
 xchain90_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14208] -> [zr+14160]
 mov rax, qword ptr [rbp + 14208]
 mov qword ptr [rbp + 14160], rax
 mov rax, qword ptr [rbp + 14216]
 mov qword ptr [rbp + 14168], rax
# marshal arg1 = producer-box slot [zr+14592] -> [zr+14176]
 mov rax, qword ptr [rbp + 14592]
 mov qword ptr [rbp + 14176], rax
 mov rax, qword ptr [rbp + 14600]
 mov qword ptr [rbp + 14184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 14160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 14144], rax
 mov qword ptr [rbp + 14152], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n40_α
 xchain90_n36_β:
 jmp xchain90_n5_α
# IR_LIT_STRING
 xchain90_n37_α:
 mov qword ptr [rbp + 13504], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [rbp + 13512], rax
 jmp xchain90_n41_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n38_α:
 mov qword ptr [rbp + 13056], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 13064], rax
 jmp xchain90_n42_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
 xchain90_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12560] -> [zr+12512]
 mov rax, qword ptr [rbp + 12560]
 mov qword ptr [rbp + 12512], rax
 mov rax, qword ptr [rbp + 12568]
 mov qword ptr [rbp + 12520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 12512]
 mov rsi, qword ptr [rip + .Lx137_2]
 jmp .Lx137_3
.Lx137_2:
 .quad .Lx137_2_s
.Lx137_2_s:
 .string "d"
.Lx137_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 12496], rax
 mov qword ptr [rbp + 12504], rdx
 cmp eax, 99
 je xchain90_n44_α
 jmp xchain90_n43_α
 xchain90_n39_β:
 jmp xchain90_n44_α
# IR_SUSPEND yield+resume
 xchain90_n40_α:
 lea rax, [rip + xchain90_n40_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n40_β:
 jmp xchain90_n5_α
 xchain90_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13648] -> [zr+13584]
 mov rax, qword ptr [rbp + 13648]
 mov qword ptr [rbp + 13584], rax
 mov rax, qword ptr [rbp + 13656]
 mov qword ptr [rbp + 13592], rax
# marshal arg1 = producer-box slot [zr+13536] -> [zr+13600]
 mov rax, qword ptr [rbp + 13536]
 mov qword ptr [rbp + 13600], rax
 mov rax, qword ptr [rbp + 13544]
 mov qword ptr [rbp + 13608], rax
# marshal arg2 = producer-box slot [zr+13504] -> [zr+13616]
 mov rax, qword ptr [rbp + 13504]
 mov qword ptr [rbp + 13616], rax
 mov rax, qword ptr [rbp + 13512]
 mov qword ptr [rbp + 13624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13568], rax
 mov qword ptr [rbp + 13576], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n45_α
 xchain90_n41_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n42_α:
 mov qword ptr [rbp + 12944], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 12952], rax
 jmp xchain90_n46_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "d"
# IR_VAR_REF
 xchain90_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain90_n47_α
 xchain90_n44_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11904]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11904], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11904]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n48_α
 xchain90_n44_β:
 jmp proc_connect$2_ω
 xchain90_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13792] -> [zr+13728]
 mov rax, qword ptr [rbp + 13792]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 13800]
 mov qword ptr [rbp + 13736], rax
# marshal arg1 = producer-box slot [zr+13680] -> [zr+13744]
 mov rax, qword ptr [rbp + 13680]
 mov qword ptr [rbp + 13744], rax
 mov rax, qword ptr [rbp + 13688]
 mov qword ptr [rbp + 13752], rax
# marshal arg2 = producer-box slot [zr+13568] -> [zr+13760]
 mov rax, qword ptr [rbp + 13568]
 mov qword ptr [rbp + 13760], rax
 mov rax, qword ptr [rbp + 13576]
 mov qword ptr [rbp + 13768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13712], rax
 mov qword ptr [rbp + 13720], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n49_α
 xchain90_n45_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n46_α:
 mov qword ptr [rbp + 12912], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 12920], rax
 jmp xchain90_n50_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n47_α:
 mov qword ptr [rbp + 12464], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 12472], rax
 jmp xchain90_n51_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11824], rax
 mov qword ptr [rbp + 11832], rdx
 jmp xchain90_n52_α
 xchain90_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13936] -> [zr+13872]
 mov rax, qword ptr [rbp + 13936]
 mov qword ptr [rbp + 13872], rax
 mov rax, qword ptr [rbp + 13944]
 mov qword ptr [rbp + 13880], rax
# marshal arg1 = producer-box slot [zr+13824] -> [zr+13888]
 mov rax, qword ptr [rbp + 13824]
 mov qword ptr [rbp + 13888], rax
 mov rax, qword ptr [rbp + 13832]
 mov qword ptr [rbp + 13896], rax
# marshal arg2 = producer-box slot [zr+13712] -> [zr+13904]
 mov rax, qword ptr [rbp + 13712]
 mov qword ptr [rbp + 13904], rax
 mov rax, qword ptr [rbp + 13720]
 mov qword ptr [rbp + 13912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13856], rax
 mov qword ptr [rbp + 13864], rdx
 cmp eax, 99
 je xchain90_n14_α
 jmp xchain90_n53_α
 xchain90_n49_β:
 jmp xchain90_n14_α
# IR_LIT_STRING
 xchain90_n50_α:
 mov qword ptr [rbp + 12800], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 12808], rax
 jmp xchain90_n54_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "l"
# IR_LIT_STRING
 xchain90_n51_α:
 mov qword ptr [rbp + 12352], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 12360], rax
 jmp xchain90_n55_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "c"
# IR_LIT_STRING
 xchain90_n52_α:
 mov qword ptr [rbp + 11856], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain90_n56_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "e"
 xchain90_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13472] -> [zr+13424]
 mov rax, qword ptr [rbp + 13472]
 mov qword ptr [rbp + 13424], rax
 mov rax, qword ptr [rbp + 13480]
 mov qword ptr [rbp + 13432], rax
# marshal arg1 = producer-box slot [zr+13856] -> [zr+13440]
 mov rax, qword ptr [rbp + 13856]
 mov qword ptr [rbp + 13440], rax
 mov rax, qword ptr [rbp + 13864]
 mov qword ptr [rbp + 13448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 13424]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 13408], rax
 mov qword ptr [rbp + 13416], rdx
 cmp eax, 99
 je xchain90_n14_α
 jmp xchain90_n57_α
 xchain90_n53_β:
 jmp xchain90_n14_α
# IR_LIT_STRING
 xchain90_n54_α:
 mov qword ptr [rbp + 12768], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [rbp + 12776], rax
 jmp xchain90_n58_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n55_α:
 mov qword ptr [rbp + 12320], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 12328], rax
 jmp xchain90_n59_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
 xchain90_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11824] -> [zr+11776]
 mov rax, qword ptr [rbp + 11824]
 mov qword ptr [rbp + 11776], rax
 mov rax, qword ptr [rbp + 11832]
 mov qword ptr [rbp + 11784], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 11776]
 mov rsi, qword ptr [rip + .Lx157_2]
 jmp .Lx157_3
.Lx157_2:
 .quad .Lx157_2_s
.Lx157_2_s:
 .string "e"
.Lx157_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 cmp eax, 99
 je xchain90_n61_α
 jmp xchain90_n60_α
 xchain90_n56_β:
 jmp xchain90_n61_α
# IR_SUSPEND yield+resume
 xchain90_n57_α:
 lea rax, [rip + xchain90_n57_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n57_β:
 jmp xchain90_n14_α
 xchain90_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12912] -> [zr+12848]
 mov rax, qword ptr [rbp + 12912]
 mov qword ptr [rbp + 12848], rax
 mov rax, qword ptr [rbp + 12920]
 mov qword ptr [rbp + 12856], rax
# marshal arg1 = producer-box slot [zr+12800] -> [zr+12864]
 mov rax, qword ptr [rbp + 12800]
 mov qword ptr [rbp + 12864], rax
 mov rax, qword ptr [rbp + 12808]
 mov qword ptr [rbp + 12872], rax
# marshal arg2 = producer-box slot [zr+12768] -> [zr+12880]
 mov rax, qword ptr [rbp + 12768]
 mov qword ptr [rbp + 12880], rax
 mov rax, qword ptr [rbp + 12776]
 mov qword ptr [rbp + 12888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n62_α
 xchain90_n58_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n59_α:
 mov qword ptr [rbp + 12208], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 12216], rax
 jmp xchain90_n63_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "e"
# IR_VAR_REF
 xchain90_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp xchain90_n64_α
 xchain90_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n65_α
 xchain90_n61_β:
 jmp proc_connect$2_ω
 xchain90_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13056] -> [zr+12992]
 mov rax, qword ptr [rbp + 13056]
 mov qword ptr [rbp + 12992], rax
 mov rax, qword ptr [rbp + 13064]
 mov qword ptr [rbp + 13000], rax
# marshal arg1 = producer-box slot [zr+12944] -> [zr+13008]
 mov rax, qword ptr [rbp + 12944]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 12952]
 mov qword ptr [rbp + 13016], rax
# marshal arg2 = producer-box slot [zr+12832] -> [zr+13024]
 mov rax, qword ptr [rbp + 12832]
 mov qword ptr [rbp + 13024], rax
 mov rax, qword ptr [rbp + 12840]
 mov qword ptr [rbp + 13032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n66_α
 xchain90_n62_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n63_α:
 mov qword ptr [rbp + 12176], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 12184], rax
 jmp xchain90_n67_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n64_α:
 mov qword ptr [rbp + 11728], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 11736], rax
 jmp xchain90_n68_α
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11088], rax
 mov qword ptr [rbp + 11096], rdx
 jmp xchain90_n69_α
 xchain90_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13200] -> [zr+13136]
 mov rax, qword ptr [rbp + 13200]
 mov qword ptr [rbp + 13136], rax
 mov rax, qword ptr [rbp + 13208]
 mov qword ptr [rbp + 13144], rax
# marshal arg1 = producer-box slot [zr+13088] -> [zr+13152]
 mov rax, qword ptr [rbp + 13088]
 mov qword ptr [rbp + 13152], rax
 mov rax, qword ptr [rbp + 13096]
 mov qword ptr [rbp + 13160], rax
# marshal arg2 = producer-box slot [zr+12976] -> [zr+13168]
 mov rax, qword ptr [rbp + 12976]
 mov qword ptr [rbp + 13168], rax
 mov rax, qword ptr [rbp + 12984]
 mov qword ptr [rbp + 13176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je xchain90_n27_α
 jmp xchain90_n70_α
 xchain90_n66_β:
 jmp xchain90_n27_α
# IR_LIT_STRING
 xchain90_n67_α:
 mov qword ptr [rbp + 12064], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 12072], rax
 jmp xchain90_n71_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "q"
# IR_LIT_STRING
 xchain90_n68_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain90_n72_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "d"
# IR_LIT_STRING
 xchain90_n69_α:
 mov qword ptr [rbp + 11120], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain90_n73_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "f"
 xchain90_n70_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12736] -> [zr+12688]
 mov rax, qword ptr [rbp + 12736]
 mov qword ptr [rbp + 12688], rax
 mov rax, qword ptr [rbp + 12744]
 mov qword ptr [rbp + 12696], rax
# marshal arg1 = producer-box slot [zr+13120] -> [zr+12704]
 mov rax, qword ptr [rbp + 13120]
 mov qword ptr [rbp + 12704], rax
 mov rax, qword ptr [rbp + 13128]
 mov qword ptr [rbp + 12712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 12688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 12672], rax
 mov qword ptr [rbp + 12680], rdx
 cmp eax, 99
 je xchain90_n27_α
 jmp xchain90_n74_α
 xchain90_n70_β:
 jmp xchain90_n27_α
# IR_LIT_STRING
 xchain90_n71_α:
 mov qword ptr [rbp + 12032], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 12040], rax
 jmp xchain90_n75_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n72_α:
 mov qword ptr [rbp + 11584], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 11592], rax
 jmp xchain90_n76_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "."
 xchain90_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11088] -> [zr+11040]
 mov rax, qword ptr [rbp + 11088]
 mov qword ptr [rbp + 11040], rax
 mov rax, qword ptr [rbp + 11096]
 mov qword ptr [rbp + 11048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 11040]
 mov rsi, qword ptr [rip + .Lx177_2]
 jmp .Lx177_3
.Lx177_2:
 .quad .Lx177_2_s
.Lx177_2_s:
 .string "f"
.Lx177_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 11024], rax
 mov qword ptr [rbp + 11032], rdx
 cmp eax, 99
 je xchain90_n78_α
 jmp xchain90_n77_α
 xchain90_n73_β:
 jmp xchain90_n78_α
# IR_SUSPEND yield+resume
 xchain90_n74_α:
 lea rax, [rip + xchain90_n74_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n74_β:
 jmp xchain90_n27_α
 xchain90_n75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12176] -> [zr+12112]
 mov rax, qword ptr [rbp + 12176]
 mov qword ptr [rbp + 12112], rax
 mov rax, qword ptr [rbp + 12184]
 mov qword ptr [rbp + 12120], rax
# marshal arg1 = producer-box slot [zr+12064] -> [zr+12128]
 mov rax, qword ptr [rbp + 12064]
 mov qword ptr [rbp + 12128], rax
 mov rax, qword ptr [rbp + 12072]
 mov qword ptr [rbp + 12136], rax
# marshal arg2 = producer-box slot [zr+12032] -> [zr+12144]
 mov rax, qword ptr [rbp + 12032]
 mov qword ptr [rbp + 12144], rax
 mov rax, qword ptr [rbp + 12040]
 mov qword ptr [rbp + 12152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12096], rax
 mov qword ptr [rbp + 12104], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n79_α
 xchain90_n75_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n76_α:
 mov qword ptr [rbp + 11472], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 11480], rax
 jmp xchain90_n80_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "f"
# IR_VAR_REF
 xchain90_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain90_n81_α
 xchain90_n78_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+10432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 10432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 10440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n82_α
 xchain90_n78_β:
 jmp proc_connect$2_ω
 xchain90_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12320] -> [zr+12256]
 mov rax, qword ptr [rbp + 12320]
 mov qword ptr [rbp + 12256], rax
 mov rax, qword ptr [rbp + 12328]
 mov qword ptr [rbp + 12264], rax
# marshal arg1 = producer-box slot [zr+12208] -> [zr+12272]
 mov rax, qword ptr [rbp + 12208]
 mov qword ptr [rbp + 12272], rax
 mov rax, qword ptr [rbp + 12216]
 mov qword ptr [rbp + 12280], rax
# marshal arg2 = producer-box slot [zr+12096] -> [zr+12288]
 mov rax, qword ptr [rbp + 12096]
 mov qword ptr [rbp + 12288], rax
 mov rax, qword ptr [rbp + 12104]
 mov qword ptr [rbp + 12296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12256]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12240], rax
 mov qword ptr [rbp + 12248], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n83_α
 xchain90_n79_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n80_α:
 mov qword ptr [rbp + 11440], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 11448], rax
 jmp xchain90_n84_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n81_α:
 mov qword ptr [rbp + 10992], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 11000], rax
 jmp xchain90_n85_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain90_n86_α
 xchain90_n83_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12464] -> [zr+12400]
 mov rax, qword ptr [rbp + 12464]
 mov qword ptr [rbp + 12400], rax
 mov rax, qword ptr [rbp + 12472]
 mov qword ptr [rbp + 12408], rax
# marshal arg1 = producer-box slot [zr+12352] -> [zr+12416]
 mov rax, qword ptr [rbp + 12352]
 mov qword ptr [rbp + 12416], rax
 mov rax, qword ptr [rbp + 12360]
 mov qword ptr [rbp + 12424], rax
# marshal arg2 = producer-box slot [zr+12240] -> [zr+12432]
 mov rax, qword ptr [rbp + 12240]
 mov qword ptr [rbp + 12432], rax
 mov rax, qword ptr [rbp + 12248]
 mov qword ptr [rbp + 12440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12384], rax
 mov qword ptr [rbp + 12392], rdx
 cmp eax, 99
 je xchain90_n44_α
 jmp xchain90_n87_α
 xchain90_n83_β:
 jmp xchain90_n44_α
# IR_LIT_STRING
 xchain90_n84_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain90_n88_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "m"
# IR_LIT_STRING
 xchain90_n85_α:
 mov qword ptr [rbp + 10880], 1
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [rbp + 10888], rax
 jmp xchain90_n89_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "e"
# IR_LIT_STRING
 xchain90_n86_α:
 mov qword ptr [rbp + 10384], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 10392], rax
 jmp xchain90_n90_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "g"
 xchain90_n87_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12000] -> [zr+11952]
 mov rax, qword ptr [rbp + 12000]
 mov qword ptr [rbp + 11952], rax
 mov rax, qword ptr [rbp + 12008]
 mov qword ptr [rbp + 11960], rax
# marshal arg1 = producer-box slot [zr+12384] -> [zr+11968]
 mov rax, qword ptr [rbp + 12384]
 mov qword ptr [rbp + 11968], rax
 mov rax, qword ptr [rbp + 12392]
 mov qword ptr [rbp + 11976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11952]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11936], rax
 mov qword ptr [rbp + 11944], rdx
 cmp eax, 99
 je xchain90_n44_α
 jmp xchain90_n91_α
 xchain90_n87_β:
 jmp xchain90_n44_α
# IR_LIT_STRING
 xchain90_n88_α:
 mov qword ptr [rbp + 11296], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 11304], rax
 jmp xchain90_n92_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n89_α:
 mov qword ptr [rbp + 10848], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 10856], rax
 jmp xchain90_n93_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "."
 xchain90_n90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10352] -> [zr+10304]
 mov rax, qword ptr [rbp + 10352]
 mov qword ptr [rbp + 10304], rax
 mov rax, qword ptr [rbp + 10360]
 mov qword ptr [rbp + 10312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 10304]
 mov rsi, qword ptr [rip + .Lx197_2]
 jmp .Lx197_3
.Lx197_2:
 .quad .Lx197_2_s
.Lx197_2_s:
 .string "g"
.Lx197_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 10288], rax
 mov qword ptr [rbp + 10296], rdx
 cmp eax, 99
 je xchain90_n95_α
 jmp xchain90_n94_α
 xchain90_n90_β:
 jmp xchain90_n95_α
# IR_SUSPEND yield+resume
 xchain90_n91_α:
 lea rax, [rip + xchain90_n91_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n91_β:
 jmp xchain90_n44_α
 xchain90_n92_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11440] -> [zr+11376]
 mov rax, qword ptr [rbp + 11440]
 mov qword ptr [rbp + 11376], rax
 mov rax, qword ptr [rbp + 11448]
 mov qword ptr [rbp + 11384], rax
# marshal arg1 = producer-box slot [zr+11328] -> [zr+11392]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11400], rax
# marshal arg2 = producer-box slot [zr+11296] -> [zr+11408]
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11408], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n96_α
 xchain90_n92_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n93_α:
 mov qword ptr [rbp + 10736], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 10744], rax
 jmp xchain90_n97_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "g"
# IR_VAR_REF
 xchain90_n94_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 jmp xchain90_n98_α
 xchain90_n95_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+9696]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 9704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9696]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n99_α
 xchain90_n95_β:
 jmp proc_connect$2_ω
 xchain90_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11584] -> [zr+11520]
 mov rax, qword ptr [rbp + 11584]
 mov qword ptr [rbp + 11520], rax
 mov rax, qword ptr [rbp + 11592]
 mov qword ptr [rbp + 11528], rax
# marshal arg1 = producer-box slot [zr+11472] -> [zr+11536]
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11536], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11544], rax
# marshal arg2 = producer-box slot [zr+11360] -> [zr+11552]
 mov rax, qword ptr [rbp + 11360]
 mov qword ptr [rbp + 11552], rax
 mov rax, qword ptr [rbp + 11368]
 mov qword ptr [rbp + 11560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11520]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n100_α
 xchain90_n96_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n97_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain90_n101_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n98_α:
 mov qword ptr [rbp + 10256], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 10264], rax
 jmp xchain90_n102_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 jmp xchain90_n103_α
 xchain90_n100_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11728] -> [zr+11664]
 mov rax, qword ptr [rbp + 11728]
 mov qword ptr [rbp + 11664], rax
 mov rax, qword ptr [rbp + 11736]
 mov qword ptr [rbp + 11672], rax
# marshal arg1 = producer-box slot [zr+11616] -> [zr+11680]
 mov rax, qword ptr [rbp + 11616]
 mov qword ptr [rbp + 11680], rax
 mov rax, qword ptr [rbp + 11624]
 mov qword ptr [rbp + 11688], rax
# marshal arg2 = producer-box slot [zr+11504] -> [zr+11696]
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 11696], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 11704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11664]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11648], rax
 mov qword ptr [rbp + 11656], rdx
 cmp eax, 99
 je xchain90_n61_α
 jmp xchain90_n104_α
 xchain90_n100_β:
 jmp xchain90_n61_α
# IR_LIT_STRING
 xchain90_n101_α:
 mov qword ptr [rbp + 10592], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 10600], rax
 jmp xchain90_n105_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "r"
# IR_LIT_STRING
 xchain90_n102_α:
 mov qword ptr [rbp + 10144], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 10152], rax
 jmp xchain90_n106_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "f"
# IR_LIT_STRING
 xchain90_n103_α:
 mov qword ptr [rbp + 9648], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 9656], rax
 jmp xchain90_n107_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "h"
 xchain90_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11264] -> [zr+11216]
 mov rax, qword ptr [rbp + 11264]
 mov qword ptr [rbp + 11216], rax
 mov rax, qword ptr [rbp + 11272]
 mov qword ptr [rbp + 11224], rax
# marshal arg1 = producer-box slot [zr+11648] -> [zr+11232]
 mov rax, qword ptr [rbp + 11648]
 mov qword ptr [rbp + 11232], rax
 mov rax, qword ptr [rbp + 11656]
 mov qword ptr [rbp + 11240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
 cmp eax, 99
 je xchain90_n61_α
 jmp xchain90_n108_α
 xchain90_n104_β:
 jmp xchain90_n61_α
# IR_LIT_STRING
 xchain90_n105_α:
 mov qword ptr [rbp + 10560], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 10568], rax
 jmp xchain90_n109_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n106_α:
 mov qword ptr [rbp + 10112], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 10120], rax
 jmp xchain90_n110_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "."
 xchain90_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9616] -> [zr+9568]
 mov rax, qword ptr [rbp + 9616]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9624]
 mov qword ptr [rbp + 9576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9568]
 mov rsi, qword ptr [rip + .Lx217_2]
 jmp .Lx217_3
.Lx217_2:
 .quad .Lx217_2_s
.Lx217_2_s:
 .string "h"
.Lx217_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain90_n112_α
 jmp xchain90_n111_α
 xchain90_n107_β:
 jmp xchain90_n112_α
# IR_SUSPEND yield+resume
 xchain90_n108_α:
 lea rax, [rip + xchain90_n108_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n108_β:
 jmp xchain90_n61_α
 xchain90_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10704] -> [zr+10640]
 mov rax, qword ptr [rbp + 10704]
 mov qword ptr [rbp + 10640], rax
 mov rax, qword ptr [rbp + 10712]
 mov qword ptr [rbp + 10648], rax
# marshal arg1 = producer-box slot [zr+10592] -> [zr+10656]
 mov rax, qword ptr [rbp + 10592]
 mov qword ptr [rbp + 10656], rax
 mov rax, qword ptr [rbp + 10600]
 mov qword ptr [rbp + 10664], rax
# marshal arg2 = producer-box slot [zr+10560] -> [zr+10672]
 mov rax, qword ptr [rbp + 10560]
 mov qword ptr [rbp + 10672], rax
 mov rax, qword ptr [rbp + 10568]
 mov qword ptr [rbp + 10680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10640]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10624], rax
 mov qword ptr [rbp + 10632], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n113_α
 xchain90_n109_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n110_α:
 mov qword ptr [rbp + 10000], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 10008], rax
 jmp xchain90_n114_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "h"
# IR_VAR_REF
 xchain90_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain90_n115_α
 xchain90_n112_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8960]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8960]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n116_α
 xchain90_n112_β:
 jmp proc_connect$2_ω
 xchain90_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10848] -> [zr+10784]
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 10784], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 10792], rax
# marshal arg1 = producer-box slot [zr+10736] -> [zr+10800]
 mov rax, qword ptr [rbp + 10736]
 mov qword ptr [rbp + 10800], rax
 mov rax, qword ptr [rbp + 10744]
 mov qword ptr [rbp + 10808], rax
# marshal arg2 = producer-box slot [zr+10624] -> [zr+10816]
 mov rax, qword ptr [rbp + 10624]
 mov qword ptr [rbp + 10816], rax
 mov rax, qword ptr [rbp + 10632]
 mov qword ptr [rbp + 10824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10768], rax
 mov qword ptr [rbp + 10776], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n117_α
 xchain90_n113_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n114_α:
 mov qword ptr [rbp + 9968], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 9976], rax
 jmp xchain90_n118_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n115_α:
 mov qword ptr [rbp + 9520], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 9528], rax
 jmp xchain90_n119_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain90_n120_α
 xchain90_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10992] -> [zr+10928]
 mov rax, qword ptr [rbp + 10992]
 mov qword ptr [rbp + 10928], rax
 mov rax, qword ptr [rbp + 11000]
 mov qword ptr [rbp + 10936], rax
# marshal arg1 = producer-box slot [zr+10880] -> [zr+10944]
 mov rax, qword ptr [rbp + 10880]
 mov qword ptr [rbp + 10944], rax
 mov rax, qword ptr [rbp + 10888]
 mov qword ptr [rbp + 10952], rax
# marshal arg2 = producer-box slot [zr+10768] -> [zr+10960]
 mov rax, qword ptr [rbp + 10768]
 mov qword ptr [rbp + 10960], rax
 mov rax, qword ptr [rbp + 10776]
 mov qword ptr [rbp + 10968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10912], rax
 mov qword ptr [rbp + 10920], rdx
 cmp eax, 99
 je xchain90_n78_α
 jmp xchain90_n121_α
 xchain90_n117_β:
 jmp xchain90_n78_α
# IR_LIT_STRING
 xchain90_n118_α:
 mov qword ptr [rbp + 9856], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 9864], rax
 jmp xchain90_n122_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "n"
# IR_LIT_STRING
 xchain90_n119_α:
 mov qword ptr [rbp + 9408], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 9416], rax
 jmp xchain90_n123_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "i"
# IR_LIT_STRING
 xchain90_n120_α:
 mov qword ptr [rbp + 8912], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain90_n124_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "i"
 xchain90_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10528] -> [zr+10480]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10480], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10488], rax
# marshal arg1 = producer-box slot [zr+10912] -> [zr+10496]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10496], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 10480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 cmp eax, 99
 je xchain90_n78_α
 jmp xchain90_n125_α
 xchain90_n121_β:
 jmp xchain90_n78_α
# IR_LIT_STRING
 xchain90_n122_α:
 mov qword ptr [rbp + 9824], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 9832], rax
 jmp xchain90_n126_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n123_α:
 mov qword ptr [rbp + 9376], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 9384], rax
 jmp xchain90_n127_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "."
 xchain90_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8880] -> [zr+8832]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8832]
 mov rsi, qword ptr [rip + .Lx237_2]
 jmp .Lx237_3
.Lx237_2:
 .quad .Lx237_2_s
.Lx237_2_s:
 .string "i"
.Lx237_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 cmp eax, 99
 je xchain90_n129_α
 jmp xchain90_n128_α
 xchain90_n124_β:
 jmp xchain90_n129_α
# IR_SUSPEND yield+resume
 xchain90_n125_α:
 lea rax, [rip + xchain90_n125_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n125_β:
 jmp xchain90_n78_α
 xchain90_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9968] -> [zr+9904]
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
# marshal arg1 = producer-box slot [zr+9856] -> [zr+9920]
 mov rax, qword ptr [rbp + 9856]
 mov qword ptr [rbp + 9920], rax
 mov rax, qword ptr [rbp + 9864]
 mov qword ptr [rbp + 9928], rax
# marshal arg2 = producer-box slot [zr+9824] -> [zr+9936]
 mov rax, qword ptr [rbp + 9824]
 mov qword ptr [rbp + 9936], rax
 mov rax, qword ptr [rbp + 9832]
 mov qword ptr [rbp + 9944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9888], rax
 mov qword ptr [rbp + 9896], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n130_α
 xchain90_n126_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n127_α:
 mov qword ptr [rbp + 9264], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 9272], rax
 jmp xchain90_n131_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "g"
# IR_VAR_REF
 xchain90_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain90_n132_α
 xchain90_n129_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8224]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8224]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n133_α
 xchain90_n129_β:
 jmp proc_connect$2_ω
 xchain90_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10112] -> [zr+10048]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 10048], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 10056], rax
# marshal arg1 = producer-box slot [zr+10000] -> [zr+10064]
 mov rax, qword ptr [rbp + 10000]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10008]
 mov qword ptr [rbp + 10072], rax
# marshal arg2 = producer-box slot [zr+9888] -> [zr+10080]
 mov rax, qword ptr [rbp + 9888]
 mov qword ptr [rbp + 10080], rax
 mov rax, qword ptr [rbp + 9896]
 mov qword ptr [rbp + 10088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10048]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n134_α
 xchain90_n130_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n131_α:
 mov qword ptr [rbp + 9232], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 9240], rax
 jmp xchain90_n135_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n132_α:
 mov qword ptr [rbp + 8784], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 8792], rax
 jmp xchain90_n136_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain90_n137_α
 xchain90_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10256] -> [zr+10192]
 mov rax, qword ptr [rbp + 10256]
 mov qword ptr [rbp + 10192], rax
 mov rax, qword ptr [rbp + 10264]
 mov qword ptr [rbp + 10200], rax
# marshal arg1 = producer-box slot [zr+10144] -> [zr+10208]
 mov rax, qword ptr [rbp + 10144]
 mov qword ptr [rbp + 10208], rax
 mov rax, qword ptr [rbp + 10152]
 mov qword ptr [rbp + 10216], rax
# marshal arg2 = producer-box slot [zr+10032] -> [zr+10224]
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10224], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10192]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10176], rax
 mov qword ptr [rbp + 10184], rdx
 cmp eax, 99
 je xchain90_n95_α
 jmp xchain90_n138_α
 xchain90_n134_β:
 jmp xchain90_n95_α
# IR_LIT_STRING
 xchain90_n135_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 9128], rax
 jmp xchain90_n139_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "s"
# IR_LIT_STRING
 xchain90_n136_α:
 mov qword ptr [rbp + 8672], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 8680], rax
 jmp xchain90_n140_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "j"
# IR_LIT_STRING
 xchain90_n137_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain90_n141_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "j"
 xchain90_n138_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9744]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9752], rax
# marshal arg1 = producer-box slot [zr+10176] -> [zr+9760]
 mov rax, qword ptr [rbp + 10176]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 10184]
 mov qword ptr [rbp + 9768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9728], rax
 mov qword ptr [rbp + 9736], rdx
 cmp eax, 99
 je xchain90_n95_α
 jmp xchain90_n142_α
 xchain90_n138_β:
 jmp xchain90_n95_α
# IR_LIT_STRING
 xchain90_n139_α:
 mov qword ptr [rbp + 9088], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 9096], rax
 jmp xchain90_n143_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n140_α:
 mov qword ptr [rbp + 8640], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 8648], rax
 jmp xchain90_n144_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
 xchain90_n141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8144] -> [zr+8096]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8096]
 mov rsi, qword ptr [rip + .Lx257_2]
 jmp .Lx257_3
.Lx257_2:
 .quad .Lx257_2_s
.Lx257_2_s:
 .string "j"
.Lx257_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain90_n146_α
 jmp xchain90_n145_α
 xchain90_n141_β:
 jmp xchain90_n146_α
# IR_SUSPEND yield+resume
 xchain90_n142_α:
 lea rax, [rip + xchain90_n142_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n142_β:
 jmp xchain90_n95_α
 xchain90_n143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9232] -> [zr+9168]
 mov rax, qword ptr [rbp + 9232]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 9240]
 mov qword ptr [rbp + 9176], rax
# marshal arg1 = producer-box slot [zr+9120] -> [zr+9184]
 mov rax, qword ptr [rbp + 9120]
 mov qword ptr [rbp + 9184], rax
 mov rax, qword ptr [rbp + 9128]
 mov qword ptr [rbp + 9192], rax
# marshal arg2 = producer-box slot [zr+9088] -> [zr+9200]
 mov rax, qword ptr [rbp + 9088]
 mov qword ptr [rbp + 9200], rax
 mov rax, qword ptr [rbp + 9096]
 mov qword ptr [rbp + 9208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n147_α
 xchain90_n143_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n144_α:
 mov qword ptr [rbp + 8528], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain90_n148_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "h"
# IR_VAR_REF
 xchain90_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain90_n149_α
 xchain90_n146_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7488]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n150_α
 xchain90_n146_β:
 jmp proc_connect$2_ω
 xchain90_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9376] -> [zr+9312]
 mov rax, qword ptr [rbp + 9376]
 mov qword ptr [rbp + 9312], rax
 mov rax, qword ptr [rbp + 9384]
 mov qword ptr [rbp + 9320], rax
# marshal arg1 = producer-box slot [zr+9264] -> [zr+9328]
 mov rax, qword ptr [rbp + 9264]
 mov qword ptr [rbp + 9328], rax
 mov rax, qword ptr [rbp + 9272]
 mov qword ptr [rbp + 9336], rax
# marshal arg2 = producer-box slot [zr+9152] -> [zr+9344]
 mov rax, qword ptr [rbp + 9152]
 mov qword ptr [rbp + 9344], rax
 mov rax, qword ptr [rbp + 9160]
 mov qword ptr [rbp + 9352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n151_α
 xchain90_n147_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n148_α:
 mov qword ptr [rbp + 8496], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 8504], rax
 jmp xchain90_n152_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n149_α:
 mov qword ptr [rbp + 8048], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain90_n153_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n150_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain90_n154_α
 xchain90_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9520] -> [zr+9456]
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 9456], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 9464], rax
# marshal arg1 = producer-box slot [zr+9408] -> [zr+9472]
 mov rax, qword ptr [rbp + 9408]
 mov qword ptr [rbp + 9472], rax
 mov rax, qword ptr [rbp + 9416]
 mov qword ptr [rbp + 9480], rax
# marshal arg2 = producer-box slot [zr+9296] -> [zr+9488]
 mov rax, qword ptr [rbp + 9296]
 mov qword ptr [rbp + 9488], rax
 mov rax, qword ptr [rbp + 9304]
 mov qword ptr [rbp + 9496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 cmp eax, 99
 je xchain90_n112_α
 jmp xchain90_n155_α
 xchain90_n151_β:
 jmp xchain90_n112_α
# IR_LIT_STRING
 xchain90_n152_α:
 mov qword ptr [rbp + 8384], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 8392], rax
 jmp xchain90_n156_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "o"
# IR_LIT_STRING
 xchain90_n153_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain90_n157_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "a"
# IR_LIT_STRING
 xchain90_n154_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain90_n158_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "k"
 xchain90_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9056] -> [zr+9008]
 mov rax, qword ptr [rbp + 9056]
 mov qword ptr [rbp + 9008], rax
 mov rax, qword ptr [rbp + 9064]
 mov qword ptr [rbp + 9016], rax
# marshal arg1 = producer-box slot [zr+9440] -> [zr+9024]
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 9024], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 9032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain90_n112_α
 jmp xchain90_n159_α
 xchain90_n155_β:
 jmp xchain90_n112_α
# IR_LIT_STRING
 xchain90_n156_α:
 mov qword ptr [rbp + 8352], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 8360], rax
 jmp xchain90_n160_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n157_α:
 mov qword ptr [rbp + 7904], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain90_n161_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "."
 xchain90_n158_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7408] -> [zr+7360]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7368], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7360]
 mov rsi, qword ptr [rip + .Lx277_2]
 jmp .Lx277_3
.Lx277_2:
 .quad .Lx277_2_s
.Lx277_2_s:
 .string "k"
.Lx277_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain90_n163_α
 jmp xchain90_n162_α
 xchain90_n158_β:
 jmp xchain90_n163_α
# IR_SUSPEND yield+resume
 xchain90_n159_α:
 lea rax, [rip + xchain90_n159_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n159_β:
 jmp xchain90_n112_α
 xchain90_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8496] -> [zr+8432]
 mov rax, qword ptr [rbp + 8496]
 mov qword ptr [rbp + 8432], rax
 mov rax, qword ptr [rbp + 8504]
 mov qword ptr [rbp + 8440], rax
# marshal arg1 = producer-box slot [zr+8384] -> [zr+8448]
 mov rax, qword ptr [rbp + 8384]
 mov qword ptr [rbp + 8448], rax
 mov rax, qword ptr [rbp + 8392]
 mov qword ptr [rbp + 8456], rax
# marshal arg2 = producer-box slot [zr+8352] -> [zr+8464]
 mov rax, qword ptr [rbp + 8352]
 mov qword ptr [rbp + 8464], rax
 mov rax, qword ptr [rbp + 8360]
 mov qword ptr [rbp + 8472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n164_α
 xchain90_n160_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n161_α:
 mov qword ptr [rbp + 7792], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 7800], rax
 jmp xchain90_n165_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "i"
# IR_VAR_REF
 xchain90_n162_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain90_n166_α
 xchain90_n163_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6752]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6752], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n167_α
 xchain90_n163_β:
 jmp proc_connect$2_ω
 xchain90_n164_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8640] -> [zr+8576]
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8576], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8584], rax
# marshal arg1 = producer-box slot [zr+8528] -> [zr+8592]
 mov rax, qword ptr [rbp + 8528]
 mov qword ptr [rbp + 8592], rax
 mov rax, qword ptr [rbp + 8536]
 mov qword ptr [rbp + 8600], rax
# marshal arg2 = producer-box slot [zr+8416] -> [zr+8608]
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 8608], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 8616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n168_α
 xchain90_n164_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n165_α:
 mov qword ptr [rbp + 7760], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 7768], rax
 jmp xchain90_n169_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n166_α:
 mov qword ptr [rbp + 7312], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain90_n170_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain90_n171_α
 xchain90_n168_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8784] -> [zr+8720]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8720], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8728], rax
# marshal arg1 = producer-box slot [zr+8672] -> [zr+8736]
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8736], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8744], rax
# marshal arg2 = producer-box slot [zr+8560] -> [zr+8752]
 mov rax, qword ptr [rbp + 8560]
 mov qword ptr [rbp + 8752], rax
 mov rax, qword ptr [rbp + 8568]
 mov qword ptr [rbp + 8760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain90_n129_α
 jmp xchain90_n172_α
 xchain90_n168_β:
 jmp xchain90_n129_α
# IR_LIT_STRING
 xchain90_n169_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain90_n173_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "t"
# IR_LIT_STRING
 xchain90_n170_α:
 mov qword ptr [rbp + 7200], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain90_n174_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "o"
# IR_LIT_STRING
 xchain90_n171_α:
 mov qword ptr [rbp + 6704], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 6712], rax
 jmp xchain90_n175_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "l"
 xchain90_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8320] -> [zr+8272]
 mov rax, qword ptr [rbp + 8320]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8328]
 mov qword ptr [rbp + 8280], rax
# marshal arg1 = producer-box slot [zr+8704] -> [zr+8288]
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8288], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8272]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 cmp eax, 99
 je xchain90_n129_α
 jmp xchain90_n176_α
 xchain90_n172_β:
 jmp xchain90_n129_α
# IR_LIT_STRING
 xchain90_n173_α:
 mov qword ptr [rbp + 7616], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain90_n177_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n174_α:
 mov qword ptr [rbp + 7168], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 7176], rax
 jmp xchain90_n178_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
 xchain90_n175_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6624]
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6624]
 mov rsi, qword ptr [rip + .Lx297_2]
 jmp .Lx297_3
.Lx297_2:
 .quad .Lx297_2_s
.Lx297_2_s:
 .string "l"
.Lx297_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je xchain90_n180_α
 jmp xchain90_n179_α
 xchain90_n175_β:
 jmp xchain90_n180_α
# IR_SUSPEND yield+resume
 xchain90_n176_α:
 lea rax, [rip + xchain90_n176_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n176_β:
 jmp xchain90_n129_α
 xchain90_n177_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7760] -> [zr+7696]
 mov rax, qword ptr [rbp + 7760]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7768]
 mov qword ptr [rbp + 7704], rax
# marshal arg1 = producer-box slot [zr+7648] -> [zr+7712]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7720], rax
# marshal arg2 = producer-box slot [zr+7616] -> [zr+7728]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7728], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7696]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n181_α
 xchain90_n177_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n178_α:
 mov qword ptr [rbp + 7056], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [rbp + 7064], rax
 jmp xchain90_n182_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "l"
# IR_VAR_REF
 xchain90_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain90_n183_α
 xchain90_n180_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6016]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6016]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n184_α
 xchain90_n180_β:
 jmp proc_connect$2_ω
 xchain90_n181_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7904] -> [zr+7840]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 7848], rax
# marshal arg1 = producer-box slot [zr+7792] -> [zr+7856]
 mov rax, qword ptr [rbp + 7792]
 mov qword ptr [rbp + 7856], rax
 mov rax, qword ptr [rbp + 7800]
 mov qword ptr [rbp + 7864], rax
# marshal arg2 = producer-box slot [zr+7680] -> [zr+7872]
 mov rax, qword ptr [rbp + 7680]
 mov qword ptr [rbp + 7872], rax
 mov rax, qword ptr [rbp + 7688]
 mov qword ptr [rbp + 7880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7824], rax
 mov qword ptr [rbp + 7832], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n185_α
 xchain90_n181_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n182_α:
 mov qword ptr [rbp + 7024], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 7032], rax
 jmp xchain90_n186_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n183_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain90_n187_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n184_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain90_n188_α
 xchain90_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8048] -> [zr+7984]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 7992], rax
# marshal arg1 = producer-box slot [zr+7936] -> [zr+8000]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 8008], rax
# marshal arg2 = producer-box slot [zr+7824] -> [zr+8016]
 mov rax, qword ptr [rbp + 7824]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 7832]
 mov qword ptr [rbp + 8024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain90_n146_α
 jmp xchain90_n189_α
 xchain90_n185_β:
 jmp xchain90_n146_α
# IR_LIT_STRING
 xchain90_n186_α:
 mov qword ptr [rbp + 6912], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 6920], rax
 jmp xchain90_n190_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "a"
# IR_LIT_STRING
 xchain90_n187_α:
 mov qword ptr [rbp + 6464], 1
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain90_n191_α
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "k"
# IR_LIT_STRING
 xchain90_n188_α:
 mov qword ptr [rbp + 5968], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 5976], rax
 jmp xchain90_n192_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "m"
 xchain90_n189_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7536]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7544], rax
# marshal arg1 = producer-box slot [zr+7968] -> [zr+7552]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 7560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7536]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain90_n146_α
 jmp xchain90_n193_α
 xchain90_n189_β:
 jmp xchain90_n146_α
# IR_LIT_STRING
 xchain90_n190_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain90_n194_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n191_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain90_n195_α
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "."
 xchain90_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5936] -> [zr+5888]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 5896], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5888]
 mov rsi, qword ptr [rip + .Lx317_2]
 jmp .Lx317_3
.Lx317_2:
 .quad .Lx317_2_s
.Lx317_2_s:
 .string "m"
.Lx317_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain90_n197_α
 jmp xchain90_n196_α
 xchain90_n192_β:
 jmp xchain90_n197_α
# IR_SUSPEND yield+resume
 xchain90_n193_α:
 lea rax, [rip + xchain90_n193_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n193_β:
 jmp xchain90_n146_α
 xchain90_n194_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7024] -> [zr+6960]
 mov rax, qword ptr [rbp + 7024]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 7032]
 mov qword ptr [rbp + 6968], rax
# marshal arg1 = producer-box slot [zr+6912] -> [zr+6976]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6976], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6984], rax
# marshal arg2 = producer-box slot [zr+6880] -> [zr+6992]
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 6992], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 7000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n198_α
 xchain90_n194_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n195_α:
 mov qword ptr [rbp + 6320], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain90_n199_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "m"
# IR_VAR_REF
 xchain90_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain90_n200_α
 xchain90_n197_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5280]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5280]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n201_α
 xchain90_n197_β:
 jmp proc_connect$2_ω
 xchain90_n198_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7168] -> [zr+7104]
 mov rax, qword ptr [rbp + 7168]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7176]
 mov qword ptr [rbp + 7112], rax
# marshal arg1 = producer-box slot [zr+7056] -> [zr+7120]
 mov rax, qword ptr [rbp + 7056]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 7064]
 mov qword ptr [rbp + 7128], rax
# marshal arg2 = producer-box slot [zr+6944] -> [zr+7136]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 7136], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 7144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n202_α
 xchain90_n198_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n199_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain90_n203_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n200_α:
 mov qword ptr [rbp + 5840], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 5848], rax
 jmp xchain90_n204_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain90_n205_α
 xchain90_n202_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7312] -> [zr+7248]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7248], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7256], rax
# marshal arg1 = producer-box slot [zr+7200] -> [zr+7264]
 mov rax, qword ptr [rbp + 7200]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7208]
 mov qword ptr [rbp + 7272], rax
# marshal arg2 = producer-box slot [zr+7088] -> [zr+7280]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain90_n163_α
 jmp xchain90_n206_α
 xchain90_n202_β:
 jmp xchain90_n163_α
# IR_LIT_STRING
 xchain90_n203_α:
 mov qword ptr [rbp + 6176], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain90_n207_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "c"
# IR_LIT_STRING
 xchain90_n204_α:
 mov qword ptr [rbp + 5728], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain90_n208_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "l"
# IR_LIT_STRING
 xchain90_n205_α:
 mov qword ptr [rbp + 5232], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain90_n209_α
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "n"
 xchain90_n206_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6800]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6808], rax
# marshal arg1 = producer-box slot [zr+7232] -> [zr+6816]
 mov rax, qword ptr [rbp + 7232]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 7240]
 mov qword ptr [rbp + 6824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je xchain90_n163_α
 jmp xchain90_n210_α
 xchain90_n206_β:
 jmp xchain90_n163_α
# IR_LIT_STRING
 xchain90_n207_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain90_n211_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n208_α:
 mov qword ptr [rbp + 5696], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain90_n212_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "."
 xchain90_n209_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5152]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5160], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5152]
 mov rsi, qword ptr [rip + .Lx337_2]
 jmp .Lx337_3
.Lx337_2:
 .quad .Lx337_2_s
.Lx337_2_s:
 .string "n"
.Lx337_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain90_n214_α
 jmp xchain90_n213_α
 xchain90_n209_β:
 jmp xchain90_n214_α
# IR_SUSPEND yield+resume
 xchain90_n210_α:
 lea rax, [rip + xchain90_n210_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n210_β:
 jmp xchain90_n163_α
 xchain90_n211_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6224]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6232], rax
# marshal arg1 = producer-box slot [zr+6176] -> [zr+6240]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6248], rax
# marshal arg2 = producer-box slot [zr+6144] -> [zr+6256]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n215_α
 xchain90_n211_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n212_α:
 mov qword ptr [rbp + 5584], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 5592], rax
 jmp xchain90_n216_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "n"
# IR_VAR_REF
 xchain90_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain90_n217_α
 xchain90_n214_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4544]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4544]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n218_α
 xchain90_n214_β:
 jmp proc_connect$2_ω
 xchain90_n215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6368]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6376], rax
# marshal arg1 = producer-box slot [zr+6320] -> [zr+6384]
 mov rax, qword ptr [rbp + 6320]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6328]
 mov qword ptr [rbp + 6392], rax
# marshal arg2 = producer-box slot [zr+6208] -> [zr+6400]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 6408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n219_α
 xchain90_n215_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n216_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain90_n220_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n217_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain90_n221_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n218_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain90_n222_α
 xchain90_n219_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6512]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6520], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6528]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6536], rax
# marshal arg2 = producer-box slot [zr+6352] -> [zr+6544]
 mov rax, qword ptr [rbp + 6352]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6360]
 mov qword ptr [rbp + 6552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je xchain90_n180_α
 jmp xchain90_n223_α
 xchain90_n219_β:
 jmp xchain90_n180_α
# IR_LIT_STRING
 xchain90_n220_α:
 mov qword ptr [rbp + 5440], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 5448], rax
 jmp xchain90_n224_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "e"
# IR_LIT_STRING
 xchain90_n221_α:
 mov qword ptr [rbp + 4992], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 5000], rax
 jmp xchain90_n225_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "m"
# IR_LIT_STRING
 xchain90_n222_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain90_n226_α
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "o"
 xchain90_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# marshal arg1 = producer-box slot [zr+6496] -> [zr+6080]
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 6088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain90_n180_α
 jmp xchain90_n227_α
 xchain90_n223_β:
 jmp xchain90_n180_α
# IR_LIT_STRING
 xchain90_n224_α:
 mov qword ptr [rbp + 5408], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain90_n228_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n225_α:
 mov qword ptr [rbp + 4960], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 4968], rax
 jmp xchain90_n229_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "."
 xchain90_n226_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4464] -> [zr+4416]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4416]
 mov rsi, qword ptr [rip + .Lx357_2]
 jmp .Lx357_3
.Lx357_2:
 .quad .Lx357_2_s
.Lx357_2_s:
 .string "o"
.Lx357_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain90_n231_α
 jmp xchain90_n230_α
 xchain90_n226_β:
 jmp xchain90_n231_α
# IR_SUSPEND yield+resume
 xchain90_n227_α:
 lea rax, [rip + xchain90_n227_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n227_β:
 jmp xchain90_n180_α
 xchain90_n228_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5488]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+5440] -> [zr+5504]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5512], rax
# marshal arg2 = producer-box slot [zr+5408] -> [zr+5520]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n232_α
 xchain90_n228_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n229_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain90_n233_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "o"
# IR_VAR_REF
 xchain90_n230_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain90_n234_α
 xchain90_n231_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3808]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3808]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n235_α
 xchain90_n231_β:
 jmp proc_connect$2_ω
 xchain90_n232_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5584] -> [zr+5648]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5472] -> [zr+5664]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n236_α
 xchain90_n232_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n233_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain90_n237_α
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n234_α:
 mov qword ptr [rbp + 4368], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [rbp + 4376], rax
 jmp xchain90_n238_α
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain90_n239_α
 xchain90_n236_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5776]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5792]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5800], rax
# marshal arg2 = producer-box slot [zr+5616] -> [zr+5808]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain90_n197_α
 jmp xchain90_n240_α
 xchain90_n236_β:
 jmp xchain90_n197_α
# IR_LIT_STRING
 xchain90_n237_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain90_n241_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "g"
# IR_LIT_STRING
 xchain90_n238_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain90_n242_α
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "n"
# IR_LIT_STRING
 xchain90_n239_α:
 mov qword ptr [rbp + 3760], 1
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain90_n243_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "p"
 xchain90_n240_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5376] -> [zr+5328]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5336], rax
# marshal arg1 = producer-box slot [zr+5760] -> [zr+5344]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5328]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain90_n197_α
 jmp xchain90_n244_α
 xchain90_n240_β:
 jmp xchain90_n197_α
# IR_LIT_STRING
 xchain90_n241_α:
 mov qword ptr [rbp + 4672], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 4680], rax
 jmp xchain90_n245_α
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n242_α:
 mov qword ptr [rbp + 4224], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 4232], rax
 jmp xchain90_n246_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
 xchain90_n243_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3728] -> [zr+3680]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3688], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3680]
 mov rsi, qword ptr [rip + .Lx377_2]
 jmp .Lx377_3
.Lx377_2:
 .quad .Lx377_2_s
.Lx377_2_s:
 .string "p"
.Lx377_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 cmp eax, 99
 je xchain90_n248_α
 jmp xchain90_n247_α
 xchain90_n243_β:
 jmp xchain90_n248_α
# IR_SUSPEND yield+resume
 xchain90_n244_α:
 lea rax, [rip + xchain90_n244_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n244_β:
 jmp xchain90_n197_α
 xchain90_n245_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4752]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+4704] -> [zr+4768]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4776], rax
# marshal arg2 = producer-box slot [zr+4672] -> [zr+4784]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n249_α
 xchain90_n245_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n246_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain90_n250_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "k"
# IR_VAR_REF
 xchain90_n247_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain90_n251_α
 xchain90_n248_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3072]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n252_α
 xchain90_n248_β:
 jmp proc_connect$2_ω
 xchain90_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4960] -> [zr+4896]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 4904], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+4912]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4920], rax
# marshal arg2 = producer-box slot [zr+4736] -> [zr+4928]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n253_α
 xchain90_n249_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n250_α:
 mov qword ptr [rbp + 4080], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 4088], rax
 jmp xchain90_n254_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n251_α:
 mov qword ptr [rbp + 3632], 1
 mov rax, qword ptr [rip + .Lx387_0]
 mov qword ptr [rbp + 3640], rax
 jmp xchain90_n255_α
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n252_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain90_n256_α
 xchain90_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5040]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5048], rax
# marshal arg1 = producer-box slot [zr+4992] -> [zr+5056]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 5064], rax
# marshal arg2 = producer-box slot [zr+4880] -> [zr+5072]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain90_n214_α
 jmp xchain90_n257_α
 xchain90_n253_β:
 jmp xchain90_n214_α
# IR_LIT_STRING
 xchain90_n254_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain90_n258_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "i"
# IR_LIT_STRING
 xchain90_n255_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain90_n259_α
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n256_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain90_n260_α
.Lx393_0:
 .quad .Lx393_0_s
.Lx393_0_s:
 .string "q"
 xchain90_n257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4592]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4600], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4608]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain90_n214_α
 jmp xchain90_n261_α
 xchain90_n257_β:
 jmp xchain90_n214_α
# IR_LIT_STRING
 xchain90_n258_α:
 mov qword ptr [rbp + 3936], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 3944], rax
 jmp xchain90_n262_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n259_α:
 mov qword ptr [rbp + 3488], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [rbp + 3496], rax
 jmp xchain90_n263_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "."
 xchain90_n260_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2992] -> [zr+2944]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2952], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2944]
 mov rsi, qword ptr [rip + .Lx397_2]
 jmp .Lx397_3
.Lx397_2:
 .quad .Lx397_2_s
.Lx397_2_s:
 .string "q"
.Lx397_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp eax, 99
 je xchain90_n265_α
 jmp xchain90_n264_α
 xchain90_n260_β:
 jmp xchain90_n265_α
# IR_SUSPEND yield+resume
 xchain90_n261_α:
 lea rax, [rip + xchain90_n261_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n261_β:
 jmp xchain90_n214_α
 xchain90_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4016]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4024], rax
# marshal arg1 = producer-box slot [zr+3968] -> [zr+4032]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4040], rax
# marshal arg2 = producer-box slot [zr+3936] -> [zr+4048]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n266_α
 xchain90_n262_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n263_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain90_n267_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "q"
# IR_VAR_REF
 xchain90_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain90_n268_α
 xchain90_n265_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2336]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n269_α
 xchain90_n265_β:
 jmp proc_connect$2_ω
 xchain90_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4160]
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4168], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+4176]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4184], rax
# marshal arg2 = producer-box slot [zr+4000] -> [zr+4192]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 4200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4160]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n270_α
 xchain90_n266_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n267_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain90_n271_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n268_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain90_n272_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain90_n273_α
 xchain90_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4368] -> [zr+4304]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4312], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4320]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4328], rax
# marshal arg2 = producer-box slot [zr+4144] -> [zr+4336]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain90_n231_α
 jmp xchain90_n274_α
 xchain90_n270_β:
 jmp xchain90_n231_α
# IR_LIT_STRING
 xchain90_n271_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain90_n275_α
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "t"
# IR_LIT_STRING
 xchain90_n272_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain90_n276_α
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "p"
# IR_LIT_STRING
 xchain90_n273_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain90_n277_α
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string "r"
 xchain90_n274_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3864], rax
# marshal arg1 = producer-box slot [zr+4288] -> [zr+3872]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 3880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3856]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain90_n231_α
 jmp xchain90_n278_α
 xchain90_n274_β:
 jmp xchain90_n231_α
# IR_LIT_STRING
 xchain90_n275_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain90_n279_α
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n276_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain90_n280_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "."
 xchain90_n277_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2208]
 mov rsi, qword ptr [rip + .Lx417_2]
 jmp .Lx417_3
.Lx417_2:
 .quad .Lx417_2_s
.Lx417_2_s:
 .string "r"
.Lx417_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain90_n282_α
 jmp xchain90_n281_α
 xchain90_n277_β:
 jmp xchain90_n282_α
# IR_SUSPEND yield+resume
 xchain90_n278_α:
 lea rax, [rip + xchain90_n278_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n278_β:
 jmp xchain90_n231_α
 xchain90_n279_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3280]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3288], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3296]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3304], rax
# marshal arg2 = producer-box slot [zr+3200] -> [zr+3312]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n283_α
 xchain90_n279_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n280_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain90_n284_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "r"
# IR_VAR_REF
 xchain90_n281_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain90_n285_α
 xchain90_n282_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1600]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n286_α
 xchain90_n282_β:
 jmp proc_connect$2_ω
 xchain90_n283_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3488] -> [zr+3424]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3432], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3440]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3448], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3456]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n287_α
 xchain90_n283_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n284_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain90_n288_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n285_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain90_n289_α
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n286_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain90_n290_α
 xchain90_n287_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3568]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3576], rax
# marshal arg1 = producer-box slot [zr+3520] -> [zr+3584]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3592], rax
# marshal arg2 = producer-box slot [zr+3408] -> [zr+3600]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain90_n248_α
 jmp xchain90_n291_α
 xchain90_n287_β:
 jmp xchain90_n248_α
# IR_LIT_STRING
 xchain90_n288_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain90_n292_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "d"
# IR_LIT_STRING
 xchain90_n289_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain90_n293_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "q"
# IR_LIT_STRING
 xchain90_n290_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain90_n294_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "s"
 xchain90_n291_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3120]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3128], rax
# marshal arg1 = producer-box slot [zr+3552] -> [zr+3136]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain90_n248_α
 jmp xchain90_n295_α
 xchain90_n291_β:
 jmp xchain90_n248_α
# IR_LIT_STRING
 xchain90_n292_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain90_n296_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n293_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain90_n297_α
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "."
 xchain90_n294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1472]
 mov rsi, qword ptr [rip + .Lx437_2]
 jmp .Lx437_3
.Lx437_2:
 .quad .Lx437_2_s
.Lx437_2_s:
 .string "s"
.Lx437_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain90_n299_α
 jmp xchain90_n298_α
 xchain90_n294_β:
 jmp xchain90_n299_α
# IR_SUSPEND yield+resume
 xchain90_n295_α:
 lea rax, [rip + xchain90_n295_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n295_β:
 jmp xchain90_n248_α
 xchain90_n296_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2560]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2464] -> [zr+2576]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n300_α
 xchain90_n296_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n297_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain90_n301_α
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "s"
# IR_VAR_REF
 xchain90_n298_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain90_n302_α
 xchain90_n299_α:
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
 je proc_connect$2_ω
 jmp xchain90_n303_α
 xchain90_n299_β:
 jmp proc_connect$2_ω
 xchain90_n300_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2688]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2704]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2712], rax
# marshal arg2 = producer-box slot [zr+2528] -> [zr+2720]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n304_α
 xchain90_n300_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n301_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain90_n305_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n302_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain90_n306_α
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n303_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain90_n307_α
 xchain90_n304_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2832]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2848]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2856], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2864]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain90_n265_α
 jmp xchain90_n308_α
 xchain90_n304_β:
 jmp xchain90_n265_α
# IR_LIT_STRING
 xchain90_n305_α:
 mov qword ptr [rbp + 1760], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain90_n309_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "f"
# IR_LIT_STRING
 xchain90_n306_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain90_n310_α
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "r"
# IR_LIT_STRING
 xchain90_n307_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain90_n311_α
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "t"
 xchain90_n308_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2384]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2400]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain90_n265_α
 jmp xchain90_n312_α
 xchain90_n308_β:
 jmp xchain90_n265_α
# IR_LIT_STRING
 xchain90_n309_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain90_n313_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n310_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain90_n314_α
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "."
 xchain90_n311_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 736]
 mov rsi, qword ptr [rip + .Lx457_2]
 jmp .Lx457_3
.Lx457_2:
 .quad .Lx457_2_s
.Lx457_2_s:
 .string "t"
.Lx457_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain90_n316_α
 jmp xchain90_n315_α
 xchain90_n311_β:
 jmp xchain90_n316_α
# IR_SUSPEND yield+resume
 xchain90_n312_α:
 lea rax, [rip + xchain90_n312_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n312_β:
 jmp xchain90_n265_α
 xchain90_n313_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1808]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1824]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1832], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1840]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1808]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n317_α
 xchain90_n313_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n314_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain90_n318_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "t"
# IR_VAR_REF
 xchain90_n315_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain90_n319_α
 xchain90_n316_α:
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
 je proc_connect$2_ω
 jmp proc_connect$2_ω
 xchain90_n316_β:
 jmp proc_connect$2_ω
 xchain90_n317_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1968]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1976], rax
# marshal arg2 = producer-box slot [zr+1792] -> [zr+1984]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n320_α
 xchain90_n317_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n318_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain90_n321_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n319_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain90_n322_α
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "."
 xchain90_n320_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2096]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2104], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2112]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2120], rax
# marshal arg2 = producer-box slot [zr+1936] -> [zr+2128]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2096]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain90_n282_α
 jmp xchain90_n323_α
 xchain90_n320_β:
 jmp xchain90_n282_α
# IR_LIT_STRING
 xchain90_n321_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx469_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain90_n324_α
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "h"
# IR_LIT_STRING
 xchain90_n322_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain90_n325_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "p"
 xchain90_n323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+1664]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain90_n282_α
 jmp xchain90_n326_α
 xchain90_n323_β:
 jmp xchain90_n282_α
# IR_LIT_STRING
 xchain90_n324_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain90_n327_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n325_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain90_n328_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain90_n326_α:
 lea rax, [rip + xchain90_n326_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n326_β:
 jmp xchain90_n282_α
 xchain90_n327_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n329_α
 xchain90_n327_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n328_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain90_n330_α
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "s"
 xchain90_n329_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1232]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1248]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain90_n331_α
 xchain90_n329_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain90_n330_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain90_n332_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "."
 xchain90_n331_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1376]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+1392]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain90_n299_α
 jmp xchain90_n333_α
 xchain90_n331_β:
 jmp xchain90_n299_α
# IR_LIT_STRING
 xchain90_n332_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain90_n334_α
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "j"
 xchain90_n333_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+928]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain90_n299_α
 jmp xchain90_n335_α
 xchain90_n333_β:
 jmp xchain90_n299_α
# IR_LIT_STRING
 xchain90_n334_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain90_n336_α
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "[]"
# IR_SUSPEND yield+resume
 xchain90_n335_α:
 lea rax, [rip + xchain90_n335_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n335_β:
 jmp xchain90_n299_α
 xchain90_n336_α:
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
 je proc_connect$2_ω
 jmp xchain90_n337_α
 xchain90_n336_β:
 jmp proc_connect$2_ω
 xchain90_n337_α:
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
 je proc_connect$2_ω
 jmp xchain90_n338_α
 xchain90_n337_β:
 jmp proc_connect$2_ω
 xchain90_n338_α:
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
 je xchain90_n316_α
 jmp xchain90_n339_α
 xchain90_n338_β:
 jmp xchain90_n316_α
 xchain90_n339_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+192]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain90_n316_α
 jmp xchain90_n340_α
 xchain90_n339_β:
 jmp xchain90_n316_α
# IR_SUSPEND yield+resume
 xchain90_n340_α:
 lea rax, [rip + xchain90_n340_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain90_n340_β:
 jmp xchain90_n316_α
proc_connect$2_res:
add rsp, 8
pop rbp
proc_connect$2_β:
jmp qword ptr [rbp + 14832]
proc_connect$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_connect$2_res]
push rax
mov rax, [rbp + 14872]
mov rbp, [rbp + 14888]
jmp rax
proc_connect$2_ω:
mov rax, [rbp + 14880]
lea rsp, [rbp + 14896]
mov rbp, [rbp + 14888]
jmp rax
  .globl proc_cycle_ham$2_α
proc_cycle_ham$2_α:
#=======================================================================================================================
    .global proc_cycle_ham$2_α
    .global proc_cycle_ham$2_β
    .global proc_cycle_ham$2_γ
    .global proc_cycle_ham$2_ω
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
proc_cycle_ham$2_α_body:
lea rax, [rip + xchain492_n28_β]
mov qword ptr [rbp + 1376], rax
 xchain492_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_cycle_ham$2_ω
 jmp xchain492_n1_α
 xchain492_n0_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain492_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain492_n2_α
# IR_VAR_REF
 xchain492_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain492_n3_α
# IR_VAR_REF
 xchain492_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain492_n4_α
 xchain492_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1248]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1280]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n5_α
 xchain492_n4_β:
 jmp xchain492_n6_α
# IR_VAR_REF
 xchain492_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain492_n7_α
 xchain492_n6_α:
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
 je proc_cycle_ham$2_ω
 jmp proc_cycle_ham$2_ω
 xchain492_n6_β:
 jmp proc_cycle_ham$2_ω
# IR_LIT_STRING
 xchain492_n7_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain492_n8_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain492_n9_α
# IR_LIT_STRING
 xchain492_n9_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain492_n10_α
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain492_n11_α
# IR_VAR_REF
 xchain492_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain492_n12_α
 xchain492_n12_α:
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
# marshal arg2 = producer-box slot [zr+880] -> [zr+992]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je proc_cycle_ham$2_ω
 jmp xchain492_n13_α
 xchain492_n12_β:
 jmp proc_cycle_ham$2_ω
 xchain492_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1120]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1128], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1136]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n14_α
 xchain492_n13_β:
 jmp xchain492_n6_α
 xchain492_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+816]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n15_α
 xchain492_n14_β:
 jmp xchain492_n6_α
# IR_LIT_STRING
 xchain492_n15_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain492_n16_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain492_n17_α
# IR_VAR_REF
 xchain492_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain492_n18_α
 xchain492_n18_α:
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
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n19_α
 xchain492_n18_β:
 jmp xchain492_n6_α
# IR_LIT_STRING
 xchain492_n19_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain492_n20_α
.Lx521_0:
 .quad .Lx521_0_s
.Lx521_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain492_n20_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain492_n21_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain492_n22_α
# IR_VAR_REF
 xchain492_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain492_n23_α
 xchain492_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+704]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 712], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+720]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n24_α
 xchain492_n23_β:
 jmp xchain492_n6_α
 xchain492_n24_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx529_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx529_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx529_3]
 lea rdx, [rip + .Lx529_4]
 jmp rax
.Lx529_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx529_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx529_2
.Lx529_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx529_2
.Lx529_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx529_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx529_2
.Lx529_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx529_2
.Lx529_1:
 call rt_faildescr@PLT
.Lx529_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n25_α
 xchain492_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "chain_ham/3"
# IR_VAR_REF
 xchain492_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain492_n26_α
# IR_VAR_REF
 xchain492_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain492_n27_α
 xchain492_n27_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx535_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx535_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx535_3]
 lea rdx, [rip + .Lx535_4]
 jmp rax
.Lx535_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx535_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx535_2
.Lx535_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx535_2
.Lx535_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx535_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx535_2
.Lx535_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx535_2
.Lx535_1:
 call rt_faildescr@PLT
.Lx535_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain492_n24_β
 jmp xchain492_n28_α
 xchain492_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "edge/2"
# IR_SUSPEND yield+resume
 xchain492_n28_α:
 lea rax, [rip + xchain492_n28_β]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_cycle_ham$2_γ
 xchain492_n28_β:
 jmp xchain492_n27_β
proc_cycle_ham$2_res:
add rsp, 8
pop rbp
proc_cycle_ham$2_β:
jmp qword ptr [rbp + 1376]
proc_cycle_ham$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_cycle_ham$2_res]
push rax
mov rax, [rbp + 1480]
mov rbp, [rbp + 1496]
jmp rax
proc_cycle_ham$2_ω:
mov rax, [rbp + 1488]
lea rsp, [rbp + 1504]
mov rbp, [rbp + 1496]
jmp rax
  .globl proc_ham1$1_α
proc_ham1$1_α:
#=======================================================================================================================
    .global proc_ham1$1_α
    .global proc_ham1$1_β
    .global proc_ham1$1_γ
    .global proc_ham1$1_ω
  sub rsp, 3376
  mov [rsp + 3352], rcx
  mov [rsp + 3360], rdx
  mov [rsp + 3368], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3320], rsp
  mov rdi, rsp
  mov esi, 3296
  mov edx, 3344
  call rt_jmp_frame_lexprep2@PLT
proc_ham1$1_α_body:
lea rax, [rip + xchain538_n68_β]
mov qword ptr [rbp + 3296], rax
 xchain538_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain538_n1_α
 xchain538_n0_β:
 jmp proc_ham1$1_ω
# IR_VAR_REF
 xchain538_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain538_n2_α
# IR_VAR_REF
 xchain538_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain538_n3_α
 xchain538_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3232] -> [zr+3184]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3192], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3200]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain538_n5_α
 jmp xchain538_n4_α
 xchain538_n3_β:
 jmp xchain538_n5_α
# IR_LIT_STRING
 xchain538_n4_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain538_n6_α
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "."
 xchain538_n5_α:
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
 je proc_ham1$1_ω
 jmp proc_ham1$1_ω
 xchain538_n5_β:
 jmp proc_ham1$1_ω
# IR_LIT_STRING
 xchain538_n6_α:
 mov qword ptr [rbp + 2992], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain538_n7_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "a"
# IR_LIT_STRING
 xchain538_n7_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain538_n8_α
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n8_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain538_n9_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "b"
# IR_LIT_STRING
 xchain538_n9_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain538_n10_α
.Lx550_0:
 .quad .Lx550_0_s
.Lx550_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n10_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain538_n11_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "c"
# IR_LIT_STRING
 xchain538_n11_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain538_n12_α
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n12_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain538_n13_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "d"
# IR_LIT_STRING
 xchain538_n13_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain538_n14_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n14_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain538_n15_α
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "e"
# IR_LIT_STRING
 xchain538_n15_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain538_n16_α
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n16_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain538_n17_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "f"
# IR_LIT_STRING
 xchain538_n17_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain538_n18_α
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n18_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx559_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain538_n19_α
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "g"
# IR_LIT_STRING
 xchain538_n19_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain538_n20_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n20_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain538_n21_α
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "h"
# IR_LIT_STRING
 xchain538_n21_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain538_n22_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n22_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain538_n23_α
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "i"
# IR_LIT_STRING
 xchain538_n23_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain538_n24_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n24_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain538_n25_α
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "j"
# IR_LIT_STRING
 xchain538_n25_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain538_n26_α
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n26_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain538_n27_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "k"
# IR_LIT_STRING
 xchain538_n27_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain538_n28_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n28_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain538_n29_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "l"
# IR_LIT_STRING
 xchain538_n29_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain538_n30_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n30_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain538_n31_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "m"
# IR_LIT_STRING
 xchain538_n31_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain538_n32_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n32_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain538_n33_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "n"
# IR_LIT_STRING
 xchain538_n33_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain538_n34_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n34_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain538_n35_α
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "o"
# IR_LIT_STRING
 xchain538_n35_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain538_n36_α
.Lx576_0:
 .quad .Lx576_0_s
.Lx576_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n36_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain538_n37_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "p"
# IR_LIT_STRING
 xchain538_n37_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain538_n38_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n38_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain538_n39_α
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "q"
# IR_LIT_STRING
 xchain538_n39_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain538_n40_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n40_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain538_n41_α
.Lx581_0:
 .quad .Lx581_0_s
.Lx581_0_s:
 .string "r"
# IR_LIT_STRING
 xchain538_n41_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain538_n42_α
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n42_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain538_n43_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "s"
# IR_LIT_STRING
 xchain538_n43_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain538_n44_α
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n44_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain538_n45_α
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "t"
# IR_LIT_STRING
 xchain538_n45_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain538_n46_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "[]"
 xchain538_n46_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n47_α
 xchain538_n46_β:
 jmp proc_ham1$1_ω
 xchain538_n47_α:
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
# marshal arg2 = producer-box slot [zr+288] -> [zr+480]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain538_n48_α
 xchain538_n47_β:
 jmp proc_ham1$1_ω
 xchain538_n48_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n49_α
 xchain538_n48_β:
 jmp proc_ham1$1_ω
 xchain538_n49_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n50_α
 xchain538_n49_β:
 jmp proc_ham1$1_ω
 xchain538_n50_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n51_α
 xchain538_n50_β:
 jmp proc_ham1$1_ω
 xchain538_n51_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n52_α
 xchain538_n51_β:
 jmp proc_ham1$1_ω
 xchain538_n52_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n53_α
 xchain538_n52_β:
 jmp proc_ham1$1_ω
 xchain538_n53_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n54_α
 xchain538_n53_β:
 jmp proc_ham1$1_ω
 xchain538_n54_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n55_α
 xchain538_n54_β:
 jmp proc_ham1$1_ω
 xchain538_n55_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n56_α
 xchain538_n55_β:
 jmp proc_ham1$1_ω
 xchain538_n56_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n57_α
 xchain538_n56_β:
 jmp proc_ham1$1_ω
 xchain538_n57_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n58_α
 xchain538_n57_β:
 jmp proc_ham1$1_ω
 xchain538_n58_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n59_α
 xchain538_n58_β:
 jmp proc_ham1$1_ω
 xchain538_n59_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n60_α
 xchain538_n59_β:
 jmp proc_ham1$1_ω
 xchain538_n60_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n61_α
 xchain538_n60_β:
 jmp proc_ham1$1_ω
 xchain538_n61_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n62_α
 xchain538_n61_β:
 jmp proc_ham1$1_ω
 xchain538_n62_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n63_α
 xchain538_n62_β:
 jmp proc_ham1$1_ω
 xchain538_n63_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n64_α
 xchain538_n63_β:
 jmp proc_ham1$1_ω
 xchain538_n64_α:
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
 je proc_ham1$1_ω
 jmp xchain538_n65_α
 xchain538_n64_β:
 jmp proc_ham1$1_ω
 xchain538_n65_α:
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
 je xchain538_n5_α
 jmp xchain538_n66_α
 xchain538_n65_β:
 jmp xchain538_n5_α
# IR_VAR_REF
 xchain538_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain538_n67_α
 xchain538_n67_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx610_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx610_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx610_3]
 lea rdx, [rip + .Lx610_4]
 jmp rax
.Lx610_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx610_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx610_2
.Lx610_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx610_2
.Lx610_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx610_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx610_2
.Lx610_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx610_2
.Lx610_1:
 call rt_faildescr@PLT
.Lx610_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain538_n5_α
 jmp xchain538_n68_α
 xchain538_n67_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "cycle_ham/2"
# IR_SUSPEND yield+resume
 xchain538_n68_α:
 lea rax, [rip + xchain538_n68_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_ham1$1_γ
 xchain538_n68_β:
 jmp xchain538_n67_β
proc_ham1$1_res:
add rsp, 8
pop rbp
proc_ham1$1_β:
jmp qword ptr [rbp + 3296]
proc_ham1$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_ham1$1_res]
push rax
mov rax, [rbp + 3352]
mov rbp, [rbp + 3368]
jmp rax
proc_ham1$1_ω:
mov rax, [rbp + 3360]
lea rsp, [rbp + 3376]
mov rbp, [rbp + 3368]
jmp rax
  .globl proc_chain_ham$3_α
proc_chain_ham$3_α:
#=======================================================================================================================
    .global proc_chain_ham$3_α
    .global proc_chain_ham$3_β
    .global proc_chain_ham$3_γ
    .global proc_chain_ham$3_ω
  sub rsp, 2208
  mov [rsp + 2184], rcx
  mov [rsp + 2192], rdx
  mov [rsp + 2200], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2072], rsp
  mov rdi, rsp
  mov esi, 2048
  mov edx, 2176
  call rt_jmp_frame_lexprep2@PLT
proc_chain_ham$3_α_body:
lea rax, [rip + xchain613_n23_β]
mov qword ptr [rbp + 2048], rax
 xchain613_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp xchain613_n1_α
 xchain613_n0_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain613_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain613_n2_α
# IR_LIT_STRING
 xchain613_n2_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain613_n3_α
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "."
# IR_VAR_REF
 xchain613_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain613_n4_α
# IR_LIT_STRING
 xchain613_n4_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx620_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain613_n5_α
.Lx620_0:
 .quad .Lx620_0_s
.Lx620_0_s:
 .string "[]"
 xchain613_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1968]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1976], rax
# marshal arg2 = producer-box slot [zr+1872] -> [zr+1984]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain613_n7_α
 jmp xchain613_n6_α
 xchain613_n5_β:
 jmp xchain613_n7_α
 xchain613_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1808]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain613_n7_α
 jmp xchain613_n8_α
 xchain613_n6_β:
 jmp xchain613_n7_α
 xchain613_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1440]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp xchain613_n9_α
 xchain613_n7_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain613_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain613_n10_α
# IR_VAR_REF
 xchain613_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain613_n11_α
# IR_VAR_REF
 xchain613_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain613_n12_α
# IR_VAR_REF
 xchain613_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain613_n13_α
 xchain613_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain613_n7_α
 jmp xchain613_n14_α
 xchain613_n12_β:
 jmp xchain613_n7_α
# IR_VAR_REF
 xchain613_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain613_n15_α
# IR_VAR_REF
 xchain613_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain613_n16_α
 xchain613_n15_α:
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
 je xchain613_n18_α
 jmp xchain613_n17_α
 xchain613_n15_β:
 jmp xchain613_n18_α
# IR_VAR_REF
 xchain613_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain613_n19_α
# IR_VAR_REF
 xchain613_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain613_n20_α
 xchain613_n18_α:
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
 je proc_chain_ham$3_ω
 jmp proc_chain_ham$3_ω
 xchain613_n18_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain613_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain613_n21_α
# IR_VAR_REF
 xchain613_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain613_n22_α
 xchain613_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1520]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg2 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain613_n7_α
 jmp xchain613_n23_α
 xchain613_n21_β:
 jmp xchain613_n7_α
 xchain613_n22_α:
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
 je xchain613_n18_α
 jmp xchain613_n24_α
 xchain613_n22_β:
 jmp xchain613_n18_α
# IR_SUSPEND yield+resume
 xchain613_n23_α:
 lea rax, [rip + xchain613_n23_β]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$3_γ
 xchain613_n23_β:
 jmp xchain613_n7_α
# IR_VAR_REF
 xchain613_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain613_n25_α
# IR_VAR_REF
 xchain613_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain613_n26_α
 xchain613_n26_α:
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
 je xchain613_n18_α
 jmp xchain613_n27_α
 xchain613_n26_β:
 jmp xchain613_n18_α
# IR_VAR_REF
 xchain613_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain613_n28_α
# IR_VAR_REF
 xchain613_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain613_n29_α
# IR_VAR_REF
 xchain613_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain613_n30_α
 xchain613_n30_α:
 mov qword ptr [rbp + 864], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx663_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx663_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx663_3]
 lea rdx, [rip + .Lx663_4]
 jmp rax
.Lx663_3:
 mov qword ptr [rbp + 872], rsp
 mov rax, qword ptr [rbp + 864]
 test rax, rax
 jne .Lx663_5
 mov qword ptr [rbp + 864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx663_2
.Lx663_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx663_2
.Lx663_4:
 mov rax, qword ptr [rbp + 864]
 test rax, rax
 jne .Lx663_6
 mov qword ptr [rbp + 864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx663_2
.Lx663_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx663_2
.Lx663_1:
 call rt_faildescr@PLT
.Lx663_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain613_n18_α
 jmp xchain613_n31_α
 xchain613_n30_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 872]
 jmp qword ptr [rsp]
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string "del/3"
# IR_VAR_REF
 xchain613_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain613_n32_α
# IR_VAR_REF
 xchain613_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain613_n33_α
 xchain613_n33_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx669_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx669_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx669_3]
 lea rdx, [rip + .Lx669_4]
 jmp rax
.Lx669_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx669_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx669_2
.Lx669_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx669_2
.Lx669_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx669_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx669_2
.Lx669_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx669_2
.Lx669_1:
 call rt_faildescr@PLT
.Lx669_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain613_n30_β
 jmp xchain613_n34_α
 xchain613_n33_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx669_0:
 .quad .Lx669_0_s
.Lx669_0_s:
 .string "edge/2"
# IR_LIT_STRING
 xchain613_n34_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx670_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain613_n35_α
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string "."
# IR_VAR_REF
 xchain613_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain613_n36_α
# IR_VAR_REF
 xchain613_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain613_n37_α
 xchain613_n37_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+368]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+384]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain613_n18_α
 jmp xchain613_n38_α
 xchain613_n37_β:
 jmp xchain613_n18_α
# IR_LIT_STRING
 xchain613_n38_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx676_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain613_n39_α
.Lx676_0:
 .quad .Lx676_0_s
.Lx676_0_s:
 .string "."
# IR_VAR_REF
 xchain613_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain613_n40_α
# IR_VAR_REF
 xchain613_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain613_n41_α
 xchain613_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+544]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+560]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain613_n18_α
 jmp xchain613_n42_α
 xchain613_n41_β:
 jmp xchain613_n18_α
# IR_VAR_REF
 xchain613_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain613_n43_α
 xchain613_n43_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx685_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx685_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx685_3]
 lea rdx, [rip + .Lx685_4]
 jmp rax
.Lx685_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx685_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx685_2
.Lx685_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx685_2
.Lx685_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx685_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx685_2
.Lx685_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx685_2
.Lx685_1:
 call rt_faildescr@PLT
.Lx685_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain613_n33_β
 jmp xchain613_n44_α
 xchain613_n43_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx685_0:
 .quad .Lx685_0_s
.Lx685_0_s:
 .string "chain_ham/3"
# IR_SUSPEND yield+resume
 xchain613_n44_α:
 lea rax, [rip + xchain613_n44_β]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$3_γ
 xchain613_n44_β:
 jmp xchain613_n43_β
proc_chain_ham$3_res:
add rsp, 8
pop rbp
proc_chain_ham$3_β:
jmp qword ptr [rbp + 2048]
proc_chain_ham$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_chain_ham$3_res]
push rax
mov rax, [rbp + 2184]
mov rbp, [rbp + 2200]
jmp rax
proc_chain_ham$3_ω:
mov rax, [rbp + 2192]
lea rsp, [rbp + 2208]
mov rbp, [rbp + 2200]
jmp rax
  .globl proc_edge$2_α
proc_edge$2_α:
#=======================================================================================================================
    .global proc_edge$2_α
    .global proc_edge$2_β
    .global proc_edge$2_γ
    .global proc_edge$2_ω
  sub rsp, 816
  mov [rsp + 792], rcx
  mov [rsp + 800], rdx
  mov [rsp + 808], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 704
  mov edx, 784
  call rt_jmp_frame_lexprep2@PLT
proc_edge$2_α_body:
lea rax, [rip + xchain688_n14_β]
mov qword ptr [rbp + 704], rax
 xchain688_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_edge$2_ω
 jmp xchain688_n1_α
 xchain688_n0_β:
 jmp proc_edge$2_ω
# IR_VAR_REF
 xchain688_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain688_n2_α
# IR_VAR_REF
 xchain688_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain688_n3_α
 xchain688_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain688_n5_α
 jmp xchain688_n4_α
 xchain688_n3_β:
 jmp xchain688_n5_α
# IR_VAR_REF
 xchain688_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain688_n6_α
 xchain688_n5_α:
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
 je proc_edge$2_ω
 jmp proc_edge$2_ω
 xchain688_n5_β:
 jmp proc_edge$2_ω
# IR_VAR_REF
 xchain688_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain688_n7_α
 xchain688_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain688_n5_α
 jmp xchain688_n8_α
 xchain688_n7_β:
 jmp xchain688_n5_α
# IR_VAR_REF
 xchain688_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain688_n9_α
# IR_VAR_REF
 xchain688_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain688_n10_α
 xchain688_n10_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx706_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx706_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx706_3]
 lea rdx, [rip + .Lx706_4]
 jmp rax
.Lx706_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx706_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx706_2
.Lx706_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx706_2
.Lx706_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx706_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx706_2
.Lx706_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx706_2
.Lx706_1:
 call rt_faildescr@PLT
.Lx706_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain688_n5_α
 jmp xchain688_n11_α
 xchain688_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx706_0:
 .quad .Lx706_0_s
.Lx706_0_s:
 .string "connect/2"
# IR_VAR_REF
 xchain688_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain688_n12_α
# IR_VAR_REF
 xchain688_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain688_n13_α
 xchain688_n13_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx712_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx712_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx712_3]
 lea rdx, [rip + .Lx712_4]
 jmp rax
.Lx712_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx712_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx712_2
.Lx712_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx712_2
.Lx712_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx712_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx712_2
.Lx712_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx712_2
.Lx712_1:
 call rt_faildescr@PLT
.Lx712_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain688_n10_β
 jmp xchain688_n14_α
 xchain688_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx712_0:
 .quad .Lx712_0_s
.Lx712_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain688_n14_α:
 lea rax, [rip + xchain688_n14_β]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_edge$2_γ
 xchain688_n14_β:
 jmp xchain688_n13_β
proc_edge$2_res:
add rsp, 8
pop rbp
proc_edge$2_β:
jmp qword ptr [rbp + 704]
proc_edge$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_edge$2_res]
push rax
mov rax, [rbp + 792]
mov rbp, [rbp + 808]
jmp rax
proc_edge$2_ω:
mov rax, [rbp + 800]
lea rsp, [rbp + 816]
mov rbp, [rbp + 808]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "del/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_del$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
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
  .Lstartup_pname1: .string "el/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_el$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1040
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "connect/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_connect$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 14864
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "cycle_ham/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_cycle_ham$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1472
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "ham1/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_ham1$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3344
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "chain_ham/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_chain_ham$3_α]
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
  .section .rodata
  .Lstartup_pname6: .string "edge/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_edge$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 784
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
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
 xchain715_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain715_n1_α
 xchain715_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain715_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain715_n2_α
 xchain715_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx720_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx720_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx720_3]
 lea rdx, [rip + .Lx720_4]
 jmp rax
.Lx720_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx720_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx720_2
.Lx720_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx720_2
.Lx720_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx720_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx720_2
.Lx720_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx720_2
.Lx720_1:
 call rt_faildescr@PLT
.Lx720_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain715_n4_α
 jmp xchain715_n3_α
 xchain715_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx720_0:
 .quad .Lx720_0_s
.Lx720_0_s:
 .string "ham1/1"
# IR_VAR
 xchain715_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain715_n5_α
 xchain715_n4_α:
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
 xchain715_n4_β:
 jmp main_ω
 xchain715_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn725: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn725]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain715_n2_β
 jmp xchain715_n6_α
 xchain715_n5_β:
 jmp xchain715_n2_β
# IR_LIT_STRING
 xchain715_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx726_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain715_n7_α
.Lx726_0:
 .quad .Lx726_0_s
.Lx726_0_s:
 .string ""
 xchain715_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn728: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn728]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain715_n2_β
 jmp xchain715_n8_α
 xchain715_n7_β:
 jmp xchain715_n2_β
# IR_MOVE_LABEL
 xchain715_n8_α:
 lea rax, [rip + xchain715_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain715_n9_α:
 jmp qword ptr [rbp + 32]
 xchain715_n9_β:
 jmp main_ω
main_β:
jmp xchain715_n9_α
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
