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
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nreverse$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_nreverse$2_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n3_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_nreverse$2_ω
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
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn11]
 lea rsi, [rbp + 1248]
 mov edx, 3
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn13]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn15: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn15]
 lea rsi, [rbp + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_nreverse$2_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
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
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 960]
 mov edx, 2
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn26: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn26]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [rbp + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n15_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
 xchain0_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn32: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn32]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_nreverse$2_ω
 jmp proc_nreverse$2_ω
 xchain0_n16_β:
 jmp proc_nreverse$2_ω
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [rbp + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n16_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
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
 mov rdi, qword ptr [rip + .Lx37_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx37_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx37_3]
 lea rdx, [rip + .Lx37_4]
 jmp rax
.Lx37_3:
 mov qword ptr [rbp + 856], rsp
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx37_5
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx37_2
.Lx37_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx37_2
.Lx37_4:
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx37_6
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx37_2
.Lx37_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx37_2
.Lx37_1:
 call rt_faildescr@PLT
.Lx37_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 856]
 jmp qword ptr [rsp]
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
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
  .section .rodata
  .Lrkfn39: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn39]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [rbp + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n7_α
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
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_nreverse$2_ω
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n24_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_nreverse$2_ω
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_nreverse$2_ω
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
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
  .section .rodata
  .Lrkfn49: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn49]
 lea rsi, [rbp + 672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n27_α:
 lea rdi, [rbp + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n7_α
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
 mov rdi, qword ptr [rip + .Lx53_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx53_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx53_3]
 lea rdx, [rip + .Lx53_4]
 jmp rax
.Lx53_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx53_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx53_2
.Lx53_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx53_2
.Lx53_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx53_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx53_2
.Lx53_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx53_2
.Lx53_1:
 call rt_faildescr@PLT
.Lx53_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n19_β
 jmp xchain0_n29_α
 xchain0_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
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
lea rax, [rip + xchain56_n12_β]
mov qword ptr [rbp + 608], rax
 xchain56_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn58: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn58]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2_ω
 jmp xchain56_n1_α
 xchain56_n0_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain56_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain56_n2_α
 xchain56_n1_β:
 jmp xchain56_n5_α
# IR_VAR_REF
 xchain56_n2_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain56_n3_α
 xchain56_n2_β:
 jmp xchain56_n5_α
 xchain56_n3_α:
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
  .section .rodata
  .Lrkfn64: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn64]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain56_n5_α
 jmp xchain56_n4_α
 xchain56_n3_β:
 jmp xchain56_n5_α
# IR_VAR_REF
 xchain56_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain56_n6_α
 xchain56_n4_β:
 jmp xchain56_n5_α
 xchain56_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn68: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn68]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_reverse$2_ω
 jmp proc_reverse$2_ω
 xchain56_n5_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain56_n6_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain56_n7_α
 xchain56_n6_β:
 jmp xchain56_n5_α
 xchain56_n7_α:
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
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain56_n5_α
 jmp xchain56_n8_α
 xchain56_n7_β:
 jmp xchain56_n5_α
# IR_VAR_REF
 xchain56_n8_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain56_n9_α
 xchain56_n8_β:
 jmp xchain56_n5_α
# IR_LIT_STRING
 xchain56_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain56_n10_α
 xchain56_n9_β:
 jmp xchain56_n5_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "[]"
# IR_VAR_REF
 xchain56_n10_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain56_n11_α
 xchain56_n10_β:
 jmp xchain56_n5_α
 xchain56_n11_α:
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
 mov rdi, qword ptr [rip + .Lx79_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx79_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx79_3]
 lea rdx, [rip + .Lx79_4]
 jmp rax
.Lx79_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx79_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx79_2
.Lx79_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx79_2
.Lx79_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx79_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx79_2
.Lx79_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx79_2
.Lx79_1:
 call rt_faildescr@PLT
.Lx79_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain56_n5_α
 jmp xchain56_n12_α
 xchain56_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain56_n12_α:
 lea rax, [rip + xchain56_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2_γ
 xchain56_n12_β:
 jmp xchain56_n11_β
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
lea rax, [rip + xchain82_n16_β]
mov qword ptr [rbp + 1472], rax
 xchain82_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn84: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn84]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain82_n1_α
 xchain82_n0_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain82_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain82_n2_α
 xchain82_n1_β:
 jmp xchain82_n5_α
# IR_LIT_STRING
 xchain82_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain82_n3_α
 xchain82_n2_β:
 jmp xchain82_n5_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "[]"
 xchain82_n3_α:
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
  .section .rodata
  .Lrkfn89: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn89]
 lea rsi, [rbp + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain82_n5_α
 jmp xchain82_n4_α
 xchain82_n3_β:
 jmp xchain82_n5_α
# IR_VAR_REF
 xchain82_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain82_n6_α
 xchain82_n4_β:
 jmp xchain82_n5_α
 xchain82_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn93: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain82_n7_α
 xchain82_n5_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain82_n6_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain82_n8_α
 xchain82_n6_β:
 jmp xchain82_n5_α
# IR_VAR_REF
 xchain82_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain82_n9_α
 xchain82_n7_β:
 jmp xchain82_n18_α
 xchain82_n8_α:
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
  .section .rodata
  .Lrkfn99: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn99]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain82_n5_α
 jmp xchain82_n10_α
 xchain82_n8_β:
 jmp xchain82_n5_α
# IR_LIT_STRING
 xchain82_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain82_n11_α
 xchain82_n9_β:
 jmp proc_$reverse_$3_ω
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "."
# IR_VAR_REF
 xchain82_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain82_n12_α
 xchain82_n10_β:
 jmp xchain82_n5_α
# IR_VAR_REF
 xchain82_n11_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain82_n13_α
 xchain82_n11_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain82_n12_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain82_n14_α
 xchain82_n12_β:
 jmp xchain82_n5_α
# IR_VAR_REF
 xchain82_n13_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain82_n15_α
 xchain82_n13_β:
 jmp proc_$reverse_$3_ω
 xchain82_n14_α:
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
  .section .rodata
  .Lrkfn110: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain82_n5_α
 jmp xchain82_n16_α
 xchain82_n14_β:
 jmp xchain82_n5_α
 xchain82_n15_α:
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
  .section .rodata
  .Lrkfn112: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn112]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain82_n18_α
 jmp xchain82_n17_α
 xchain82_n15_β:
 jmp xchain82_n18_α
# IR_SUSPEND yield+resume
 xchain82_n16_α:
 lea rax, [rip + xchain82_n16_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain82_n16_β:
 jmp xchain82_n5_α
 xchain82_n17_α:
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
  .section .rodata
  .Lrkfn116: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn116]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain82_n18_α
 jmp xchain82_n19_α
 xchain82_n17_β:
 jmp xchain82_n18_α
 xchain82_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn118: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn118]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp proc_$reverse_$3_ω
 xchain82_n18_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain82_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain82_n20_α
 xchain82_n19_β:
 jmp xchain82_n18_α
# IR_VAR_REF
 xchain82_n20_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain82_n21_α
 xchain82_n20_β:
 jmp xchain82_n18_α
 xchain82_n21_α:
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
  .section .rodata
  .Lrkfn124: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn124]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain82_n18_α
 jmp xchain82_n22_α
 xchain82_n21_β:
 jmp xchain82_n18_α
# IR_VAR_REF
 xchain82_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain82_n23_α
 xchain82_n22_β:
 jmp xchain82_n18_α
# IR_VAR_REF
 xchain82_n23_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain82_n24_α
 xchain82_n23_β:
 jmp xchain82_n18_α
 xchain82_n24_α:
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
  .section .rodata
  .Lrkfn130: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn130]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain82_n18_α
 jmp xchain82_n25_α
 xchain82_n24_β:
 jmp xchain82_n18_α
# IR_VAR_REF
 xchain82_n25_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain82_n26_α
 xchain82_n25_β:
 jmp xchain82_n18_α
# IR_LIT_STRING
 xchain82_n26_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain82_n27_α
 xchain82_n26_β:
 jmp proc_$reverse_$3_ω
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "."
# IR_VAR_REF
 xchain82_n27_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain82_n28_α
 xchain82_n27_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain82_n28_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain82_n29_α
 xchain82_n28_β:
 jmp proc_$reverse_$3_ω
 xchain82_n29_α:
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
  .section .rodata
  .Lrkfn139: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn139]
 lea rsi, [rbp + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain82_n18_α
 jmp xchain82_n30_α
 xchain82_n29_β:
 jmp xchain82_n18_α
# IR_VAR_REF
 xchain82_n30_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain82_n31_α
 xchain82_n30_β:
 jmp xchain82_n18_α
 xchain82_n31_α:
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
 mov rdi, qword ptr [rip + .Lx143_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx143_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx143_3]
 lea rdx, [rip + .Lx143_4]
 jmp rax
.Lx143_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx143_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx143_2
.Lx143_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx143_2
.Lx143_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx143_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx143_2
.Lx143_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx143_2
.Lx143_1:
 call rt_faildescr@PLT
.Lx143_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain82_n18_α
 jmp xchain82_n32_α
 xchain82_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain82_n32_α:
 lea rax, [rip + xchain82_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain82_n32_β:
 jmp xchain82_n31_β
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
lea rax, [rip + xchain146_n28_β]
mov qword ptr [rbp + 1472], rax
 xchain146_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn148: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn148]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_concatenate$3_ω
 jmp xchain146_n1_α
 xchain146_n0_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain146_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain146_n2_α
 xchain146_n1_β:
 jmp xchain146_n7_α
# IR_LIT_STRING
 xchain146_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain146_n3_α
 xchain146_n2_β:
 jmp proc_concatenate$3_ω
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "."
# IR_VAR_REF
 xchain146_n3_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain146_n4_α
 xchain146_n3_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain146_n4_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain146_n5_α
 xchain146_n4_β:
 jmp proc_concatenate$3_ω
 xchain146_n5_α:
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
  .section .rodata
  .Lrkfn157: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn157]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n6_α
 xchain146_n5_β:
 jmp xchain146_n7_α
 xchain146_n6_α:
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
  .section .rodata
  .Lrkfn159: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn159]
 lea rsi, [rbp + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n8_α
 xchain146_n6_β:
 jmp xchain146_n7_α
 xchain146_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn161: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_concatenate$3_ω
 jmp xchain146_n9_α
 xchain146_n7_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain146_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain146_n10_α
 xchain146_n8_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain146_n11_α
 xchain146_n9_β:
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n10_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain146_n12_α
 xchain146_n10_β:
 jmp xchain146_n7_α
# IR_LIT_STRING
 xchain146_n11_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain146_n13_α
 xchain146_n11_β:
 jmp xchain146_n16_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "[]"
 xchain146_n12_α:
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
  .section .rodata
  .Lrkfn170: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn170]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n14_α
 xchain146_n12_β:
 jmp xchain146_n7_α
 xchain146_n13_α:
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
  .section .rodata
  .Lrkfn172: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn172]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain146_n16_α
 jmp xchain146_n15_α
 xchain146_n13_β:
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n14_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain146_n17_α
 xchain146_n14_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n15_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain146_n18_α
 xchain146_n15_β:
 jmp xchain146_n16_α
 xchain146_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn178: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn178]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_concatenate$3_ω
 jmp proc_concatenate$3_ω
 xchain146_n16_β:
 jmp proc_concatenate$3_ω
# IR_LIT_STRING
 xchain146_n17_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain146_n19_α
 xchain146_n17_β:
 jmp proc_concatenate$3_ω
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "."
# IR_VAR_REF
 xchain146_n18_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain146_n20_α
 xchain146_n18_β:
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n19_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain146_n21_α
 xchain146_n19_β:
 jmp proc_concatenate$3_ω
 xchain146_n20_α:
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
  .section .rodata
  .Lrkfn185: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn185]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain146_n16_α
 jmp xchain146_n22_α
 xchain146_n20_β:
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n21_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain146_n23_α
 xchain146_n21_β:
 jmp proc_concatenate$3_ω
# IR_VAR_REF
 xchain146_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain146_n24_α
 xchain146_n22_β:
 jmp xchain146_n16_α
 xchain146_n23_α:
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
  .section .rodata
  .Lrkfn191: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n25_α
 xchain146_n23_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n24_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain146_n26_α
 xchain146_n24_β:
 jmp xchain146_n16_α
 xchain146_n25_α:
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
  .section .rodata
  .Lrkfn195: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn195]
 lea rsi, [rbp + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n27_α
 xchain146_n25_β:
 jmp xchain146_n7_α
 xchain146_n26_α:
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
  .section .rodata
  .Lrkfn197: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn197]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain146_n16_α
 jmp xchain146_n28_α
 xchain146_n26_β:
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n27_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain146_n29_α
 xchain146_n27_β:
 jmp xchain146_n7_α
# IR_SUSPEND yield+resume
 xchain146_n28_α:
 lea rax, [rip + xchain146_n28_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$3_γ
 xchain146_n28_β:
 jmp xchain146_n16_α
# IR_VAR_REF
 xchain146_n29_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain146_n30_α
 xchain146_n29_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n30_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain146_n31_α
 xchain146_n30_β:
 jmp xchain146_n7_α
 xchain146_n31_α:
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
 mov rdi, qword ptr [rip + .Lx207_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx207_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx207_3]
 lea rdx, [rip + .Lx207_4]
 jmp rax
.Lx207_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx207_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx207_2
.Lx207_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx207_2
.Lx207_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx207_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx207_2
.Lx207_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx207_2
.Lx207_1:
 call rt_faildescr@PLT
.Lx207_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n32_α
 xchain146_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain146_n32_α:
 lea rax, [rip + xchain146_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$3_γ
 xchain146_n32_β:
 jmp xchain146_n31_β
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
 xchain210_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn212: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn212]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n1_α
 xchain210_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain210_n1_α:
 mov qword ptr [rbp + 4688], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain210_n2_α
 xchain210_n1_β:
 jmp main_ω
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n2_α:
 mov qword ptr [rbp + 4576], 6
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 4584], rax
 jmp xchain210_n3_α
 xchain210_n2_β:
 jmp main_ω
.Lx214_0:
 .quad 1
# IR_LIT_STRING
 xchain210_n3_α:
 mov qword ptr [rbp + 4544], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain210_n4_α
 xchain210_n3_β:
 jmp main_ω
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n4_α:
 mov qword ptr [rbp + 4432], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain210_n5_α
 xchain210_n4_β:
 jmp main_ω
.Lx216_0:
 .quad 2
# IR_LIT_STRING
 xchain210_n5_α:
 mov qword ptr [rbp + 4400], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain210_n6_α
 xchain210_n5_β:
 jmp main_ω
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n6_α:
 mov qword ptr [rbp + 4288], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain210_n7_α
 xchain210_n6_β:
 jmp main_ω
.Lx218_0:
 .quad 3
# IR_LIT_STRING
 xchain210_n7_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain210_n8_α
 xchain210_n7_β:
 jmp main_ω
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n8_α:
 mov qword ptr [rbp + 4144], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain210_n9_α
 xchain210_n8_β:
 jmp main_ω
.Lx220_0:
 .quad 4
# IR_LIT_STRING
 xchain210_n9_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain210_n10_α
 xchain210_n9_β:
 jmp main_ω
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n10_α:
 mov qword ptr [rbp + 4000], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 4008], rax
 jmp xchain210_n11_α
 xchain210_n10_β:
 jmp main_ω
.Lx222_0:
 .quad 5
# IR_LIT_STRING
 xchain210_n11_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain210_n12_α
 xchain210_n11_β:
 jmp main_ω
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n12_α:
 mov qword ptr [rbp + 3856], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain210_n13_α
 xchain210_n12_β:
 jmp main_ω
.Lx224_0:
 .quad 6
# IR_LIT_STRING
 xchain210_n13_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain210_n14_α
 xchain210_n13_β:
 jmp main_ω
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n14_α:
 mov qword ptr [rbp + 3712], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain210_n15_α
 xchain210_n14_β:
 jmp main_ω
.Lx226_0:
 .quad 7
# IR_LIT_STRING
 xchain210_n15_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain210_n16_α
 xchain210_n15_β:
 jmp main_ω
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n16_α:
 mov qword ptr [rbp + 3568], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 3576], rax
 jmp xchain210_n17_α
 xchain210_n16_β:
 jmp main_ω
.Lx228_0:
 .quad 8
# IR_LIT_STRING
 xchain210_n17_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain210_n18_α
 xchain210_n17_β:
 jmp main_ω
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n18_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain210_n19_α
 xchain210_n18_β:
 jmp main_ω
.Lx230_0:
 .quad 9
# IR_LIT_STRING
 xchain210_n19_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain210_n20_α
 xchain210_n19_β:
 jmp main_ω
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n20_α:
 mov qword ptr [rbp + 3280], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain210_n21_α
 xchain210_n20_β:
 jmp main_ω
.Lx232_0:
 .quad 10
# IR_LIT_STRING
 xchain210_n21_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain210_n22_α
 xchain210_n21_β:
 jmp main_ω
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n22_α:
 mov qword ptr [rbp + 3136], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain210_n23_α
 xchain210_n22_β:
 jmp main_ω
.Lx234_0:
 .quad 11
# IR_LIT_STRING
 xchain210_n23_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain210_n24_α
 xchain210_n23_β:
 jmp main_ω
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n24_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain210_n25_α
 xchain210_n24_β:
 jmp main_ω
.Lx236_0:
 .quad 12
# IR_LIT_STRING
 xchain210_n25_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain210_n26_α
 xchain210_n25_β:
 jmp main_ω
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n26_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain210_n27_α
 xchain210_n26_β:
 jmp main_ω
.Lx238_0:
 .quad 13
# IR_LIT_STRING
 xchain210_n27_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain210_n28_α
 xchain210_n27_β:
 jmp main_ω
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n28_α:
 mov qword ptr [rbp + 2704], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain210_n29_α
 xchain210_n28_β:
 jmp main_ω
.Lx240_0:
 .quad 14
# IR_LIT_STRING
 xchain210_n29_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain210_n30_α
 xchain210_n29_β:
 jmp main_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n30_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain210_n31_α
 xchain210_n30_β:
 jmp main_ω
.Lx242_0:
 .quad 15
# IR_LIT_STRING
 xchain210_n31_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain210_n32_α
 xchain210_n31_β:
 jmp main_ω
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n32_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain210_n33_α
 xchain210_n32_β:
 jmp main_ω
.Lx244_0:
 .quad 16
# IR_LIT_STRING
 xchain210_n33_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain210_n34_α
 xchain210_n33_β:
 jmp main_ω
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n34_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain210_n35_α
 xchain210_n34_β:
 jmp main_ω
.Lx246_0:
 .quad 17
# IR_LIT_STRING
 xchain210_n35_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain210_n36_α
 xchain210_n35_β:
 jmp main_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n36_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain210_n37_α
 xchain210_n36_β:
 jmp main_ω
.Lx248_0:
 .quad 18
# IR_LIT_STRING
 xchain210_n37_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain210_n38_α
 xchain210_n37_β:
 jmp main_ω
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n38_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain210_n39_α
 xchain210_n38_β:
 jmp main_ω
.Lx250_0:
 .quad 19
# IR_LIT_STRING
 xchain210_n39_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain210_n40_α
 xchain210_n39_β:
 jmp main_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n40_α:
 mov qword ptr [rbp + 1840], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain210_n41_α
 xchain210_n40_β:
 jmp main_ω
.Lx252_0:
 .quad 20
# IR_LIT_STRING
 xchain210_n41_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain210_n42_α
 xchain210_n41_β:
 jmp main_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n42_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain210_n43_α
 xchain210_n42_β:
 jmp main_ω
.Lx254_0:
 .quad 21
# IR_LIT_STRING
 xchain210_n43_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain210_n44_α
 xchain210_n43_β:
 jmp main_ω
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n44_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain210_n45_α
 xchain210_n44_β:
 jmp main_ω
.Lx256_0:
 .quad 22
# IR_LIT_STRING
 xchain210_n45_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain210_n46_α
 xchain210_n45_β:
 jmp main_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n46_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain210_n47_α
 xchain210_n46_β:
 jmp main_ω
.Lx258_0:
 .quad 23
# IR_LIT_STRING
 xchain210_n47_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain210_n48_α
 xchain210_n47_β:
 jmp main_ω
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n48_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain210_n49_α
 xchain210_n48_β:
 jmp main_ω
.Lx260_0:
 .quad 24
# IR_LIT_STRING
 xchain210_n49_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain210_n50_α
 xchain210_n49_β:
 jmp main_ω
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n50_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain210_n51_α
 xchain210_n50_β:
 jmp main_ω
.Lx262_0:
 .quad 25
# IR_LIT_STRING
 xchain210_n51_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain210_n52_α
 xchain210_n51_β:
 jmp main_ω
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n52_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain210_n53_α
 xchain210_n52_β:
 jmp main_ω
.Lx264_0:
 .quad 26
# IR_LIT_STRING
 xchain210_n53_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain210_n54_α
 xchain210_n53_β:
 jmp main_ω
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n54_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain210_n55_α
 xchain210_n54_β:
 jmp main_ω
.Lx266_0:
 .quad 27
# IR_LIT_STRING
 xchain210_n55_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain210_n56_α
 xchain210_n55_β:
 jmp main_ω
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n56_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain210_n57_α
 xchain210_n56_β:
 jmp main_ω
.Lx268_0:
 .quad 28
# IR_LIT_STRING
 xchain210_n57_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain210_n58_α
 xchain210_n57_β:
 jmp main_ω
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n58_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain210_n59_α
 xchain210_n58_β:
 jmp main_ω
.Lx270_0:
 .quad 29
# IR_LIT_STRING
 xchain210_n59_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain210_n60_α
 xchain210_n59_β:
 jmp main_ω
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain210_n60_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain210_n61_α
 xchain210_n60_β:
 jmp main_ω
.Lx272_0:
 .quad 30
# IR_LIT_STRING
 xchain210_n61_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain210_n62_α
 xchain210_n61_β:
 jmp main_ω
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "[]"
 xchain210_n62_α:
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
  .section .rodata
  .Lrkfn275: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn275]
 lea rsi, [rbp + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n63_α
 xchain210_n62_β:
 jmp main_ω
 xchain210_n63_α:
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
  .section .rodata
  .Lrkfn277: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn277]
 lea rsi, [rbp + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n64_α
 xchain210_n63_β:
 jmp main_ω
 xchain210_n64_α:
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
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn279]
 lea rsi, [rbp + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n65_α
 xchain210_n64_β:
 jmp main_ω
 xchain210_n65_α:
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
  .section .rodata
  .Lrkfn281: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn281]
 lea rsi, [rbp + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n66_α
 xchain210_n65_β:
 jmp main_ω
 xchain210_n66_α:
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
  .section .rodata
  .Lrkfn283: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn283]
 lea rsi, [rbp + 1024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n67_α
 xchain210_n66_β:
 jmp main_ω
 xchain210_n67_α:
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
  .section .rodata
  .Lrkfn285: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn285]
 lea rsi, [rbp + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n68_α
 xchain210_n67_β:
 jmp main_ω
 xchain210_n68_α:
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
  .section .rodata
  .Lrkfn287: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn287]
 lea rsi, [rbp + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n69_α
 xchain210_n68_β:
 jmp main_ω
 xchain210_n69_α:
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
  .section .rodata
  .Lrkfn289: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn289]
 lea rsi, [rbp + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n70_α
 xchain210_n69_β:
 jmp main_ω
 xchain210_n70_α:
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
  .section .rodata
  .Lrkfn291: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn291]
 lea rsi, [rbp + 1600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n71_α
 xchain210_n70_β:
 jmp main_ω
 xchain210_n71_α:
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
  .section .rodata
  .Lrkfn293: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn293]
 lea rsi, [rbp + 1744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n72_α
 xchain210_n71_β:
 jmp main_ω
 xchain210_n72_α:
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
  .section .rodata
  .Lrkfn295: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn295]
 lea rsi, [rbp + 1888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n73_α
 xchain210_n72_β:
 jmp main_ω
 xchain210_n73_α:
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
  .section .rodata
  .Lrkfn297: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn297]
 lea rsi, [rbp + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n74_α
 xchain210_n73_β:
 jmp main_ω
 xchain210_n74_α:
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
  .section .rodata
  .Lrkfn299: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn299]
 lea rsi, [rbp + 2176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n75_α
 xchain210_n74_β:
 jmp main_ω
 xchain210_n75_α:
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
  .section .rodata
  .Lrkfn301: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 2320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n76_α
 xchain210_n75_β:
 jmp main_ω
 xchain210_n76_α:
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
  .section .rodata
  .Lrkfn303: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn303]
 lea rsi, [rbp + 2464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n77_α
 xchain210_n76_β:
 jmp main_ω
 xchain210_n77_α:
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
  .section .rodata
  .Lrkfn305: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn305]
 lea rsi, [rbp + 2608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n78_α
 xchain210_n77_β:
 jmp main_ω
 xchain210_n78_α:
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
  .section .rodata
  .Lrkfn307: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn307]
 lea rsi, [rbp + 2752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n79_α
 xchain210_n78_β:
 jmp main_ω
 xchain210_n79_α:
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
  .section .rodata
  .Lrkfn309: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn309]
 lea rsi, [rbp + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n80_α
 xchain210_n79_β:
 jmp main_ω
 xchain210_n80_α:
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
  .section .rodata
  .Lrkfn311: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn311]
 lea rsi, [rbp + 3040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n81_α
 xchain210_n80_β:
 jmp main_ω
 xchain210_n81_α:
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
  .section .rodata
  .Lrkfn313: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn313]
 lea rsi, [rbp + 3184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n82_α
 xchain210_n81_β:
 jmp main_ω
 xchain210_n82_α:
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
  .section .rodata
  .Lrkfn315: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn315]
 lea rsi, [rbp + 3328]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n83_α
 xchain210_n82_β:
 jmp main_ω
 xchain210_n83_α:
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
  .section .rodata
  .Lrkfn317: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn317]
 lea rsi, [rbp + 3472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n84_α
 xchain210_n83_β:
 jmp main_ω
 xchain210_n84_α:
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
  .section .rodata
  .Lrkfn319: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn319]
 lea rsi, [rbp + 3616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n85_α
 xchain210_n84_β:
 jmp main_ω
 xchain210_n85_α:
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
  .section .rodata
  .Lrkfn321: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn321]
 lea rsi, [rbp + 3760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n86_α
 xchain210_n85_β:
 jmp main_ω
 xchain210_n86_α:
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
  .section .rodata
  .Lrkfn323: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn323]
 lea rsi, [rbp + 3904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n87_α
 xchain210_n86_β:
 jmp main_ω
 xchain210_n87_α:
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
  .section .rodata
  .Lrkfn325: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn325]
 lea rsi, [rbp + 4048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n88_α
 xchain210_n87_β:
 jmp main_ω
 xchain210_n88_α:
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
  .section .rodata
  .Lrkfn327: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn327]
 lea rsi, [rbp + 4192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n89_α
 xchain210_n88_β:
 jmp main_ω
 xchain210_n89_α:
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
  .section .rodata
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 4336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n90_α
 xchain210_n89_β:
 jmp main_ω
 xchain210_n90_α:
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
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn331]
 lea rsi, [rbp + 4480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain210_n91_α
 xchain210_n90_β:
 jmp main_ω
 xchain210_n91_α:
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
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 4624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je xchain210_n93_α
 jmp xchain210_n92_α
 xchain210_n91_β:
 jmp xchain210_n93_α
# IR_VAR_REF
 xchain210_n92_α:
 lea rdi, [rbp + 4768]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain210_n94_α
 xchain210_n92_β:
 jmp xchain210_n93_α
 xchain210_n93_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn337: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn337]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain210_n93_β:
 jmp main_ω
 xchain210_n94_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx339_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx339_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx339_3]
 lea rdx, [rip + .Lx339_4]
 jmp rax
.Lx339_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx339_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx339_2
.Lx339_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx339_2
.Lx339_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx339_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx339_2
.Lx339_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx339_2
.Lx339_1:
 call rt_faildescr@PLT
.Lx339_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain210_n93_α
 jmp xchain210_n95_α
 xchain210_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "nreverse/2"
# IR_VAR
 xchain210_n95_α:
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 264], rax
 jmp xchain210_n96_α
 xchain210_n95_β:
 jmp xchain210_n93_α
 xchain210_n96_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn343: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn343]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain210_n94_β
 jmp xchain210_n97_α
 xchain210_n96_β:
 jmp xchain210_n94_β
# IR_LIT_STRING
 xchain210_n97_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain210_n98_α
 xchain210_n97_β:
 jmp xchain210_n93_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string ""
 xchain210_n98_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn346: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn346]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain210_n94_β
 jmp xchain210_n99_α
 xchain210_n98_β:
 jmp xchain210_n94_β
# IR_MOVE_LABEL
 xchain210_n99_α:
 lea rax, [rip + xchain210_n94_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain210_n99_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain210_n100_α:
 jmp qword ptr [rbp + 32]
 xchain210_n100_β:
 jmp main_ω
main_β:
jmp xchain210_n100_α
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
