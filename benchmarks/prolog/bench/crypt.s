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
  mov rdi, rsp
  mov ecx, 880
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 880
  call rt_jmp_frame_lexprep@PLT
proc_mult$3_α_body:
lea rax, [rip + xchain0_n16_β]
mov qword ptr [rbp + 800], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_mult$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_mult$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
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
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_mult$3_ω
 jmp proc_mult$3_ω
 xchain0_n5_β:
 jmp proc_mult$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [rbp + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
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
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [rbp + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n5_α
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
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn22]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [rbp + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [rbp + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
.Lx27_0:
 .quad 0
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [rbp + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
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
 mov rdi, qword ptr [rip + .Lx31_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx31_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx31_3]
 lea rdx, [rip + .Lx31_4]
 jmp rax
.Lx31_3:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx31_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx31_2
.Lx31_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx31_2
.Lx31_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx31_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx31_2
.Lx31_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx31_2
.Lx31_1:
 call rt_faildescr@PLT
.Lx31_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n16_α
 xchain0_n15_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
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
  mov rdi, rsp
  mov ecx, 3456
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3320], rsp
  mov rdi, rsp
  mov esi, 3456
  call rt_jmp_frame_lexprep@PLT
proc_mult$4_α_body:
lea rax, [rip + xchain34_n66_β]
mov qword ptr [rbp + 3296], rax
 xchain34_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn36: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn36]
 lea rsi, [rbp + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain34_n1_α
 xchain34_n0_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain34_n2_α
 xchain34_n1_β:
 jmp xchain34_n7_α
# IR_LIT_STRING
 xchain34_n2_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain34_n3_α
 xchain34_n2_β:
 jmp proc_mult$4_ω
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "."
# IR_VAR_REF
 xchain34_n3_α:
 lea rdi, [rbp + 3376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain34_n4_α
 xchain34_n3_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n4_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain34_n5_α
 xchain34_n4_β:
 jmp proc_mult$4_ω
 xchain34_n5_α:
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
  .section .rodata
  .Lrkfn45: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn45]
 lea rsi, [rbp + 3200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n6_α
 xchain34_n5_β:
 jmp xchain34_n7_α
 xchain34_n6_α:
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
  .section .rodata
  .Lrkfn47: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn47]
 lea rsi, [rbp + 3040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n8_α
 xchain34_n6_β:
 jmp xchain34_n7_α
 xchain34_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1456]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1464], rax
  .section .rodata
  .Lrkfn49: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn49]
 lea rsi, [rbp + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain34_n9_α
 xchain34_n7_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain34_n10_α
 xchain34_n8_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain34_n11_α
 xchain34_n9_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n10_α:
 lea rdi, [rbp + 3392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain34_n12_α
 xchain34_n10_β:
 jmp xchain34_n7_α
# IR_LIT_STRING
 xchain34_n11_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain34_n13_α
 xchain34_n11_β:
 jmp xchain34_n16_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "[]"
 xchain34_n12_α:
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
  .section .rodata
  .Lrkfn58: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn58]
 lea rsi, [rbp + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n14_α
 xchain34_n12_β:
 jmp xchain34_n7_α
 xchain34_n13_α:
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
  .section .rodata
  .Lrkfn60: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn60]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n15_α
 xchain34_n13_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n14_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain34_n17_α
 xchain34_n14_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n15_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain34_n18_α
 xchain34_n15_β:
 jmp xchain34_n16_α
 xchain34_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn66: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn66]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp proc_mult$4_ω
 xchain34_n16_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n17_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain34_n19_α
 xchain34_n17_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n18_α:
 lea rdi, [rbp + 3376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain34_n20_α
 xchain34_n18_β:
 jmp xchain34_n16_α
 xchain34_n19_α:
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
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 2784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n21_α
 xchain34_n19_β:
 jmp xchain34_n7_α
 xchain34_n20_α:
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
  .section .rodata
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn74]
 lea rsi, [rbp + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n22_α
 xchain34_n20_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n21_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain34_n23_α
 xchain34_n21_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain34_n24_α
 xchain34_n22_β:
 jmp xchain34_n16_α
# IR_LIT_STRING
 xchain34_n23_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain34_n25_α
 xchain34_n23_β:
 jmp proc_mult$4_ω
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "."
# IR_VAR_REF
 xchain34_n24_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain34_n26_α
 xchain34_n24_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n25_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain34_n27_α
 xchain34_n25_β:
 jmp proc_mult$4_ω
 xchain34_n26_α:
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
  .section .rodata
  .Lrkfn85: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn85]
 lea rsi, [rbp + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n28_α
 xchain34_n26_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n27_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain34_n29_α
 xchain34_n27_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n28_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain34_n30_α
 xchain34_n28_β:
 jmp xchain34_n16_α
 xchain34_n29_α:
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
  .section .rodata
  .Lrkfn91: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn91]
 lea rsi, [rbp + 2672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n31_α
 xchain34_n29_β:
 jmp xchain34_n7_α
# IR_LIT_STRING
 xchain34_n30_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain34_n32_α
 xchain34_n30_β:
 jmp proc_mult$4_ω
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "."
 xchain34_n31_α:
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
  .section .rodata
  .Lrkfn94: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn94]
 lea rsi, [rbp + 2512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n33_α
 xchain34_n31_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n32_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain34_n34_α
 xchain34_n32_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n33_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain34_n35_α
 xchain34_n33_β:
 jmp xchain34_n7_α
# IR_LIT_STRING
 xchain34_n34_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain34_n36_α
 xchain34_n34_β:
 jmp proc_mult$4_ω
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "."
# IR_VAR
 xchain34_n35_α:
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 2408], rax
 jmp xchain34_n37_α
 xchain34_n35_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain34_n36_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain34_n38_α
 xchain34_n36_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain34_n37_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 2440], rax
 jmp xchain34_n39_α
 xchain34_n37_β:
 jmp proc_mult$4_ω
# IR_LIT_STRING
 xchain34_n38_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain34_n40_α
 xchain34_n38_β:
 jmp proc_mult$4_ω
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "[]"
 xchain34_n39_α:
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
  .section .rodata
  .Lrkfn108: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn108]
 lea rsi, [rbp + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n41_α
 xchain34_n39_β:
 jmp xchain34_n7_α
 xchain34_n40_α:
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
  .section .rodata
  .Lrkfn110: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain34_n42_α
 xchain34_n40_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain34_n41_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 2472], rax
 jmp xchain34_n43_α
 xchain34_n41_β:
 jmp proc_mult$4_ω
 xchain34_n42_α:
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
  .section .rodata
  .Lrkfn114: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn114]
 lea rsi, [rbp + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n44_α
 xchain34_n42_β:
 jmp xchain34_n16_α
 xchain34_n43_α:
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
  .section .rodata
  .Lrkfn116: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn116]
 lea rsi, [rbp + 2288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n45_α
 xchain34_n43_β:
 jmp xchain34_n7_α
 xchain34_n44_α:
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
  .section .rodata
  .Lrkfn118: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn118]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n46_α
 xchain34_n44_β:
 jmp xchain34_n16_α
 xchain34_n45_α:
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
  .section .rodata
  .Lrkfn120: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn120]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n47_α
 xchain34_n45_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n46_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain34_n48_α
 xchain34_n46_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n47_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain34_n49_α
 xchain34_n47_β:
 jmp xchain34_n7_α
# IR_VAR
 xchain34_n48_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 584], rax
 jmp xchain34_n50_α
 xchain34_n48_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain34_n49_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 2120], rax
 jmp xchain34_n51_α
 xchain34_n49_β:
 jmp proc_mult$4_ω
# IR_LIT_INTEGER
 xchain34_n50_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain34_n52_α
 xchain34_n50_β:
 jmp proc_mult$4_ω
.Lx129_0:
 .quad 10
# IR_LIT_INTEGER
 xchain34_n51_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain34_n53_α
 xchain34_n51_β:
 jmp proc_mult$4_ω
.Lx130_0:
 .quad 10
 xchain34_n52_α:
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
  .section .rodata
  .Lrkfn132: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn132]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n54_α
 xchain34_n52_β:
 jmp xchain34_n16_α
 xchain34_n53_α:
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
  .section .rodata
  .Lrkfn134: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn134]
 lea rsi, [rbp + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n55_α
 xchain34_n53_β:
 jmp xchain34_n7_α
 xchain34_n54_α:
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
  .section .rodata
  .Lrkfn136: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn136]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n56_α
 xchain34_n54_β:
 jmp xchain34_n16_α
 xchain34_n55_α:
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
  .section .rodata
  .Lrkfn138: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n57_α
 xchain34_n55_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n56_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain34_n58_α
 xchain34_n56_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n57_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain34_n59_α
 xchain34_n57_β:
 jmp xchain34_n7_α
# IR_VAR
 xchain34_n58_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 360], rax
 jmp xchain34_n60_α
 xchain34_n58_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain34_n59_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 1896], rax
 jmp xchain34_n61_α
 xchain34_n59_β:
 jmp proc_mult$4_ω
# IR_LIT_INTEGER
 xchain34_n60_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain34_n62_α
 xchain34_n60_β:
 jmp proc_mult$4_ω
.Lx147_0:
 .quad 10
# IR_LIT_INTEGER
 xchain34_n61_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain34_n63_α
 xchain34_n61_β:
 jmp proc_mult$4_ω
.Lx148_0:
 .quad 10
 xchain34_n62_α:
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
  .section .rodata
  .Lrkfn150: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n64_α
 xchain34_n62_β:
 jmp xchain34_n16_α
 xchain34_n63_α:
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
  .section .rodata
  .Lrkfn152: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn152]
 lea rsi, [rbp + 1840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n65_α
 xchain34_n63_β:
 jmp xchain34_n7_α
 xchain34_n64_α:
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
  .section .rodata
  .Lrkfn154: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn154]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain34_n16_α
 jmp xchain34_n66_α
 xchain34_n64_β:
 jmp xchain34_n16_α
 xchain34_n65_α:
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
  .section .rodata
  .Lrkfn156: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n67_α
 xchain34_n65_β:
 jmp xchain34_n7_α
# IR_SUSPEND yield+resume
 xchain34_n66_α:
 lea rax, [rip + xchain34_n66_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$4_γ
 xchain34_n66_β:
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n67_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain34_n68_α
 xchain34_n67_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n68_α:
 lea rdi, [rbp + 3392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain34_n69_α
 xchain34_n68_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n69_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain34_n70_α
 xchain34_n69_β:
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n70_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain34_n71_α
 xchain34_n70_β:
 jmp xchain34_n7_α
 xchain34_n71_α:
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
 mov rdi, qword ptr [rip + .Lx168_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx168_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx168_3]
 lea rdx, [rip + .Lx168_4]
 jmp rax
.Lx168_3:
 mov rax, qword ptr [rbp + 1568]
 test rax, rax
 jne .Lx168_5
 mov qword ptr [rbp + 1568], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx168_2
.Lx168_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx168_2
.Lx168_4:
 mov rax, qword ptr [rbp + 1568]
 test rax, rax
 jne .Lx168_6
 mov qword ptr [rbp + 1568], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx168_2
.Lx168_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx168_2
.Lx168_1:
 call rt_faildescr@PLT
.Lx168_2:
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n72_α
 xchain34_n71_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "mult/4"
# IR_SUSPEND yield+resume
 xchain34_n72_α:
 lea rax, [rip + xchain34_n72_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_mult$4_γ
 xchain34_n72_β:
 jmp xchain34_n71_β
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
  mov rdi, rsp
  mov ecx, 1008
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 1008
  call rt_jmp_frame_lexprep@PLT
proc_odd$1_α_body:
lea rax, [rip + xchain171_n4_β]
mov qword ptr [rbp + 976], rax
 xchain171_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn173: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn173]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain171_n1_α
 xchain171_n0_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain171_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain171_n2_α
 xchain171_n1_β:
 jmp xchain171_n5_α
# IR_LIT_INTEGER
 xchain171_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain171_n3_α
 xchain171_n2_β:
 jmp xchain171_n5_α
.Lx176_0:
 .quad 1
 xchain171_n3_α:
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
  .section .rodata
  .Lrkfn178: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn178]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain171_n5_α
 jmp xchain171_n4_α
 xchain171_n3_β:
 jmp xchain171_n5_α
# IR_SUSPEND yield+resume
 xchain171_n4_α:
 lea rax, [rip + xchain171_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain171_n4_β:
 jmp xchain171_n5_α
 xchain171_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn182: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn182]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain171_n6_α
 xchain171_n5_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain171_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain171_n7_α
 xchain171_n6_β:
 jmp xchain171_n10_α
# IR_LIT_INTEGER
 xchain171_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain171_n8_α
 xchain171_n7_β:
 jmp xchain171_n10_α
.Lx185_0:
 .quad 3
 xchain171_n8_α:
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
  .section .rodata
  .Lrkfn187: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn187]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain171_n10_α
 jmp xchain171_n9_α
 xchain171_n8_β:
 jmp xchain171_n10_α
# IR_SUSPEND yield+resume
 xchain171_n9_α:
 lea rax, [rip + xchain171_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain171_n9_β:
 jmp xchain171_n10_α
 xchain171_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn191: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain171_n11_α
 xchain171_n10_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain171_n11_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain171_n12_α
 xchain171_n11_β:
 jmp xchain171_n15_α
# IR_LIT_INTEGER
 xchain171_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain171_n13_α
 xchain171_n12_β:
 jmp xchain171_n15_α
.Lx194_0:
 .quad 5
 xchain171_n13_α:
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
  .section .rodata
  .Lrkfn196: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn196]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain171_n15_α
 jmp xchain171_n14_α
 xchain171_n13_β:
 jmp xchain171_n15_α
# IR_SUSPEND yield+resume
 xchain171_n14_α:
 lea rax, [rip + xchain171_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain171_n14_β:
 jmp xchain171_n15_α
 xchain171_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn200: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn200]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain171_n16_α
 xchain171_n15_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain171_n16_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain171_n17_α
 xchain171_n16_β:
 jmp xchain171_n20_α
# IR_LIT_INTEGER
 xchain171_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain171_n18_α
 xchain171_n17_β:
 jmp xchain171_n20_α
.Lx203_0:
 .quad 7
 xchain171_n18_α:
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
  .section .rodata
  .Lrkfn205: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn205]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain171_n20_α
 jmp xchain171_n19_α
 xchain171_n18_β:
 jmp xchain171_n20_α
# IR_SUSPEND yield+resume
 xchain171_n19_α:
 lea rax, [rip + xchain171_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain171_n19_β:
 jmp xchain171_n20_α
 xchain171_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn209: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn209]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain171_n21_α
 xchain171_n20_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain171_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain171_n22_α
 xchain171_n21_β:
 jmp xchain171_n25_α
# IR_LIT_INTEGER
 xchain171_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain171_n23_α
 xchain171_n22_β:
 jmp xchain171_n25_α
.Lx212_0:
 .quad 9
 xchain171_n23_α:
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
  .section .rodata
  .Lrkfn214: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn214]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain171_n25_α
 jmp xchain171_n24_α
 xchain171_n23_β:
 jmp xchain171_n25_α
# IR_SUSPEND yield+resume
 xchain171_n24_α:
 lea rax, [rip + xchain171_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_odd$1_γ
 xchain171_n24_β:
 jmp xchain171_n25_α
 xchain171_n25_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn218: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn218]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp proc_odd$1_ω
 xchain171_n25_β:
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
  sub rsp, 912
  mov [rsp + 888], rcx
  mov [rsp + 896], rdx
  mov [rsp + 904], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 880
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 880
  call rt_jmp_frame_lexprep@PLT
proc_sum$3_α_body:
lea rax, [rip + xchain219_n16_β]
mov qword ptr [rbp + 800], rax
 xchain219_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn221: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn221]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sum$3_ω
 jmp xchain219_n1_α
 xchain219_n0_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain219_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain219_n2_α
 xchain219_n1_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n2_α:
 lea rdi, [rbp + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain219_n3_α
 xchain219_n2_β:
 jmp xchain219_n5_α
 xchain219_n3_α:
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
  .section .rodata
  .Lrkfn227: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn227]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n4_α
 xchain219_n3_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain219_n6_α
 xchain219_n4_β:
 jmp xchain219_n5_α
 xchain219_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn231: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn231]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_sum$3_ω
 jmp proc_sum$3_ω
 xchain219_n5_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain219_n6_α:
 lea rdi, [rbp + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain219_n7_α
 xchain219_n6_β:
 jmp xchain219_n5_α
 xchain219_n7_α:
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
  .section .rodata
  .Lrkfn235: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn235]
 lea rsi, [rbp + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n8_α
 xchain219_n7_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n8_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain219_n9_α
 xchain219_n8_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n9_α:
 lea rdi, [rbp + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain219_n10_α
 xchain219_n9_β:
 jmp xchain219_n5_α
 xchain219_n10_α:
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
  .section .rodata
  .Lrkfn241: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n11_α
 xchain219_n10_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n11_α:
 lea rdi, [rbp + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain219_n12_α
 xchain219_n11_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n12_α:
 lea rdi, [rbp + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain219_n13_α
 xchain219_n12_β:
 jmp xchain219_n5_α
# IR_LIT_INTEGER
 xchain219_n13_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain219_n14_α
 xchain219_n13_β:
 jmp xchain219_n5_α
.Lx246_0:
 .quad 0
# IR_VAR_REF
 xchain219_n14_α:
 lea rdi, [rbp + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain219_n15_α
 xchain219_n14_β:
 jmp xchain219_n5_α
 xchain219_n15_α:
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
 mov rdi, qword ptr [rip + .Lx250_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx250_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx250_3]
 lea rdx, [rip + .Lx250_4]
 jmp rax
.Lx250_3:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx250_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx250_2
.Lx250_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx250_2
.Lx250_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx250_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx250_2
.Lx250_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx250_2
.Lx250_1:
 call rt_faildescr@PLT
.Lx250_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n16_α
 xchain219_n15_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "sum/4"
# IR_SUSPEND yield+resume
 xchain219_n16_α:
 lea rax, [rip + xchain219_n16_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sum$3_γ
 xchain219_n16_β:
 jmp xchain219_n15_β
proc_sum$3_res:
add rsp, 8
pop rbp
proc_sum$3_β:
jmp qword ptr [rbp + 800]
proc_sum$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sum$3_res]
push rax
mov rax, [rbp + 888]
mov rbp, [rbp + 904]
jmp rax
proc_sum$3_ω:
mov rax, [rbp + 896]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
jmp rax
  .globl proc_sum$4_α
proc_sum$4_α:
#=======================================================================================================================
    .global proc_sum$4_α
    .global proc_sum$4_β
    .global proc_sum$4_γ
    .global proc_sum$4_ω
  sub rsp, 3632
  mov [rsp + 3608], rcx
  mov [rsp + 3616], rdx
  mov [rsp + 3624], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3600
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3432], rsp
  mov rdi, rsp
  mov esi, 3600
  call rt_jmp_frame_lexprep@PLT
proc_sum$4_α_body:
lea rax, [rip + xchain253_n46_β]
mov qword ptr [rbp + 3408], rax
 xchain253_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn255: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn255]
 lea rsi, [rbp + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain253_n1_α
 xchain253_n0_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain253_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain253_n2_α
 xchain253_n1_β:
 jmp xchain253_n7_α
# IR_LIT_STRING
 xchain253_n2_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain253_n3_α
 xchain253_n2_β:
 jmp proc_sum$4_ω
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "."
# IR_VAR_REF
 xchain253_n3_α:
 lea rdi, [rbp + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain253_n4_α
 xchain253_n3_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain253_n4_α:
 lea rdi, [rbp + 3472]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain253_n5_α
 xchain253_n4_β:
 jmp proc_sum$4_ω
 xchain253_n5_α:
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
  .section .rodata
  .Lrkfn264: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn264]
 lea rsi, [rbp + 3312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n6_α
 xchain253_n5_β:
 jmp xchain253_n7_α
 xchain253_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3152]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3168]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3176], rax
  .section .rodata
  .Lrkfn266: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn266]
 lea rsi, [rbp + 3152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n8_α
 xchain253_n6_β:
 jmp xchain253_n7_α
 xchain253_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1424]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn268: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 1424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain253_n9_α
 xchain253_n7_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain253_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain253_n10_α
 xchain253_n8_β:
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain253_n11_α
 xchain253_n9_β:
 jmp xchain253_n16_α
# IR_LIT_STRING
 xchain253_n10_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain253_n12_α
 xchain253_n10_β:
 jmp proc_sum$4_ω
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "."
# IR_LIT_STRING
 xchain253_n11_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain253_n13_α
 xchain253_n11_β:
 jmp xchain253_n16_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n12_α:
 lea rdi, [rbp + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain253_n14_α
 xchain253_n12_β:
 jmp proc_sum$4_ω
 xchain253_n13_α:
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
  .section .rodata
  .Lrkfn278: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn278]
 lea rsi, [rbp + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain253_n16_α
 jmp xchain253_n15_α
 xchain253_n13_β:
 jmp xchain253_n16_α
# IR_VAR_REF
 xchain253_n14_α:
 lea rdi, [rbp + 3488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain253_n17_α
 xchain253_n14_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain253_n15_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain253_n18_α
 xchain253_n15_β:
 jmp xchain253_n16_α
 xchain253_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+864]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn284: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain253_n19_α
 xchain253_n16_β:
 jmp proc_sum$4_ω
 xchain253_n17_α:
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
# marshal arg2 = producer-box slot [zr+2960] -> [zr+3072]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 3080], rax
  .section .rodata
  .Lrkfn286: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn286]
 lea rsi, [rbp + 3040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n20_α
 xchain253_n17_β:
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n18_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain253_n21_α
 xchain253_n18_β:
 jmp xchain253_n16_α
# IR_VAR_REF
 xchain253_n19_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain253_n22_α
 xchain253_n19_β:
 jmp xchain253_n29_α
 xchain253_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2880]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2888], rax
# marshal arg1 = producer-box slot [zr+3024] -> [zr+2896]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2904], rax
  .section .rodata
  .Lrkfn292: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn292]
 lea rsi, [rbp + 2880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n23_α
 xchain253_n20_β:
 jmp xchain253_n7_α
 xchain253_n21_α:
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
  .section .rodata
  .Lrkfn294: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn294]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain253_n16_α
 jmp xchain253_n24_α
 xchain253_n21_β:
 jmp xchain253_n16_α
# IR_LIT_STRING
 xchain253_n22_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain253_n25_α
 xchain253_n22_β:
 jmp xchain253_n29_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n23_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain253_n26_α
 xchain253_n23_β:
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n24_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain253_n27_α
 xchain253_n24_β:
 jmp xchain253_n16_α
 xchain253_n25_α:
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
  .section .rodata
  .Lrkfn301: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n28_α
 xchain253_n25_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n26_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain253_n30_α
 xchain253_n26_β:
 jmp xchain253_n7_α
# IR_LIT_INTEGER
 xchain253_n27_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain253_n31_α
 xchain253_n27_β:
 jmp xchain253_n16_α
.Lx304_0:
 .quad 0
# IR_VAR_REF
 xchain253_n28_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain253_n32_α
 xchain253_n28_β:
 jmp xchain253_n29_α
 xchain253_n29_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn308: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn308]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp proc_sum$4_ω
 xchain253_n29_β:
 jmp proc_sum$4_ω
 xchain253_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2752]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2832] -> [zr+2768]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2776], rax
  .section .rodata
  .Lrkfn310: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn310]
 lea rsi, [rbp + 2752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n33_α
 xchain253_n30_β:
 jmp xchain253_n7_α
 xchain253_n31_α:
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
  .section .rodata
  .Lrkfn312: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn312]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain253_n16_α
 jmp xchain253_n34_α
 xchain253_n31_β:
 jmp xchain253_n16_α
# IR_LIT_STRING
 xchain253_n32_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain253_n35_α
 xchain253_n32_β:
 jmp xchain253_n29_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n33_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain253_n36_α
 xchain253_n33_β:
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n34_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain253_n37_α
 xchain253_n34_β:
 jmp xchain253_n16_α
 xchain253_n35_α:
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
  .section .rodata
  .Lrkfn319: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn319]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n38_α
 xchain253_n35_β:
 jmp xchain253_n29_α
# IR_LIT_STRING
 xchain253_n36_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain253_n39_α
 xchain253_n36_β:
 jmp proc_sum$4_ω
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "."
# IR_VAR_REF
 xchain253_n37_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain253_n40_α
 xchain253_n37_β:
 jmp xchain253_n16_α
# IR_VAR_REF
 xchain253_n38_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain253_n41_α
 xchain253_n38_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n39_α:
 lea rdi, [rbp + 3552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain253_n42_α
 xchain253_n39_β:
 jmp proc_sum$4_ω
 xchain253_n40_α:
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
  .section .rodata
  .Lrkfn328: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn328]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain253_n16_α
 jmp xchain253_n43_α
 xchain253_n40_β:
 jmp xchain253_n16_α
# IR_VAR_REF
 xchain253_n41_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain253_n44_α
 xchain253_n41_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n42_α:
 lea rdi, [rbp + 3520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain253_n45_α
 xchain253_n42_β:
 jmp proc_sum$4_ω
 xchain253_n43_α:
# IR_CUT
 jmp xchain253_n46_α
 xchain253_n43_β:
 jmp xchain253_n16_α
 xchain253_n44_α:
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
  .section .rodata
  .Lrkfn335: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n47_α
 xchain253_n44_β:
 jmp xchain253_n29_α
 xchain253_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2648], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2656]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2664], rax
# marshal arg2 = producer-box slot [zr+2560] -> [zr+2672]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2680], rax
  .section .rodata
  .Lrkfn337: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn337]
 lea rsi, [rbp + 2640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n48_α
 xchain253_n45_β:
 jmp xchain253_n7_α
# IR_SUSPEND yield+resume
 xchain253_n46_α:
 lea rax, [rip + xchain253_n46_β]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_sum$4_γ
 xchain253_n46_β:
 jmp xchain253_n16_α
# IR_VAR_REF
 xchain253_n47_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain253_n49_α
 xchain253_n47_β:
 jmp xchain253_n29_α
 xchain253_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2480]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+2624] -> [zr+2496]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2504], rax
  .section .rodata
  .Lrkfn343: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn343]
 lea rsi, [rbp + 2480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain253_n7_α
 jmp xchain253_n50_α
 xchain253_n48_β:
 jmp xchain253_n7_α
# IR_LIT_STRING
 xchain253_n49_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain253_n51_α
 xchain253_n49_β:
 jmp proc_sum$4_ω
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "."
 xchain253_n50_α:
# IR_CUT
 jmp xchain253_n52_α
 xchain253_n50_β:
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n51_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain253_n53_α
 xchain253_n51_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain253_n52_α:
 lea rdi, [rbp + 3536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain253_n54_α
 xchain253_n52_β:
 jmp xchain253_n29_α
# IR_LIT_STRING
 xchain253_n53_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain253_n55_α
 xchain253_n53_β:
 jmp proc_sum$4_ω
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "[]"
# IR_VAR
 xchain253_n54_α:
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 2376], rax
 jmp xchain253_n56_α
 xchain253_n54_β:
 jmp proc_sum$4_ω
 xchain253_n55_α:
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
  .section .rodata
  .Lrkfn354: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn354]
 lea rsi, [rbp + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n57_α
 xchain253_n55_β:
 jmp xchain253_n29_α
# IR_VAR
 xchain253_n56_α:
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 2408], rax
 jmp xchain253_n58_α
 xchain253_n56_β:
 jmp proc_sum$4_ω
 xchain253_n57_α:
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
  .section .rodata
  .Lrkfn358: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn358]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n59_α
 xchain253_n57_β:
 jmp xchain253_n29_α
 xchain253_n58_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2320]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2328], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
  .section .rodata
  .Lrkfn360: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn360]
 lea rsi, [rbp + 2320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n60_α
 xchain253_n58_β:
 jmp xchain253_n29_α
# IR_SUSPEND yield+resume
 xchain253_n59_α:
 lea rax, [rip + xchain253_n59_β]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_sum$4_γ
 xchain253_n59_β:
 jmp xchain253_n29_α
# IR_VAR
 xchain253_n60_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 2440], rax
 jmp xchain253_n61_α
 xchain253_n60_β:
 jmp proc_sum$4_ω
 xchain253_n61_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2272]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2280], rax
  .section .rodata
  .Lrkfn366: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn366]
 lea rsi, [rbp + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n62_α
 xchain253_n61_β:
 jmp xchain253_n29_α
 xchain253_n62_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2160]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2176]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2184], rax
  .section .rodata
  .Lrkfn368: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn368]
 lea rsi, [rbp + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n63_α
 xchain253_n62_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n63_α:
 lea rdi, [rbp + 3552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain253_n64_α
 xchain253_n63_β:
 jmp xchain253_n29_α
# IR_VAR
 xchain253_n64_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 2088], rax
 jmp xchain253_n65_α
 xchain253_n64_β:
 jmp proc_sum$4_ω
# IR_LIT_INTEGER
 xchain253_n65_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain253_n66_α
 xchain253_n65_β:
 jmp proc_sum$4_ω
.Lx373_0:
 .quad 10
 xchain253_n66_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2056], rax
  .section .rodata
  .Lrkfn375: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn375]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n67_α
 xchain253_n66_β:
 jmp xchain253_n29_α
 xchain253_n67_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1936]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn377: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn377]
 lea rsi, [rbp + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n68_α
 xchain253_n67_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n68_α:
 lea rdi, [rbp + 3504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain253_n69_α
 xchain253_n68_β:
 jmp xchain253_n29_α
# IR_VAR
 xchain253_n69_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 1864], rax
 jmp xchain253_n70_α
 xchain253_n69_β:
 jmp proc_sum$4_ω
# IR_LIT_INTEGER
 xchain253_n70_α:
 mov qword ptr [rbp + 1888], 6
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain253_n71_α
 xchain253_n70_β:
 jmp proc_sum$4_ω
.Lx382_0:
 .quad 10
 xchain253_n71_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1808]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1824]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn384: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn384]
 lea rsi, [rbp + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n72_α
 xchain253_n71_β:
 jmp xchain253_n29_α
 xchain253_n72_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1712]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1728]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1736], rax
  .section .rodata
  .Lrkfn386: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn386]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n73_α
 xchain253_n72_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n73_α:
 lea rdi, [rbp + 3472]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain253_n74_α
 xchain253_n73_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n74_α:
 lea rdi, [rbp + 3488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain253_n75_α
 xchain253_n74_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n75_α:
 lea rdi, [rbp + 3504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain253_n76_α
 xchain253_n75_β:
 jmp xchain253_n29_α
# IR_VAR_REF
 xchain253_n76_α:
 lea rdi, [rbp + 3520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain253_n77_α
 xchain253_n76_β:
 jmp xchain253_n29_α
 xchain253_n77_α:
 mov qword ptr [rbp + 1536], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1632]
 mov rdx, qword ptr [rbp + 1640]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx396_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx396_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx396_3]
 lea rdx, [rip + .Lx396_4]
 jmp rax
.Lx396_3:
 mov rax, qword ptr [rbp + 1536]
 test rax, rax
 jne .Lx396_5
 mov qword ptr [rbp + 1536], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx396_2
.Lx396_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx396_2
.Lx396_4:
 mov rax, qword ptr [rbp + 1536]
 test rax, rax
 jne .Lx396_6
 mov qword ptr [rbp + 1536], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx396_2
.Lx396_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx396_2
.Lx396_1:
 call rt_faildescr@PLT
.Lx396_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain253_n29_α
 jmp xchain253_n78_α
 xchain253_n77_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "sum/4"
# IR_SUSPEND yield+resume
 xchain253_n78_α:
 lea rax, [rip + xchain253_n78_β]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_sum$4_γ
 xchain253_n78_β:
 jmp xchain253_n77_β
proc_sum$4_res:
add rsp, 8
pop rbp
proc_sum$4_β:
jmp qword ptr [rbp + 3408]
proc_sum$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sum$4_res]
push rax
mov rax, [rbp + 3608]
mov rbp, [rbp + 3624]
jmp rax
proc_sum$4_ω:
mov rax, [rbp + 3616]
lea rsp, [rbp + 3632]
mov rbp, [rbp + 3624]
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
  mov rdi, rsp
  mov ecx, 1008
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 1008
  call rt_jmp_frame_lexprep@PLT
proc_even$1_α_body:
lea rax, [rip + xchain399_n4_β]
mov qword ptr [rbp + 976], rax
 xchain399_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn401: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn401]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain399_n1_α
 xchain399_n0_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain399_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain399_n2_α
 xchain399_n1_β:
 jmp xchain399_n5_α
# IR_LIT_INTEGER
 xchain399_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain399_n3_α
 xchain399_n2_β:
 jmp xchain399_n5_α
.Lx404_0:
 .quad 0
 xchain399_n3_α:
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
  .section .rodata
  .Lrkfn406: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn406]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain399_n5_α
 jmp xchain399_n4_α
 xchain399_n3_β:
 jmp xchain399_n5_α
# IR_SUSPEND yield+resume
 xchain399_n4_α:
 lea rax, [rip + xchain399_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain399_n4_β:
 jmp xchain399_n5_α
 xchain399_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn410: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn410]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain399_n6_α
 xchain399_n5_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain399_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain399_n7_α
 xchain399_n6_β:
 jmp xchain399_n10_α
# IR_LIT_INTEGER
 xchain399_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain399_n8_α
 xchain399_n7_β:
 jmp xchain399_n10_α
.Lx413_0:
 .quad 2
 xchain399_n8_α:
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
  .section .rodata
  .Lrkfn415: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn415]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain399_n10_α
 jmp xchain399_n9_α
 xchain399_n8_β:
 jmp xchain399_n10_α
# IR_SUSPEND yield+resume
 xchain399_n9_α:
 lea rax, [rip + xchain399_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain399_n9_β:
 jmp xchain399_n10_α
 xchain399_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn419: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn419]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain399_n11_α
 xchain399_n10_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain399_n11_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain399_n12_α
 xchain399_n11_β:
 jmp xchain399_n15_α
# IR_LIT_INTEGER
 xchain399_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain399_n13_α
 xchain399_n12_β:
 jmp xchain399_n15_α
.Lx422_0:
 .quad 4
 xchain399_n13_α:
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
  .section .rodata
  .Lrkfn424: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn424]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain399_n15_α
 jmp xchain399_n14_α
 xchain399_n13_β:
 jmp xchain399_n15_α
# IR_SUSPEND yield+resume
 xchain399_n14_α:
 lea rax, [rip + xchain399_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain399_n14_β:
 jmp xchain399_n15_α
 xchain399_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn428: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn428]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain399_n16_α
 xchain399_n15_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain399_n16_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain399_n17_α
 xchain399_n16_β:
 jmp xchain399_n20_α
# IR_LIT_INTEGER
 xchain399_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain399_n18_α
 xchain399_n17_β:
 jmp xchain399_n20_α
.Lx431_0:
 .quad 6
 xchain399_n18_α:
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
  .section .rodata
  .Lrkfn433: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn433]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain399_n20_α
 jmp xchain399_n19_α
 xchain399_n18_β:
 jmp xchain399_n20_α
# IR_SUSPEND yield+resume
 xchain399_n19_α:
 lea rax, [rip + xchain399_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain399_n19_β:
 jmp xchain399_n20_α
 xchain399_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn437: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn437]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain399_n21_α
 xchain399_n20_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain399_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain399_n22_α
 xchain399_n21_β:
 jmp xchain399_n25_α
# IR_LIT_INTEGER
 xchain399_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain399_n23_α
 xchain399_n22_β:
 jmp xchain399_n25_α
.Lx440_0:
 .quad 8
 xchain399_n23_α:
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
  .section .rodata
  .Lrkfn442: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn442]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain399_n25_α
 jmp xchain399_n24_α
 xchain399_n23_β:
 jmp xchain399_n25_α
# IR_SUSPEND yield+resume
 xchain399_n24_α:
 lea rax, [rip + xchain399_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain399_n24_β:
 jmp xchain399_n25_α
 xchain399_n25_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn446: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn446]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp proc_even$1_ω
 xchain399_n25_β:
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
  sub rsp, 8800
  mov [rsp + 8776], rcx
  mov [rsp + 8784], rdx
  mov [rsp + 8792], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 8768
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 8456], rsp
  mov rdi, rsp
  mov esi, 8768
  call rt_jmp_frame_lexprep@PLT
proc_top$16_α_body:
lea rax, [rip + xchain447_n175_β]
mov qword ptr [rbp + 8432], rax
 xchain447_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn449: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn449]
 lea rsi, [rbp + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n1_α
 xchain447_n0_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain447_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8368], rax
 mov qword ptr [rbp + 8376], rdx
 jmp xchain447_n2_α
 xchain447_n1_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n2_α:
 lea rdi, [rbp + 8672]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain447_n3_α
 xchain447_n2_β:
 jmp xchain447_n5_α
 xchain447_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8368] -> [zr+8320]
 mov rax, qword ptr [rbp + 8368]
 mov qword ptr [rbp + 8320], rax
 mov rax, qword ptr [rbp + 8376]
 mov qword ptr [rbp + 8328], rax
# marshal arg1 = producer-box slot [zr+8400] -> [zr+8336]
 mov rax, qword ptr [rbp + 8400]
 mov qword ptr [rbp + 8336], rax
 mov rax, qword ptr [rbp + 8408]
 mov qword ptr [rbp + 8344], rax
  .section .rodata
  .Lrkfn455: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn455]
 lea rsi, [rbp + 8320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n4_α
 xchain447_n3_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain447_n6_α
 xchain447_n4_β:
 jmp xchain447_n5_α
 xchain447_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn459: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn459]
 lea rsi, [rbp + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp proc_top$16_ω
 xchain447_n5_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain447_n6_α:
 lea rdi, [rbp + 8688]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 jmp xchain447_n7_α
 xchain447_n6_β:
 jmp xchain447_n5_α
 xchain447_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8240] -> [zr+8192]
 mov rax, qword ptr [rbp + 8240]
 mov qword ptr [rbp + 8192], rax
 mov rax, qword ptr [rbp + 8248]
 mov qword ptr [rbp + 8200], rax
# marshal arg1 = producer-box slot [zr+8272] -> [zr+8208]
 mov rax, qword ptr [rbp + 8272]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 8280]
 mov qword ptr [rbp + 8216], rax
  .section .rodata
  .Lrkfn463: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn463]
 lea rsi, [rbp + 8192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8176], rax
 mov qword ptr [rbp + 8184], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n8_α
 xchain447_n7_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n8_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 jmp xchain447_n9_α
 xchain447_n8_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n9_α:
 lea rdi, [rbp + 8704]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain447_n10_α
 xchain447_n9_β:
 jmp xchain447_n5_α
 xchain447_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8112] -> [zr+8064]
 mov rax, qword ptr [rbp + 8112]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 8120]
 mov qword ptr [rbp + 8072], rax
# marshal arg1 = producer-box slot [zr+8144] -> [zr+8080]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8080], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8088], rax
  .section .rodata
  .Lrkfn469: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn469]
 lea rsi, [rbp + 8064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n11_α
 xchain447_n10_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n11_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7984], rax
 mov qword ptr [rbp + 7992], rdx
 jmp xchain447_n12_α
 xchain447_n11_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n12_α:
 lea rdi, [rbp + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain447_n13_α
 xchain447_n12_β:
 jmp xchain447_n5_α
 xchain447_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7984] -> [zr+7936]
 mov rax, qword ptr [rbp + 7984]
 mov qword ptr [rbp + 7936], rax
 mov rax, qword ptr [rbp + 7992]
 mov qword ptr [rbp + 7944], rax
# marshal arg1 = producer-box slot [zr+8016] -> [zr+7952]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 7952], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 7960], rax
  .section .rodata
  .Lrkfn475: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn475]
 lea rsi, [rbp + 7936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n14_α
 xchain447_n13_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n14_α:
 lea rdi, [rbp + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 jmp xchain447_n15_α
 xchain447_n14_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n15_α:
 lea rdi, [rbp + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain447_n16_α
 xchain447_n15_β:
 jmp xchain447_n5_α
 xchain447_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7856] -> [zr+7808]
 mov rax, qword ptr [rbp + 7856]
 mov qword ptr [rbp + 7808], rax
 mov rax, qword ptr [rbp + 7864]
 mov qword ptr [rbp + 7816], rax
# marshal arg1 = producer-box slot [zr+7888] -> [zr+7824]
 mov rax, qword ptr [rbp + 7888]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7896]
 mov qword ptr [rbp + 7832], rax
  .section .rodata
  .Lrkfn481: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn481]
 lea rsi, [rbp + 7808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n17_α
 xchain447_n16_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n17_α:
 lea rdi, [rbp + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7728], rax
 mov qword ptr [rbp + 7736], rdx
 jmp xchain447_n18_α
 xchain447_n17_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n18_α:
 lea rdi, [rbp + 8544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain447_n19_α
 xchain447_n18_β:
 jmp xchain447_n5_α
 xchain447_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7728] -> [zr+7680]
 mov rax, qword ptr [rbp + 7728]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7736]
 mov qword ptr [rbp + 7688], rax
# marshal arg1 = producer-box slot [zr+7760] -> [zr+7696]
 mov rax, qword ptr [rbp + 7760]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7768]
 mov qword ptr [rbp + 7704], rax
  .section .rodata
  .Lrkfn487: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn487]
 lea rsi, [rbp + 7680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7664], rax
 mov qword ptr [rbp + 7672], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n20_α
 xchain447_n19_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n20_α:
 lea rdi, [rbp + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain447_n21_α
 xchain447_n20_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n21_α:
 lea rdi, [rbp + 8560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 jmp xchain447_n22_α
 xchain447_n21_β:
 jmp xchain447_n5_α
 xchain447_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7600] -> [zr+7552]
 mov rax, qword ptr [rbp + 7600]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7608]
 mov qword ptr [rbp + 7560], rax
# marshal arg1 = producer-box slot [zr+7632] -> [zr+7568]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7568], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7576], rax
  .section .rodata
  .Lrkfn493: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn493]
 lea rsi, [rbp + 7552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n23_α
 xchain447_n22_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n23_α:
 lea rdi, [rbp + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain447_n24_α
 xchain447_n23_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n24_α:
 lea rdi, [rbp + 8576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain447_n25_α
 xchain447_n24_β:
 jmp xchain447_n5_α
 xchain447_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7472] -> [zr+7424]
 mov rax, qword ptr [rbp + 7472]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 7480]
 mov qword ptr [rbp + 7432], rax
# marshal arg1 = producer-box slot [zr+7504] -> [zr+7440]
 mov rax, qword ptr [rbp + 7504]
 mov qword ptr [rbp + 7440], rax
 mov rax, qword ptr [rbp + 7512]
 mov qword ptr [rbp + 7448], rax
  .section .rodata
  .Lrkfn499: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn499]
 lea rsi, [rbp + 7424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n26_α
 xchain447_n25_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n26_α:
 lea rdi, [rbp + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 jmp xchain447_n27_α
 xchain447_n26_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n27_α:
 lea rdi, [rbp + 8592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7376], rax
 mov qword ptr [rbp + 7384], rdx
 jmp xchain447_n28_α
 xchain447_n27_β:
 jmp xchain447_n5_α
 xchain447_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7344] -> [zr+7296]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7304], rax
# marshal arg1 = producer-box slot [zr+7376] -> [zr+7312]
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [rbp + 7312], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [rbp + 7320], rax
  .section .rodata
  .Lrkfn505: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn505]
 lea rsi, [rbp + 7296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n29_α
 xchain447_n28_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n29_α:
 lea rdi, [rbp + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain447_n30_α
 xchain447_n29_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n30_α:
 lea rdi, [rbp + 8608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 jmp xchain447_n31_α
 xchain447_n30_β:
 jmp xchain447_n5_α
 xchain447_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7216] -> [zr+7168]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7176], rax
# marshal arg1 = producer-box slot [zr+7248] -> [zr+7184]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7192], rax
  .section .rodata
  .Lrkfn511: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn511]
 lea rsi, [rbp + 7168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n32_α
 xchain447_n31_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n32_α:
 lea rdi, [rbp + 176]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain447_n33_α
 xchain447_n32_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n33_α:
 lea rdi, [rbp + 8624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain447_n34_α
 xchain447_n33_β:
 jmp xchain447_n5_α
 xchain447_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7088] -> [zr+7040]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7048], rax
# marshal arg1 = producer-box slot [zr+7120] -> [zr+7056]
 mov rax, qword ptr [rbp + 7120]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 7128]
 mov qword ptr [rbp + 7064], rax
  .section .rodata
  .Lrkfn517: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn517]
 lea rsi, [rbp + 7040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n35_α
 xchain447_n34_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n35_α:
 lea rdi, [rbp + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain447_n36_α
 xchain447_n35_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n36_α:
 lea rdi, [rbp + 8640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 jmp xchain447_n37_α
 xchain447_n36_β:
 jmp xchain447_n5_α
 xchain447_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6960] -> [zr+6912]
 mov rax, qword ptr [rbp + 6960]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 6968]
 mov qword ptr [rbp + 6920], rax
# marshal arg1 = producer-box slot [zr+6992] -> [zr+6928]
 mov rax, qword ptr [rbp + 6992]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 7000]
 mov qword ptr [rbp + 6936], rax
  .section .rodata
  .Lrkfn523: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn523]
 lea rsi, [rbp + 6912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6896], rax
 mov qword ptr [rbp + 6904], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n38_α
 xchain447_n37_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n38_α:
 lea rdi, [rbp + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 jmp xchain447_n39_α
 xchain447_n38_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n39_α:
 lea rdi, [rbp + 8528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6864], rax
 mov qword ptr [rbp + 6872], rdx
 jmp xchain447_n40_α
 xchain447_n39_β:
 jmp xchain447_n5_α
 xchain447_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6832] -> [zr+6784]
 mov rax, qword ptr [rbp + 6832]
 mov qword ptr [rbp + 6784], rax
 mov rax, qword ptr [rbp + 6840]
 mov qword ptr [rbp + 6792], rax
# marshal arg1 = producer-box slot [zr+6864] -> [zr+6800]
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6808], rax
  .section .rodata
  .Lrkfn529: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn529]
 lea rsi, [rbp + 6784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n41_α
 xchain447_n40_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n41_α:
 lea rdi, [rbp + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain447_n42_α
 xchain447_n41_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n42_α:
 lea rdi, [rbp + 8512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain447_n43_α
 xchain447_n42_β:
 jmp xchain447_n5_α
 xchain447_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6704] -> [zr+6656]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6664], rax
# marshal arg1 = producer-box slot [zr+6736] -> [zr+6672]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6680], rax
  .section .rodata
  .Lrkfn535: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn535]
 lea rsi, [rbp + 6656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n44_α
 xchain447_n43_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n44_α:
 lea rdi, [rbp + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 jmp xchain447_n45_α
 xchain447_n44_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n45_α:
 lea rdi, [rbp + 8496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 jmp xchain447_n46_α
 xchain447_n45_β:
 jmp xchain447_n5_α
 xchain447_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6528]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6536], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6544]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6552], rax
  .section .rodata
  .Lrkfn541: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn541]
 lea rsi, [rbp + 6528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n47_α
 xchain447_n46_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n47_α:
 lea rdi, [rbp + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 jmp xchain447_n48_α
 xchain447_n47_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n48_α:
 lea rdi, [rbp + 8480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain447_n49_α
 xchain447_n48_β:
 jmp xchain447_n5_α
 xchain447_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6448] -> [zr+6400]
 mov rax, qword ptr [rbp + 6448]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6456]
 mov qword ptr [rbp + 6408], rax
# marshal arg1 = producer-box slot [zr+6480] -> [zr+6416]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6416], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6424], rax
  .section .rodata
  .Lrkfn547: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn547]
 lea rsi, [rbp + 6400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n50_α
 xchain447_n49_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n50_α:
 lea rdi, [rbp + 8672]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 jmp xchain447_n51_α
 xchain447_n50_β:
 jmp xchain447_n5_α
 xchain447_n51_α:
 mov qword ptr [rbp + 6320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6352]
 mov rdx, qword ptr [rbp + 6360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx551_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx551_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx551_3]
 lea rdx, [rip + .Lx551_4]
 jmp rax
.Lx551_3:
 mov rax, qword ptr [rbp + 6320]
 test rax, rax
 jne .Lx551_5
 mov qword ptr [rbp + 6320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx551_2
.Lx551_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx551_2
.Lx551_4:
 mov rax, qword ptr [rbp + 6320]
 test rax, rax
 jne .Lx551_6
 mov qword ptr [rbp + 6320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx551_2
.Lx551_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx551_2
.Lx551_1:
 call rt_faildescr@PLT
.Lx551_2:
 mov qword ptr [rbp + 6288], rax
 mov qword ptr [rbp + 6296], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n52_α
 xchain447_n51_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain447_n52_α:
 lea rdi, [rbp + 8688]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 jmp xchain447_n53_α
 xchain447_n52_β:
 jmp xchain447_n5_α
 xchain447_n53_α:
 mov qword ptr [rbp + 6224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6256]
 mov rdx, qword ptr [rbp + 6264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx555_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx555_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx555_3]
 lea rdx, [rip + .Lx555_4]
 jmp rax
.Lx555_3:
 mov rax, qword ptr [rbp + 6224]
 test rax, rax
 jne .Lx555_5
 mov qword ptr [rbp + 6224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx555_2
.Lx555_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx555_2
.Lx555_4:
 mov rax, qword ptr [rbp + 6224]
 test rax, rax
 jne .Lx555_6
 mov qword ptr [rbp + 6224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx555_2
.Lx555_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx555_2
.Lx555_1:
 call rt_faildescr@PLT
.Lx555_2:
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain447_n51_β
 jmp xchain447_n54_α
 xchain447_n53_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n54_α:
 lea rdi, [rbp + 8704]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain447_n55_α
 xchain447_n54_β:
 jmp xchain447_n5_α
 xchain447_n55_α:
 mov qword ptr [rbp + 6128], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6160]
 mov rdx, qword ptr [rbp + 6168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx559_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx559_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx559_3]
 lea rdx, [rip + .Lx559_4]
 jmp rax
.Lx559_3:
 mov rax, qword ptr [rbp + 6128]
 test rax, rax
 jne .Lx559_5
 mov qword ptr [rbp + 6128], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx559_2
.Lx559_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx559_2
.Lx559_4:
 mov rax, qword ptr [rbp + 6128]
 test rax, rax
 jne .Lx559_6
 mov qword ptr [rbp + 6128], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx559_2
.Lx559_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx559_2
.Lx559_1:
 call rt_faildescr@PLT
.Lx559_2:
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 cmp eax, 99
 je xchain447_n53_β
 jmp xchain447_n56_α
 xchain447_n55_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n56_α:
 lea rdi, [rbp + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 jmp xchain447_n57_α
 xchain447_n56_β:
 jmp xchain447_n5_α
 xchain447_n57_α:
 mov qword ptr [rbp + 6032], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6064]
 mov rdx, qword ptr [rbp + 6072]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx563_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx563_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx563_3]
 lea rdx, [rip + .Lx563_4]
 jmp rax
.Lx563_3:
 mov rax, qword ptr [rbp + 6032]
 test rax, rax
 jne .Lx563_5
 mov qword ptr [rbp + 6032], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx563_2
.Lx563_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx563_2
.Lx563_4:
 mov rax, qword ptr [rbp + 6032]
 test rax, rax
 jne .Lx563_6
 mov qword ptr [rbp + 6032], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx563_2
.Lx563_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx563_2
.Lx563_1:
 call rt_faildescr@PLT
.Lx563_2:
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je xchain447_n55_β
 jmp xchain447_n58_α
 xchain447_n57_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "even/1"
# IR_LIT_STRING
 xchain447_n58_α:
 mov qword ptr [rbp + 5328], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 5336], rax
 jmp xchain447_n59_α
 xchain447_n58_β:
 jmp proc_top$16_ω
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n59_α:
 lea rdi, [rbp + 8704]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain447_n60_α
 xchain447_n59_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n60_α:
 mov qword ptr [rbp + 5184], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 5192], rax
 jmp xchain447_n61_α
 xchain447_n60_β:
 jmp proc_top$16_ω
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n61_α:
 lea rdi, [rbp + 8688]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 jmp xchain447_n62_α
 xchain447_n61_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n62_α:
 mov qword ptr [rbp + 5040], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 5048], rax
 jmp xchain447_n63_α
 xchain447_n62_β:
 jmp proc_top$16_ω
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n63_α:
 lea rdi, [rbp + 8672]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain447_n64_α
 xchain447_n63_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n64_α:
 mov qword ptr [rbp + 4896], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 4904], rax
 jmp xchain447_n65_α
 xchain447_n64_β:
 jmp proc_top$16_ω
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "[]"
 xchain447_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+4976]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 4984], rax
# marshal arg1 = producer-box slot [zr+4928] -> [zr+4992]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 5000], rax
# marshal arg2 = producer-box slot [zr+4896] -> [zr+5008]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 5016], rax
  .section .rodata
  .Lrkfn575: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn575]
 lea rsi, [rbp + 4976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n66_α
 xchain447_n65_β:
 jmp proc_top$16_ω
 xchain447_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5120]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5128], rax
# marshal arg1 = producer-box slot [zr+5072] -> [zr+5136]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5144], rax
# marshal arg2 = producer-box slot [zr+4960] -> [zr+5152]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn577: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn577]
 lea rsi, [rbp + 5120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n67_α
 xchain447_n66_β:
 jmp proc_top$16_ω
 xchain447_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5328] -> [zr+5264]
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 5264], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 5272], rax
# marshal arg1 = producer-box slot [zr+5216] -> [zr+5280]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5288], rax
# marshal arg2 = producer-box slot [zr+5104] -> [zr+5296]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5304], rax
  .section .rodata
  .Lrkfn579: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn579]
 lea rsi, [rbp + 5264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n68_α
 xchain447_n67_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n68_α:
 lea rdi, [rbp + 8752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain447_n69_α
 xchain447_n68_β:
 jmp xchain447_n5_α
# IR_LIT_STRING
 xchain447_n69_α:
 mov qword ptr [rbp + 5968], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 5976], rax
 jmp xchain447_n70_α
 xchain447_n69_β:
 jmp proc_top$16_ω
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n70_α:
 lea rdi, [rbp + 8592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 jmp xchain447_n71_α
 xchain447_n70_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n71_α:
 mov qword ptr [rbp + 5824], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 5832], rax
 jmp xchain447_n72_α
 xchain447_n71_β:
 jmp proc_top$16_ω
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n72_α:
 lea rdi, [rbp + 8576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 jmp xchain447_n73_α
 xchain447_n72_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n73_α:
 mov qword ptr [rbp + 5680], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 5688], rax
 jmp xchain447_n74_α
 xchain447_n73_β:
 jmp proc_top$16_ω
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n74_α:
 lea rdi, [rbp + 8560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 jmp xchain447_n75_α
 xchain447_n74_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n75_α:
 mov qword ptr [rbp + 5536], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 5544], rax
 jmp xchain447_n76_α
 xchain447_n75_β:
 jmp proc_top$16_ω
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n76_α:
 lea rdi, [rbp + 8544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 jmp xchain447_n77_α
 xchain447_n76_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain447_n77_α:
 lea rdi, [rbp + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 jmp xchain447_n78_α
 xchain447_n77_β:
 jmp proc_top$16_ω
 xchain447_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5536] -> [zr+5472]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5480], rax
# marshal arg1 = producer-box slot [zr+5424] -> [zr+5488]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5496], rax
# marshal arg2 = producer-box slot [zr+5392] -> [zr+5504]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5512], rax
  .section .rodata
  .Lrkfn597: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 5472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n79_α
 xchain447_n78_β:
 jmp proc_top$16_ω
 xchain447_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5680] -> [zr+5616]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5624], rax
# marshal arg1 = producer-box slot [zr+5568] -> [zr+5632]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5640], rax
# marshal arg2 = producer-box slot [zr+5456] -> [zr+5648]
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 5656], rax
  .section .rodata
  .Lrkfn599: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn599]
 lea rsi, [rbp + 5616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n80_α
 xchain447_n79_β:
 jmp proc_top$16_ω
 xchain447_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5824] -> [zr+5760]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5768], rax
# marshal arg1 = producer-box slot [zr+5712] -> [zr+5776]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5784], rax
# marshal arg2 = producer-box slot [zr+5600] -> [zr+5792]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5800], rax
  .section .rodata
  .Lrkfn601: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn601]
 lea rsi, [rbp + 5760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n81_α
 xchain447_n80_β:
 jmp proc_top$16_ω
 xchain447_n81_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5968] -> [zr+5904]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 5912], rax
# marshal arg1 = producer-box slot [zr+5856] -> [zr+5920]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5928], rax
# marshal arg2 = producer-box slot [zr+5744] -> [zr+5936]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5944], rax
  .section .rodata
  .Lrkfn603: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn603]
 lea rsi, [rbp + 5904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n82_α
 xchain447_n81_β:
 jmp xchain447_n5_α
 xchain447_n82_α:
 mov qword ptr [rbp + 4864], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5248]
 mov rdx, qword ptr [rbp + 5256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5360]
 mov rdx, qword ptr [rbp + 5368]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5888]
 mov rdx, qword ptr [rbp + 5896]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx605_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx605_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx605_3]
 lea rdx, [rip + .Lx605_4]
 jmp rax
.Lx605_3:
 mov rax, qword ptr [rbp + 4864]
 test rax, rax
 jne .Lx605_5
 mov qword ptr [rbp + 4864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx605_2
.Lx605_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx605_2
.Lx605_4:
 mov rax, qword ptr [rbp + 4864]
 test rax, rax
 jne .Lx605_6
 mov qword ptr [rbp + 4864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx605_2
.Lx605_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx605_2
.Lx605_1:
 call rt_faildescr@PLT
.Lx605_2:
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain447_n57_β
 jmp xchain447_n83_α
 xchain447_n82_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx605_0:
 .quad .Lx605_0_s
.Lx605_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain447_n83_α:
 lea rdi, [rbp + 8544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain447_n84_α
 xchain447_n83_β:
 jmp xchain447_n5_α
 xchain447_n84_α:
 mov qword ptr [rbp + 4736], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4768]
 mov rdx, qword ptr [rbp + 4776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx609_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx609_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx609_3]
 lea rdx, [rip + .Lx609_4]
 jmp rax
.Lx609_3:
 mov rax, qword ptr [rbp + 4736]
 test rax, rax
 jne .Lx609_5
 mov qword ptr [rbp + 4736], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx609_2
.Lx609_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx609_2
.Lx609_4:
 mov rax, qword ptr [rbp + 4736]
 test rax, rax
 jne .Lx609_6
 mov qword ptr [rbp + 4736], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx609_2
.Lx609_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx609_2
.Lx609_1:
 call rt_faildescr@PLT
.Lx609_2:
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 cmp eax, 99
 je xchain447_n82_β
 jmp xchain447_n85_α
 xchain447_n84_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain447_n85_α:
 lea rdi, [rbp + 8560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain447_n86_α
 xchain447_n85_β:
 jmp xchain447_n5_α
 xchain447_n86_α:
 mov qword ptr [rbp + 4640], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4672]
 mov rdx, qword ptr [rbp + 4680]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx613_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx613_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx613_3]
 lea rdx, [rip + .Lx613_4]
 jmp rax
.Lx613_3:
 mov rax, qword ptr [rbp + 4640]
 test rax, rax
 jne .Lx613_5
 mov qword ptr [rbp + 4640], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx613_2
.Lx613_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx613_2
.Lx613_4:
 mov rax, qword ptr [rbp + 4640]
 test rax, rax
 jne .Lx613_6
 mov qword ptr [rbp + 4640], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx613_2
.Lx613_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx613_2
.Lx613_1:
 call rt_faildescr@PLT
.Lx613_2:
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je xchain447_n84_β
 jmp xchain447_n87_α
 xchain447_n86_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain447_n87_α:
 lea rdi, [rbp + 8576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 jmp xchain447_n88_α
 xchain447_n87_β:
 jmp xchain447_n5_α
 xchain447_n88_α:
 mov qword ptr [rbp + 4544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4576]
 mov rdx, qword ptr [rbp + 4584]
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
 mov rax, qword ptr [rbp + 4544]
 test rax, rax
 jne .Lx617_5
 mov qword ptr [rbp + 4544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx617_2
.Lx617_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx617_2
.Lx617_4:
 mov rax, qword ptr [rbp + 4544]
 test rax, rax
 jne .Lx617_6
 mov qword ptr [rbp + 4544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx617_2
.Lx617_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx617_2
.Lx617_1:
 call rt_faildescr@PLT
.Lx617_2:
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain447_n86_β
 jmp xchain447_n89_α
 xchain447_n88_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n89_α:
 lea rdi, [rbp + 8592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain447_n90_α
 xchain447_n89_β:
 jmp xchain447_n5_α
 xchain447_n90_α:
 mov qword ptr [rbp + 4448], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
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
 mov rax, qword ptr [rbp + 4448]
 test rax, rax
 jne .Lx621_5
 mov qword ptr [rbp + 4448], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx621_2
.Lx621_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx621_2
.Lx621_4:
 mov rax, qword ptr [rbp + 4448]
 test rax, rax
 jne .Lx621_6
 mov qword ptr [rbp + 4448], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx621_2
.Lx621_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx621_2
.Lx621_1:
 call rt_faildescr@PLT
.Lx621_2:
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 cmp eax, 99
 je xchain447_n88_β
 jmp xchain447_n91_α
 xchain447_n90_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n91_α:
 lea rdi, [rbp + 8736]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 jmp xchain447_n92_α
 xchain447_n91_β:
 jmp xchain447_n5_α
 xchain447_n92_α:
 mov qword ptr [rbp + 4352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4384]
 mov rdx, qword ptr [rbp + 4392]
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
 mov rax, qword ptr [rbp + 4352]
 test rax, rax
 jne .Lx625_5
 mov qword ptr [rbp + 4352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx625_2
.Lx625_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx625_2
.Lx625_4:
 mov rax, qword ptr [rbp + 4352]
 test rax, rax
 jne .Lx625_6
 mov qword ptr [rbp + 4352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx625_2
.Lx625_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx625_2
.Lx625_1:
 call rt_faildescr@PLT
.Lx625_2:
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain447_n90_β
 jmp xchain447_n93_α
 xchain447_n92_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "zero/1"
# IR_VAR_REF
 xchain447_n93_α:
 lea rdi, [rbp + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain447_n94_α
 xchain447_n93_β:
 jmp xchain447_n5_α
 xchain447_n94_α:
 mov qword ptr [rbp + 4256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
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
 mov rax, qword ptr [rbp + 4256]
 test rax, rax
 jne .Lx629_5
 mov qword ptr [rbp + 4256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx629_2
.Lx629_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx629_2
.Lx629_4:
 mov rax, qword ptr [rbp + 4256]
 test rax, rax
 jne .Lx629_6
 mov qword ptr [rbp + 4256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx629_2
.Lx629_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx629_2
.Lx629_1:
 call rt_faildescr@PLT
.Lx629_2:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain447_n92_β
 jmp xchain447_n95_α
 xchain447_n94_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "lefteven/1"
# IR_LIT_STRING
 xchain447_n95_α:
 mov qword ptr [rbp + 3696], 1
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain447_n96_α
 xchain447_n95_β:
 jmp proc_top$16_ω
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n96_α:
 lea rdi, [rbp + 8704]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain447_n97_α
 xchain447_n96_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n97_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain447_n98_α
 xchain447_n97_β:
 jmp proc_top$16_ω
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n98_α:
 lea rdi, [rbp + 8688]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain447_n99_α
 xchain447_n98_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n99_α:
 mov qword ptr [rbp + 3408], 1
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain447_n100_α
 xchain447_n99_β:
 jmp proc_top$16_ω
.Lx636_0:
 .quad .Lx636_0_s
.Lx636_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n100_α:
 lea rdi, [rbp + 8672]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain447_n101_α
 xchain447_n100_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n101_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx639_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain447_n102_α
 xchain447_n101_β:
 jmp proc_top$16_ω
.Lx639_0:
 .quad .Lx639_0_s
.Lx639_0_s:
 .string "[]"
 xchain447_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3344]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3352], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3360]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3368], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3376]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3384], rax
  .section .rodata
  .Lrkfn641: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn641]
 lea rsi, [rbp + 3344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n103_α
 xchain447_n102_β:
 jmp proc_top$16_ω
 xchain447_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3488]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3496], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3504]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3512], rax
# marshal arg2 = producer-box slot [zr+3328] -> [zr+3520]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn643: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn643]
 lea rsi, [rbp + 3488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n104_α
 xchain447_n103_β:
 jmp proc_top$16_ω
 xchain447_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3632]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3640], rax
# marshal arg1 = producer-box slot [zr+3584] -> [zr+3648]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3656], rax
# marshal arg2 = producer-box slot [zr+3472] -> [zr+3664]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3672], rax
  .section .rodata
  .Lrkfn645: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn645]
 lea rsi, [rbp + 3632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n105_α
 xchain447_n104_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n105_α:
 lea rdi, [rbp + 8720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain447_n106_α
 xchain447_n105_β:
 jmp xchain447_n5_α
# IR_LIT_STRING
 xchain447_n106_α:
 mov qword ptr [rbp + 4192], 1
 mov rax, qword ptr [rip + .Lx648_0]
 mov qword ptr [rbp + 4200], rax
 jmp xchain447_n107_α
 xchain447_n106_β:
 jmp proc_top$16_ω
.Lx648_0:
 .quad .Lx648_0_s
.Lx648_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n107_α:
 lea rdi, [rbp + 8640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain447_n108_α
 xchain447_n107_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n108_α:
 mov qword ptr [rbp + 4048], 1
 mov rax, qword ptr [rip + .Lx651_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain447_n109_α
 xchain447_n108_β:
 jmp proc_top$16_ω
.Lx651_0:
 .quad .Lx651_0_s
.Lx651_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n109_α:
 lea rdi, [rbp + 8624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain447_n110_α
 xchain447_n109_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n110_α:
 mov qword ptr [rbp + 3904], 1
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain447_n111_α
 xchain447_n110_β:
 jmp proc_top$16_ω
.Lx654_0:
 .quad .Lx654_0_s
.Lx654_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n111_α:
 lea rdi, [rbp + 8608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain447_n112_α
 xchain447_n111_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain447_n112_α:
 lea rdi, [rbp + 8656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain447_n113_α
 xchain447_n112_β:
 jmp proc_top$16_ω
 xchain447_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3840]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3848], rax
# marshal arg1 = producer-box slot [zr+3792] -> [zr+3856]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3864], rax
# marshal arg2 = producer-box slot [zr+3760] -> [zr+3872]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3880], rax
  .section .rodata
  .Lrkfn660: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn660]
 lea rsi, [rbp + 3840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n114_α
 xchain447_n113_β:
 jmp proc_top$16_ω
 xchain447_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4048] -> [zr+3984]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3992], rax
# marshal arg1 = producer-box slot [zr+3936] -> [zr+4000]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4008], rax
# marshal arg2 = producer-box slot [zr+3824] -> [zr+4016]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 4024], rax
  .section .rodata
  .Lrkfn662: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn662]
 lea rsi, [rbp + 3984]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n115_α
 xchain447_n114_β:
 jmp proc_top$16_ω
 xchain447_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4192] -> [zr+4128]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4136], rax
# marshal arg1 = producer-box slot [zr+4080] -> [zr+4144]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4152], rax
# marshal arg2 = producer-box slot [zr+3968] -> [zr+4160]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4168], rax
  .section .rodata
  .Lrkfn664: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn664]
 lea rsi, [rbp + 4128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n116_α
 xchain447_n115_β:
 jmp xchain447_n5_α
 xchain447_n116_α:
 mov qword ptr [rbp + 3232], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3616]
 mov rdx, qword ptr [rbp + 3624]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3728]
 mov rdx, qword ptr [rbp + 3736]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4112]
 mov rdx, qword ptr [rbp + 4120]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx666_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx666_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx666_3]
 lea rdx, [rip + .Lx666_4]
 jmp rax
.Lx666_3:
 mov rax, qword ptr [rbp + 3232]
 test rax, rax
 jne .Lx666_5
 mov qword ptr [rbp + 3232], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx666_2
.Lx666_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx666_2
.Lx666_4:
 mov rax, qword ptr [rbp + 3232]
 test rax, rax
 jne .Lx666_6
 mov qword ptr [rbp + 3232], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx666_2
.Lx666_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx666_2
.Lx666_1:
 call rt_faildescr@PLT
.Lx666_2:
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain447_n94_β
 jmp xchain447_n117_α
 xchain447_n116_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx666_0:
 .quad .Lx666_0_s
.Lx666_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain447_n117_α:
 lea rdi, [rbp + 8608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain447_n118_α
 xchain447_n117_β:
 jmp xchain447_n5_α
 xchain447_n118_α:
 mov qword ptr [rbp + 3104], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx670_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx670_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx670_3]
 lea rdx, [rip + .Lx670_4]
 jmp rax
.Lx670_3:
 mov rax, qword ptr [rbp + 3104]
 test rax, rax
 jne .Lx670_5
 mov qword ptr [rbp + 3104], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx670_2
.Lx670_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx670_2
.Lx670_4:
 mov rax, qword ptr [rbp + 3104]
 test rax, rax
 jne .Lx670_6
 mov qword ptr [rbp + 3104], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx670_2
.Lx670_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx670_2
.Lx670_1:
 call rt_faildescr@PLT
.Lx670_2:
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain447_n116_β
 jmp xchain447_n119_α
 xchain447_n118_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain447_n119_α:
 lea rdi, [rbp + 8624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain447_n120_α
 xchain447_n119_β:
 jmp xchain447_n5_α
 xchain447_n120_α:
 mov qword ptr [rbp + 3008], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx674_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx674_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx674_3]
 lea rdx, [rip + .Lx674_4]
 jmp rax
.Lx674_3:
 mov rax, qword ptr [rbp + 3008]
 test rax, rax
 jne .Lx674_5
 mov qword ptr [rbp + 3008], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx674_2
.Lx674_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx674_2
.Lx674_4:
 mov rax, qword ptr [rbp + 3008]
 test rax, rax
 jne .Lx674_6
 mov qword ptr [rbp + 3008], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx674_2
.Lx674_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx674_2
.Lx674_1:
 call rt_faildescr@PLT
.Lx674_2:
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain447_n118_β
 jmp xchain447_n121_α
 xchain447_n120_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx674_0:
 .quad .Lx674_0_s
.Lx674_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain447_n121_α:
 lea rdi, [rbp + 8640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain447_n122_α
 xchain447_n121_β:
 jmp xchain447_n5_α
 xchain447_n122_α:
 mov qword ptr [rbp + 2912], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2944]
 mov rdx, qword ptr [rbp + 2952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx678_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx678_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx678_3]
 lea rdx, [rip + .Lx678_4]
 jmp rax
.Lx678_3:
 mov rax, qword ptr [rbp + 2912]
 test rax, rax
 jne .Lx678_5
 mov qword ptr [rbp + 2912], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx678_2
.Lx678_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx678_2
.Lx678_4:
 mov rax, qword ptr [rbp + 2912]
 test rax, rax
 jne .Lx678_6
 mov qword ptr [rbp + 2912], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx678_2
.Lx678_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx678_2
.Lx678_1:
 call rt_faildescr@PLT
.Lx678_2:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain447_n120_β
 jmp xchain447_n123_α
 xchain447_n122_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n123_α:
 lea rdi, [rbp + 8656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain447_n124_α
 xchain447_n123_β:
 jmp xchain447_n5_α
 xchain447_n124_α:
 mov qword ptr [rbp + 2816], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2848]
 mov rdx, qword ptr [rbp + 2856]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx682_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx682_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx682_3]
 lea rdx, [rip + .Lx682_4]
 jmp rax
.Lx682_3:
 mov rax, qword ptr [rbp + 2816]
 test rax, rax
 jne .Lx682_5
 mov qword ptr [rbp + 2816], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx682_2
.Lx682_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx682_2
.Lx682_4:
 mov rax, qword ptr [rbp + 2816]
 test rax, rax
 jne .Lx682_6
 mov qword ptr [rbp + 2816], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx682_2
.Lx682_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx682_2
.Lx682_1:
 call rt_faildescr@PLT
.Lx682_2:
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain447_n122_β
 jmp xchain447_n125_α
 xchain447_n124_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "zero/1"
# IR_LIT_STRING
 xchain447_n125_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx683_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain447_n126_α
 xchain447_n125_β:
 jmp proc_top$16_ω
.Lx683_0:
 .quad .Lx683_0_s
.Lx683_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n126_α:
 lea rdi, [rbp + 8592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain447_n127_α
 xchain447_n126_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n127_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain447_n128_α
 xchain447_n127_β:
 jmp proc_top$16_ω
.Lx686_0:
 .quad .Lx686_0_s
.Lx686_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n128_α:
 lea rdi, [rbp + 8576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain447_n129_α
 xchain447_n128_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n129_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx689_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain447_n130_α
 xchain447_n129_β:
 jmp proc_top$16_ω
.Lx689_0:
 .quad .Lx689_0_s
.Lx689_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n130_α:
 lea rdi, [rbp + 8560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain447_n131_α
 xchain447_n130_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n131_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx692_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain447_n132_α
 xchain447_n131_β:
 jmp proc_top$16_ω
.Lx692_0:
 .quad .Lx692_0_s
.Lx692_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n132_α:
 lea rdi, [rbp + 8544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain447_n133_α
 xchain447_n132_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n133_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx695_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain447_n134_α
 xchain447_n133_β:
 jmp proc_top$16_ω
.Lx695_0:
 .quad .Lx695_0_s
.Lx695_0_s:
 .string "[]"
 xchain447_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+1056]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+1072]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn697: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn697]
 lea rsi, [rbp + 1040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n135_α
 xchain447_n134_β:
 jmp proc_top$16_ω
 xchain447_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1200]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1208], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+1216]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn699: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn699]
 lea rsi, [rbp + 1184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n136_α
 xchain447_n135_β:
 jmp proc_top$16_ω
 xchain447_n136_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1328]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1344]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1352], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1360]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1368], rax
  .section .rodata
  .Lrkfn701: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn701]
 lea rsi, [rbp + 1328]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n137_α
 xchain447_n136_β:
 jmp proc_top$16_ω
 xchain447_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1488]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1504]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1512], rax
  .section .rodata
  .Lrkfn703: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn703]
 lea rsi, [rbp + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n138_α
 xchain447_n137_β:
 jmp xchain447_n5_α
# IR_LIT_STRING
 xchain447_n138_α:
 mov qword ptr [rbp + 2144], 1
 mov rax, qword ptr [rip + .Lx704_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain447_n139_α
 xchain447_n138_β:
 jmp proc_top$16_ω
.Lx704_0:
 .quad .Lx704_0_s
.Lx704_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain447_n139_α:
 mov qword ptr [rbp + 2032], 6
 mov rax, qword ptr [rip + .Lx705_0]
 mov qword ptr [rbp + 2040], rax
 jmp xchain447_n140_α
 xchain447_n139_β:
 jmp proc_top$16_ω
.Lx705_0:
 .quad 0
# IR_LIT_STRING
 xchain447_n140_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx706_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain447_n141_α
 xchain447_n140_β:
 jmp proc_top$16_ω
.Lx706_0:
 .quad .Lx706_0_s
.Lx706_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n141_α:
 lea rdi, [rbp + 8640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain447_n142_α
 xchain447_n141_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n142_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx709_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain447_n143_α
 xchain447_n142_β:
 jmp proc_top$16_ω
.Lx709_0:
 .quad .Lx709_0_s
.Lx709_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n143_α:
 lea rdi, [rbp + 8624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain447_n144_α
 xchain447_n143_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n144_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx712_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain447_n145_α
 xchain447_n144_β:
 jmp proc_top$16_ω
.Lx712_0:
 .quad .Lx712_0_s
.Lx712_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n145_α:
 lea rdi, [rbp + 8608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain447_n146_α
 xchain447_n145_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n146_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx715_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain447_n147_α
 xchain447_n146_β:
 jmp proc_top$16_ω
.Lx715_0:
 .quad .Lx715_0_s
.Lx715_0_s:
 .string "[]"
 xchain447_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1664]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1672], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1680]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1688], rax
  .section .rodata
  .Lrkfn717: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn717]
 lea rsi, [rbp + 1648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n148_α
 xchain447_n147_β:
 jmp proc_top$16_ω
 xchain447_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1808]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1816], rax
# marshal arg2 = producer-box slot [zr+1632] -> [zr+1824]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn719: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn719]
 lea rsi, [rbp + 1792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n149_α
 xchain447_n148_β:
 jmp proc_top$16_ω
 xchain447_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1936]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1952]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1960], rax
# marshal arg2 = producer-box slot [zr+1776] -> [zr+1968]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1976], rax
  .section .rodata
  .Lrkfn721: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn721]
 lea rsi, [rbp + 1936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n150_α
 xchain447_n149_β:
 jmp proc_top$16_ω
 xchain447_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2080]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2032] -> [zr+2096]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2104], rax
# marshal arg2 = producer-box slot [zr+1920] -> [zr+2112]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 2120], rax
  .section .rodata
  .Lrkfn723: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn723]
 lea rsi, [rbp + 2080]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n151_α
 xchain447_n150_β:
 jmp xchain447_n5_α
# IR_LIT_STRING
 xchain447_n151_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain447_n152_α
 xchain447_n151_β:
 jmp proc_top$16_ω
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n152_α:
 lea rdi, [rbp + 8480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain447_n153_α
 xchain447_n152_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n153_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain447_n154_α
 xchain447_n153_β:
 jmp proc_top$16_ω
.Lx727_0:
 .quad .Lx727_0_s
.Lx727_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n154_α:
 lea rdi, [rbp + 8496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain447_n155_α
 xchain447_n154_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n155_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx730_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain447_n156_α
 xchain447_n155_β:
 jmp proc_top$16_ω
.Lx730_0:
 .quad .Lx730_0_s
.Lx730_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n156_α:
 lea rdi, [rbp + 8512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain447_n157_α
 xchain447_n156_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain447_n157_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain447_n158_α
 xchain447_n157_β:
 jmp proc_top$16_ω
.Lx733_0:
 .quad .Lx733_0_s
.Lx733_0_s:
 .string "."
# IR_VAR_REF
 xchain447_n158_α:
 lea rdi, [rbp + 8528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain447_n159_α
 xchain447_n158_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain447_n159_α:
 lea rdi, [rbp + 8464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain447_n160_α
 xchain447_n159_β:
 jmp proc_top$16_ω
 xchain447_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2256]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2272]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2280], rax
# marshal arg2 = producer-box slot [zr+2176] -> [zr+2288]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2296], rax
  .section .rodata
  .Lrkfn739: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn739]
 lea rsi, [rbp + 2256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n161_α
 xchain447_n160_β:
 jmp proc_top$16_ω
 xchain447_n161_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2400]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2408], rax
# marshal arg1 = producer-box slot [zr+2352] -> [zr+2416]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2424], rax
# marshal arg2 = producer-box slot [zr+2240] -> [zr+2432]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2440], rax
  .section .rodata
  .Lrkfn741: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn741]
 lea rsi, [rbp + 2400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n162_α
 xchain447_n161_β:
 jmp proc_top$16_ω
 xchain447_n162_α:
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
# marshal arg2 = producer-box slot [zr+2384] -> [zr+2576]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2584], rax
  .section .rodata
  .Lrkfn743: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn743]
 lea rsi, [rbp + 2544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain447_n163_α
 xchain447_n162_β:
 jmp proc_top$16_ω
 xchain447_n163_α:
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
  .section .rodata
  .Lrkfn745: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn745]
 lea rsi, [rbp + 2688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n164_α
 xchain447_n163_β:
 jmp xchain447_n5_α
 xchain447_n164_α:
 mov qword ptr [rbp + 928], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2672]
 mov rdx, qword ptr [rbp + 2680]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx747_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx747_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx747_3]
 lea rdx, [rip + .Lx747_4]
 jmp rax
.Lx747_3:
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx747_5
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx747_2
.Lx747_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx747_2
.Lx747_4:
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx747_6
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx747_2
.Lx747_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx747_2
.Lx747_1:
 call rt_faildescr@PLT
.Lx747_2:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain447_n124_β
 jmp xchain447_n165_α
 xchain447_n164_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx747_0:
 .quad .Lx747_0_s
.Lx747_0_s:
 .string "sum/3"
# IR_VAR_REF
 xchain447_n165_α:
 lea rdi, [rbp + 8528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain447_n166_α
 xchain447_n165_β:
 jmp xchain447_n5_α
 xchain447_n166_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx751_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx751_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx751_3]
 lea rdx, [rip + .Lx751_4]
 jmp rax
.Lx751_3:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx751_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx751_2
.Lx751_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx751_2
.Lx751_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx751_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx751_2
.Lx751_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx751_2
.Lx751_1:
 call rt_faildescr@PLT
.Lx751_2:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain447_n164_β
 jmp xchain447_n167_α
 xchain447_n166_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx751_0:
 .quad .Lx751_0_s
.Lx751_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain447_n167_α:
 lea rdi, [rbp + 8512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain447_n168_α
 xchain447_n167_β:
 jmp xchain447_n5_α
 xchain447_n168_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx755_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx755_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx755_3]
 lea rdx, [rip + .Lx755_4]
 jmp rax
.Lx755_3:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx755_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx755_2
.Lx755_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx755_2
.Lx755_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx755_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx755_2
.Lx755_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx755_2
.Lx755_1:
 call rt_faildescr@PLT
.Lx755_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain447_n166_β
 jmp xchain447_n169_α
 xchain447_n168_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain447_n169_α:
 lea rdi, [rbp + 8496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain447_n170_α
 xchain447_n169_β:
 jmp xchain447_n5_α
 xchain447_n170_α:
 mov qword ptr [rbp + 608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx759_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx759_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx759_3]
 lea rdx, [rip + .Lx759_4]
 jmp rax
.Lx759_3:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx759_5
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx759_2
.Lx759_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx759_2
.Lx759_4:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx759_6
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx759_2
.Lx759_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx759_2
.Lx759_1:
 call rt_faildescr@PLT
.Lx759_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain447_n168_β
 jmp xchain447_n171_α
 xchain447_n170_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx759_0:
 .quad .Lx759_0_s
.Lx759_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n171_α:
 lea rdi, [rbp + 8480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain447_n172_α
 xchain447_n171_β:
 jmp xchain447_n5_α
 xchain447_n172_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx763_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx763_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx763_3]
 lea rdx, [rip + .Lx763_4]
 jmp rax
.Lx763_3:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx763_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx763_2
.Lx763_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx763_2
.Lx763_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx763_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx763_2
.Lx763_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx763_2
.Lx763_1:
 call rt_faildescr@PLT
.Lx763_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain447_n170_β
 jmp xchain447_n173_α
 xchain447_n172_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx763_0:
 .quad .Lx763_0_s
.Lx763_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain447_n173_α:
 lea rdi, [rbp + 8464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain447_n174_α
 xchain447_n173_β:
 jmp xchain447_n5_α
 xchain447_n174_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx767_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx767_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx767_3]
 lea rdx, [rip + .Lx767_4]
 jmp rax
.Lx767_3:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx767_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx767_2
.Lx767_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx767_2
.Lx767_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx767_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx767_2
.Lx767_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx767_2
.Lx767_1:
 call rt_faildescr@PLT
.Lx767_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain447_n172_β
 jmp xchain447_n175_α
 xchain447_n174_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx767_0:
 .quad .Lx767_0_s
.Lx767_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain447_n175_α:
 lea rax, [rip + xchain447_n175_β]
 mov qword ptr [rbp + 8432], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$16_γ
 xchain447_n175_β:
 jmp xchain447_n174_β
proc_top$16_res:
add rsp, 8
pop rbp
proc_top$16_β:
jmp qword ptr [rbp + 8432]
proc_top$16_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$16_res]
push rax
mov rax, [rbp + 8776]
mov rbp, [rbp + 8792]
jmp rax
proc_top$16_ω:
mov rax, [rbp + 8784]
lea rsp, [rbp + 8800]
mov rbp, [rbp + 8792]
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
  mov rdi, rsp
  mov ecx, 832
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 832
  call rt_jmp_frame_lexprep@PLT
proc_lefteven$1_α_body:
lea rax, [rip + xchain770_n4_β]
mov qword ptr [rbp + 800], rax
 xchain770_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn772: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn772]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain770_n1_α
 xchain770_n0_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain770_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain770_n2_α
 xchain770_n1_β:
 jmp xchain770_n5_α
# IR_LIT_INTEGER
 xchain770_n2_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx775_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain770_n3_α
 xchain770_n2_β:
 jmp xchain770_n5_α
.Lx775_0:
 .quad 2
 xchain770_n3_α:
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
  .section .rodata
  .Lrkfn777: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn777]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain770_n5_α
 jmp xchain770_n4_α
 xchain770_n3_β:
 jmp xchain770_n5_α
# IR_SUSPEND yield+resume
 xchain770_n4_α:
 lea rax, [rip + xchain770_n4_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain770_n4_β:
 jmp xchain770_n5_α
 xchain770_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn781: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn781]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain770_n6_α
 xchain770_n5_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain770_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain770_n7_α
 xchain770_n6_β:
 jmp xchain770_n10_α
# IR_LIT_INTEGER
 xchain770_n7_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx784_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain770_n8_α
 xchain770_n7_β:
 jmp xchain770_n10_α
.Lx784_0:
 .quad 4
 xchain770_n8_α:
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
  .section .rodata
  .Lrkfn786: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn786]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain770_n10_α
 jmp xchain770_n9_α
 xchain770_n8_β:
 jmp xchain770_n10_α
# IR_SUSPEND yield+resume
 xchain770_n9_α:
 lea rax, [rip + xchain770_n9_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain770_n9_β:
 jmp xchain770_n10_α
 xchain770_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn790: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn790]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain770_n11_α
 xchain770_n10_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain770_n11_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain770_n12_α
 xchain770_n11_β:
 jmp xchain770_n15_α
# IR_LIT_INTEGER
 xchain770_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx793_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain770_n13_α
 xchain770_n12_β:
 jmp xchain770_n15_α
.Lx793_0:
 .quad 6
 xchain770_n13_α:
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
  .section .rodata
  .Lrkfn795: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn795]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain770_n15_α
 jmp xchain770_n14_α
 xchain770_n13_β:
 jmp xchain770_n15_α
# IR_SUSPEND yield+resume
 xchain770_n14_α:
 lea rax, [rip + xchain770_n14_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain770_n14_β:
 jmp xchain770_n15_α
 xchain770_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn799: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn799]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain770_n16_α
 xchain770_n15_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain770_n16_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain770_n17_α
 xchain770_n16_β:
 jmp xchain770_n20_α
# IR_LIT_INTEGER
 xchain770_n17_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx802_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain770_n18_α
 xchain770_n17_β:
 jmp xchain770_n20_α
.Lx802_0:
 .quad 8
 xchain770_n18_α:
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
  .section .rodata
  .Lrkfn804: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn804]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain770_n20_α
 jmp xchain770_n19_α
 xchain770_n18_β:
 jmp xchain770_n20_α
# IR_SUSPEND yield+resume
 xchain770_n19_α:
 lea rax, [rip + xchain770_n19_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain770_n19_β:
 jmp xchain770_n20_α
 xchain770_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn808: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn808]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp proc_lefteven$1_ω
 xchain770_n20_β:
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
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 712], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_zero$1_α_body:
lea rax, [rip + xchain809_n4_β]
mov qword ptr [rbp + 688], rax
 xchain809_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn811: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn811]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain809_n1_α
 xchain809_n0_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain809_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain809_n2_α
 xchain809_n1_β:
 jmp xchain809_n5_α
# IR_LIT_STRING
 xchain809_n2_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx814_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain809_n3_α
 xchain809_n2_β:
 jmp xchain809_n5_α
.Lx814_0:
 .quad .Lx814_0_s
.Lx814_0_s:
 .string "[]"
 xchain809_n3_α:
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
  .section .rodata
  .Lrkfn816: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn816]
 lea rsi, [rbp + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain809_n5_α
 jmp xchain809_n4_α
 xchain809_n3_β:
 jmp xchain809_n5_α
# IR_SUSPEND yield+resume
 xchain809_n4_α:
 lea rax, [rip + xchain809_n4_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain809_n4_β:
 jmp xchain809_n5_α
 xchain809_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+528]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn820: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn820]
 lea rsi, [rbp + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain809_n6_α
 xchain809_n5_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain809_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain809_n7_α
 xchain809_n6_β:
 jmp xchain809_n12_α
# IR_LIT_STRING
 xchain809_n7_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx823_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain809_n8_α
 xchain809_n7_β:
 jmp proc_zero$1_ω
.Lx823_0:
 .quad .Lx823_0_s
.Lx823_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain809_n8_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx824_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain809_n9_α
 xchain809_n8_β:
 jmp proc_zero$1_ω
.Lx824_0:
 .quad 0
# IR_VAR_REF
 xchain809_n9_α:
 lea rdi, [rbp + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain809_n10_α
 xchain809_n9_β:
 jmp proc_zero$1_ω
 xchain809_n10_α:
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
  .section .rodata
  .Lrkfn828: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn828]
 lea rsi, [rbp + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain809_n12_α
 jmp xchain809_n11_α
 xchain809_n10_β:
 jmp xchain809_n12_α
 xchain809_n11_α:
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
  .section .rodata
  .Lrkfn830: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn830]
 lea rsi, [rbp + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain809_n12_α
 jmp xchain809_n13_α
 xchain809_n11_β:
 jmp xchain809_n12_α
 xchain809_n12_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn832: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn832]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp proc_zero$1_ω
 xchain809_n12_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain809_n13_α:
 lea rdi, [rbp + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain809_n14_α
 xchain809_n13_β:
 jmp xchain809_n12_α
 xchain809_n14_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx836_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx836_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx836_3]
 lea rdx, [rip + .Lx836_4]
 jmp rax
.Lx836_3:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx836_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx836_2
.Lx836_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx836_2
.Lx836_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx836_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx836_2
.Lx836_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx836_2
.Lx836_1:
 call rt_faildescr@PLT
.Lx836_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain809_n12_α
 jmp xchain809_n15_α
 xchain809_n14_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx836_0:
 .quad .Lx836_0_s
.Lx836_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain809_n15_α:
 lea rax, [rip + xchain809_n15_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain809_n15_β:
 jmp xchain809_n14_β
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
  mov esi, 880
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 3600
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 8768
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
 xchain839_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn841: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn841]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n1_α
 xchain839_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain839_n1_α:
 lea rdi, [rbp + 3664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain839_n2_α
 xchain839_n1_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n2_α:
 lea rdi, [rbp + 3648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain839_n3_α
 xchain839_n2_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n3_α:
 lea rdi, [rbp + 3632]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain839_n4_α
 xchain839_n3_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n4_α:
 lea rdi, [rbp + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain839_n5_α
 xchain839_n4_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n5_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain839_n6_α
 xchain839_n5_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n6_α:
 lea rdi, [rbp + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain839_n7_α
 xchain839_n6_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n7_α:
 lea rdi, [rbp + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain839_n8_α
 xchain839_n7_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n8_α:
 lea rdi, [rbp + 3552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain839_n9_α
 xchain839_n8_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n9_α:
 lea rdi, [rbp + 3536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain839_n10_α
 xchain839_n9_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n10_α:
 lea rdi, [rbp + 3520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain839_n11_α
 xchain839_n10_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n11_α:
 lea rdi, [rbp + 3504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain839_n12_α
 xchain839_n11_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n12_α:
 lea rdi, [rbp + 3488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain839_n13_α
 xchain839_n12_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n13_α:
 lea rdi, [rbp + 3472]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain839_n14_α
 xchain839_n13_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n14_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain839_n15_α
 xchain839_n14_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n15_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain839_n16_α
 xchain839_n15_β:
 jmp xchain839_n19_α
# IR_VAR_REF
 xchain839_n16_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain839_n17_α
 xchain839_n16_β:
 jmp xchain839_n19_α
 xchain839_n17_α:
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
 mov rdi, qword ptr [rip + .Lx875_0]
 mov esi, 16
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx875_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx875_3]
 lea rdx, [rip + .Lx875_4]
 jmp rax
.Lx875_3:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx875_5
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx875_2
.Lx875_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx875_2
.Lx875_4:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx875_6
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx875_2
.Lx875_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx875_2
.Lx875_1:
 call rt_faildescr@PLT
.Lx875_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain839_n19_α
 jmp xchain839_n18_α
 xchain839_n17_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx875_0:
 .quad .Lx875_0_s
.Lx875_0_s:
 .string "top/16"
# IR_LIT_STRING
 xchain839_n18_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx876_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain839_n20_α
 xchain839_n18_β:
 jmp main_ω
.Lx876_0:
 .quad .Lx876_0_s
.Lx876_0_s:
 .string "."
 xchain839_n19_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn878: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn878]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain839_n19_β:
 jmp main_ω
# IR_VAR_REF
 xchain839_n20_α:
 lea rdi, [rbp + 3664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain839_n21_α
 xchain839_n20_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n21_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx881_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain839_n22_α
 xchain839_n21_β:
 jmp main_ω
.Lx881_0:
 .quad .Lx881_0_s
.Lx881_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n22_α:
 lea rdi, [rbp + 3648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain839_n23_α
 xchain839_n22_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n23_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx884_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain839_n24_α
 xchain839_n23_β:
 jmp main_ω
.Lx884_0:
 .quad .Lx884_0_s
.Lx884_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n24_α:
 lea rdi, [rbp + 3632]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain839_n25_α
 xchain839_n24_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n25_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx887_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain839_n26_α
 xchain839_n25_β:
 jmp main_ω
.Lx887_0:
 .quad .Lx887_0_s
.Lx887_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n26_α:
 lea rdi, [rbp + 3616]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain839_n27_α
 xchain839_n26_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n27_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx890_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain839_n28_α
 xchain839_n27_β:
 jmp main_ω
.Lx890_0:
 .quad .Lx890_0_s
.Lx890_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n28_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain839_n29_α
 xchain839_n28_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n29_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx893_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain839_n30_α
 xchain839_n29_β:
 jmp main_ω
.Lx893_0:
 .quad .Lx893_0_s
.Lx893_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n30_α:
 lea rdi, [rbp + 3584]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain839_n31_α
 xchain839_n30_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n31_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx896_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain839_n32_α
 xchain839_n31_β:
 jmp main_ω
.Lx896_0:
 .quad .Lx896_0_s
.Lx896_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n32_α:
 lea rdi, [rbp + 3568]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain839_n33_α
 xchain839_n32_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n33_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx899_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain839_n34_α
 xchain839_n33_β:
 jmp main_ω
.Lx899_0:
 .quad .Lx899_0_s
.Lx899_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n34_α:
 lea rdi, [rbp + 3552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain839_n35_α
 xchain839_n34_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n35_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx902_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain839_n36_α
 xchain839_n35_β:
 jmp main_ω
.Lx902_0:
 .quad .Lx902_0_s
.Lx902_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n36_α:
 lea rdi, [rbp + 3536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain839_n37_α
 xchain839_n36_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n37_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx905_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain839_n38_α
 xchain839_n37_β:
 jmp main_ω
.Lx905_0:
 .quad .Lx905_0_s
.Lx905_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n38_α:
 lea rdi, [rbp + 3520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain839_n39_α
 xchain839_n38_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n39_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx908_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain839_n40_α
 xchain839_n39_β:
 jmp main_ω
.Lx908_0:
 .quad .Lx908_0_s
.Lx908_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n40_α:
 lea rdi, [rbp + 3504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain839_n41_α
 xchain839_n40_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n41_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx911_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain839_n42_α
 xchain839_n41_β:
 jmp main_ω
.Lx911_0:
 .quad .Lx911_0_s
.Lx911_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n42_α:
 lea rdi, [rbp + 3488]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain839_n43_α
 xchain839_n42_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n43_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx914_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain839_n44_α
 xchain839_n43_β:
 jmp main_ω
.Lx914_0:
 .quad .Lx914_0_s
.Lx914_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n44_α:
 lea rdi, [rbp + 3472]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain839_n45_α
 xchain839_n44_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n45_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx917_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain839_n46_α
 xchain839_n45_β:
 jmp main_ω
.Lx917_0:
 .quad .Lx917_0_s
.Lx917_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n46_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain839_n47_α
 xchain839_n46_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n47_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx920_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain839_n48_α
 xchain839_n47_β:
 jmp main_ω
.Lx920_0:
 .quad .Lx920_0_s
.Lx920_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n48_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain839_n49_α
 xchain839_n48_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n49_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx923_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain839_n50_α
 xchain839_n49_β:
 jmp main_ω
.Lx923_0:
 .quad .Lx923_0_s
.Lx923_0_s:
 .string "."
# IR_VAR_REF
 xchain839_n50_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain839_n51_α
 xchain839_n50_β:
 jmp main_ω
# IR_LIT_STRING
 xchain839_n51_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx926_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain839_n52_α
 xchain839_n51_β:
 jmp main_ω
.Lx926_0:
 .quad .Lx926_0_s
.Lx926_0_s:
 .string "[]"
 xchain839_n52_α:
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
  .section .rodata
  .Lrkfn928: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn928]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n53_α
 xchain839_n52_β:
 jmp main_ω
 xchain839_n53_α:
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
  .section .rodata
  .Lrkfn930: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn930]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n54_α
 xchain839_n53_β:
 jmp main_ω
 xchain839_n54_α:
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
  .section .rodata
  .Lrkfn932: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn932]
 lea rsi, [rbp + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n55_α
 xchain839_n54_β:
 jmp main_ω
 xchain839_n55_α:
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
  .section .rodata
  .Lrkfn934: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn934]
 lea rsi, [rbp + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n56_α
 xchain839_n55_β:
 jmp main_ω
 xchain839_n56_α:
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
  .section .rodata
  .Lrkfn936: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn936]
 lea rsi, [rbp + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n57_α
 xchain839_n56_β:
 jmp main_ω
 xchain839_n57_α:
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
  .section .rodata
  .Lrkfn938: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn938]
 lea rsi, [rbp + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n58_α
 xchain839_n57_β:
 jmp main_ω
 xchain839_n58_α:
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
  .section .rodata
  .Lrkfn940: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn940]
 lea rsi, [rbp + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n59_α
 xchain839_n58_β:
 jmp main_ω
 xchain839_n59_α:
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
  .section .rodata
  .Lrkfn942: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn942]
 lea rsi, [rbp + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n60_α
 xchain839_n59_β:
 jmp main_ω
 xchain839_n60_α:
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
  .section .rodata
  .Lrkfn944: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn944]
 lea rsi, [rbp + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n61_α
 xchain839_n60_β:
 jmp main_ω
 xchain839_n61_α:
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
  .section .rodata
  .Lrkfn946: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn946]
 lea rsi, [rbp + 1632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n62_α
 xchain839_n61_β:
 jmp main_ω
 xchain839_n62_α:
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
  .section .rodata
  .Lrkfn948: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn948]
 lea rsi, [rbp + 1776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n63_α
 xchain839_n62_β:
 jmp main_ω
 xchain839_n63_α:
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
  .section .rodata
  .Lrkfn950: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn950]
 lea rsi, [rbp + 1920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n64_α
 xchain839_n63_β:
 jmp main_ω
 xchain839_n64_α:
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
  .section .rodata
  .Lrkfn952: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn952]
 lea rsi, [rbp + 2064]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n65_α
 xchain839_n64_β:
 jmp main_ω
 xchain839_n65_α:
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
  .section .rodata
  .Lrkfn954: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn954]
 lea rsi, [rbp + 2208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n66_α
 xchain839_n65_β:
 jmp main_ω
 xchain839_n66_α:
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
  .section .rodata
  .Lrkfn956: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn956]
 lea rsi, [rbp + 2352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je main_ω
 jmp xchain839_n67_α
 xchain839_n66_β:
 jmp main_ω
 xchain839_n67_α:
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
  .section .rodata
  .Lrkfn958: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn958]
 lea rsi, [rbp + 2496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain839_n19_α
 jmp xchain839_n68_α
 xchain839_n67_β:
 jmp xchain839_n19_α
 xchain839_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+224]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn960: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn960]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain839_n17_β
 jmp xchain839_n69_α
 xchain839_n68_β:
 jmp xchain839_n17_β
# IR_LIT_STRING
 xchain839_n69_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx961_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain839_n70_α
 xchain839_n69_β:
 jmp xchain839_n19_α
.Lx961_0:
 .quad .Lx961_0_s
.Lx961_0_s:
 .string ""
 xchain839_n70_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn963: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn963]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain839_n17_β
 jmp xchain839_n71_α
 xchain839_n70_β:
 jmp xchain839_n17_β
# IR_MOVE_LABEL
 xchain839_n71_α:
 lea rax, [rip + xchain839_n17_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain839_n71_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain839_n72_α:
 jmp qword ptr [rbp + 32]
 xchain839_n72_β:
 jmp main_ω
main_β:
jmp xchain839_n72_α
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
