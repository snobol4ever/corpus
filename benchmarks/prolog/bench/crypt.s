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
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n14_α
.Lx27_0:
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
 mov qword ptr [rbp + 264], rsp
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
 mov rsp, qword ptr [rbp + 264]
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain34_n2_α
# IR_LIT_STRING
 xchain34_n2_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain34_n3_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "."
# IR_VAR_REF
 xchain34_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain34_n4_α
# IR_VAR_REF
 xchain34_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain34_n5_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain34_n10_α
# IR_VAR_REF
 xchain34_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain34_n11_α
# IR_VAR_REF
 xchain34_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain34_n12_α
# IR_LIT_STRING
 xchain34_n11_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain34_n13_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain34_n17_α
# IR_VAR_REF
 xchain34_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain34_n18_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain34_n19_α
# IR_VAR_REF
 xchain34_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain34_n20_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain34_n23_α
# IR_VAR_REF
 xchain34_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain34_n24_α
# IR_LIT_STRING
 xchain34_n23_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain34_n25_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "."
# IR_VAR_REF
 xchain34_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain34_n26_α
# IR_VAR_REF
 xchain34_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain34_n27_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain34_n29_α
# IR_VAR_REF
 xchain34_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain34_n30_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain34_n34_α
# IR_VAR_REF
 xchain34_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain34_n35_α
# IR_LIT_STRING
 xchain34_n34_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain34_n36_α
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
# IR_VAR_REF
 xchain34_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain34_n38_α
# IR_VAR
 xchain34_n37_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 2440], rax
 jmp xchain34_n39_α
# IR_LIT_STRING
 xchain34_n38_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain34_n40_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain34_n48_α
# IR_VAR_REF
 xchain34_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain34_n49_α
# IR_VAR
 xchain34_n48_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 584], rax
 jmp xchain34_n50_α
# IR_VAR
 xchain34_n49_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 2120], rax
 jmp xchain34_n51_α
# IR_LIT_INTEGER
 xchain34_n50_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain34_n52_α
.Lx129_0:
 .quad 10
# IR_LIT_INTEGER
 xchain34_n51_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain34_n53_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain34_n58_α
# IR_VAR_REF
 xchain34_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain34_n59_α
# IR_VAR
 xchain34_n58_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 360], rax
 jmp xchain34_n60_α
# IR_VAR
 xchain34_n59_α:
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 1896], rax
 jmp xchain34_n61_α
# IR_LIT_INTEGER
 xchain34_n60_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain34_n62_α
.Lx147_0:
 .quad 10
# IR_LIT_INTEGER
 xchain34_n61_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain34_n63_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain34_n68_α
# IR_VAR_REF
 xchain34_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain34_n69_α
# IR_VAR_REF
 xchain34_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain34_n70_α
# IR_VAR_REF
 xchain34_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain34_n71_α
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
 mov qword ptr [rbp + 1576], rsp
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
 mov rsp, qword ptr [rbp + 1576]
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain171_n2_α
# IR_LIT_INTEGER
 xchain171_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain171_n3_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain171_n7_α
# IR_LIT_INTEGER
 xchain171_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain171_n8_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain171_n12_α
# IR_LIT_INTEGER
 xchain171_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain171_n13_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain171_n17_α
# IR_LIT_INTEGER
 xchain171_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain171_n18_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain171_n22_α
# IR_LIT_INTEGER
 xchain171_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain171_n23_α
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
  sub rsp, 880
  mov [rsp + 856], rcx
  mov [rsp + 864], rdx
  mov [rsp + 872], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 848
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 848
  call rt_jmp_frame_lexprep@PLT
proc_sum$3_α_body:
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
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain219_n2_α
# IR_VAR_REF
 xchain219_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain219_n3_α
 xchain219_n3_α:
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
  .section .rodata
  .Lrkfn227: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn227]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n4_α
 xchain219_n3_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain219_n6_α
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
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain219_n7_α
 xchain219_n7_α:
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
  .section .rodata
  .Lrkfn235: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn235]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n8_α
 xchain219_n7_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain219_n9_α
# IR_VAR_REF
 xchain219_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain219_n10_α
 xchain219_n10_α:
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
  .section .rodata
  .Lrkfn241: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain219_n5_α
 jmp xchain219_n11_α
 xchain219_n10_β:
 jmp xchain219_n5_α
# IR_VAR_REF
 xchain219_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain219_n12_α
# IR_VAR_REF
 xchain219_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 816]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain219_n13_α
# IR_LIT_INTEGER
 xchain219_n13_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain219_n14_α
.Lx246_0:
 .quad 0
# IR_VAR_REF
 xchain219_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 832]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain219_n15_α
 xchain219_n15_α:
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
 mov edi, 4
 mov esi, 4
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx250_1
 lea rcx, [rip + .Lx250_3]
 lea rdx, [rip + .Lx250_4]
 jmp rax
.Lx250_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx250_2
.Lx250_4:
 call rt_proc_call_epilogue_ω@PLT
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
 jmp xchain219_n5_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain219_n16_α:
 lea rax, [rip + xchain219_n15_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_sum$3_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain219_n17_α:
 jmp qword ptr [rbp + 80]
 xchain219_n17_β:
 jmp proc_sum$3_ω
proc_sum$3_res:
add rsp, 8
pop rbp
proc_sum$3_β:
jmp xchain219_n17_α
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
  mov rdi, rsp
  mov ecx, 3568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3400], rsp
  mov rdi, rsp
  mov esi, 3568
  call rt_jmp_frame_lexprep@PLT
proc_sum$4_α_body:
 xchain255_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn257: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn257]
 lea rsi, [rbp + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain255_n1_α
 xchain255_n0_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain255_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain255_n2_α
# IR_LIT_STRING
 xchain255_n2_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain255_n3_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "."
# IR_VAR_REF
 xchain255_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain255_n4_α
# IR_VAR_REF
 xchain255_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain255_n5_α
 xchain255_n5_α:
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
  .section .rodata
  .Lrkfn266: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn266]
 lea rsi, [rbp + 3296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n6_α
 xchain255_n5_β:
 jmp xchain255_n7_α
 xchain255_n6_α:
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
  .section .rodata
  .Lrkfn268: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 3136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n8_α
 xchain255_n6_β:
 jmp xchain255_n7_α
 xchain255_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1424]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn270: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn270]
 lea rsi, [rbp + 1424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain255_n9_α
 xchain255_n7_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain255_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain255_n10_α
# IR_VAR_REF
 xchain255_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain255_n11_α
# IR_LIT_STRING
 xchain255_n10_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain255_n12_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "."
# IR_LIT_STRING
 xchain255_n11_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain255_n13_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "[]"
# IR_VAR_REF
 xchain255_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain255_n14_α
 xchain255_n13_α:
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
  .Lrkfn280: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn280]
 lea rsi, [rbp + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain255_n16_α
 jmp xchain255_n15_α
 xchain255_n13_β:
 jmp xchain255_n16_α
# IR_VAR_REF
 xchain255_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain255_n17_α
# IR_VAR_REF
 xchain255_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain255_n18_α
 xchain255_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+864]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn286: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn286]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain255_n19_α
 xchain255_n16_β:
 jmp proc_sum$4_ω
 xchain255_n17_α:
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
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn288]
 lea rsi, [rbp + 3024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n20_α
 xchain255_n17_β:
 jmp xchain255_n7_α
# IR_VAR_REF
 xchain255_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain255_n21_α
# IR_VAR_REF
 xchain255_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain255_n22_α
 xchain255_n20_α:
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
  .section .rodata
  .Lrkfn294: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn294]
 lea rsi, [rbp + 2864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n23_α
 xchain255_n20_β:
 jmp xchain255_n7_α
 xchain255_n21_α:
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
  .Lrkfn296: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn296]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain255_n16_α
 jmp xchain255_n24_α
 xchain255_n21_β:
 jmp xchain255_n16_α
# IR_LIT_STRING
 xchain255_n22_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain255_n25_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "[]"
# IR_VAR_REF
 xchain255_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain255_n26_α
# IR_VAR_REF
 xchain255_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain255_n27_α
 xchain255_n25_α:
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
  .Lrkfn303: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn303]
 lea rsi, [rbp + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n28_α
 xchain255_n25_β:
 jmp xchain255_n29_α
# IR_VAR_REF
 xchain255_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain255_n30_α
# IR_LIT_INTEGER
 xchain255_n27_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain255_n31_α
.Lx306_0:
 .quad 0
# IR_VAR_REF
 xchain255_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain255_n32_α
 xchain255_n29_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn310: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn310]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp proc_sum$4_ω
 xchain255_n29_β:
 jmp proc_sum$4_ω
 xchain255_n30_α:
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
  .section .rodata
  .Lrkfn312: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn312]
 lea rsi, [rbp + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n33_α
 xchain255_n30_β:
 jmp xchain255_n7_α
 xchain255_n31_α:
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
  .Lrkfn314: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn314]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain255_n16_α
 jmp xchain255_n34_α
 xchain255_n31_β:
 jmp xchain255_n16_α
# IR_LIT_STRING
 xchain255_n32_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain255_n35_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "[]"
# IR_VAR_REF
 xchain255_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain255_n36_α
# IR_VAR_REF
 xchain255_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain255_n37_α
 xchain255_n35_α:
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
  .Lrkfn321: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn321]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n38_α
 xchain255_n35_β:
 jmp xchain255_n29_α
# IR_LIT_STRING
 xchain255_n36_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain255_n39_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "."
# IR_VAR_REF
 xchain255_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain255_n40_α
# IR_VAR_REF
 xchain255_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain255_n41_α
# IR_VAR_REF
 xchain255_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain255_n42_α
 xchain255_n40_α:
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
  .Lrkfn330: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn330]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain255_n16_α
 jmp xchain255_n43_α
 xchain255_n40_β:
 jmp xchain255_n16_α
# IR_VAR_REF
 xchain255_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain255_n44_α
# IR_VAR_REF
 xchain255_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain255_n45_α
 xchain255_n43_α:
# IR_CUT
 jmp xchain255_n46_α
 xchain255_n44_α:
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
  .Lrkfn337: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn337]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n47_α
 xchain255_n44_β:
 jmp xchain255_n29_α
 xchain255_n45_α:
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
  .section .rodata
  .Lrkfn339: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 2624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n48_α
 xchain255_n45_β:
 jmp xchain255_n7_α
# IR_MOVE_LABEL
 xchain255_n46_α:
 lea rax, [rip + xchain255_n16_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
# IR_VAR_REF
 xchain255_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain255_n50_α
 xchain255_n48_α:
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
  .section .rodata
  .Lrkfn345: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn345]
 lea rsi, [rbp + 2464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain255_n7_α
 jmp xchain255_n51_α
 xchain255_n48_β:
 jmp xchain255_n7_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain255_n49_α:
 jmp qword ptr [rbp + 96]
 xchain255_n49_β:
 jmp proc_sum$4_ω
# IR_LIT_STRING
 xchain255_n50_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain255_n52_α
.Lx348_0:
 .quad .Lx348_0_s
.Lx348_0_s:
 .string "."
 xchain255_n51_α:
# IR_CUT
 jmp xchain255_n53_α
# IR_VAR_REF
 xchain255_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3408]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain255_n54_α
# IR_VAR_REF
 xchain255_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain255_n55_α
# IR_LIT_STRING
 xchain255_n54_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain255_n56_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "[]"
# IR_VAR
 xchain255_n55_α:
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 2360], rax
 jmp xchain255_n57_α
 xchain255_n56_α:
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
  .Lrkfn358: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn358]
 lea rsi, [rbp + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n58_α
 xchain255_n56_β:
 jmp xchain255_n29_α
# IR_VAR
 xchain255_n57_α:
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 2392], rax
 jmp xchain255_n59_α
 xchain255_n58_α:
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
  .Lrkfn362: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn362]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n60_α
 xchain255_n58_β:
 jmp xchain255_n29_α
 xchain255_n59_α:
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
  .section .rodata
  .Lrkfn364: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn364]
 lea rsi, [rbp + 2304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n61_α
 xchain255_n59_β:
 jmp xchain255_n29_α
# IR_MOVE_LABEL
 xchain255_n60_α:
 lea rax, [rip + xchain255_n29_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
# IR_VAR
 xchain255_n61_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 2424], rax
 jmp xchain255_n62_α
 xchain255_n62_α:
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
  .section .rodata
  .Lrkfn370: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn370]
 lea rsi, [rbp + 2240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n63_α
 xchain255_n62_β:
 jmp xchain255_n29_α
 xchain255_n63_α:
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
  .section .rodata
  .Lrkfn372: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn372]
 lea rsi, [rbp + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n64_α
 xchain255_n63_β:
 jmp xchain255_n29_α
# IR_VAR_REF
 xchain255_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain255_n65_α
# IR_VAR
 xchain255_n65_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 2072], rax
 jmp xchain255_n66_α
# IR_LIT_INTEGER
 xchain255_n66_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain255_n67_α
.Lx377_0:
 .quad 10
 xchain255_n67_α:
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
  .section .rodata
  .Lrkfn379: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn379]
 lea rsi, [rbp + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n68_α
 xchain255_n67_β:
 jmp xchain255_n29_α
 xchain255_n68_α:
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
  .section .rodata
  .Lrkfn381: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 1920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n69_α
 xchain255_n68_β:
 jmp xchain255_n29_α
# IR_VAR_REF
 xchain255_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain255_n70_α
# IR_VAR
 xchain255_n70_α:
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 1848], rax
 jmp xchain255_n71_α
# IR_LIT_INTEGER
 xchain255_n71_α:
 mov qword ptr [rbp + 1872], 6
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain255_n72_α
.Lx386_0:
 .quad 10
 xchain255_n72_α:
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
  .section .rodata
  .Lrkfn388: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn388]
 lea rsi, [rbp + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n73_α
 xchain255_n72_β:
 jmp xchain255_n29_α
 xchain255_n73_α:
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
  .section .rodata
  .Lrkfn390: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn390]
 lea rsi, [rbp + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n74_α
 xchain255_n73_β:
 jmp xchain255_n29_α
# IR_VAR_REF
 xchain255_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain255_n75_α
# IR_VAR_REF
 xchain255_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain255_n76_α
# IR_VAR_REF
 xchain255_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain255_n77_α
# IR_VAR_REF
 xchain255_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain255_n78_α
 xchain255_n78_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 call rt_arg_stage@PLT
 mov edi, 4
 mov esi, 4
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx400_1
 lea rcx, [rip + .Lx400_3]
 lea rdx, [rip + .Lx400_4]
 jmp rax
.Lx400_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx400_2
.Lx400_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx400_2
.Lx400_1:
 call rt_faildescr@PLT
.Lx400_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain255_n29_α
 jmp xchain255_n79_α
 xchain255_n78_β:
 jmp xchain255_n29_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "sum/4"
# IR_MOVE_LABEL
 xchain255_n79_α:
 lea rax, [rip + xchain255_n78_β]
 mov qword ptr [rbp + 96], rax
 jmp proc_sum$4_γ
proc_sum$4_res:
add rsp, 8
pop rbp
proc_sum$4_β:
jmp xchain255_n49_α
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
  mov rdi, rsp
  mov ecx, 1008
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 1008
  call rt_jmp_frame_lexprep@PLT
proc_even$1_α_body:
lea rax, [rip + xchain403_n4_β]
mov qword ptr [rbp + 976], rax
 xchain403_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn405: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn405]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain403_n1_α
 xchain403_n0_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain403_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain403_n2_α
# IR_LIT_INTEGER
 xchain403_n2_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain403_n3_α
.Lx408_0:
 .quad 0
 xchain403_n3_α:
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
  .Lrkfn410: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn410]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain403_n5_α
 jmp xchain403_n4_α
 xchain403_n3_β:
 jmp xchain403_n5_α
# IR_SUSPEND yield+resume
 xchain403_n4_α:
 lea rax, [rip + xchain403_n4_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain403_n4_β:
 jmp xchain403_n5_α
 xchain403_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn414: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn414]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain403_n6_α
 xchain403_n5_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain403_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain403_n7_α
# IR_LIT_INTEGER
 xchain403_n7_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain403_n8_α
.Lx417_0:
 .quad 2
 xchain403_n8_α:
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
  .Lrkfn419: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn419]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain403_n10_α
 jmp xchain403_n9_α
 xchain403_n8_β:
 jmp xchain403_n10_α
# IR_SUSPEND yield+resume
 xchain403_n9_α:
 lea rax, [rip + xchain403_n9_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain403_n9_β:
 jmp xchain403_n10_α
 xchain403_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn423: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn423]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain403_n11_α
 xchain403_n10_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain403_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain403_n12_α
# IR_LIT_INTEGER
 xchain403_n12_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain403_n13_α
.Lx426_0:
 .quad 4
 xchain403_n13_α:
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
  .Lrkfn428: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn428]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain403_n15_α
 jmp xchain403_n14_α
 xchain403_n13_β:
 jmp xchain403_n15_α
# IR_SUSPEND yield+resume
 xchain403_n14_α:
 lea rax, [rip + xchain403_n14_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain403_n14_β:
 jmp xchain403_n15_α
 xchain403_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn432: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn432]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain403_n16_α
 xchain403_n15_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain403_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain403_n17_α
# IR_LIT_INTEGER
 xchain403_n17_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain403_n18_α
.Lx435_0:
 .quad 6
 xchain403_n18_α:
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
  .Lrkfn437: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn437]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain403_n20_α
 jmp xchain403_n19_α
 xchain403_n18_β:
 jmp xchain403_n20_α
# IR_SUSPEND yield+resume
 xchain403_n19_α:
 lea rax, [rip + xchain403_n19_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain403_n19_β:
 jmp xchain403_n20_α
 xchain403_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn441: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn441]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain403_n21_α
 xchain403_n20_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain403_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain403_n22_α
# IR_LIT_INTEGER
 xchain403_n22_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain403_n23_α
.Lx444_0:
 .quad 8
 xchain403_n23_α:
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
  .Lrkfn446: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn446]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain403_n25_α
 jmp xchain403_n24_α
 xchain403_n23_β:
 jmp xchain403_n25_α
# IR_SUSPEND yield+resume
 xchain403_n24_α:
 lea rax, [rip + xchain403_n24_β]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_even$1_γ
 xchain403_n24_β:
 jmp xchain403_n25_α
 xchain403_n25_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn450: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn450]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp proc_even$1_ω
 xchain403_n25_β:
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
  mov rdi, rsp
  mov ecx, 8752
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 8440], rsp
  mov rdi, rsp
  mov esi, 8752
  call rt_jmp_frame_lexprep@PLT
proc_top$16_α_body:
lea rax, [rip + xchain451_n175_β]
mov qword ptr [rbp + 8416], rax
 xchain451_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn453: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn453]
 lea rsi, [rbp + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n1_α
 xchain451_n0_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain451_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 jmp xchain451_n2_α
# IR_VAR_REF
 xchain451_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain451_n3_α
 xchain451_n3_α:
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
  .section .rodata
  .Lrkfn459: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn459]
 lea rsi, [rbp + 8304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8288], rax
 mov qword ptr [rbp + 8296], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n4_α
 xchain451_n3_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 jmp xchain451_n6_α
 xchain451_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn463: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn463]
 lea rsi, [rbp + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp proc_top$16_ω
 xchain451_n5_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain451_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 jmp xchain451_n7_α
 xchain451_n7_α:
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
  .section .rodata
  .Lrkfn467: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn467]
 lea rsi, [rbp + 8176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n8_α
 xchain451_n7_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 jmp xchain451_n9_α
# IR_VAR_REF
 xchain451_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain451_n10_α
 xchain451_n10_α:
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
  .section .rodata
  .Lrkfn473: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn473]
 lea rsi, [rbp + 8048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n11_α
 xchain451_n10_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 jmp xchain451_n12_α
# IR_VAR_REF
 xchain451_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain451_n13_α
 xchain451_n13_α:
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
  .section .rodata
  .Lrkfn479: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn479]
 lea rsi, [rbp + 7920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n14_α
 xchain451_n13_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain451_n15_α
# IR_VAR_REF
 xchain451_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain451_n16_α
 xchain451_n16_α:
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
  .section .rodata
  .Lrkfn485: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn485]
 lea rsi, [rbp + 7792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n17_α
 xchain451_n16_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain451_n18_α
# IR_VAR_REF
 xchain451_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain451_n19_α
 xchain451_n19_α:
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
  .section .rodata
  .Lrkfn491: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn491]
 lea rsi, [rbp + 7664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n20_α
 xchain451_n19_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain451_n21_α
# IR_VAR_REF
 xchain451_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 jmp xchain451_n22_α
 xchain451_n22_α:
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
  .section .rodata
  .Lrkfn497: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn497]
 lea rsi, [rbp + 7536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n23_α
 xchain451_n22_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 jmp xchain451_n24_α
# IR_VAR_REF
 xchain451_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain451_n25_α
 xchain451_n25_α:
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
  .section .rodata
  .Lrkfn503: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn503]
 lea rsi, [rbp + 7408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n26_α
 xchain451_n25_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 144]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain451_n27_α
# IR_VAR_REF
 xchain451_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain451_n28_α
 xchain451_n28_α:
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
  .section .rodata
  .Lrkfn509: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn509]
 lea rsi, [rbp + 7280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n29_α
 xchain451_n28_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 160]
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain451_n30_α
# IR_VAR_REF
 xchain451_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 jmp xchain451_n31_α
 xchain451_n31_α:
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
  .section .rodata
  .Lrkfn515: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn515]
 lea rsi, [rbp + 7152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n32_α
 xchain451_n31_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 176]
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 jmp xchain451_n33_α
# IR_VAR_REF
 xchain451_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain451_n34_α
 xchain451_n34_α:
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
  .section .rodata
  .Lrkfn521: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn521]
 lea rsi, [rbp + 7024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7008], rax
 mov qword ptr [rbp + 7016], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n35_α
 xchain451_n34_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 192]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain451_n36_α
# IR_VAR_REF
 xchain451_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain451_n37_α
 xchain451_n37_α:
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
  .section .rodata
  .Lrkfn527: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn527]
 lea rsi, [rbp + 6896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n38_α
 xchain451_n37_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 208]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain451_n39_α
# IR_VAR_REF
 xchain451_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain451_n40_α
 xchain451_n40_α:
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
  .section .rodata
  .Lrkfn533: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn533]
 lea rsi, [rbp + 6768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n41_α
 xchain451_n40_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 224]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 jmp xchain451_n42_α
# IR_VAR_REF
 xchain451_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain451_n43_α
 xchain451_n43_α:
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
  .section .rodata
  .Lrkfn539: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn539]
 lea rsi, [rbp + 6640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n44_α
 xchain451_n43_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 240]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain451_n45_α
# IR_VAR_REF
 xchain451_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain451_n46_α
 xchain451_n46_α:
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
  .section .rodata
  .Lrkfn545: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn545]
 lea rsi, [rbp + 6512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n47_α
 xchain451_n46_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 256]
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain451_n48_α
# IR_VAR_REF
 xchain451_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain451_n49_α
 xchain451_n49_α:
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
  .section .rodata
  .Lrkfn551: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn551]
 lea rsi, [rbp + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n50_α
 xchain451_n49_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain451_n51_α
 xchain451_n51_α:
 mov qword ptr [rbp + 6304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6336]
 mov rdx, qword ptr [rbp + 6344]
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
 mov qword ptr [rbp + 6312], rsp
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx555_5
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx555_2
.Lx555_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx555_2
.Lx555_4:
 mov rax, qword ptr [rbp + 6304]
 test rax, rax
 jne .Lx555_6
 mov qword ptr [rbp + 6304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx555_2
.Lx555_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx555_2
.Lx555_1:
 call rt_faildescr@PLT
.Lx555_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n52_α
 xchain451_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6312]
 jmp qword ptr [rsp]
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain451_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain451_n53_α
 xchain451_n53_α:
 mov qword ptr [rbp + 6208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
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
 mov qword ptr [rbp + 6216], rsp
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx559_5
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx559_2
.Lx559_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx559_2
.Lx559_4:
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx559_6
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx559_2
.Lx559_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx559_2
.Lx559_1:
 call rt_faildescr@PLT
.Lx559_2:
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain451_n51_β
 jmp xchain451_n54_α
 xchain451_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6216]
 jmp qword ptr [rsp]
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain451_n55_α
 xchain451_n55_α:
 mov qword ptr [rbp + 6112], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6144]
 mov rdx, qword ptr [rbp + 6152]
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
 mov qword ptr [rbp + 6120], rsp
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx563_5
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx563_2
.Lx563_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx563_2
.Lx563_4:
 mov rax, qword ptr [rbp + 6112]
 test rax, rax
 jne .Lx563_6
 mov qword ptr [rbp + 6112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx563_2
.Lx563_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx563_2
.Lx563_1:
 call rt_faildescr@PLT
.Lx563_2:
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 cmp eax, 99
 je xchain451_n53_β
 jmp xchain451_n56_α
 xchain451_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6120]
 jmp qword ptr [rsp]
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain451_n57_α
 xchain451_n57_α:
 mov qword ptr [rbp + 6016], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6048]
 mov rdx, qword ptr [rbp + 6056]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx567_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx567_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx567_3]
 lea rdx, [rip + .Lx567_4]
 jmp rax
.Lx567_3:
 mov qword ptr [rbp + 6024], rsp
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx567_5
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx567_2
.Lx567_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx567_2
.Lx567_4:
 mov rax, qword ptr [rbp + 6016]
 test rax, rax
 jne .Lx567_6
 mov qword ptr [rbp + 6016], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx567_2
.Lx567_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx567_2
.Lx567_1:
 call rt_faildescr@PLT
.Lx567_2:
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain451_n55_β
 jmp xchain451_n58_α
 xchain451_n57_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6024]
 jmp qword ptr [rsp]
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "even/1"
# IR_LIT_STRING
 xchain451_n58_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain451_n59_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain451_n60_α
# IR_LIT_STRING
 xchain451_n60_α:
 mov qword ptr [rbp + 5168], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain451_n61_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain451_n62_α
# IR_LIT_STRING
 xchain451_n62_α:
 mov qword ptr [rbp + 5024], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain451_n63_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain451_n64_α
# IR_LIT_STRING
 xchain451_n64_α:
 mov qword ptr [rbp + 4880], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain451_n65_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "[]"
 xchain451_n65_α:
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
  .section .rodata
  .Lrkfn579: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn579]
 lea rsi, [rbp + 4960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n66_α
 xchain451_n65_β:
 jmp proc_top$16_ω
 xchain451_n66_α:
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
  .section .rodata
  .Lrkfn581: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn581]
 lea rsi, [rbp + 5104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n67_α
 xchain451_n66_β:
 jmp proc_top$16_ω
 xchain451_n67_α:
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
  .section .rodata
  .Lrkfn583: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn583]
 lea rsi, [rbp + 5248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n68_α
 xchain451_n67_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8736]
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain451_n69_α
# IR_LIT_STRING
 xchain451_n69_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain451_n70_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain451_n71_α
# IR_LIT_STRING
 xchain451_n71_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain451_n72_α
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain451_n73_α
# IR_LIT_STRING
 xchain451_n73_α:
 mov qword ptr [rbp + 5664], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 5672], rax
 jmp xchain451_n74_α
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain451_n75_α
# IR_LIT_STRING
 xchain451_n75_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain451_n76_α
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain451_n77_α
# IR_VAR_REF
 xchain451_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain451_n78_α
 xchain451_n78_α:
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
  .section .rodata
  .Lrkfn601: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn601]
 lea rsi, [rbp + 5456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n79_α
 xchain451_n78_β:
 jmp proc_top$16_ω
 xchain451_n79_α:
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
  .section .rodata
  .Lrkfn603: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn603]
 lea rsi, [rbp + 5600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n80_α
 xchain451_n79_β:
 jmp proc_top$16_ω
 xchain451_n80_α:
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
  .section .rodata
  .Lrkfn605: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn605]
 lea rsi, [rbp + 5744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n81_α
 xchain451_n80_β:
 jmp proc_top$16_ω
 xchain451_n81_α:
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
  .section .rodata
  .Lrkfn607: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn607]
 lea rsi, [rbp + 5888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n82_α
 xchain451_n81_β:
 jmp xchain451_n5_α
 xchain451_n82_α:
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
 mov rdi, qword ptr [rip + .Lx609_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx609_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx609_3]
 lea rdx, [rip + .Lx609_4]
 jmp rax
.Lx609_3:
 mov qword ptr [rbp + 4856], rsp
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx609_5
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx609_2
.Lx609_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx609_2
.Lx609_4:
 mov rax, qword ptr [rbp + 4848]
 test rax, rax
 jne .Lx609_6
 mov qword ptr [rbp + 4848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx609_2
.Lx609_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx609_2
.Lx609_1:
 call rt_faildescr@PLT
.Lx609_2:
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain451_n57_β
 jmp xchain451_n83_α
 xchain451_n82_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4856]
 jmp qword ptr [rsp]
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain451_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain451_n84_α
 xchain451_n84_α:
 mov qword ptr [rbp + 4720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
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
 mov qword ptr [rbp + 4728], rsp
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx613_5
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx613_2
.Lx613_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx613_2
.Lx613_4:
 mov rax, qword ptr [rbp + 4720]
 test rax, rax
 jne .Lx613_6
 mov qword ptr [rbp + 4720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx613_2
.Lx613_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx613_2
.Lx613_1:
 call rt_faildescr@PLT
.Lx613_2:
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain451_n82_β
 jmp xchain451_n85_α
 xchain451_n84_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4728]
 jmp qword ptr [rsp]
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain451_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain451_n86_α
 xchain451_n86_α:
 mov qword ptr [rbp + 4624], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
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
 mov qword ptr [rbp + 4632], rsp
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx617_5
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx617_2
.Lx617_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx617_2
.Lx617_4:
 mov rax, qword ptr [rbp + 4624]
 test rax, rax
 jne .Lx617_6
 mov qword ptr [rbp + 4624], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx617_2
.Lx617_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx617_2
.Lx617_1:
 call rt_faildescr@PLT
.Lx617_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain451_n84_β
 jmp xchain451_n87_α
 xchain451_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4632]
 jmp qword ptr [rsp]
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain451_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain451_n88_α
 xchain451_n88_α:
 mov qword ptr [rbp + 4528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
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
 mov qword ptr [rbp + 4536], rsp
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx621_5
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx621_2
.Lx621_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx621_2
.Lx621_4:
 mov rax, qword ptr [rbp + 4528]
 test rax, rax
 jne .Lx621_6
 mov qword ptr [rbp + 4528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx621_2
.Lx621_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx621_2
.Lx621_1:
 call rt_faildescr@PLT
.Lx621_2:
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je xchain451_n86_β
 jmp xchain451_n89_α
 xchain451_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4536]
 jmp qword ptr [rsp]
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain451_n90_α
 xchain451_n90_α:
 mov qword ptr [rbp + 4432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4464]
 mov rdx, qword ptr [rbp + 4472]
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
 mov qword ptr [rbp + 4440], rsp
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx625_5
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx625_2
.Lx625_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx625_2
.Lx625_4:
 mov rax, qword ptr [rbp + 4432]
 test rax, rax
 jne .Lx625_6
 mov qword ptr [rbp + 4432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx625_2
.Lx625_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx625_2
.Lx625_1:
 call rt_faildescr@PLT
.Lx625_2:
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain451_n88_β
 jmp xchain451_n91_α
 xchain451_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4440]
 jmp qword ptr [rsp]
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8720]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain451_n92_α
 xchain451_n92_α:
 mov qword ptr [rbp + 4336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
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
 mov qword ptr [rbp + 4344], rsp
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx629_5
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx629_2
.Lx629_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx629_2
.Lx629_4:
 mov rax, qword ptr [rbp + 4336]
 test rax, rax
 jne .Lx629_6
 mov qword ptr [rbp + 4336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx629_2
.Lx629_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx629_2
.Lx629_1:
 call rt_faildescr@PLT
.Lx629_2:
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 cmp eax, 99
 je xchain451_n90_β
 jmp xchain451_n93_α
 xchain451_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4344]
 jmp qword ptr [rsp]
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "zero/1"
# IR_VAR_REF
 xchain451_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain451_n94_α
 xchain451_n94_α:
 mov qword ptr [rbp + 4240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4272]
 mov rdx, qword ptr [rbp + 4280]
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
 mov qword ptr [rbp + 4248], rsp
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx633_5
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx633_2
.Lx633_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx633_2
.Lx633_4:
 mov rax, qword ptr [rbp + 4240]
 test rax, rax
 jne .Lx633_6
 mov qword ptr [rbp + 4240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx633_2
.Lx633_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx633_2
.Lx633_1:
 call rt_faildescr@PLT
.Lx633_2:
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 cmp eax, 99
 je xchain451_n92_β
 jmp xchain451_n95_α
 xchain451_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4248]
 jmp qword ptr [rsp]
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "lefteven/1"
# IR_LIT_STRING
 xchain451_n95_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx634_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain451_n96_α
.Lx634_0:
 .quad .Lx634_0_s
.Lx634_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8688]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain451_n97_α
# IR_LIT_STRING
 xchain451_n97_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain451_n98_α
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8672]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain451_n99_α
# IR_LIT_STRING
 xchain451_n99_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx640_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain451_n100_α
.Lx640_0:
 .quad .Lx640_0_s
.Lx640_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8656]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain451_n101_α
# IR_LIT_STRING
 xchain451_n101_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx643_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain451_n102_α
.Lx643_0:
 .quad .Lx643_0_s
.Lx643_0_s:
 .string "[]"
 xchain451_n102_α:
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
  .section .rodata
  .Lrkfn645: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn645]
 lea rsi, [rbp + 3328]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n103_α
 xchain451_n102_β:
 jmp proc_top$16_ω
 xchain451_n103_α:
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
  .Lrkfn647: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn647]
 lea rsi, [rbp + 3472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n104_α
 xchain451_n103_β:
 jmp proc_top$16_ω
 xchain451_n104_α:
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
  .Lrkfn649: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn649]
 lea rsi, [rbp + 3616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n105_α
 xchain451_n104_β:
 jmp xchain451_n5_α
# IR_VAR_REF
 xchain451_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8704]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain451_n106_α
# IR_LIT_STRING
 xchain451_n106_α:
 mov qword ptr [rbp + 4176], 1
 mov rax, qword ptr [rip + .Lx652_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain451_n107_α
.Lx652_0:
 .quad .Lx652_0_s
.Lx652_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain451_n108_α
# IR_LIT_STRING
 xchain451_n108_α:
 mov qword ptr [rbp + 4032], 1
 mov rax, qword ptr [rip + .Lx655_0]
 mov qword ptr [rbp + 4040], rax
 jmp xchain451_n109_α
.Lx655_0:
 .quad .Lx655_0_s
.Lx655_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain451_n110_α
# IR_LIT_STRING
 xchain451_n110_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx658_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain451_n111_α
.Lx658_0:
 .quad .Lx658_0_s
.Lx658_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain451_n112_α
# IR_VAR_REF
 xchain451_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain451_n113_α
 xchain451_n113_α:
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
  .section .rodata
  .Lrkfn664: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn664]
 lea rsi, [rbp + 3824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n114_α
 xchain451_n113_β:
 jmp proc_top$16_ω
 xchain451_n114_α:
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
  .section .rodata
  .Lrkfn666: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn666]
 lea rsi, [rbp + 3968]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n115_α
 xchain451_n114_β:
 jmp proc_top$16_ω
 xchain451_n115_α:
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
  .section .rodata
  .Lrkfn668: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn668]
 lea rsi, [rbp + 4112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n116_α
 xchain451_n115_β:
 jmp xchain451_n5_α
 xchain451_n116_α:
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
 mov rdi, qword ptr [rip + .Lx670_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx670_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx670_3]
 lea rdx, [rip + .Lx670_4]
 jmp rax
.Lx670_3:
 mov qword ptr [rbp + 3224], rsp
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx670_5
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx670_2
.Lx670_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx670_2
.Lx670_4:
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx670_6
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx670_2
.Lx670_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx670_2
.Lx670_1:
 call rt_faildescr@PLT
.Lx670_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain451_n94_β
 jmp xchain451_n117_α
 xchain451_n116_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3224]
 jmp qword ptr [rsp]
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string "mult/3"
# IR_VAR_REF
 xchain451_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain451_n118_α
 xchain451_n118_α:
 mov qword ptr [rbp + 3088], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
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
 mov qword ptr [rbp + 3096], rsp
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx674_5
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx674_2
.Lx674_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx674_2
.Lx674_4:
 mov rax, qword ptr [rbp + 3088]
 test rax, rax
 jne .Lx674_6
 mov qword ptr [rbp + 3088], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx674_2
.Lx674_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx674_2
.Lx674_1:
 call rt_faildescr@PLT
.Lx674_2:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain451_n116_β
 jmp xchain451_n119_α
 xchain451_n118_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3096]
 jmp qword ptr [rsp]
.Lx674_0:
 .quad .Lx674_0_s
.Lx674_0_s:
 .string "lefteven/1"
# IR_VAR_REF
 xchain451_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain451_n120_α
 xchain451_n120_α:
 mov qword ptr [rbp + 2992], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
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
 mov qword ptr [rbp + 3000], rsp
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx678_5
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx678_2
.Lx678_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx678_2
.Lx678_4:
 mov rax, qword ptr [rbp + 2992]
 test rax, rax
 jne .Lx678_6
 mov qword ptr [rbp + 2992], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx678_2
.Lx678_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx678_2
.Lx678_1:
 call rt_faildescr@PLT
.Lx678_2:
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain451_n118_β
 jmp xchain451_n121_α
 xchain451_n120_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3000]
 jmp qword ptr [rsp]
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain451_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain451_n122_α
 xchain451_n122_α:
 mov qword ptr [rbp + 2896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
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
 mov qword ptr [rbp + 2904], rsp
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx682_5
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx682_2
.Lx682_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx682_2
.Lx682_4:
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx682_6
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx682_2
.Lx682_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx682_2
.Lx682_1:
 call rt_faildescr@PLT
.Lx682_2:
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain451_n120_β
 jmp xchain451_n123_α
 xchain451_n122_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2904]
 jmp qword ptr [rsp]
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8640]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain451_n124_α
 xchain451_n124_α:
 mov qword ptr [rbp + 2800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2832]
 mov rdx, qword ptr [rbp + 2840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx686_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx686_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx686_3]
 lea rdx, [rip + .Lx686_4]
 jmp rax
.Lx686_3:
 mov qword ptr [rbp + 2808], rsp
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx686_5
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx686_2
.Lx686_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx686_2
.Lx686_4:
 mov rax, qword ptr [rbp + 2800]
 test rax, rax
 jne .Lx686_6
 mov qword ptr [rbp + 2800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx686_2
.Lx686_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx686_2
.Lx686_1:
 call rt_faildescr@PLT
.Lx686_2:
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain451_n122_β
 jmp xchain451_n125_α
 xchain451_n124_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2808]
 jmp qword ptr [rsp]
.Lx686_0:
 .quad .Lx686_0_s
.Lx686_0_s:
 .string "zero/1"
# IR_LIT_STRING
 xchain451_n125_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx687_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain451_n126_α
.Lx687_0:
 .quad .Lx687_0_s
.Lx687_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8576]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain451_n127_α
# IR_LIT_STRING
 xchain451_n127_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx690_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain451_n128_α
.Lx690_0:
 .quad .Lx690_0_s
.Lx690_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8560]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain451_n129_α
# IR_LIT_STRING
 xchain451_n129_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx693_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain451_n130_α
.Lx693_0:
 .quad .Lx693_0_s
.Lx693_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8544]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain451_n131_α
# IR_LIT_STRING
 xchain451_n131_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain451_n132_α
.Lx696_0:
 .quad .Lx696_0_s
.Lx696_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8528]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain451_n133_α
# IR_LIT_STRING
 xchain451_n133_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx699_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain451_n134_α
.Lx699_0:
 .quad .Lx699_0_s
.Lx699_0_s:
 .string "[]"
 xchain451_n134_α:
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
  .section .rodata
  .Lrkfn701: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn701]
 lea rsi, [rbp + 1024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n135_α
 xchain451_n134_β:
 jmp proc_top$16_ω
 xchain451_n135_α:
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
  .Lrkfn703: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn703]
 lea rsi, [rbp + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n136_α
 xchain451_n135_β:
 jmp proc_top$16_ω
 xchain451_n136_α:
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
  .Lrkfn705: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn705]
 lea rsi, [rbp + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n137_α
 xchain451_n136_β:
 jmp proc_top$16_ω
 xchain451_n137_α:
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
  .Lrkfn707: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn707]
 lea rsi, [rbp + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n138_α
 xchain451_n137_β:
 jmp xchain451_n5_α
# IR_LIT_STRING
 xchain451_n138_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx708_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain451_n139_α
.Lx708_0:
 .quad .Lx708_0_s
.Lx708_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain451_n139_α:
 mov qword ptr [rbp + 2016], 6
 mov rax, qword ptr [rip + .Lx709_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain451_n140_α
.Lx709_0:
 .quad 0
# IR_LIT_STRING
 xchain451_n140_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain451_n141_α
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8624]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain451_n142_α
# IR_LIT_STRING
 xchain451_n142_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx713_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain451_n143_α
.Lx713_0:
 .quad .Lx713_0_s
.Lx713_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8608]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain451_n144_α
# IR_LIT_STRING
 xchain451_n144_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx716_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain451_n145_α
.Lx716_0:
 .quad .Lx716_0_s
.Lx716_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8592]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain451_n146_α
# IR_LIT_STRING
 xchain451_n146_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain451_n147_α
.Lx719_0:
 .quad .Lx719_0_s
.Lx719_0_s:
 .string "[]"
 xchain451_n147_α:
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
  .section .rodata
  .Lrkfn721: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn721]
 lea rsi, [rbp + 1632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n148_α
 xchain451_n147_β:
 jmp proc_top$16_ω
 xchain451_n148_α:
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
  .Lrkfn723: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn723]
 lea rsi, [rbp + 1776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n149_α
 xchain451_n148_β:
 jmp proc_top$16_ω
 xchain451_n149_α:
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
  .Lrkfn725: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn725]
 lea rsi, [rbp + 1920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n150_α
 xchain451_n149_β:
 jmp proc_top$16_ω
 xchain451_n150_α:
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
  .Lrkfn727: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn727]
 lea rsi, [rbp + 2064]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n151_α
 xchain451_n150_β:
 jmp xchain451_n5_α
# IR_LIT_STRING
 xchain451_n151_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain451_n152_α
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain451_n153_α
# IR_LIT_STRING
 xchain451_n153_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx731_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain451_n154_α
.Lx731_0:
 .quad .Lx731_0_s
.Lx731_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain451_n155_α
# IR_LIT_STRING
 xchain451_n155_α:
 mov qword ptr [rbp + 2448], 1
 mov rax, qword ptr [rip + .Lx734_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain451_n156_α
.Lx734_0:
 .quad .Lx734_0_s
.Lx734_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain451_n157_α
# IR_LIT_STRING
 xchain451_n157_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain451_n158_α
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "."
# IR_VAR_REF
 xchain451_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain451_n159_α
# IR_VAR_REF
 xchain451_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain451_n160_α
 xchain451_n160_α:
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
  .section .rodata
  .Lrkfn743: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn743]
 lea rsi, [rbp + 2240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n161_α
 xchain451_n160_β:
 jmp proc_top$16_ω
 xchain451_n161_α:
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
  .section .rodata
  .Lrkfn745: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn745]
 lea rsi, [rbp + 2384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n162_α
 xchain451_n161_β:
 jmp proc_top$16_ω
 xchain451_n162_α:
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
  .section .rodata
  .Lrkfn747: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn747]
 lea rsi, [rbp + 2528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain451_n163_α
 xchain451_n162_β:
 jmp proc_top$16_ω
 xchain451_n163_α:
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
  .section .rodata
  .Lrkfn749: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn749]
 lea rsi, [rbp + 2672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain451_n5_α
 jmp xchain451_n164_α
 xchain451_n163_β:
 jmp xchain451_n5_α
 xchain451_n164_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2656]
 mov rdx, qword ptr [rbp + 2664]
 call rt_arg_stage@PLT
 mov edi, 3
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx751_1
 lea rcx, [rip + .Lx751_3]
 lea rdx, [rip + .Lx751_4]
 jmp rax
.Lx751_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx751_2
.Lx751_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx751_2
.Lx751_1:
 call rt_faildescr@PLT
.Lx751_2:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain451_n124_β
 jmp xchain451_n165_α
 xchain451_n164_β:
 jmp xchain451_n124_β
.Lx751_0:
 .quad .Lx751_0_s
.Lx751_0_s:
 .string "sum/3"
# IR_VAR_REF
 xchain451_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8512]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain451_n166_α
 xchain451_n166_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
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
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx755_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx755_2
.Lx755_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx755_2
.Lx755_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx755_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx755_2
.Lx755_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx755_2
.Lx755_1:
 call rt_faildescr@PLT
.Lx755_2:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain451_n164_β
 jmp xchain451_n167_α
 xchain451_n166_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain451_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8496]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain451_n168_α
 xchain451_n168_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
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
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx759_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx759_2
.Lx759_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx759_2
.Lx759_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx759_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx759_2
.Lx759_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx759_2
.Lx759_1:
 call rt_faildescr@PLT
.Lx759_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain451_n166_β
 jmp xchain451_n169_α
 xchain451_n168_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx759_0:
 .quad .Lx759_0_s
.Lx759_0_s:
 .string "odd/1"
# IR_VAR_REF
 xchain451_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8480]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain451_n170_α
 xchain451_n170_α:
 mov qword ptr [rbp + 608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
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
 mov qword ptr [rbp + 616], rsp
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx763_5
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx763_2
.Lx763_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx763_2
.Lx763_4:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx763_6
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx763_2
.Lx763_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx763_2
.Lx763_1:
 call rt_faildescr@PLT
.Lx763_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain451_n168_β
 jmp xchain451_n171_α
 xchain451_n170_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 616]
 jmp qword ptr [rsp]
.Lx763_0:
 .quad .Lx763_0_s
.Lx763_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8464]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain451_n172_α
 xchain451_n172_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
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
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx767_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx767_2
.Lx767_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx767_2
.Lx767_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx767_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx767_2
.Lx767_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx767_2
.Lx767_1:
 call rt_faildescr@PLT
.Lx767_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain451_n170_β
 jmp xchain451_n173_α
 xchain451_n172_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 520]
 jmp qword ptr [rsp]
.Lx767_0:
 .quad .Lx767_0_s
.Lx767_0_s:
 .string "even/1"
# IR_VAR_REF
 xchain451_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 8448]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain451_n174_α
 xchain451_n174_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx771_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx771_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx771_3]
 lea rdx, [rip + .Lx771_4]
 jmp rax
.Lx771_3:
 mov qword ptr [rbp + 424], rsp
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx771_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx771_2
.Lx771_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx771_2
.Lx771_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx771_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx771_2
.Lx771_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx771_2
.Lx771_1:
 call rt_faildescr@PLT
.Lx771_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain451_n172_β
 jmp xchain451_n175_α
 xchain451_n174_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 424]
 jmp qword ptr [rsp]
.Lx771_0:
 .quad .Lx771_0_s
.Lx771_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain451_n175_α:
 lea rax, [rip + xchain451_n175_β]
 mov qword ptr [rbp + 8416], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$16_γ
 xchain451_n175_β:
 jmp xchain451_n174_β
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
  mov rdi, rsp
  mov ecx, 832
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 832
  call rt_jmp_frame_lexprep@PLT
proc_lefteven$1_α_body:
lea rax, [rip + xchain774_n4_β]
mov qword ptr [rbp + 800], rax
 xchain774_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn776: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn776]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain774_n1_α
 xchain774_n0_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain774_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain774_n2_α
# IR_LIT_INTEGER
 xchain774_n2_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx779_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain774_n3_α
.Lx779_0:
 .quad 2
 xchain774_n3_α:
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
  .Lrkfn781: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn781]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain774_n5_α
 jmp xchain774_n4_α
 xchain774_n3_β:
 jmp xchain774_n5_α
# IR_SUSPEND yield+resume
 xchain774_n4_α:
 lea rax, [rip + xchain774_n4_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain774_n4_β:
 jmp xchain774_n5_α
 xchain774_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn785: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn785]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain774_n6_α
 xchain774_n5_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain774_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain774_n7_α
# IR_LIT_INTEGER
 xchain774_n7_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx788_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain774_n8_α
.Lx788_0:
 .quad 4
 xchain774_n8_α:
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
  .Lrkfn790: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn790]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain774_n10_α
 jmp xchain774_n9_α
 xchain774_n8_β:
 jmp xchain774_n10_α
# IR_SUSPEND yield+resume
 xchain774_n9_α:
 lea rax, [rip + xchain774_n9_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain774_n9_β:
 jmp xchain774_n10_α
 xchain774_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn794: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn794]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain774_n11_α
 xchain774_n10_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain774_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain774_n12_α
# IR_LIT_INTEGER
 xchain774_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx797_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain774_n13_α
.Lx797_0:
 .quad 6
 xchain774_n13_α:
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
  .Lrkfn799: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn799]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain774_n15_α
 jmp xchain774_n14_α
 xchain774_n13_β:
 jmp xchain774_n15_α
# IR_SUSPEND yield+resume
 xchain774_n14_α:
 lea rax, [rip + xchain774_n14_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain774_n14_β:
 jmp xchain774_n15_α
 xchain774_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn803: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn803]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain774_n16_α
 xchain774_n15_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain774_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain774_n17_α
# IR_LIT_INTEGER
 xchain774_n17_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx806_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain774_n18_α
.Lx806_0:
 .quad 8
 xchain774_n18_α:
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
  .Lrkfn808: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn808]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain774_n20_α
 jmp xchain774_n19_α
 xchain774_n18_β:
 jmp xchain774_n20_α
# IR_SUSPEND yield+resume
 xchain774_n19_α:
 lea rax, [rip + xchain774_n19_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_lefteven$1_γ
 xchain774_n19_β:
 jmp xchain774_n20_α
 xchain774_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn812: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn812]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp proc_lefteven$1_ω
 xchain774_n20_β:
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
lea rax, [rip + xchain813_n4_β]
mov qword ptr [rbp + 688], rax
 xchain813_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn815: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn815]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain813_n1_α
 xchain813_n0_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain813_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain813_n2_α
# IR_LIT_STRING
 xchain813_n2_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx818_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain813_n3_α
.Lx818_0:
 .quad .Lx818_0_s
.Lx818_0_s:
 .string "[]"
 xchain813_n3_α:
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
  .Lrkfn820: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn820]
 lea rsi, [rbp + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain813_n5_α
 jmp xchain813_n4_α
 xchain813_n3_β:
 jmp xchain813_n5_α
# IR_SUSPEND yield+resume
 xchain813_n4_α:
 lea rax, [rip + xchain813_n4_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain813_n4_β:
 jmp xchain813_n5_α
 xchain813_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+528]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn824: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn824]
 lea rsi, [rbp + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain813_n6_α
 xchain813_n5_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain813_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain813_n7_α
# IR_LIT_STRING
 xchain813_n7_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx827_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain813_n8_α
.Lx827_0:
 .quad .Lx827_0_s
.Lx827_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain813_n8_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx828_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain813_n9_α
.Lx828_0:
 .quad 0
# IR_VAR_REF
 xchain813_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain813_n10_α
 xchain813_n10_α:
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
  .Lrkfn832: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn832]
 lea rsi, [rbp + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain813_n12_α
 jmp xchain813_n11_α
 xchain813_n10_β:
 jmp xchain813_n12_α
 xchain813_n11_α:
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
  .Lrkfn834: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn834]
 lea rsi, [rbp + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain813_n12_α
 jmp xchain813_n13_α
 xchain813_n11_β:
 jmp xchain813_n12_α
 xchain813_n12_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn836: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn836]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp proc_zero$1_ω
 xchain813_n12_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain813_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain813_n14_α
 xchain813_n14_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx840_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx840_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx840_3]
 lea rdx, [rip + .Lx840_4]
 jmp rax
.Lx840_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx840_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx840_2
.Lx840_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx840_2
.Lx840_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx840_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx840_2
.Lx840_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx840_2
.Lx840_1:
 call rt_faildescr@PLT
.Lx840_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain813_n12_α
 jmp xchain813_n15_α
 xchain813_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx840_0:
 .quad .Lx840_0_s
.Lx840_0_s:
 .string "zero/1"
# IR_SUSPEND yield+resume
 xchain813_n15_α:
 lea rax, [rip + xchain813_n15_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zero$1_γ
 xchain813_n15_β:
 jmp xchain813_n14_β
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
 xchain843_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn845: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn845]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n1_α
 xchain843_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain843_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain843_n2_α
# IR_VAR_REF
 xchain843_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain843_n3_α
# IR_VAR_REF
 xchain843_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain843_n4_α
# IR_VAR_REF
 xchain843_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain843_n5_α
# IR_VAR_REF
 xchain843_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain843_n6_α
# IR_VAR_REF
 xchain843_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain843_n7_α
# IR_VAR_REF
 xchain843_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain843_n8_α
# IR_VAR_REF
 xchain843_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain843_n9_α
# IR_VAR_REF
 xchain843_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain843_n10_α
# IR_VAR_REF
 xchain843_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain843_n11_α
# IR_VAR_REF
 xchain843_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain843_n12_α
# IR_VAR_REF
 xchain843_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain843_n13_α
# IR_VAR_REF
 xchain843_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain843_n14_α
# IR_VAR_REF
 xchain843_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain843_n15_α
# IR_VAR_REF
 xchain843_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain843_n16_α
# IR_VAR_REF
 xchain843_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain843_n17_α
 xchain843_n17_α:
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
 mov rdi, qword ptr [rip + .Lx879_0]
 mov esi, 16
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx879_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx879_3]
 lea rdx, [rip + .Lx879_4]
 jmp rax
.Lx879_3:
 mov qword ptr [rbp + 2872], rsp
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx879_5
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx879_2
.Lx879_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx879_2
.Lx879_4:
 mov rax, qword ptr [rbp + 2864]
 test rax, rax
 jne .Lx879_6
 mov qword ptr [rbp + 2864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx879_2
.Lx879_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx879_2
.Lx879_1:
 call rt_faildescr@PLT
.Lx879_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain843_n19_α
 jmp xchain843_n18_α
 xchain843_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2872]
 jmp qword ptr [rsp]
.Lx879_0:
 .quad .Lx879_0_s
.Lx879_0_s:
 .string "top/16"
# IR_LIT_STRING
 xchain843_n18_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx880_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain843_n20_α
.Lx880_0:
 .quad .Lx880_0_s
.Lx880_0_s:
 .string "."
 xchain843_n19_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn882: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn882]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain843_n19_β:
 jmp main_ω
# IR_VAR_REF
 xchain843_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3664]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain843_n21_α
# IR_LIT_STRING
 xchain843_n21_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx885_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain843_n22_α
.Lx885_0:
 .quad .Lx885_0_s
.Lx885_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3648]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain843_n23_α
# IR_LIT_STRING
 xchain843_n23_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx888_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain843_n24_α
.Lx888_0:
 .quad .Lx888_0_s
.Lx888_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3632]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain843_n25_α
# IR_LIT_STRING
 xchain843_n25_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx891_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain843_n26_α
.Lx891_0:
 .quad .Lx891_0_s
.Lx891_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3616]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain843_n27_α
# IR_LIT_STRING
 xchain843_n27_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx894_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain843_n28_α
.Lx894_0:
 .quad .Lx894_0_s
.Lx894_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain843_n29_α
# IR_LIT_STRING
 xchain843_n29_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx897_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain843_n30_α
.Lx897_0:
 .quad .Lx897_0_s
.Lx897_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3584]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain843_n31_α
# IR_LIT_STRING
 xchain843_n31_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx900_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain843_n32_α
.Lx900_0:
 .quad .Lx900_0_s
.Lx900_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3568]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain843_n33_α
# IR_LIT_STRING
 xchain843_n33_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx903_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain843_n34_α
.Lx903_0:
 .quad .Lx903_0_s
.Lx903_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3552]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain843_n35_α
# IR_LIT_STRING
 xchain843_n35_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx906_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain843_n36_α
.Lx906_0:
 .quad .Lx906_0_s
.Lx906_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3536]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain843_n37_α
# IR_LIT_STRING
 xchain843_n37_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx909_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain843_n38_α
.Lx909_0:
 .quad .Lx909_0_s
.Lx909_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3520]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain843_n39_α
# IR_LIT_STRING
 xchain843_n39_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx912_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain843_n40_α
.Lx912_0:
 .quad .Lx912_0_s
.Lx912_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3504]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain843_n41_α
# IR_LIT_STRING
 xchain843_n41_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx915_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain843_n42_α
.Lx915_0:
 .quad .Lx915_0_s
.Lx915_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3488]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain843_n43_α
# IR_LIT_STRING
 xchain843_n43_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx918_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain843_n44_α
.Lx918_0:
 .quad .Lx918_0_s
.Lx918_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3472]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain843_n45_α
# IR_LIT_STRING
 xchain843_n45_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx921_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain843_n46_α
.Lx921_0:
 .quad .Lx921_0_s
.Lx921_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3456]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain843_n47_α
# IR_LIT_STRING
 xchain843_n47_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx924_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain843_n48_α
.Lx924_0:
 .quad .Lx924_0_s
.Lx924_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3440]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain843_n49_α
# IR_LIT_STRING
 xchain843_n49_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx927_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain843_n50_α
.Lx927_0:
 .quad .Lx927_0_s
.Lx927_0_s:
 .string "."
# IR_VAR_REF
 xchain843_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3424]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain843_n51_α
# IR_LIT_STRING
 xchain843_n51_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx930_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain843_n52_α
.Lx930_0:
 .quad .Lx930_0_s
.Lx930_0_s:
 .string "[]"
 xchain843_n52_α:
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
  .Lrkfn932: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn932]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n53_α
 xchain843_n52_β:
 jmp main_ω
 xchain843_n53_α:
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
  .Lrkfn934: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn934]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n54_α
 xchain843_n53_β:
 jmp main_ω
 xchain843_n54_α:
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
  .Lrkfn936: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn936]
 lea rsi, [rbp + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n55_α
 xchain843_n54_β:
 jmp main_ω
 xchain843_n55_α:
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
  .Lrkfn938: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn938]
 lea rsi, [rbp + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n56_α
 xchain843_n55_β:
 jmp main_ω
 xchain843_n56_α:
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
  .Lrkfn940: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn940]
 lea rsi, [rbp + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n57_α
 xchain843_n56_β:
 jmp main_ω
 xchain843_n57_α:
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
  .Lrkfn942: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn942]
 lea rsi, [rbp + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n58_α
 xchain843_n57_β:
 jmp main_ω
 xchain843_n58_α:
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
  .Lrkfn944: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn944]
 lea rsi, [rbp + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n59_α
 xchain843_n58_β:
 jmp main_ω
 xchain843_n59_α:
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
  .Lrkfn946: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn946]
 lea rsi, [rbp + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n60_α
 xchain843_n59_β:
 jmp main_ω
 xchain843_n60_α:
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
  .Lrkfn948: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn948]
 lea rsi, [rbp + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n61_α
 xchain843_n60_β:
 jmp main_ω
 xchain843_n61_α:
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
  .Lrkfn950: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn950]
 lea rsi, [rbp + 1632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n62_α
 xchain843_n61_β:
 jmp main_ω
 xchain843_n62_α:
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
  .Lrkfn952: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn952]
 lea rsi, [rbp + 1776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n63_α
 xchain843_n62_β:
 jmp main_ω
 xchain843_n63_α:
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
  .Lrkfn954: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn954]
 lea rsi, [rbp + 1920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n64_α
 xchain843_n63_β:
 jmp main_ω
 xchain843_n64_α:
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
  .Lrkfn956: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn956]
 lea rsi, [rbp + 2064]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n65_α
 xchain843_n64_β:
 jmp main_ω
 xchain843_n65_α:
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
  .Lrkfn958: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn958]
 lea rsi, [rbp + 2208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n66_α
 xchain843_n65_β:
 jmp main_ω
 xchain843_n66_α:
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
  .Lrkfn960: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn960]
 lea rsi, [rbp + 2352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je main_ω
 jmp xchain843_n67_α
 xchain843_n66_β:
 jmp main_ω
 xchain843_n67_α:
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
  .Lrkfn962: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn962]
 lea rsi, [rbp + 2496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain843_n19_α
 jmp xchain843_n68_α
 xchain843_n67_β:
 jmp xchain843_n19_α
 xchain843_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+224]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn964: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn964]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain843_n17_β
 jmp xchain843_n69_α
 xchain843_n68_β:
 jmp xchain843_n17_β
# IR_LIT_STRING
 xchain843_n69_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx965_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain843_n70_α
.Lx965_0:
 .quad .Lx965_0_s
.Lx965_0_s:
 .string ""
 xchain843_n70_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn967: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn967]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain843_n17_β
 jmp xchain843_n71_α
 xchain843_n70_β:
 jmp xchain843_n17_β
# IR_MOVE_LABEL
 xchain843_n71_α:
 lea rax, [rip + xchain843_n17_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain843_n72_α:
 jmp qword ptr [rbp + 32]
 xchain843_n72_β:
 jmp main_ω
main_β:
jmp xchain843_n72_α
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
