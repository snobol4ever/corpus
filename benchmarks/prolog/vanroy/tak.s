  .intel_syntax noprefix
  .text
  .globl proc_between$2F3_α
proc_between$2F3_α:
#=======================================================================================================================
    .global proc_between$2F3_α
    .global proc_between$2F3_β
    .global proc_between$2F3_γ
    .global proc_between$2F3_ω
  sub rsp, 304
  mov [rsp + 280], rcx
  mov [rsp + 288], rdx
  mov [rsp + 296], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 240
  mov edx, 272
  call rt_jmp_frame_lexprep2@PLT
proc_between$2F3_α_body:
lea rax, [rip + xchain0_n4_β]
mov qword ptr [rbp + 240], rax
# IR_VAR_REF
 xchain0_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain0_n1_α
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX CALL_GEN $between(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+144] -> [zr+80]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 88], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+96]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 104], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+112]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 120], rax
 mov qword ptr [rbp + 128], 0
.Lx7_60:
  .section .rodata
  .Lbynamegenfn4: .string "$between"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn4]
 lea rsi, [rbp + 80]
 mov edx, 3
 lea rcx, [rbp + 128]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_between$2F3_ω
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp .Lx7_60
# IR_SUSPEND yield+resume
 xchain0_n4_α:
 lea rax, [rip + xchain0_n4_β]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_between$2F3_γ
 xchain0_n4_β:
 jmp xchain0_n3_β
proc_between$2F3_res:
add rsp, 8
pop rbp
proc_between$2F3_β:
jmp qword ptr [rbp + 240]
proc_between$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_between$2F3_res]
push rax
mov rax, [rbp + 280]
mov rbp, [rbp + 296]
jmp rax
proc_between$2F3_ω:
mov rax, [rbp + 288]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
  .globl proc_l__$2F1_α
proc_l__$2F1_α:
#=======================================================================================================================
    .global proc_l__$2F1_α
    .global proc_l__$2F1_β
    .global proc_l__$2F1_γ
    .global proc_l__$2F1_ω
  sub rsp, 784
  mov [rsp + 760], rcx
  mov [rsp + 768], rdx
  mov [rsp + 776], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 712], rsp
  mov rdi, rsp
  mov esi, 688
  mov edx, 752
  call rt_jmp_frame_lexprep2@PLT
proc_l__$2F1_α_body:
lea rax, [rip + xchain10_n13_β]
mov qword ptr [rbp + 688], rax
 xchain10_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_l__$2F1_ω
 jmp xchain10_n1_α
 xchain10_n0_β:
 jmp proc_l__$2F1_ω
# IR_VAR_REF
 xchain10_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain10_n2_α
# IR_VAR_REF
 xchain10_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain10_n3_α
 xchain10_n3_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain10_n5_α
 jmp xchain10_n4_α
 xchain10_n3_β:
 jmp xchain10_n5_α
# IR_LIT_INTEGER
 xchain10_n4_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain10_n6_α
.Lx17_0:
 .quad 1
 xchain10_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_l__$2F1_ω
 jmp xchain10_n7_α
 xchain10_n5_β:
 jmp proc_l__$2F1_ω
# IR_VAR_REF
 xchain10_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain10_n8_α
# IR_VAR_REF
 xchain10_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain10_n9_α
# IR_VAR_REF
 xchain10_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain10_n10_α
# IR_VAR_REF
 xchain10_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain10_n11_α
 xchain10_n10_α:
 mov qword ptr [rbp + 432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx28_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx28_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx28_3]
 lea rdx, [rip + .Lx28_4]
 jmp rax
.Lx28_3:
 mov qword ptr [rbp + 440], rsp
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx28_5
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx28_2
.Lx28_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx28_2
.Lx28_4:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx28_6
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx28_2
.Lx28_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx28_2
.Lx28_1:
 call rt_faildescr@PLT
.Lx28_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain10_n5_α
 jmp xchain10_n12_α
 xchain10_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 440]
 jmp qword ptr [rsp]
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "between/3"
 xchain10_n11_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain10_n14_α
 jmp xchain10_n13_α
 xchain10_n11_β:
 jmp xchain10_n14_α
 xchain10_n12_α:
 mov qword ptr [rbp + 336], 0
 mov rdi, qword ptr [rip + .Lx31_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx31_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx31_3]
 lea rdx, [rip + .Lx31_4]
 jmp rax
.Lx31_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx31_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx31_2
.Lx31_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx31_2
.Lx31_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx31_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx31_2
.Lx31_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx31_2
.Lx31_1:
 call rt_faildescr@PLT
.Lx31_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain10_n10_β
 jmp xchain10_n12_β
 xchain10_n12_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "bench__main/0"
# IR_SUSPEND yield+resume
 xchain10_n13_α:
 lea rax, [rip + xchain10_n13_β]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_l__$2F1_γ
 xchain10_n13_β:
 jmp xchain10_n14_α
 xchain10_n14_α:
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
 je proc_l__$2F1_ω
 jmp proc_l__$2F1_ω
 xchain10_n14_β:
 jmp proc_l__$2F1_ω
proc_l__$2F1_res:
add rsp, 8
pop rbp
proc_l__$2F1_β:
jmp qword ptr [rbp + 688]
proc_l__$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_l__$2F1_res]
push rax
mov rax, [rbp + 760]
mov rbp, [rbp + 776]
jmp rax
proc_l__$2F1_ω:
mov rax, [rbp + 768]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
  .globl proc_bench__main$2F0_α
proc_bench__main$2F0_α:
#=======================================================================================================================
    .global proc_bench__main$2F0_α
    .global proc_bench__main$2F0_β
    .global proc_bench__main$2F0_γ
    .global proc_bench__main$2F0_ω
  sub rsp, 592
  mov [rsp + 568], rcx
  mov [rsp + 576], rdx
  mov [rsp + 584], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 536], rsp
  mov rdi, rsp
  mov esi, 512
  mov edx, 560
  call rt_jmp_frame_lexprep2@PLT
proc_bench__main$2F0_α_body:
lea rax, [rip + xchain35_n11_β]
mov qword ptr [rbp + 512], rax
 xchain35_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_bench__main$2F0_ω
 jmp xchain35_n1_α
 xchain35_n0_β:
 jmp proc_bench__main$2F0_ω
# IR_LIT_INTEGER
 xchain35_n1_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain35_n2_α
.Lx37_0:
 .quad 18
# IR_LIT_INTEGER
 xchain35_n2_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain35_n3_α
.Lx38_0:
 .quad 12
# IR_LIT_INTEGER
 xchain35_n3_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain35_n4_α
.Lx39_0:
 .quad 6
# IR_VAR_REF
 xchain35_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain35_n5_α
 xchain35_n5_α:
 lea rsi, [rbp + 384]
 lea rdx, [rbp + 416]
 lea rcx, [rbp + 448]
 lea r8, [rbp + 480]
 call proc_tak$2F4_dcα
 jmp .Lx43_2
.Lx43_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n6_α
 xchain35_n5_β:
 jmp xchain35_n7_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "tak/4"
# IR_VAR
 xchain35_n6_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
 jmp xchain35_n8_α
 xchain35_n7_α:
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
 je proc_bench__main$2F0_ω
 jmp proc_bench__main$2F0_ω
 xchain35_n7_β:
 jmp proc_bench__main$2F0_ω
 xchain35_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn48: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn48]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain35_n5_β
 jmp xchain35_n9_α
 xchain35_n8_β:
 jmp xchain35_n5_β
# IR_LIT_STRING
 xchain35_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain35_n10_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string ""
 xchain35_n10_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn51: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain35_n5_β
 jmp xchain35_n11_α
 xchain35_n10_β:
 jmp xchain35_n5_β
# IR_SUSPEND yield+resume
 xchain35_n11_α:
 lea rax, [rip + xchain35_n11_β]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_bench__main$2F0_γ
 xchain35_n11_β:
 jmp xchain35_n5_β
proc_bench__main$2F0_res:
add rsp, 8
pop rbp
proc_bench__main$2F0_β:
jmp qword ptr [rbp + 512]
proc_bench__main$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_bench__main$2F0_res]
push rax
mov rax, [rbp + 568]
mov rbp, [rbp + 584]
jmp rax
proc_bench__main$2F0_ω:
mov rax, [rbp + 576]
lea rsp, [rbp + 592]
mov rbp, [rbp + 584]
jmp rax
  .globl proc_tak$2F4_α
proc_tak$2F4_α:
#=======================================================================================================================
    .global proc_tak$2F4_α
    .global proc_tak$2F4_β
    .global proc_tak$2F4_γ
    .global proc_tak$2F4_ω
  sub rsp, 3424
  mov [rsp + 3400], rcx
  mov [rsp + 3408], rdx
  mov [rsp + 3416], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3224], rsp
  mov rdi, rsp
  mov esi, 3216
  mov edx, 3392
  call rt_jmp_frame_lexprep2@PLT
proc_tak$2F4_α_body:
 xchain54_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_tak$2F4_ω
 jmp xchain54_n1_α
 xchain54_n0_β:
 jmp proc_tak$2F4_ω
# IR_VAR_REF
 xchain54_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain54_n2_α
# IR_VAR_REF
 xchain54_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain54_n3_α
 xchain54_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3152] -> [zr+3104]
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3112], rax
# marshal arg1 = producer-box slot [zr+3184] -> [zr+3120]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je xchain54_n5_α
 jmp xchain54_n4_α
 xchain54_n3_β:
 jmp xchain54_n5_α
# IR_VAR_REF
 xchain54_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain54_n6_α
 xchain54_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+2416]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2416]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je proc_tak$2F4_ω
 jmp xchain54_n7_α
 xchain54_n5_β:
 jmp proc_tak$2F4_ω
# IR_VAR_REF
 xchain54_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain54_n8_α
# IR_VAR_REF
 xchain54_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain54_n9_α
 xchain54_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2976]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+3056] -> [zr+2992]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain54_n5_α
 jmp xchain54_n10_α
 xchain54_n8_β:
 jmp xchain54_n5_α
# IR_VAR_REF
 xchain54_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain54_n11_α
# IR_VAR_REF
 xchain54_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain54_n12_α
 xchain54_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2288]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2296], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2288]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n13_α
 xchain54_n11_β:
 jmp xchain54_n14_α
# IR_VAR_REF
 xchain54_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain54_n15_α
# IR_VAR_REF
 xchain54_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain54_n16_α
 xchain54_n14_α:
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
 je proc_tak$2F4_ω
 jmp proc_tak$2F4_ω
 xchain54_n14_β:
 jmp proc_tak$2F4_ω
 xchain54_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2848]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2856], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+2864]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2848]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain54_n5_α
 jmp xchain54_n17_α
 xchain54_n15_β:
 jmp xchain54_n5_α
# IR_VAR_REF
 xchain54_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain54_n18_α
# IR_VAR_REF
 xchain54_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain54_n19_α
 xchain54_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n20_α
 xchain54_n18_β:
 jmp xchain54_n14_α
# IR_VAR_REF
 xchain54_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain54_n21_α
# IR_VAR_REF
 xchain54_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain54_n22_α
 xchain54_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2720]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2800] -> [zr+2736]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain54_n5_α
 jmp xchain54_n23_α
 xchain54_n21_β:
 jmp xchain54_n5_α
# IR_VAR_REF
 xchain54_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain54_n24_α
# IR_VAR
 xchain54_n23_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 2648], rax
 jmp xchain54_n25_α
 xchain54_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n26_α
 xchain54_n24_β:
 jmp xchain54_n14_α
# IR_VAR
 xchain54_n25_α:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 2680], rax
 jmp xchain54_n27_α
# IR_VAR_REF
 xchain54_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain54_n28_α
 xchain54_n27_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2592]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2608]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain54_n5_α
 jmp xchain54_n29_α
 xchain54_n27_β:
 jmp xchain54_n5_α
# IR_VAR_REF
 xchain54_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain54_n30_α
# IR_VAR_REF
 xchain54_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain54_n31_α
 xchain54_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1904]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1904]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n32_α
 xchain54_n30_β:
 jmp xchain54_n14_α
# IR_VAR_REF
 xchain54_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain54_n33_α
# IR_VAR
 xchain54_n32_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 1832], rax
 jmp xchain54_n34_α
 xchain54_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2464]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2544] -> [zr+2480]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain54_n5_α
 jmp xchain54_n35_α
 xchain54_n33_β:
 jmp xchain54_n5_α
# IR_VAR
 xchain54_n34_α:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 1864], rax
 jmp xchain54_n36_α
# IR_MOVE_LABEL
 xchain54_n35_α:
 lea rax, [rip + xchain54_n5_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_tak$2F4_γ
 xchain54_n36_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n38_α
 xchain54_n36_β:
 jmp xchain54_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain54_n37_α:
 jmp qword ptr [rbp + 96]
 xchain54_n37_β:
 jmp proc_tak$2F4_ω
# IR_VAR_REF
 xchain54_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain54_n39_α
# IR_VAR
 xchain54_n39_α:
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 1704], rax
 jmp xchain54_n40_α
# IR_LIT_INTEGER
 xchain54_n40_α:
 mov qword ptr [rbp + 1728], 6
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain54_n41_α
.Lx121_0:
 .quad 1
 xchain54_n41_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1664]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n42_α
 xchain54_n41_β:
 jmp xchain54_n14_α
 xchain54_n42_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n43_α
 xchain54_n42_β:
 jmp xchain54_n14_α
# IR_VAR_REF
 xchain54_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain54_n44_α
# IR_VAR_REF
 xchain54_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain54_n45_α
# IR_VAR_REF
 xchain54_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain54_n46_α
# IR_VAR_REF
 xchain54_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain54_n47_α
 xchain54_n47_α:
 lea rsi, [rbp + 1408]
 lea rdx, [rbp + 1440]
 lea rcx, [rbp + 1472]
 lea r8, [rbp + 1504]
 call proc_tak$2F4_dcα
 jmp .Lx133_2
.Lx133_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n48_α
 xchain54_n47_β:
 jmp xchain54_n14_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain54_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain54_n49_α
# IR_VAR
 xchain54_n49_α:
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 1256], rax
 jmp xchain54_n50_α
# IR_LIT_INTEGER
 xchain54_n50_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain54_n51_α
.Lx138_0:
 .quad 1
 xchain54_n51_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n52_α
 xchain54_n51_β:
 jmp xchain54_n14_α
 xchain54_n52_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain54_n47_β
 jmp xchain54_n53_α
 xchain54_n52_β:
 jmp xchain54_n47_β
# IR_VAR_REF
 xchain54_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain54_n54_α
# IR_VAR_REF
 xchain54_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain54_n55_α
# IR_VAR_REF
 xchain54_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain54_n56_α
# IR_VAR_REF
 xchain54_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain54_n57_α
 xchain54_n57_α:
 lea rsi, [rbp + 960]
 lea rdx, [rbp + 992]
 lea rcx, [rbp + 1024]
 lea r8, [rbp + 1056]
 call proc_tak$2F4_dcα
 jmp .Lx150_2
.Lx150_2:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain54_n47_β
 jmp xchain54_n58_α
 xchain54_n57_β:
 jmp xchain54_n47_β
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain54_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain54_n59_α
# IR_VAR
 xchain54_n59_α:
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 808], rax
 jmp xchain54_n60_α
# IR_LIT_INTEGER
 xchain54_n60_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain54_n61_α
.Lx155_0:
 .quad 1
 xchain54_n61_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain54_n14_α
 jmp xchain54_n62_α
 xchain54_n61_β:
 jmp xchain54_n14_α
 xchain54_n62_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain54_n57_β
 jmp xchain54_n63_α
 xchain54_n62_β:
 jmp xchain54_n57_β
# IR_VAR_REF
 xchain54_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain54_n64_α
# IR_VAR_REF
 xchain54_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain54_n65_α
# IR_VAR_REF
 xchain54_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain54_n66_α
# IR_VAR_REF
 xchain54_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain54_n67_α
 xchain54_n67_α:
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 544]
 lea rcx, [rbp + 576]
 lea r8, [rbp + 608]
 call proc_tak$2F4_dcα
 jmp .Lx167_2
.Lx167_2:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain54_n57_β
 jmp xchain54_n68_α
 xchain54_n67_β:
 jmp xchain54_n57_β
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain54_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain54_n69_α
# IR_VAR_REF
 xchain54_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain54_n70_α
# IR_VAR_REF
 xchain54_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain54_n71_α
# IR_VAR_REF
 xchain54_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3280]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain54_n72_α
 xchain54_n72_α:
 lea rsi, [rbp + 288]
 lea rdx, [rbp + 320]
 lea rcx, [rbp + 352]
 lea r8, [rbp + 384]
 call proc_tak$2F4_dcα
 jmp .Lx177_2
.Lx177_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain54_n67_β
 jmp xchain54_n73_α
 xchain54_n72_β:
 jmp xchain54_n67_β
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "tak/4"
# IR_MOVE_LABEL
 xchain54_n73_α:
 lea rax, [rip + xchain54_n72_β]
 mov qword ptr [rbp + 96], rax
 jmp proc_tak$2F4_γ
proc_tak$2F4_res:
add rsp, 8
pop rbp
proc_tak$2F4_β:
jmp xchain54_n37_α
proc_tak$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3400]
lea rsp, [rbp + 3424]
mov rbp, [rbp + 3416]
jmp rax
proc_tak$2F4_ω:
mov rax, [rbp + 3408]
lea rsp, [rbp + 3424]
mov rbp, [rbp + 3416]
jmp rax
proc_tak$2F4_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 3440
 mov qword ptr [rsp + 3432], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 3392], r11
 lea rax, [rip + .Lx180_2]
 mov qword ptr [rbp + 3400], rax
 lea rax, [rip + .Lx180_3]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3224], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov qword ptr [rbp + 40], r8
 mov rdi, rbp
 mov esi, 3216
 mov edx, 3392
 mov ecx, 4
 mov r8d, 4
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tak$2F4_α_body
.Lx180_2:
 mov rdx, qword ptr [rsp + -3440]
 mov rcx, rsp
 add rcx, -3424
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx180_3:
 mov rdi, qword ptr [rsp + -3440]
 mov rsi, rsp
 add rsi, -3424
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "between/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_between$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "l__/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_l__$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 752
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "bench__main/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_bench__main$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 560
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "tak/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_tak$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3392
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_tak$2F4_dcα]
  call rt_proc_set_dcfn@PLT
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
  mov qword ptr [rsp + 232], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain181_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain181_n1_α
 xchain181_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain181_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain181_n2_α
.Lx183_0:
 .quad 64
 xchain181_n2_α:
 mov qword ptr [rbp + 160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx185_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx185_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx185_3]
 lea rdx, [rip + .Lx185_4]
 jmp rax
.Lx185_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx185_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx185_2
.Lx185_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx185_2
.Lx185_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx185_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx185_2
.Lx185_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx185_2
.Lx185_1:
 call rt_faildescr@PLT
.Lx185_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain181_n4_α
 jmp xchain181_n3_α
 xchain181_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "l__/1"
# IR_MOVE_LABEL
 xchain181_n3_α:
 lea rax, [rip + xchain181_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain181_n4_α:
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
 xchain181_n4_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain181_n5_α:
 jmp qword ptr [rbp + 32]
 xchain181_n5_β:
 jmp main_ω
main_β:
jmp xchain181_n5_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 232]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 232]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
