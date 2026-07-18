  .intel_syntax noprefix
  .text
  .globl proc_ops8$0_α
proc_ops8$0_α:
#=======================================================================================================================
    .global proc_ops8$0_α
    .global proc_ops8$0_β
    .global proc_ops8$0_γ
    .global proc_ops8$0_ω
  sub rsp, 1408
  mov [rsp + 1384], rcx
  mov [rsp + 1392], rdx
  mov [rsp + 1400], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1376
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1352], rsp
  mov rdi, rsp
  mov esi, 1376
  call rt_jmp_frame_lexprep@PLT
proc_ops8$0_α_body:
lea rax, [rip + xchain0_n27_β]
mov qword ptr [rbp + 1328], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ops8$0_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_ops8$0_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_ops8$0_ω
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "+"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_ops8$0_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_ops8$0_ω
.Lx6_0:
 .quad 1
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+320]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+336]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn8: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_ops8$0_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_ops8$0_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_ops8$0_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "+"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_ops8$0_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_ops8$0_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_ops8$0_ω
.Lx13_0:
 .quad 2
 xchain0_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+496]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+512]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn15: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn15]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ops8$0_ω
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_ops8$0_ω
.Lx16_0:
 .quad 2
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+640]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+656]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn18: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn18]
 lea rsi, [rbp + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_ops8$0_ω
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_ops8$0_ω
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "+"
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_ops8$0_ω
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_ops8$0_ω
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain0_n17_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_ops8$0_ω
.Lx22_0:
 .quad 3
 xchain0_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+816]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 824], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+832]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn24: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_ops8$0_ω
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_ops8$0_ω
.Lx25_0:
 .quad 3
 xchain0_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+960]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+976]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn27: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn27]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_ops8$0_ω
 xchain0_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+1072]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 1080], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+1088]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1096], rax
  .section .rodata
  .Lrkfn29: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn29]
 lea rsi, [rbp + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_ops8$0_ω
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+1184]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 1192], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1200]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn31: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn31]
 lea rsi, [rbp + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n24_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "x"
 xchain0_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn34: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn34]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp proc_ops8$0_ω
 xchain0_n24_β:
 jmp proc_ops8$0_ω
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [rbp + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n24_α
 xchain0_n26_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1264]
 mov rdx, qword ptr [rbp + 1272]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx38_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx38_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
 jmp rax
.Lx38_3:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx38_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx38_2
.Lx38_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx38_2
.Lx38_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx38_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx38_2
.Lx38_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx38_2
.Lx38_1:
 call rt_faildescr@PLT
.Lx38_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "d/3"
# IR_SUSPEND yield+resume
 xchain0_n27_α:
 lea rax, [rip + xchain0_n27_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_ops8$0_γ
 xchain0_n27_β:
 jmp xchain0_n26_β
proc_ops8$0_res:
add rsp, 8
pop rbp
proc_ops8$0_β:
jmp qword ptr [rbp + 1328]
proc_ops8$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_ops8$0_res]
push rax
mov rax, [rbp + 1384]
mov rbp, [rbp + 1400]
jmp rax
proc_ops8$0_ω:
mov rax, [rbp + 1392]
lea rsp, [rbp + 1408]
mov rbp, [rbp + 1400]
jmp rax
  .globl proc_d$3_α
proc_d$3_α:
#=======================================================================================================================
    .global proc_d$3_α
    .global proc_d$3_β
    .global proc_d$3_γ
    .global proc_d$3_ω
  sub rsp, 10576
  mov [rsp + 10552], rcx
  mov [rsp + 10560], rdx
  mov [rsp + 10568], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 10544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 10440], rsp
  mov rdi, rsp
  mov esi, 10544
  call rt_jmp_frame_lexprep@PLT
proc_d$3_α_body:
lea rax, [rip + xchain41_n66_β]
mov qword ptr [rbp + 10416], rax
 xchain41_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn43: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn43]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n1_α
 xchain41_n0_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10208], rax
 mov qword ptr [rbp + 10216], rdx
 jmp xchain41_n2_α
 xchain41_n1_β:
 jmp xchain41_n7_α
# IR_LIT_STRING
 xchain41_n2_α:
 mov qword ptr [rbp + 10384], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 10392], rax
 jmp xchain41_n3_α
 xchain41_n2_β:
 jmp proc_d$3_ω
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "+"
# IR_VAR_REF
 xchain41_n3_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10240], rax
 mov qword ptr [rbp + 10248], rdx
 jmp xchain41_n4_α
 xchain41_n3_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n4_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10272], rax
 mov qword ptr [rbp + 10280], rdx
 jmp xchain41_n5_α
 xchain41_n4_β:
 jmp proc_d$3_ω
 xchain41_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10384] -> [zr+10320]
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10320], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10328], rax
# marshal arg1 = producer-box slot [zr+10240] -> [zr+10336]
 mov rax, qword ptr [rbp + 10240]
 mov qword ptr [rbp + 10336], rax
 mov rax, qword ptr [rbp + 10248]
 mov qword ptr [rbp + 10344], rax
# marshal arg2 = producer-box slot [zr+10272] -> [zr+10352]
 mov rax, qword ptr [rbp + 10272]
 mov qword ptr [rbp + 10352], rax
 mov rax, qword ptr [rbp + 10280]
 mov qword ptr [rbp + 10360], rax
  .section .rodata
  .Lrkfn52: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn52]
 lea rsi, [rbp + 10320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 cmp eax, 99
 je xchain41_n7_α
 jmp xchain41_n6_α
 xchain41_n5_β:
 jmp xchain41_n7_α
 xchain41_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10208] -> [zr+10160]
 mov rax, qword ptr [rbp + 10208]
 mov qword ptr [rbp + 10160], rax
 mov rax, qword ptr [rbp + 10216]
 mov qword ptr [rbp + 10168], rax
# marshal arg1 = producer-box slot [zr+10304] -> [zr+10176]
 mov rax, qword ptr [rbp + 10304]
 mov qword ptr [rbp + 10176], rax
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10184], rax
  .section .rodata
  .Lrkfn54: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn54]
 lea rsi, [rbp + 10160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10144], rax
 mov qword ptr [rbp + 10152], rdx
 cmp eax, 99
 je xchain41_n7_α
 jmp xchain41_n8_α
 xchain41_n6_β:
 jmp xchain41_n7_α
 xchain41_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9328]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9328], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9336], rax
  .section .rodata
  .Lrkfn56: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn56]
 lea rsi, [rbp + 9328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n9_α
 xchain41_n7_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10080], rax
 mov qword ptr [rbp + 10088], rdx
 jmp xchain41_n10_α
 xchain41_n8_β:
 jmp xchain41_n7_α
# IR_VAR_REF
 xchain41_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9104], rax
 mov qword ptr [rbp + 9112], rdx
 jmp xchain41_n11_α
 xchain41_n9_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n10_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 jmp xchain41_n12_α
 xchain41_n10_β:
 jmp xchain41_n7_α
# IR_LIT_STRING
 xchain41_n11_α:
 mov qword ptr [rbp + 9280], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 9288], rax
 jmp xchain41_n13_α
 xchain41_n11_β:
 jmp proc_d$3_ω
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "-"
 xchain41_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10080] -> [zr+10032]
 mov rax, qword ptr [rbp + 10080]
 mov qword ptr [rbp + 10032], rax
 mov rax, qword ptr [rbp + 10088]
 mov qword ptr [rbp + 10040], rax
# marshal arg1 = producer-box slot [zr+10112] -> [zr+10048]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 10048], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 10056], rax
  .section .rodata
  .Lrkfn65: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn65]
 lea rsi, [rbp + 10032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 cmp eax, 99
 je xchain41_n7_α
 jmp xchain41_n14_α
 xchain41_n12_β:
 jmp xchain41_n7_α
# IR_VAR_REF
 xchain41_n13_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain41_n15_α
 xchain41_n13_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n14_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 jmp xchain41_n16_α
 xchain41_n14_β:
 jmp xchain41_n7_α
# IR_VAR_REF
 xchain41_n15_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9168], rax
 mov qword ptr [rbp + 9176], rdx
 jmp xchain41_n17_α
 xchain41_n15_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain41_n16_α:
 mov qword ptr [rbp + 9984], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 9992], rax
 jmp xchain41_n18_α
 xchain41_n16_β:
 jmp proc_d$3_ω
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "+"
 xchain41_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9280] -> [zr+9216]
 mov rax, qword ptr [rbp + 9280]
 mov qword ptr [rbp + 9216], rax
 mov rax, qword ptr [rbp + 9288]
 mov qword ptr [rbp + 9224], rax
# marshal arg1 = producer-box slot [zr+9136] -> [zr+9232]
 mov rax, qword ptr [rbp + 9136]
 mov qword ptr [rbp + 9232], rax
 mov rax, qword ptr [rbp + 9144]
 mov qword ptr [rbp + 9240], rax
# marshal arg2 = producer-box slot [zr+9168] -> [zr+9248]
 mov rax, qword ptr [rbp + 9168]
 mov qword ptr [rbp + 9248], rax
 mov rax, qword ptr [rbp + 9176]
 mov qword ptr [rbp + 9256], rax
  .section .rodata
  .Lrkfn74: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn74]
 lea rsi, [rbp + 9216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 cmp eax, 99
 je xchain41_n20_α
 jmp xchain41_n19_α
 xchain41_n17_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n18_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain41_n21_α
 xchain41_n18_β:
 jmp proc_d$3_ω
 xchain41_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9104] -> [zr+9056]
 mov rax, qword ptr [rbp + 9104]
 mov qword ptr [rbp + 9056], rax
 mov rax, qword ptr [rbp + 9112]
 mov qword ptr [rbp + 9064], rax
# marshal arg1 = producer-box slot [zr+9200] -> [zr+9072]
 mov rax, qword ptr [rbp + 9200]
 mov qword ptr [rbp + 9072], rax
 mov rax, qword ptr [rbp + 9208]
 mov qword ptr [rbp + 9080], rax
  .section .rodata
  .Lrkfn78: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn78]
 lea rsi, [rbp + 9056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 cmp eax, 99
 je xchain41_n20_α
 jmp xchain41_n22_α
 xchain41_n19_β:
 jmp xchain41_n20_α
 xchain41_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8224]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8232], rax
  .section .rodata
  .Lrkfn80: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn80]
 lea rsi, [rbp + 8224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n23_α
 xchain41_n20_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n21_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain41_n24_α
 xchain41_n21_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
 jmp xchain41_n25_α
 xchain41_n22_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n23_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain41_n26_α
 xchain41_n23_β:
 jmp xchain41_n39_α
 xchain41_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9984] -> [zr+9920]
 mov rax, qword ptr [rbp + 9984]
 mov qword ptr [rbp + 9920], rax
 mov rax, qword ptr [rbp + 9992]
 mov qword ptr [rbp + 9928], rax
# marshal arg1 = producer-box slot [zr+9840] -> [zr+9936]
 mov rax, qword ptr [rbp + 9840]
 mov qword ptr [rbp + 9936], rax
 mov rax, qword ptr [rbp + 9848]
 mov qword ptr [rbp + 9944], rax
# marshal arg2 = producer-box slot [zr+9872] -> [zr+9952]
 mov rax, qword ptr [rbp + 9872]
 mov qword ptr [rbp + 9952], rax
 mov rax, qword ptr [rbp + 9880]
 mov qword ptr [rbp + 9960], rax
  .section .rodata
  .Lrkfn88: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn88]
 lea rsi, [rbp + 9920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9904], rax
 mov qword ptr [rbp + 9912], rdx
 cmp eax, 99
 je xchain41_n7_α
 jmp xchain41_n27_α
 xchain41_n24_β:
 jmp xchain41_n7_α
# IR_VAR_REF
 xchain41_n25_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain41_n28_α
 xchain41_n25_β:
 jmp xchain41_n20_α
# IR_LIT_STRING
 xchain41_n26_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain41_n29_α
 xchain41_n26_β:
 jmp proc_d$3_ω
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "*"
 xchain41_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9808] -> [zr+9760]
 mov rax, qword ptr [rbp + 9808]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9816]
 mov qword ptr [rbp + 9768], rax
# marshal arg1 = producer-box slot [zr+9904] -> [zr+9776]
 mov rax, qword ptr [rbp + 9904]
 mov qword ptr [rbp + 9776], rax
 mov rax, qword ptr [rbp + 9912]
 mov qword ptr [rbp + 9784], rax
  .section .rodata
  .Lrkfn93: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 9760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9744], rax
 mov qword ptr [rbp + 9752], rdx
 cmp eax, 99
 je xchain41_n7_α
 jmp xchain41_n30_α
 xchain41_n27_β:
 jmp xchain41_n7_α
 xchain41_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8976] -> [zr+8928]
 mov rax, qword ptr [rbp + 8976]
 mov qword ptr [rbp + 8928], rax
 mov rax, qword ptr [rbp + 8984]
 mov qword ptr [rbp + 8936], rax
# marshal arg1 = producer-box slot [zr+9008] -> [zr+8944]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 8944], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 8952], rax
  .section .rodata
  .Lrkfn95: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn95]
 lea rsi, [rbp + 8928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8912], rax
 mov qword ptr [rbp + 8920], rdx
 cmp eax, 99
 je xchain41_n20_α
 jmp xchain41_n31_α
 xchain41_n28_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n29_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 jmp xchain41_n32_α
 xchain41_n29_β:
 jmp proc_d$3_ω
 xchain41_n30_α:
# IR_CUT
 jmp xchain41_n33_α
 xchain41_n30_β:
 jmp xchain41_n7_α
# IR_VAR_REF
 xchain41_n31_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 jmp xchain41_n34_α
 xchain41_n31_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n32_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8064], rax
 mov qword ptr [rbp + 8072], rdx
 jmp xchain41_n35_α
 xchain41_n32_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n33_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9648], rax
 mov qword ptr [rbp + 9656], rdx
 jmp xchain41_n36_α
 xchain41_n33_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n34_α:
 mov qword ptr [rbp + 8880], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [rbp + 8888], rax
 jmp xchain41_n37_α
 xchain41_n34_β:
 jmp proc_d$3_ω
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "-"
 xchain41_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8176] -> [zr+8112]
 mov rax, qword ptr [rbp + 8176]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8184]
 mov qword ptr [rbp + 8120], rax
# marshal arg1 = producer-box slot [zr+8032] -> [zr+8128]
 mov rax, qword ptr [rbp + 8032]
 mov qword ptr [rbp + 8128], rax
 mov rax, qword ptr [rbp + 8040]
 mov qword ptr [rbp + 8136], rax
# marshal arg2 = producer-box slot [zr+8064] -> [zr+8144]
 mov rax, qword ptr [rbp + 8064]
 mov qword ptr [rbp + 8144], rax
 mov rax, qword ptr [rbp + 8072]
 mov qword ptr [rbp + 8152], rax
  .section .rodata
  .Lrkfn107: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn107]
 lea rsi, [rbp + 8112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 cmp eax, 99
 je xchain41_n39_α
 jmp xchain41_n38_α
 xchain41_n35_β:
 jmp xchain41_n39_α
# IR_VAR_REF
 xchain41_n36_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain41_n40_α
 xchain41_n36_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n37_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8736], rax
 mov qword ptr [rbp + 8744], rdx
 jmp xchain41_n41_α
 xchain41_n37_β:
 jmp proc_d$3_ω
 xchain41_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8000] -> [zr+7952]
 mov rax, qword ptr [rbp + 8000]
 mov qword ptr [rbp + 7952], rax
 mov rax, qword ptr [rbp + 8008]
 mov qword ptr [rbp + 7960], rax
# marshal arg1 = producer-box slot [zr+8096] -> [zr+7968]
 mov rax, qword ptr [rbp + 8096]
 mov qword ptr [rbp + 7968], rax
 mov rax, qword ptr [rbp + 8104]
 mov qword ptr [rbp + 7976], rax
  .section .rodata
  .Lrkfn113: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn113]
 lea rsi, [rbp + 7952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 cmp eax, 99
 je xchain41_n39_α
 jmp xchain41_n42_α
 xchain41_n38_β:
 jmp xchain41_n39_α
 xchain41_n39_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6832]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6840], rax
  .section .rodata
  .Lrkfn115: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn115]
 lea rsi, [rbp + 6832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n43_α
 xchain41_n39_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n40_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9712], rax
 mov qword ptr [rbp + 9720], rdx
 jmp xchain41_n44_α
 xchain41_n40_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n41_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8768], rax
 mov qword ptr [rbp + 8776], rdx
 jmp xchain41_n45_α
 xchain41_n41_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n42_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain41_n46_α
 xchain41_n42_β:
 jmp xchain41_n39_α
# IR_VAR_REF
 xchain41_n43_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 jmp xchain41_n47_α
 xchain41_n43_β:
 jmp xchain41_n65_α
 xchain41_n44_α:
 mov qword ptr [rbp + 9616], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 9648]
 mov rdx, qword ptr [rbp + 9656]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 9680]
 mov rdx, qword ptr [rbp + 9688]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 9712]
 mov rdx, qword ptr [rbp + 9720]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx125_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx125_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx125_3]
 lea rdx, [rip + .Lx125_4]
 jmp rax
.Lx125_3:
 mov rax, qword ptr [rbp + 9616]
 test rax, rax
 jne .Lx125_5
 mov qword ptr [rbp + 9616], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx125_2
.Lx125_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx125_2
.Lx125_4:
 mov rax, qword ptr [rbp + 9616]
 test rax, rax
 jne .Lx125_6
 mov qword ptr [rbp + 9616], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx125_2
.Lx125_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx125_2
.Lx125_1:
 call rt_faildescr@PLT
.Lx125_2:
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n48_α
 xchain41_n44_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "d/3"
 xchain41_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8880] -> [zr+8816]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8816], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8824], rax
# marshal arg1 = producer-box slot [zr+8736] -> [zr+8832]
 mov rax, qword ptr [rbp + 8736]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8744]
 mov qword ptr [rbp + 8840], rax
# marshal arg2 = producer-box slot [zr+8768] -> [zr+8848]
 mov rax, qword ptr [rbp + 8768]
 mov qword ptr [rbp + 8848], rax
 mov rax, qword ptr [rbp + 8776]
 mov qword ptr [rbp + 8856], rax
  .section .rodata
  .Lrkfn127: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn127]
 lea rsi, [rbp + 8816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 cmp eax, 99
 je xchain41_n20_α
 jmp xchain41_n50_α
 xchain41_n45_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n46_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 jmp xchain41_n51_α
 xchain41_n46_β:
 jmp xchain41_n39_α
# IR_LIT_STRING
 xchain41_n47_α:
 mov qword ptr [rbp + 6784], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 6792], rax
 jmp xchain41_n52_α
 xchain41_n47_β:
 jmp proc_d$3_ω
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "/"
# IR_VAR_REF
 xchain41_n48_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 jmp xchain41_n53_α
 xchain41_n48_β:
 jmp xchain41_n49_α
 xchain41_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn134: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn134]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp proc_d$3_ω
 xchain41_n49_β:
 jmp proc_d$3_ω
 xchain41_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8704] -> [zr+8656]
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8664], rax
# marshal arg1 = producer-box slot [zr+8800] -> [zr+8672]
 mov rax, qword ptr [rbp + 8800]
 mov qword ptr [rbp + 8672], rax
 mov rax, qword ptr [rbp + 8808]
 mov qword ptr [rbp + 8680], rax
  .section .rodata
  .Lrkfn136: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn136]
 lea rsi, [rbp + 8656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 cmp eax, 99
 je xchain41_n20_α
 jmp xchain41_n54_α
 xchain41_n50_β:
 jmp xchain41_n20_α
 xchain41_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7872] -> [zr+7824]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7832], rax
# marshal arg1 = producer-box slot [zr+7904] -> [zr+7840]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 7848], rax
  .section .rodata
  .Lrkfn138: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 7824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 cmp eax, 99
 je xchain41_n39_α
 jmp xchain41_n55_α
 xchain41_n51_β:
 jmp xchain41_n39_α
# IR_VAR_REF
 xchain41_n52_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 jmp xchain41_n56_α
 xchain41_n52_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n53_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 jmp xchain41_n57_α
 xchain41_n53_β:
 jmp xchain41_n49_α
 xchain41_n54_α:
# IR_CUT
 jmp xchain41_n58_α
 xchain41_n54_β:
 jmp xchain41_n20_α
# IR_VAR_REF
 xchain41_n55_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 jmp xchain41_n59_α
 xchain41_n55_β:
 jmp xchain41_n39_α
# IR_VAR_REF
 xchain41_n56_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain41_n60_α
 xchain41_n56_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n57_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain41_n61_α
 xchain41_n57_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n58_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8544], rax
 mov qword ptr [rbp + 8552], rdx
 jmp xchain41_n62_α
 xchain41_n58_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n59_α:
 mov qword ptr [rbp + 7776], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 7784], rax
 jmp xchain41_n63_α
 xchain41_n59_β:
 jmp proc_d$3_ω
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "+"
 xchain41_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6784] -> [zr+6720]
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 6720], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 6728], rax
# marshal arg1 = producer-box slot [zr+6640] -> [zr+6736]
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6736], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6744], rax
# marshal arg2 = producer-box slot [zr+6672] -> [zr+6752]
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6752], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6760], rax
  .section .rodata
  .Lrkfn154: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn154]
 lea rsi, [rbp + 6720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 cmp eax, 99
 je xchain41_n65_α
 jmp xchain41_n64_α
 xchain41_n60_β:
 jmp xchain41_n65_α
 xchain41_n61_α:
 mov qword ptr [rbp + 9424], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 9456]
 mov rdx, qword ptr [rbp + 9464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 9488]
 mov rdx, qword ptr [rbp + 9496]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 9520]
 mov rdx, qword ptr [rbp + 9528]
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
 mov rax, qword ptr [rbp + 9424]
 test rax, rax
 jne .Lx156_5
 mov qword ptr [rbp + 9424], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx156_2
.Lx156_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx156_2
.Lx156_4:
 mov rax, qword ptr [rbp + 9424]
 test rax, rax
 jne .Lx156_6
 mov qword ptr [rbp + 9424], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx156_2
.Lx156_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx156_2
.Lx156_1:
 call rt_faildescr@PLT
.Lx156_2:
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 cmp eax, 99
 je xchain41_n44_β
 jmp xchain41_n66_α
 xchain41_n61_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n62_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain41_n67_α
 xchain41_n62_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n63_α:
 mov qword ptr [rbp + 7488], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 7496], rax
 jmp xchain41_n68_α
 xchain41_n63_β:
 jmp proc_d$3_ω
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "*"
 xchain41_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6608] -> [zr+6560]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6568], rax
# marshal arg1 = producer-box slot [zr+6704] -> [zr+6576]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6576], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6584], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 6560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je xchain41_n65_α
 jmp xchain41_n69_α
 xchain41_n64_β:
 jmp xchain41_n65_α
 xchain41_n65_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5152]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn163: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn163]
 lea rsi, [rbp + 5152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n70_α
 xchain41_n65_β:
 jmp proc_d$3_ω
# IR_SUSPEND yield+resume
 xchain41_n66_α:
 lea rax, [rip + xchain41_n66_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n66_β:
 jmp xchain41_n61_β
# IR_VAR_REF
 xchain41_n67_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain41_n71_α
 xchain41_n67_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n68_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 jmp xchain41_n72_α
 xchain41_n68_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n69_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain41_n73_α
 xchain41_n69_β:
 jmp xchain41_n65_α
# IR_VAR_REF
 xchain41_n70_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain41_n74_α
 xchain41_n70_β:
 jmp xchain41_n91_α
 xchain41_n71_α:
 mov qword ptr [rbp + 8512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8544]
 mov rdx, qword ptr [rbp + 8552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8576]
 mov rdx, qword ptr [rbp + 8584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8608]
 mov rdx, qword ptr [rbp + 8616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx175_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx175_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx175_3]
 lea rdx, [rip + .Lx175_4]
 jmp rax
.Lx175_3:
 mov rax, qword ptr [rbp + 8512]
 test rax, rax
 jne .Lx175_5
 mov qword ptr [rbp + 8512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx175_2
.Lx175_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx175_2
.Lx175_4:
 mov rax, qword ptr [rbp + 8512]
 test rax, rax
 jne .Lx175_6
 mov qword ptr [rbp + 8512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx175_2
.Lx175_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx175_2
.Lx175_1:
 call rt_faildescr@PLT
.Lx175_2:
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n75_α
 xchain41_n71_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n72_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7376], rax
 mov qword ptr [rbp + 7384], rdx
 jmp xchain41_n76_α
 xchain41_n72_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n73_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 jmp xchain41_n77_α
 xchain41_n73_β:
 jmp xchain41_n65_α
# IR_LIT_STRING
 xchain41_n74_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain41_n78_α
 xchain41_n74_β:
 jmp proc_d$3_ω
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "^"
# IR_VAR_REF
 xchain41_n75_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 jmp xchain41_n79_α
 xchain41_n75_β:
 jmp xchain41_n49_α
 xchain41_n76_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7488] -> [zr+7424]
 mov rax, qword ptr [rbp + 7488]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 7496]
 mov qword ptr [rbp + 7432], rax
# marshal arg1 = producer-box slot [zr+7344] -> [zr+7440]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7440], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7448], rax
# marshal arg2 = producer-box slot [zr+7376] -> [zr+7456]
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [rbp + 7456], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [rbp + 7464], rax
  .section .rodata
  .Lrkfn184: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn184]
 lea rsi, [rbp + 7424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n80_α
 xchain41_n76_β:
 jmp proc_d$3_ω
 xchain41_n77_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6480] -> [zr+6432]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6440], rax
# marshal arg1 = producer-box slot [zr+6512] -> [zr+6448]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6448], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6456], rax
  .section .rodata
  .Lrkfn186: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn186]
 lea rsi, [rbp + 6432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 cmp eax, 99
 je xchain41_n65_α
 jmp xchain41_n81_α
 xchain41_n77_β:
 jmp xchain41_n65_α
# IR_VAR_REF
 xchain41_n78_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain41_n82_α
 xchain41_n78_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n79_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain41_n83_α
 xchain41_n79_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n80_α:
 mov qword ptr [rbp + 7664], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 7672], rax
 jmp xchain41_n84_α
 xchain41_n80_β:
 jmp proc_d$3_ω
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n81_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 jmp xchain41_n85_α
 xchain41_n81_β:
 jmp xchain41_n65_α
# IR_VAR_REF
 xchain41_n82_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain41_n86_α
 xchain41_n82_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n83_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 jmp xchain41_n87_α
 xchain41_n83_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n84_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain41_n88_α
 xchain41_n84_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain41_n85_α:
 mov qword ptr [rbp + 6384], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 6392], rax
 jmp xchain41_n89_α
 xchain41_n85_β:
 jmp proc_d$3_ω
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "/"
 xchain41_n86_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5040]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5048], rax
# marshal arg1 = producer-box slot [zr+4960] -> [zr+5056]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 5064], rax
# marshal arg2 = producer-box slot [zr+4992] -> [zr+5072]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 5080], rax
  .section .rodata
  .Lrkfn202: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn202]
 lea rsi, [rbp + 5040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain41_n91_α
 jmp xchain41_n90_α
 xchain41_n86_β:
 jmp xchain41_n91_α
 xchain41_n87_α:
 mov qword ptr [rbp + 8320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8352]
 mov rdx, qword ptr [rbp + 8360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8384]
 mov rdx, qword ptr [rbp + 8392]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8416]
 mov rdx, qword ptr [rbp + 8424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx204_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx204_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx204_3]
 lea rdx, [rip + .Lx204_4]
 jmp rax
.Lx204_3:
 mov rax, qword ptr [rbp + 8320]
 test rax, rax
 jne .Lx204_5
 mov qword ptr [rbp + 8320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx204_2
.Lx204_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx204_2
.Lx204_4:
 mov rax, qword ptr [rbp + 8320]
 test rax, rax
 jne .Lx204_6
 mov qword ptr [rbp + 8320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx204_2
.Lx204_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx204_2
.Lx204_1:
 call rt_faildescr@PLT
.Lx204_2:
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 cmp eax, 99
 je xchain41_n71_β
 jmp xchain41_n92_α
 xchain41_n87_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n88_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 jmp xchain41_n93_α
 xchain41_n88_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain41_n89_α:
 mov qword ptr [rbp + 6096], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 6104], rax
 jmp xchain41_n94_α
 xchain41_n89_β:
 jmp proc_d$3_ω
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "-"
 xchain41_n90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4928] -> [zr+4880]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 4888], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4896]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4904], rax
  .section .rodata
  .Lrkfn209: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn209]
 lea rsi, [rbp + 4880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 cmp eax, 99
 je xchain41_n91_α
 jmp xchain41_n95_α
 xchain41_n90_β:
 jmp xchain41_n91_α
 xchain41_n91_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3648]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3656], rax
  .section .rodata
  .Lrkfn211: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn211]
 lea rsi, [rbp + 3648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n96_α
 xchain41_n91_β:
 jmp proc_d$3_ω
# IR_SUSPEND yield+resume
 xchain41_n92_α:
 lea rax, [rip + xchain41_n92_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n92_β:
 jmp xchain41_n87_β
 xchain41_n93_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7664] -> [zr+7600]
 mov rax, qword ptr [rbp + 7664]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7672]
 mov qword ptr [rbp + 7608], rax
# marshal arg1 = producer-box slot [zr+7520] -> [zr+7616]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7624], rax
# marshal arg2 = producer-box slot [zr+7552] -> [zr+7632]
 mov rax, qword ptr [rbp + 7552]
 mov qword ptr [rbp + 7632], rax
 mov rax, qword ptr [rbp + 7560]
 mov qword ptr [rbp + 7640], rax
  .section .rodata
  .Lrkfn215: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn215]
 lea rsi, [rbp + 7600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n97_α
 xchain41_n93_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain41_n94_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain41_n98_α
 xchain41_n94_β:
 jmp proc_d$3_ω
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n95_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain41_n99_α
 xchain41_n95_β:
 jmp xchain41_n91_α
# IR_VAR_REF
 xchain41_n96_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain41_n100_α
 xchain41_n96_β:
 jmp xchain41_n113_α
 xchain41_n97_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7776] -> [zr+7712]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7720], rax
# marshal arg1 = producer-box slot [zr+7408] -> [zr+7728]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7728], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7736], rax
# marshal arg2 = producer-box slot [zr+7584] -> [zr+7744]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7744], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7752], rax
  .section .rodata
  .Lrkfn222: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn222]
 lea rsi, [rbp + 7712]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 cmp eax, 99
 je xchain41_n39_α
 jmp xchain41_n101_α
 xchain41_n97_β:
 jmp xchain41_n39_α
# IR_VAR_REF
 xchain41_n98_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5664], rax
 mov qword ptr [rbp + 5672], rdx
 jmp xchain41_n102_α
 xchain41_n98_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n99_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 jmp xchain41_n103_α
 xchain41_n99_β:
 jmp xchain41_n91_α
# IR_LIT_STRING
 xchain41_n100_α:
 mov qword ptr [rbp + 3600], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 3608], rax
 jmp xchain41_n104_α
 xchain41_n100_β:
 jmp proc_d$3_ω
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "-"
 xchain41_n101_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7312] -> [zr+7264]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7272], rax
# marshal arg1 = producer-box slot [zr+7696] -> [zr+7280]
 mov rax, qword ptr [rbp + 7696]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7704]
 mov qword ptr [rbp + 7288], rax
  .section .rodata
  .Lrkfn229: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn229]
 lea rsi, [rbp + 7264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 cmp eax, 99
 je xchain41_n39_α
 jmp xchain41_n105_α
 xchain41_n101_β:
 jmp xchain41_n39_α
# IR_VAR_REF
 xchain41_n102_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain41_n106_α
 xchain41_n102_β:
 jmp proc_d$3_ω
 xchain41_n103_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4800] -> [zr+4752]
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+4832] -> [zr+4768]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4776], rax
  .section .rodata
  .Lrkfn233: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
 lea rsi, [rbp + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je xchain41_n91_α
 jmp xchain41_n107_α
 xchain41_n103_β:
 jmp xchain41_n91_α
# IR_VAR_REF
 xchain41_n104_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain41_n108_α
 xchain41_n104_β:
 jmp proc_d$3_ω
 xchain41_n105_α:
# IR_CUT
 jmp xchain41_n109_α
 xchain41_n105_β:
 jmp xchain41_n39_α
 xchain41_n106_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5744]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5744], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5752], rax
# marshal arg1 = producer-box slot [zr+5664] -> [zr+5760]
 mov rax, qword ptr [rbp + 5664]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 5672]
 mov qword ptr [rbp + 5768], rax
# marshal arg2 = producer-box slot [zr+5696] -> [zr+5776]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5784], rax
  .section .rodata
  .Lrkfn238: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn238]
 lea rsi, [rbp + 5744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n110_α
 xchain41_n106_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n107_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain41_n111_α
 xchain41_n107_β:
 jmp xchain41_n91_α
 xchain41_n108_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3600] -> [zr+3552]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3552], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3560], rax
# marshal arg1 = producer-box slot [zr+3504] -> [zr+3568]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3576], rax
  .section .rodata
  .Lrkfn242: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn242]
 lea rsi, [rbp + 3552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 cmp eax, 99
 je xchain41_n113_α
 jmp xchain41_n112_α
 xchain41_n108_β:
 jmp xchain41_n113_α
# IR_VAR_REF
 xchain41_n109_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain41_n114_α
 xchain41_n109_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n110_α:
 mov qword ptr [rbp + 5984], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 5992], rax
 jmp xchain41_n115_α
 xchain41_n110_β:
 jmp proc_d$3_ω
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "*"
# IR_LIT_STRING
 xchain41_n111_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain41_n116_α
 xchain41_n111_β:
 jmp proc_d$3_ω
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "*"
 xchain41_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3424]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3432], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3440]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3448], rax
  .section .rodata
  .Lrkfn248: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn248]
 lea rsi, [rbp + 3424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain41_n113_α
 jmp xchain41_n117_α
 xchain41_n112_β:
 jmp xchain41_n113_α
 xchain41_n113_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2832]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2840], rax
  .section .rodata
  .Lrkfn250: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn250]
 lea rsi, [rbp + 2832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n118_α
 xchain41_n113_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n114_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain41_n119_α
 xchain41_n114_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n115_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain41_n120_α
 xchain41_n115_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain41_n116_α:
 mov qword ptr [rbp + 4416], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain41_n121_α
 xchain41_n116_β:
 jmp proc_d$3_ω
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n117_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain41_n122_α
 xchain41_n117_β:
 jmp xchain41_n113_α
# IR_VAR_REF
 xchain41_n118_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain41_n123_α
 xchain41_n118_β:
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n119_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain41_n124_α
 xchain41_n119_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n120_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 jmp xchain41_n125_α
 xchain41_n120_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n121_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain41_n126_α
 xchain41_n121_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n122_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain41_n127_α
 xchain41_n122_β:
 jmp xchain41_n113_α
# IR_LIT_STRING
 xchain41_n123_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain41_n128_α
 xchain41_n123_β:
 jmp proc_d$3_ω
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "exp"
 xchain41_n124_α:
 mov qword ptr [rbp + 7120], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 7152]
 mov rdx, qword ptr [rbp + 7160]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7184]
 mov rdx, qword ptr [rbp + 7192]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 7216]
 mov rdx, qword ptr [rbp + 7224]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx270_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx270_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx270_3]
 lea rdx, [rip + .Lx270_4]
 jmp rax
.Lx270_3:
 mov rax, qword ptr [rbp + 7120]
 test rax, rax
 jne .Lx270_5
 mov qword ptr [rbp + 7120], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx270_2
.Lx270_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx270_2
.Lx270_4:
 mov rax, qword ptr [rbp + 7120]
 test rax, rax
 jne .Lx270_6
 mov qword ptr [rbp + 7120], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx270_2
.Lx270_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx270_2
.Lx270_1:
 call rt_faildescr@PLT
.Lx270_2:
 mov qword ptr [rbp + 7056], rax
 mov qword ptr [rbp + 7064], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n129_α
 xchain41_n124_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "d/3"
 xchain41_n125_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5920]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5928], rax
# marshal arg1 = producer-box slot [zr+5840] -> [zr+5936]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5944], rax
# marshal arg2 = producer-box slot [zr+5872] -> [zr+5952]
 mov rax, qword ptr [rbp + 5872]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5880]
 mov qword ptr [rbp + 5960], rax
  .section .rodata
  .Lrkfn272: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn272]
 lea rsi, [rbp + 5920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n130_α
 xchain41_n125_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n126_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain41_n131_α
 xchain41_n126_β:
 jmp proc_d$3_ω
 xchain41_n127_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3296]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3304], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3312]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3320], rax
  .section .rodata
  .Lrkfn276: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn276]
 lea rsi, [rbp + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain41_n113_α
 jmp xchain41_n132_α
 xchain41_n127_β:
 jmp xchain41_n113_α
# IR_VAR_REF
 xchain41_n128_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain41_n133_α
 xchain41_n128_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n129_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain41_n134_α
 xchain41_n129_β:
 jmp xchain41_n49_α
 xchain41_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6096] -> [zr+6032]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6032], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6040], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+6048]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 6048], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 6056], rax
# marshal arg2 = producer-box slot [zr+5904] -> [zr+6064]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 6072], rax
  .section .rodata
  .Lrkfn282: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn282]
 lea rsi, [rbp + 6032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n135_α
 xchain41_n130_β:
 jmp proc_d$3_ω
 xchain41_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4416] -> [zr+4352]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4360], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4368]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4376], rax
# marshal arg2 = producer-box slot [zr+4304] -> [zr+4384]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4392], rax
  .section .rodata
  .Lrkfn284: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 4352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n136_α
 xchain41_n131_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n132_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain41_n137_α
 xchain41_n132_β:
 jmp xchain41_n113_α
 xchain41_n133_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2744], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2752]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2760], rax
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn288]
 lea rsi, [rbp + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain41_n139_α
 jmp xchain41_n138_α
 xchain41_n133_β:
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n134_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 jmp xchain41_n140_α
 xchain41_n134_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n135_α:
 mov qword ptr [rbp + 6272], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 6280], rax
 jmp xchain41_n141_α
 xchain41_n135_β:
 jmp proc_d$3_ω
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "^"
# IR_LIT_STRING
 xchain41_n136_α:
 mov qword ptr [rbp + 4592], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain41_n142_α
 xchain41_n136_β:
 jmp proc_d$3_ω
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "^"
# IR_LIT_STRING
 xchain41_n137_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain41_n143_α
 xchain41_n137_β:
 jmp proc_d$3_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "-"
 xchain41_n138_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2624]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2632], rax
  .section .rodata
  .Lrkfn295: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn295]
 lea rsi, [rbp + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain41_n139_α
 jmp xchain41_n144_α
 xchain41_n138_β:
 jmp xchain41_n139_α
 xchain41_n139_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1872]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn297: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn297]
 lea rsi, [rbp + 1872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n145_α
 xchain41_n139_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n140_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 jmp xchain41_n146_α
 xchain41_n140_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n141_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 jmp xchain41_n147_α
 xchain41_n141_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n142_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 jmp xchain41_n148_α
 xchain41_n142_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n143_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain41_n149_α
 xchain41_n143_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n144_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain41_n150_α
 xchain41_n144_β:
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n145_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain41_n151_α
 xchain41_n145_β:
 jmp xchain41_n168_α
 xchain41_n146_α:
 mov qword ptr [rbp + 6928], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6960]
 mov rdx, qword ptr [rbp + 6968]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 6992]
 mov rdx, qword ptr [rbp + 7000]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 7024]
 mov rdx, qword ptr [rbp + 7032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx311_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx311_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx311_3]
 lea rdx, [rip + .Lx311_4]
 jmp rax
.Lx311_3:
 mov rax, qword ptr [rbp + 6928]
 test rax, rax
 jne .Lx311_5
 mov qword ptr [rbp + 6928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx311_2
.Lx311_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx311_2
.Lx311_4:
 mov rax, qword ptr [rbp + 6928]
 test rax, rax
 jne .Lx311_6
 mov qword ptr [rbp + 6928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx311_2
.Lx311_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx311_2
.Lx311_1:
 call rt_faildescr@PLT
.Lx311_2:
 mov qword ptr [rbp + 6864], rax
 mov qword ptr [rbp + 6872], rdx
 cmp eax, 99
 je xchain41_n124_β
 jmp xchain41_n152_α
 xchain41_n146_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "d/3"
# IR_LIT_INTEGER
 xchain41_n147_α:
 mov qword ptr [rbp + 6160], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 6168], rax
 jmp xchain41_n153_α
 xchain41_n147_β:
 jmp proc_d$3_ω
.Lx312_0:
 .quad 2
# IR_VAR_REF
 xchain41_n148_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain41_n154_α
 xchain41_n148_β:
 jmp proc_d$3_ω
 xchain41_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3200]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3208], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3216]
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3224], rax
  .section .rodata
  .Lrkfn316: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn316]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain41_n113_α
 jmp xchain41_n155_α
 xchain41_n149_β:
 jmp xchain41_n113_α
# IR_VAR_REF
 xchain41_n150_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain41_n156_α
 xchain41_n150_β:
 jmp xchain41_n139_α
# IR_LIT_STRING
 xchain41_n151_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain41_n157_α
 xchain41_n151_β:
 jmp proc_d$3_ω
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "log"
# IR_SUSPEND yield+resume
 xchain41_n152_α:
 lea rax, [rip + xchain41_n152_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n152_β:
 jmp xchain41_n146_β
 xchain41_n153_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6272] -> [zr+6208]
 mov rax, qword ptr [rbp + 6272]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6280]
 mov qword ptr [rbp + 6216], rax
# marshal arg1 = producer-box slot [zr+6128] -> [zr+6224]
 mov rax, qword ptr [rbp + 6128]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6136]
 mov qword ptr [rbp + 6232], rax
# marshal arg2 = producer-box slot [zr+6160] -> [zr+6240]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6248], rax
  .section .rodata
  .Lrkfn323: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn323]
 lea rsi, [rbp + 6208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n158_α
 xchain41_n153_β:
 jmp proc_d$3_ω
 xchain41_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4592] -> [zr+4528]
 mov rax, qword ptr [rbp + 4592]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4600]
 mov qword ptr [rbp + 4536], rax
# marshal arg1 = producer-box slot [zr+4448] -> [zr+4544]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4552], rax
# marshal arg2 = producer-box slot [zr+4480] -> [zr+4560]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4568], rax
  .section .rodata
  .Lrkfn325: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn325]
 lea rsi, [rbp + 4528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n159_α
 xchain41_n154_β:
 jmp proc_d$3_ω
 xchain41_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3120] -> [zr+3072]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3080], rax
# marshal arg1 = producer-box slot [zr+3184] -> [zr+3088]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3096], rax
  .section .rodata
  .Lrkfn327: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn327]
 lea rsi, [rbp + 3072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain41_n113_α
 jmp xchain41_n160_α
 xchain41_n155_β:
 jmp xchain41_n113_α
 xchain41_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2480]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2496]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2504], rax
  .section .rodata
  .Lrkfn329: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 2480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain41_n139_α
 jmp xchain41_n161_α
 xchain41_n156_β:
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n157_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain41_n162_α
 xchain41_n157_β:
 jmp proc_d$3_ω
 xchain41_n158_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6320]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6320], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6328], rax
# marshal arg1 = producer-box slot [zr+6016] -> [zr+6336]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 6344], rax
# marshal arg2 = producer-box slot [zr+6192] -> [zr+6352]
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 6360], rax
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 6320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 cmp eax, 99
 je xchain41_n65_α
 jmp xchain41_n163_α
 xchain41_n158_β:
 jmp xchain41_n65_α
 xchain41_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4640]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4648], rax
# marshal arg1 = producer-box slot [zr+4336] -> [zr+4656]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4664], rax
# marshal arg2 = producer-box slot [zr+4512] -> [zr+4672]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4680], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 4640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain41_n91_α
 jmp xchain41_n164_α
 xchain41_n159_β:
 jmp xchain41_n91_α
 xchain41_n160_α:
# IR_CUT
 jmp xchain41_n165_α
 xchain41_n160_β:
 jmp xchain41_n113_α
# IR_VAR_REF
 xchain41_n161_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain41_n166_α
 xchain41_n161_β:
 jmp xchain41_n139_α
 xchain41_n162_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1792]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1800], rax
  .section .rodata
  .Lrkfn340: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn340]
 lea rsi, [rbp + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain41_n168_α
 jmp xchain41_n167_α
 xchain41_n162_β:
 jmp xchain41_n168_α
 xchain41_n163_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5632] -> [zr+5584]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5584], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5592], rax
# marshal arg1 = producer-box slot [zr+6304] -> [zr+5600]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 5608], rax
  .section .rodata
  .Lrkfn342: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn342]
 lea rsi, [rbp + 5584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 cmp eax, 99
 je xchain41_n65_α
 jmp xchain41_n169_α
 xchain41_n163_β:
 jmp xchain41_n65_α
 xchain41_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4240] -> [zr+4192]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4200], rax
# marshal arg1 = producer-box slot [zr+4624] -> [zr+4208]
 mov rax, qword ptr [rbp + 4624]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 4216], rax
  .section .rodata
  .Lrkfn344: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn344]
 lea rsi, [rbp + 4192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je xchain41_n91_α
 jmp xchain41_n170_α
 xchain41_n164_β:
 jmp xchain41_n91_α
# IR_VAR_REF
 xchain41_n165_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain41_n171_α
 xchain41_n165_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n166_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain41_n172_α
 xchain41_n166_β:
 jmp proc_d$3_ω
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "*"
 xchain41_n167_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1664]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1672], rax
  .section .rodata
  .Lrkfn349: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn349]
 lea rsi, [rbp + 1648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain41_n168_α
 jmp xchain41_n173_α
 xchain41_n167_β:
 jmp xchain41_n168_α
 xchain41_n168_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1008]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1016], rax
  .section .rodata
  .Lrkfn351: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn351]
 lea rsi, [rbp + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n174_α
 xchain41_n168_β:
 jmp proc_d$3_ω
 xchain41_n169_α:
# IR_CUT
 jmp xchain41_n175_α
 xchain41_n169_β:
 jmp xchain41_n65_α
 xchain41_n170_α:
# IR_CUT
 jmp xchain41_n176_α
 xchain41_n170_β:
 jmp xchain41_n91_α
# IR_VAR_REF
 xchain41_n171_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain41_n177_α
 xchain41_n171_β:
 jmp xchain41_n49_α
# IR_LIT_STRING
 xchain41_n172_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain41_n178_α
 xchain41_n172_β:
 jmp proc_d$3_ω
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "exp"
# IR_VAR_REF
 xchain41_n173_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain41_n179_α
 xchain41_n173_β:
 jmp xchain41_n168_α
# IR_VAR_REF
 xchain41_n174_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain41_n180_α
 xchain41_n174_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n175_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain41_n181_α
 xchain41_n175_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n176_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain41_n182_α
 xchain41_n176_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n177_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain41_n183_α
 xchain41_n177_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n178_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain41_n184_α
 xchain41_n178_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n179_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain41_n185_α
 xchain41_n179_β:
 jmp xchain41_n168_α
# IR_VAR_REF
 xchain41_n180_α:
 lea rdi, [rbp + 10480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain41_n186_α
 xchain41_n180_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n181_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain41_n187_α
 xchain41_n181_β:
 jmp xchain41_n49_α
 xchain41_n182_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4144] -> [zr+4112]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4120], rax
  .section .rodata
  .Lrkfn376: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn376]
 lea rsi, [rbp + 4112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n188_α
 xchain41_n182_β:
 jmp xchain41_n49_α
 xchain41_n183_α:
 mov qword ptr [rbp + 2928], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx378_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx378_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx378_3]
 lea rdx, [rip + .Lx378_4]
 jmp rax
.Lx378_3:
 mov rax, qword ptr [rbp + 2928]
 test rax, rax
 jne .Lx378_5
 mov qword ptr [rbp + 2928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx378_2
.Lx378_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx378_2
.Lx378_4:
 mov rax, qword ptr [rbp + 2928]
 test rax, rax
 jne .Lx378_6
 mov qword ptr [rbp + 2928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx378_2
.Lx378_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx378_2
.Lx378_1:
 call rt_faildescr@PLT
.Lx378_2:
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n189_α
 xchain41_n183_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "d/3"
 xchain41_n184_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2240]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2256]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2264], rax
  .section .rodata
  .Lrkfn380: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn380]
 lea rsi, [rbp + 2240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n190_α
 xchain41_n184_β:
 jmp proc_d$3_ω
 xchain41_n185_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn382: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn382]
 lea rsi, [rbp + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain41_n168_α
 jmp xchain41_n191_α
 xchain41_n185_β:
 jmp xchain41_n168_α
 xchain41_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .section .rodata
  .Lrkfn384: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn384]
 lea rsi, [rbp + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain41_n193_α
 jmp xchain41_n192_α
 xchain41_n186_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n187_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain41_n194_α
 xchain41_n187_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n188_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain41_n195_α
 xchain41_n188_β:
 jmp xchain41_n49_α
# IR_SUSPEND yield+resume
 xchain41_n189_α:
 lea rax, [rip + xchain41_n189_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n189_β:
 jmp xchain41_n183_β
# IR_VAR_REF
 xchain41_n190_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain41_n196_α
 xchain41_n190_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n191_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain41_n197_α
 xchain41_n191_β:
 jmp xchain41_n168_α
# IR_VAR_REF
 xchain41_n192_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain41_n198_α
 xchain41_n192_β:
 jmp xchain41_n193_α
 xchain41_n193_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn398: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn398]
 lea rsi, [rbp + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain41_n199_α
 xchain41_n193_β:
 jmp proc_d$3_ω
 xchain41_n194_α:
 mov qword ptr [rbp + 5440], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5472]
 mov rdx, qword ptr [rbp + 5480]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5504]
 mov rdx, qword ptr [rbp + 5512]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5536]
 mov rdx, qword ptr [rbp + 5544]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx400_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx400_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx400_3]
 lea rdx, [rip + .Lx400_4]
 jmp rax
.Lx400_3:
 mov rax, qword ptr [rbp + 5440]
 test rax, rax
 jne .Lx400_5
 mov qword ptr [rbp + 5440], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx400_2
.Lx400_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx400_2
.Lx400_4:
 mov rax, qword ptr [rbp + 5440]
 test rax, rax
 jne .Lx400_6
 mov qword ptr [rbp + 5440], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx400_2
.Lx400_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx400_2
.Lx400_1:
 call rt_faildescr@PLT
.Lx400_2:
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n200_α
 xchain41_n194_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "d/3"
# IR_VAR
 xchain41_n195_α:
 mov rax, qword ptr [rbp + 10448]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 10456]
 mov qword ptr [rbp + 4040], rax
 jmp xchain41_n201_α
 xchain41_n195_β:
 jmp proc_d$3_ω
 xchain41_n196_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2384]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2392], rax
# marshal arg2 = producer-box slot [zr+2320] -> [zr+2400]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2408], rax
  .section .rodata
  .Lrkfn404: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn404]
 lea rsi, [rbp + 2368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain41_n139_α
 jmp xchain41_n202_α
 xchain41_n196_β:
 jmp xchain41_n139_α
# IR_LIT_STRING
 xchain41_n197_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain41_n203_α
 xchain41_n197_β:
 jmp proc_d$3_ω
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "/"
# IR_VAR_REF
 xchain41_n198_α:
 lea rdi, [rbp + 10480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain41_n204_α
 xchain41_n198_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n199_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain41_n205_α
 xchain41_n199_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n200_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain41_n206_α
 xchain41_n200_β:
 jmp xchain41_n49_α
# IR_LIT_INTEGER
 xchain41_n201_α:
 mov qword ptr [rbp + 4064], 6
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 4072], rax
 jmp xchain41_n207_α
 xchain41_n201_β:
 jmp proc_d$3_ω
.Lx412_0:
 .quad 1
 xchain41_n202_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2112]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2120], rax
# marshal arg1 = producer-box slot [zr+2352] -> [zr+2128]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2136], rax
  .section .rodata
  .Lrkfn414: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn414]
 lea rsi, [rbp + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 cmp eax, 99
 je xchain41_n139_α
 jmp xchain41_n208_α
 xchain41_n202_β:
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n203_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain41_n209_α
 xchain41_n203_β:
 jmp proc_d$3_ω
 xchain41_n204_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .section .rodata
  .Lrkfn418: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn418]
 lea rsi, [rbp + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain41_n193_α
 jmp xchain41_n210_α
 xchain41_n204_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n205_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain41_n211_α
 xchain41_n205_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n206_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 jmp xchain41_n212_α
 xchain41_n206_β:
 jmp xchain41_n49_α
 xchain41_n207_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4032] -> [zr+3984]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3992], rax
# marshal arg1 = producer-box slot [zr+4064] -> [zr+4000]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4008], rax
  .section .rodata
  .Lrkfn424: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn424]
 lea rsi, [rbp + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n213_α
 xchain41_n207_β:
 jmp xchain41_n49_α
 xchain41_n208_α:
# IR_CUT
 jmp xchain41_n214_α
 xchain41_n208_β:
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n209_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain41_n215_α
 xchain41_n209_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain41_n210_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain41_n216_α
 xchain41_n210_β:
 jmp xchain41_n193_α
 xchain41_n211_α:
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
  .Lrkfn431: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn431]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n217_α
 xchain41_n211_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n212_α:
 lea rdi, [rbp + 10528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain41_n218_α
 xchain41_n212_β:
 jmp xchain41_n49_α
 xchain41_n213_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3936] -> [zr+3888]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 3888], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 3896], rax
# marshal arg1 = producer-box slot [zr+3968] -> [zr+3904]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3912], rax
  .section .rodata
  .Lrkfn435: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn435]
 lea rsi, [rbp + 3888]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n219_α
 xchain41_n213_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n214_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain41_n220_α
 xchain41_n214_β:
 jmp xchain41_n49_α
 xchain41_n215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1424]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1432], rax
# marshal arg2 = producer-box slot [zr+1360] -> [zr+1440]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1448], rax
  .section .rodata
  .Lrkfn439: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn439]
 lea rsi, [rbp + 1408]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain41_n168_α
 jmp xchain41_n221_α
 xchain41_n215_β:
 jmp xchain41_n168_α
# IR_LIT_INTEGER
 xchain41_n216_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain41_n222_α
 xchain41_n216_β:
 jmp xchain41_n193_α
.Lx440_0:
 .quad 1
# IR_VAR_REF
 xchain41_n217_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain41_n223_α
 xchain41_n217_β:
 jmp xchain41_n49_α
 xchain41_n218_α:
 mov qword ptr [rbp + 5248], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5312]
 mov rdx, qword ptr [rbp + 5320]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5344]
 mov rdx, qword ptr [rbp + 5352]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx444_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx444_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx444_3]
 lea rdx, [rip + .Lx444_4]
 jmp rax
.Lx444_3:
 mov rax, qword ptr [rbp + 5248]
 test rax, rax
 jne .Lx444_5
 mov qword ptr [rbp + 5248], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx444_2
.Lx444_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx444_2
.Lx444_4:
 mov rax, qword ptr [rbp + 5248]
 test rax, rax
 jne .Lx444_6
 mov qword ptr [rbp + 5248], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx444_2
.Lx444_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx444_2
.Lx444_1:
 call rt_faildescr@PLT
.Lx444_2:
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 cmp eax, 99
 je xchain41_n194_β
 jmp xchain41_n224_α
 xchain41_n218_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n219_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain41_n225_α
 xchain41_n219_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n220_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain41_n226_α
 xchain41_n220_β:
 jmp xchain41_n49_α
 xchain41_n221_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1264]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn450: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn450]
 lea rsi, [rbp + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain41_n168_α
 jmp xchain41_n227_α
 xchain41_n221_β:
 jmp xchain41_n168_α
 xchain41_n222_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn452: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn452]
 lea rsi, [rbp + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain41_n193_α
 jmp xchain41_n228_α
 xchain41_n222_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n223_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain41_n229_α
 xchain41_n223_β:
 jmp xchain41_n49_α
# IR_SUSPEND yield+resume
 xchain41_n224_α:
 lea rax, [rip + xchain41_n224_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n224_β:
 jmp xchain41_n218_β
# IR_VAR_REF
 xchain41_n225_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain41_n230_α
 xchain41_n225_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n226_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain41_n231_α
 xchain41_n226_β:
 jmp xchain41_n49_α
 xchain41_n227_α:
# IR_CUT
 jmp xchain41_n232_α
 xchain41_n227_β:
 jmp xchain41_n168_α
 xchain41_n228_α:
# IR_CUT
 jmp xchain41_n233_α
 xchain41_n228_β:
 jmp xchain41_n193_α
 xchain41_n229_α:
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
  .Lrkfn464: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn464]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n234_α
 xchain41_n229_β:
 jmp xchain41_n49_α
# IR_VAR_REF
 xchain41_n230_α:
 lea rdi, [rbp + 10512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain41_n235_α
 xchain41_n230_β:
 jmp xchain41_n49_α
 xchain41_n231_α:
 mov qword ptr [rbp + 1968], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx468_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx468_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx468_3]
 lea rdx, [rip + .Lx468_4]
 jmp rax
.Lx468_3:
 mov rax, qword ptr [rbp + 1968]
 test rax, rax
 jne .Lx468_5
 mov qword ptr [rbp + 1968], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx468_2
.Lx468_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx468_2
.Lx468_4:
 mov rax, qword ptr [rbp + 1968]
 test rax, rax
 jne .Lx468_6
 mov qword ptr [rbp + 1968], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx468_2
.Lx468_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx468_2
.Lx468_1:
 call rt_faildescr@PLT
.Lx468_2:
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n236_α
 xchain41_n231_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n232_α:
 lea rdi, [rbp + 10464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain41_n237_α
 xchain41_n232_β:
 jmp xchain41_n49_α
# IR_SUSPEND yield+resume
 xchain41_n233_α:
 lea rax, [rip + xchain41_n233_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n233_β:
 jmp xchain41_n193_α
# IR_VAR_REF
 xchain41_n234_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain41_n238_α
 xchain41_n234_β:
 jmp xchain41_n49_α
 xchain41_n235_α:
 mov qword ptr [rbp + 3744], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3776]
 mov rdx, qword ptr [rbp + 3784]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3808]
 mov rdx, qword ptr [rbp + 3816]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3840]
 mov rdx, qword ptr [rbp + 3848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx476_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx476_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx476_3]
 lea rdx, [rip + .Lx476_4]
 jmp rax
.Lx476_3:
 mov rax, qword ptr [rbp + 3744]
 test rax, rax
 jne .Lx476_5
 mov qword ptr [rbp + 3744], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx476_2
.Lx476_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx476_2
.Lx476_4:
 mov rax, qword ptr [rbp + 3744]
 test rax, rax
 jne .Lx476_6
 mov qword ptr [rbp + 3744], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx476_2
.Lx476_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx476_2
.Lx476_1:
 call rt_faildescr@PLT
.Lx476_2:
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n239_α
 xchain41_n235_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx476_0:
 .quad .Lx476_0_s
.Lx476_0_s:
 .string "d/3"
# IR_SUSPEND yield+resume
 xchain41_n236_α:
 lea rax, [rip + xchain41_n236_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n236_β:
 jmp xchain41_n231_β
# IR_VAR_REF
 xchain41_n237_α:
 lea rdi, [rbp + 10496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain41_n240_α
 xchain41_n237_β:
 jmp xchain41_n49_α
# IR_LIT_INTEGER
 xchain41_n238_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain41_n241_α
 xchain41_n238_β:
 jmp xchain41_n49_α
.Lx481_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain41_n239_α:
 lea rax, [rip + xchain41_n239_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n239_β:
 jmp xchain41_n235_β
# IR_VAR_REF
 xchain41_n240_α:
 lea rdi, [rbp + 10448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain41_n242_α
 xchain41_n240_β:
 jmp xchain41_n49_α
 xchain41_n241_α:
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
  .Lrkfn487: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn487]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n243_α
 xchain41_n241_β:
 jmp xchain41_n49_α
 xchain41_n242_α:
 mov qword ptr [rbp + 1104], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx489_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx489_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx489_3]
 lea rdx, [rip + .Lx489_4]
 jmp rax
.Lx489_3:
 mov rax, qword ptr [rbp + 1104]
 test rax, rax
 jne .Lx489_5
 mov qword ptr [rbp + 1104], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx489_2
.Lx489_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx489_2
.Lx489_4:
 mov rax, qword ptr [rbp + 1104]
 test rax, rax
 jne .Lx489_6
 mov qword ptr [rbp + 1104], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx489_2
.Lx489_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx489_2
.Lx489_1:
 call rt_faildescr@PLT
.Lx489_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain41_n49_α
 jmp xchain41_n244_α
 xchain41_n242_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "d/3"
# IR_SUSPEND yield+resume
 xchain41_n243_α:
 lea rax, [rip + xchain41_n243_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n243_β:
 jmp xchain41_n49_α
# IR_SUSPEND yield+resume
 xchain41_n244_α:
 lea rax, [rip + xchain41_n244_β]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_d$3_γ
 xchain41_n244_β:
 jmp xchain41_n242_β
proc_d$3_res:
add rsp, 8
pop rbp
proc_d$3_β:
jmp qword ptr [rbp + 10416]
proc_d$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_d$3_res]
push rax
mov rax, [rbp + 10552]
mov rbp, [rbp + 10568]
jmp rax
proc_d$3_ω:
mov rax, [rbp + 10560]
lea rsp, [rbp + 10576]
mov rbp, [rbp + 10568]
jmp rax
  .globl proc_top$0_α
proc_top$0_α:
#=======================================================================================================================
    .global proc_top$0_α
    .global proc_top$0_β
    .global proc_top$0_γ
    .global proc_top$0_ω
  sub rsp, 240
  mov [rsp + 216], rcx
  mov [rsp + 224], rdx
  mov [rsp + 232], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 208
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 200], rsp
  mov rdi, rsp
  mov esi, 208
  call rt_jmp_frame_lexprep@PLT
proc_top$0_α_body:
lea rax, [rip + xchain494_n2_β]
mov qword ptr [rbp + 176], rax
 xchain494_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn496: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$0_ω
 jmp xchain494_n1_α
 xchain494_n0_β:
 jmp proc_top$0_ω
 xchain494_n1_α:
 mov qword ptr [rbp + 144], 0
 mov rdi, qword ptr [rip + .Lx498_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx498_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx498_3]
 lea rdx, [rip + .Lx498_4]
 jmp rax
.Lx498_3:
 mov rax, qword ptr [rbp + 144]
 test rax, rax
 jne .Lx498_5
 mov qword ptr [rbp + 144], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx498_2
.Lx498_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx498_2
.Lx498_4:
 mov rax, qword ptr [rbp + 144]
 test rax, rax
 jne .Lx498_6
 mov qword ptr [rbp + 144], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx498_2
.Lx498_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx498_2
.Lx498_1:
 call rt_faildescr@PLT
.Lx498_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain494_n3_α
 jmp xchain494_n2_α
 xchain494_n1_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "ops8/0"
# IR_SUSPEND yield+resume
 xchain494_n2_α:
 lea rax, [rip + xchain494_n2_β]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$0_γ
 xchain494_n2_β:
 jmp xchain494_n1_β
 xchain494_n3_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn502: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn502]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_top$0_ω
 jmp proc_top$0_ω
 xchain494_n3_β:
 jmp proc_top$0_ω
proc_top$0_res:
add rsp, 8
pop rbp
proc_top$0_β:
jmp qword ptr [rbp + 176]
proc_top$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$0_res]
push rax
mov rax, [rbp + 216]
mov rbp, [rbp + 232]
jmp rax
proc_top$0_ω:
mov rax, [rbp + 224]
lea rsp, [rbp + 240]
mov rbp, [rbp + 232]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "ops8/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_ops8$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1376
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "d/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_d$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 10544
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "top/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_top$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 208
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
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
  mov qword ptr [rsp + 424], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain503_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn505: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn505]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain503_n1_α
 xchain503_n0_β:
 jmp main_ω
 xchain503_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx507_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx507_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx507_3]
 lea rdx, [rip + .Lx507_4]
 jmp rax
.Lx507_3:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx507_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx507_2
.Lx507_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx507_2
.Lx507_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx507_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx507_2
.Lx507_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx507_2
.Lx507_1:
 call rt_faildescr@PLT
.Lx507_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain503_n3_α
 jmp xchain503_n2_α
 xchain503_n1_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain503_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain503_n4_α
 xchain503_n2_β:
 jmp xchain503_n7_α
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain503_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain503_n5_α
 xchain503_n3_β:
 jmp xchain503_n7_α
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "failed"
 xchain503_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn511: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn511]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain503_n7_α
 jmp xchain503_n6_α
 xchain503_n4_β:
 jmp xchain503_n7_α
 xchain503_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn513: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn513]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain503_n7_α
 jmp xchain503_n6_α
 xchain503_n5_β:
 jmp xchain503_n7_α
# IR_LIT_STRING
 xchain503_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain503_n8_α
 xchain503_n6_β:
 jmp xchain503_n7_α
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string ""
 xchain503_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn516: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn516]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain503_n7_β:
 jmp main_ω
 xchain503_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn518: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn518]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain503_n7_α
 jmp xchain503_n9_α
 xchain503_n8_β:
 jmp xchain503_n7_α
# IR_MOVE_LABEL
 xchain503_n9_α:
 lea rax, [rip + xchain503_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain503_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain503_n10_α:
 jmp qword ptr [rbp + 32]
 xchain503_n10_β:
 jmp main_ω
main_β:
jmp xchain503_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 424]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 424]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
