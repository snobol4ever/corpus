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
  sub rsp, 496
  mov [rsp + 472], rcx
  mov [rsp + 480], rdx
  mov [rsp + 488], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 416
  mov edx, 464
  call rt_jmp_frame_lexprep2@PLT
proc_bench__main$2F0_α_body:
lea rax, [rip + xchain35_n9_β]
mov qword ptr [rbp + 416], rax
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
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain35_n2_α
.Lx37_0:
 .quad 20
# IR_VAR_REF
 xchain35_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain35_n3_α
 xchain35_n3_α:
 lea rsi, [rbp + 352]
 lea rdx, [rbp + 384]
 call proc_fib$2F2_dcα
 jmp .Lx41_2
.Lx41_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain35_n5_α
 jmp xchain35_n4_α
 xchain35_n3_β:
 jmp xchain35_n5_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "fib/2"
# IR_VAR
 xchain35_n4_α:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 264], rax
 jmp xchain35_n6_α
 xchain35_n5_α:
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
 xchain35_n5_β:
 jmp proc_bench__main$2F0_ω
 xchain35_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn46: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain35_n3_β
 jmp xchain35_n7_α
 xchain35_n6_β:
 jmp xchain35_n3_β
# IR_LIT_STRING
 xchain35_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain35_n8_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string ""
 xchain35_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn49: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn49]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain35_n3_β
 jmp xchain35_n9_α
 xchain35_n8_β:
 jmp xchain35_n3_β
# IR_SUSPEND yield+resume
 xchain35_n9_α:
 lea rax, [rip + xchain35_n9_β]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_bench__main$2F0_γ
 xchain35_n9_β:
 jmp xchain35_n3_β
proc_bench__main$2F0_res:
add rsp, 8
pop rbp
proc_bench__main$2F0_β:
jmp qword ptr [rbp + 416]
proc_bench__main$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_bench__main$2F0_res]
push rax
mov rax, [rbp + 472]
mov rbp, [rbp + 488]
jmp rax
proc_bench__main$2F0_ω:
mov rax, [rbp + 480]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
  .globl proc_fib$2F2_α
proc_fib$2F2_α:
#=======================================================================================================================
    .global proc_fib$2F2_α
    .global proc_fib$2F2_β
    .global proc_fib$2F2_γ
    .global proc_fib$2F2_ω
  sub rsp, 2576
  mov [rsp + 2552], rcx
  mov [rsp + 2560], rdx
  mov [rsp + 2568], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2440], rsp
  mov rdi, rsp
  mov esi, 2432
  mov edx, 2544
  call rt_jmp_frame_lexprep2@PLT
proc_fib$2F2_α_body:
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_fib$2F2_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_fib$2F2_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain52_n2_α
# IR_LIT_INTEGER
 xchain52_n2_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain52_n3_α
.Lx56_0:
 .quad 1
# IR_LIT_INTEGER
 xchain52_n3_α:
 mov qword ptr [rbp + 2400], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain52_n4_α
.Lx57_0:
 .quad 0
 xchain52_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2272]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2280], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2288]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2296], rax
# marshal arg2 = producer-box slot [zr+2400] -> [zr+2304]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2272]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je xchain52_n6_α
 jmp xchain52_n5_α
 xchain52_n4_β:
 jmp xchain52_n6_α
# IR_VAR_REF
 xchain52_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain52_n7_α
# IR_VAR_REF
 xchain52_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain52_n8_α
# IR_LIT_INTEGER
 xchain52_n7_α:
 mov qword ptr [rbp + 2224], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain52_n9_α
.Lx63_0:
 .quad 0
# IR_LIT_INTEGER
 xchain52_n8_α:
 mov qword ptr [rbp + 1888], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain52_n10_α
.Lx64_0:
 .quad 1
 xchain52_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2144]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2152], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2144]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain52_n12_α
 jmp xchain52_n11_α
 xchain52_n9_β:
 jmp xchain52_n12_α
# IR_LIT_INTEGER
 xchain52_n10_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain52_n13_α
.Lx66_0:
 .quad 1
# IR_VAR_REF
 xchain52_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain52_n14_α
 xchain52_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1968]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1968]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je proc_fib$2F2_ω
 jmp xchain52_n6_α
 xchain52_n12_β:
 jmp proc_fib$2F2_ω
 xchain52_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1808]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1816], rax
# marshal arg2 = producer-box slot [zr+1920] -> [zr+1824]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain52_n16_α
 jmp xchain52_n15_α
 xchain52_n13_β:
 jmp xchain52_n16_α
# IR_LIT_INTEGER
 xchain52_n14_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain52_n17_α
.Lx71_0:
 .quad 1
# IR_VAR_REF
 xchain52_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain52_n18_α
# IR_VAR_REF
 xchain52_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain52_n19_α
 xchain52_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2016]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2016]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain52_n12_α
 jmp xchain52_n20_α
 xchain52_n17_β:
 jmp xchain52_n12_α
# IR_LIT_INTEGER
 xchain52_n18_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain52_n21_α
.Lx77_0:
 .quad 1
# IR_VAR_REF
 xchain52_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2528]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain52_n22_α
 xchain52_n20_α:
# IR_CUT
 jmp xchain52_n23_α
 xchain52_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1664]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain52_n25_α
 jmp xchain52_n24_α
 xchain52_n21_β:
 jmp xchain52_n25_α
 xchain52_n22_α:
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
 je xchain52_n27_α
 jmp xchain52_n26_α
 xchain52_n22_β:
 jmp xchain52_n27_α
# IR_MOVE_LABEL
 xchain52_n23_α:
 lea rax, [rip + xchain52_n12_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2F2_γ
# IR_VAR_REF
 xchain52_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain52_n29_α
 xchain52_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1488]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_fib$2F2_ω
 jmp xchain52_n16_α
 xchain52_n25_β:
 jmp proc_fib$2F2_ω
# IR_VAR_REF
 xchain52_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain52_n30_α
 xchain52_n27_α:
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
 je proc_fib$2F2_ω
 jmp proc_fib$2F2_ω
 xchain52_n27_β:
 jmp proc_fib$2F2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain52_n28_α:
 jmp qword ptr [rbp + 64]
 xchain52_n28_β:
 jmp proc_fib$2F2_ω
# IR_LIT_INTEGER
 xchain52_n29_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain52_n31_α
.Lx93_0:
 .quad 1
# IR_VAR_REF
 xchain52_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2448]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain52_n32_α
 xchain52_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1536]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain52_n25_α
 jmp xchain52_n33_α
 xchain52_n31_β:
 jmp xchain52_n25_α
 xchain52_n32_α:
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
 je xchain52_n27_α
 jmp xchain52_n34_α
 xchain52_n32_β:
 jmp xchain52_n27_α
 xchain52_n33_α:
# IR_CUT
 jmp xchain52_n35_α
# IR_VAR
 xchain52_n34_α:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 1160], rax
 jmp xchain52_n36_α
# IR_MOVE_LABEL
 xchain52_n35_α:
 lea rax, [rip + xchain52_n25_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2F2_γ
# IR_LIT_INTEGER
 xchain52_n36_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain52_n37_α
.Lx103_0:
 .quad 1
 xchain52_n37_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain52_n27_α
 jmp xchain52_n38_α
 xchain52_n37_β:
 jmp xchain52_n27_α
# IR_VAR_REF
 xchain52_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2512]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain52_n39_α
# IR_VAR
 xchain52_n39_α:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 1032], rax
 jmp xchain52_n40_α
# IR_LIT_INTEGER
 xchain52_n40_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain52_n41_α
.Lx109_0:
 .quad 1
 xchain52_n41_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain52_n27_α
 jmp xchain52_n42_α
 xchain52_n41_β:
 jmp xchain52_n27_α
 xchain52_n42_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain52_n27_α
 jmp xchain52_n43_α
 xchain52_n42_β:
 jmp xchain52_n27_α
# IR_VAR_REF
 xchain52_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2496]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain52_n44_α
# IR_VAR
 xchain52_n44_α:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 808], rax
 jmp xchain52_n45_α
# IR_LIT_INTEGER
 xchain52_n45_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain52_n46_α
.Lx116_0:
 .quad 2
 xchain52_n46_α:
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
 je xchain52_n27_α
 jmp xchain52_n47_α
 xchain52_n46_β:
 jmp xchain52_n27_α
 xchain52_n47_α:
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
 je xchain52_n27_α
 jmp xchain52_n48_α
 xchain52_n47_β:
 jmp xchain52_n27_α
# IR_VAR_REF
 xchain52_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2512]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain52_n49_α
# IR_VAR_REF
 xchain52_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain52_n50_α
 xchain52_n50_α:
 lea rsi, [rbp + 576]
 lea rdx, [rbp + 608]
 call proc_fib$2F2_dcα
 jmp .Lx124_2
.Lx124_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain52_n27_α
 jmp xchain52_n51_α
 xchain52_n50_β:
 jmp xchain52_n27_α
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain52_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2496]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain52_n52_α
# IR_VAR_REF
 xchain52_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain52_n53_α
 xchain52_n53_α:
 lea rsi, [rbp + 448]
 lea rdx, [rbp + 480]
 call proc_fib$2F2_dcα
 jmp .Lx130_2
.Lx130_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain52_n50_β
 jmp xchain52_n54_α
 xchain52_n53_β:
 jmp xchain52_n50_β
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain52_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2448]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain52_n55_α
# IR_VAR
 xchain52_n55_α:
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 328], rax
 jmp xchain52_n56_α
# IR_VAR
 xchain52_n56_α:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 360], rax
 jmp xchain52_n57_α
 xchain52_n57_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain52_n27_α
 jmp xchain52_n58_α
 xchain52_n57_β:
 jmp xchain52_n27_α
 xchain52_n58_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain52_n53_β
 jmp xchain52_n59_α
 xchain52_n58_β:
 jmp xchain52_n53_β
# IR_MOVE_LABEL
 xchain52_n59_α:
 lea rax, [rip + xchain52_n53_β]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2F2_γ
proc_fib$2F2_res:
add rsp, 8
pop rbp
proc_fib$2F2_β:
jmp xchain52_n28_α
proc_fib$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2552]
lea rsp, [rbp + 2576]
mov rbp, [rbp + 2568]
jmp rax
proc_fib$2F2_ω:
mov rax, [rbp + 2560]
lea rsp, [rbp + 2576]
mov rbp, [rbp + 2568]
jmp rax
proc_fib$2F2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2592
 mov qword ptr [rsp + 2584], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2544], r11
 lea rax, [rip + .Lx141_2]
 mov qword ptr [rbp + 2552], rax
 lea rax, [rip + .Lx141_3]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2440], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 2432
 mov edx, 2544
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_fib$2F2_α_body
.Lx141_2:
 mov rdx, qword ptr [rsp + -2592]
 mov rcx, rsp
 add rcx, -2576
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx141_3:
 mov rdi, qword ptr [rsp + -2592]
 mov rsi, rsp
 add rsi, -2576
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
  mov esi, 464
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "fib/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_fib$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2544
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_fib$2F2_dcα]
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
 xchain142_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain142_n1_α
 xchain142_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain142_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain142_n2_α
.Lx144_0:
 .quad 256
 xchain142_n2_α:
 mov qword ptr [rbp + 160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx146_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx146_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx146_3]
 lea rdx, [rip + .Lx146_4]
 jmp rax
.Lx146_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx146_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx146_2
.Lx146_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx146_2
.Lx146_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx146_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx146_2
.Lx146_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx146_2
.Lx146_1:
 call rt_faildescr@PLT
.Lx146_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain142_n4_α
 jmp xchain142_n3_α
 xchain142_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "l__/1"
# IR_MOVE_LABEL
 xchain142_n3_α:
 lea rax, [rip + xchain142_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain142_n4_α:
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
 xchain142_n4_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain142_n5_α:
 jmp qword ptr [rbp + 32]
 xchain142_n5_β:
 jmp main_ω
main_β:
jmp xchain142_n5_α
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
